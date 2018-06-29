//
//  ViewController.swift
//  VisualSSH
//
//  Created by Utkarsh Jain on 6/15/18.
//  Copyright © 2018 Utkarsh Jain. All rights reserved.
//

import UIKit
import AWSCore
import AWSAPIGateway
import AWSMobileClient
import AWSLambda


class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    
    @IBOutlet weak var hostnameTextField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var header: UILabel!
    
    //MARK : UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //Hides the keyboard when the user presses enter
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        hostnameTextField.text = textField.text
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        let client = TESTAPIFinalClient.default()
        client.loginCredentialsGet().continueWith {(task: AWSTask) -> AnyObject? in
            
            return nil
        }
        
        //Perform the segue
        performSegue(withIdentifier: "loginSegue", sender: self)
        
      
        
       // header.text = "button pressed"
    }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hostnameTextField.delegate = self
        passwordField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    


}

