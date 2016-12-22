//
//  CollectionViewCell.swift
//  SelfSizingCollectionViewCells
//
//  Created by Satori Maru on 16.12.22.
//  Copyright © 2016年 usagimaru. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

	@IBOutlet weak var titleLabel: UILabel! {
		didSet {
			titleLabel.text = nil
		}
	}
	@IBOutlet weak var textLabel: UILabel! {
		didSet {
			textLabel.text = nil
		}
	}
	@IBOutlet weak var separator: UIView!
	@IBOutlet weak var widthLayout: NSLayoutConstraint?
	
    override func awakeFromNib() {
        super.awakeFromNib()
		
		setCellWidth(UIScreen.main.bounds.width)
    }
	
	func setCellWidth(_ width: CGFloat) {
		widthLayout?.constant = width
	}
	
	class func nib() -> UINib {
		return UINib(nibName: "\(self)", bundle: nil)
	}

}
