//
//  ViewController.swift
//  FirstSample
//
//  Created by Tyler Hackbart on 2015-11-02.
//  Copyright © 2015 Tyler Hackbart. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var simpleTextField: UITextField!
    @IBOutlet weak var simpleLabel: UILabel!
    
    @IBAction func changeLabel(sender: AnyObject) {
        simpleLabel.text = "Hello" + simpleTextField.text! + "!"
        self.simpleTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

