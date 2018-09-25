//
//  ViewController.swift
//  alertfun
//
//  Created by Chucka, Zachary Tyler on 9/25/18.
//  Copyright © 2018 Chucka, Zachary Tyler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // task: in IB, add a text field to your app center horizontally and make it as wide as the safe area margins
    // add a button that says echo back
    // add an action for the button
    // when the button is pressed simply display a log message
    
    @IBAction func echoBackPressed (_ sender: UIButton) {
        print("Echo Back is pressed")
        // get the text from the Textfield
        if let text = textField.text {
            print(text)
            // we want to show an alert or an action sheet when the user presses echo back
            // actionSheet: typically used when the user has preformed an action and they expect dialogue
            // alert: typically used when the user does not expect it
            // use a UIAlertController object to user either an actionSheet or an Alert
            var alertController = UIAlertController(title: "Echo Back", message: text, preferredStyle: .actionSheet)
            // add an action to the action sheet/alert
            // we will add one for okay
            alertController.addAction(UIAlertAction(title: "okay", style: .default, handler: nil)) // we will talk about handler and closure next week
            present(alertController, animated: true, completion: nil)
        }
    }
}

