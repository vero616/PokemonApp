//
//  ViewController.swift
//  PokemonApp
//
//  Created by Veronique Hager on 2/3/25.
//

import UIKit

class PTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }
    
    private func setUpTabs() {
        let pokemonVC = PPokemonViewController()
        let evolutionsVC = PEvolutionsViewController()
        let gamesVC = PGamesViewController()
        let settingsVC = PSettingsViewController()
        
        pokemonVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: pokemonVC)
        let nav2 = UINavigationController(rootViewController: evolutionsVC)
        let nav3 = UINavigationController(rootViewController: gamesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem (title: "Pokemon", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem (title: "Evolutions", image: UIImage(systemName: "person.2"), tag: 2)
        nav3.tabBarItem = UITabBarItem (title: "Games", image: UIImage(systemName: "gamecontroller"), tag: 3)
        nav4.tabBarItem = UITabBarItem (title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
        [nav1, nav2, nav3, nav4],
        animated: true
        )
    }


}

