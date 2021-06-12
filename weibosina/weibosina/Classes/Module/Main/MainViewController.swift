//
//  MainViewController.swift
//  weibosina
//
//  Created by 李明禄 on 15/10/8.
//  Copyright © 2015年 李明禄. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChildViewController()
        
    }
    
    

    
    //private的是类的内部参数,外部不可以访问
    private func addChildViewController() {
        let vc = HomeTableViewController()
        
        
        //设置tabbar的颜色/
        tabBar.tintColor = UIColor.orangeColor()
        
        //设置标题
        vc.title = "首页"
        
         //设置tabbar图像
        vc.tabBarItem.image = UIImage(named: "tabbar_home")
        
        let nav = UINavigationController(rootViewController: vc)
        addChildViewController(nav)
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
