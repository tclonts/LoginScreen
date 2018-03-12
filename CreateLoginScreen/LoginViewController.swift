//
//  LoginViewController.swift
//  CreateLoginScreen
//
//  Created by Tyler Clonts on 3/12/18.
//  Copyright © 2018 Tyler Clonts. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    // MARK: - Properties
    var buttonState: ButtonState = .notSelected
    
    enum ButtonState {
        case selected
        case notSelected
    }
    
    // MARK: - Outles
    @IBOutlet weak var headerImageViw: UIImageView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var aboutMeLabel: UILabel!
    @IBOutlet weak var loginLabel: UIButton!
    @IBOutlet weak var lineView: UIView!
    
    
    // MARK: - Actions
    @IBAction func loginButtonTapped(_ sender: Any) {
        updateViews()
    }
    
    func setUpUI() {
        
        // This function is used to match our sketch Design(UI)
        headerImageViw.image = #imageLiteral(resourceName: "Raven")
        headerImageViw.contentMode = .scaleAspectFit
        profileImageView.image = #imageLiteral(resourceName: "Profile")
        profileImageView.clipsToBounds = true
        profileImageView.layer.cornerRadius = profileImageView.layer.frame.height / 2
        profileImageView.layer.borderColor = UIColor.white.cgColor
        profileImageView.layer.borderWidth = 5
        
        // Button UI
        loginLabel.layer.cornerRadius = 10
        loginLabel.clipsToBounds = true
        loginLabel.backgroundColor = UIColor.primaryBlue
        loginLabel.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        loginLabel.layer.borderWidth = 2
        loginLabel.setTitleColor(.white, for: .normal)
        
        // LineView
        
        lineView.backgroundColor = .black
    }
    
    func updateViews() {
        switch buttonState {
            
        case .selected:
            buttonState = .notSelected
            loginLabel.setTitle("Login", for: .normal)
        case .notSelected:
            buttonState = .selected
            loginLabel.setTitle("Update", for: .normal)
        }
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
