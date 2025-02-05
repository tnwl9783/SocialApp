//
//  LoginViewController.swift
//  SocialApp
//
//  Created by jeonsuji on 2/5/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Properties
    
    private let mainIcon: UIImageView = {
        let mi = UIImageView(image: #imageLiteral(resourceName: "Instagram_PNG-Logo-Oksdf"))
        mi.contentMode = .scaleAspectFill
        mi.tintColor = .white
        return mi
    }()
    
    private var emailTextField: UITextField = {
        let et = UITextField()
        et.borderStyle = .none
        et.textColor = .white
        et.keyboardAppearance = .dark
        et.keyboardType = .emailAddress
        et.backgroundColor = UIColor(white: 1, alpha: 0.1)
        et.setHeight(50)
        et.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.1)])

        
        return et
    }()
    
    private let passwordTextField: UITextField = {
        
        let pt = UITextField()
        pt.textColor = .white
        pt.keyboardAppearance = .dark
        pt.backgroundColor = UIColor(white: 1, alpha: 0.1)
        pt.setHeight(50)
        pt.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.1)])
        pt.isSecureTextEntry = true
        return pt
    }()
    
    private let loginButton: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Log In", for: .normal)
        bt.setTitleColor(.white, for: .normal)
        bt.backgroundColor = #colorLiteral(red: 0.9883776725, green: 0.367625728, blue: 1, alpha: 1)
        bt.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        bt.setHeight(50)
        bt.layer.cornerRadius = 10
        
        return bt
        
    }()
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //view.addSubview(emailTextField)
        //emailTextField.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 30, paddingLeft: 30)
        
        configureUI()
    }
    
    //MARK: - helpers
    
    
    func configureUI() {
        
        navigationController?.navigationBar.barStyle = .black
        
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.systemBlue.cgColor, UIColor.systemPink.cgColor]
        gradient.locations = [0,1]
        view.layer.addSublayer(gradient)
        gradient.frame = view.frame
        
        view.addSubview(mainIcon)
        mainIcon.centerX(inview: view)
        mainIcon.setDimension(height: 60, width: 80)
        mainIcon.anchor(top: view.safeAreaLayoutGuide.topAnchor, paddingTop: 30)
        
        
        let stackView = UIStackView(arrangedSubviews: [emailTextField,passwordTextField,loginButton])
        stackView.axis = .vertical
        stackView.spacing = 10
        
        view.addSubview(stackView)
        stackView.anchor(top: mainIcon.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 30, paddingLeft: 10, paddingRight: 10)
    }
    
//    func login() {
//         //로그인이 성공하면 메인 탭바 메뉴로 넘어간다. 
//    }
}
