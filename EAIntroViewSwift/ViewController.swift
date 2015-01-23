//
//  ViewController.swift
//  EAIntroViewSwift
//
//  Created by yamakadoh on 1/23/15.
//  Copyright (c) 2015 yamakadoh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, EAIntroDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.showIntroWithCrossDissolve()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func showIntroWithCrossDissolve() {
        let page1 = EAIntroPage()
        page1.title = "Hello world";
        page1.desc = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
        page1.bgImage = UIImage(named: "bg1")
        page1.titleIconView = UIImageView(image: UIImage(named: "title1"))
        
        let page2 = EAIntroPage()
        page2.title = "This is page 2"
        page2.desc = "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore.";
        page2.bgImage = UIImage(named: "bg2")
        page2.titleIconView = UIImageView(image: UIImage(named: "title2"))
        
        let page3 = EAIntroPage()
        page3.title = "This is page 3"
        page3.desc = "Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.";
        page3.bgImage = UIImage(named: "bg3")
        page3.titleIconView = UIImageView(image: UIImage(named: "title3"))
        
        let page4 = EAIntroPage()
        page4.title = "This is page 4"
        page4.desc = "Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit.";
        page4.bgImage = UIImage(named: "bg4")
        page4.titleIconView = UIImageView(image: UIImage(named: "title4"))
        
        let intro = EAIntroView(frame: self.view.bounds, andPages: [page1, page2, page3, page4])
        intro.delegate = self
        
        intro.showInView(self.view, animateDuration: 0.3)
    }

    // mark - EAIntroView delegate
    
    func introDidFinish(introView: EAIntroView) {
        println("introDidFinish callback")
    }
    
}

