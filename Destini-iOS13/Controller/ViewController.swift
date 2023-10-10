//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameBrain = StoryBrain()
 
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBAction func choiceMade(_ sender: UIButton) {
        
        if sender.tag == 0 {
            print (gameBrain.storyNumber)
            gameBrain.storyNumber = gameBrain.changeNumber1()
            updateUI()
        }
        else {
            print(gameBrain.storyNumber)
            gameBrain.storyNumber = gameBrain.changeNumber2()
                updateUI()
            }
        }
      
  
    
    func updateUI() {
        storyLabel.text = gameBrain.getStory()
        choice1Button.setTitle(gameBrain.getChoiceOne(), for: .normal)
        choice2Button.setTitle(gameBrain.getChoiceTwo(), for: .normal)

    }
  
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = gameBrain.getStory()
        choice1Button.setTitle(gameBrain.getChoiceOne(), for: .normal)
        choice2Button.setTitle(gameBrain.getChoiceTwo(), for: .normal)
    }


}

