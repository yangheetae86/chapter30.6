//
//  ContentView.swift
//  chapter30.6
//
//  Created by HEE TAE YANG on 2020/06/18.
//  Copyright © 2020 yht. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isSpinning: Bool = true
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth:2)
                .fill(Color.blue)
                .frame(width: 360, height: 360)
            Image(systemName:isSpinning ? "forward.fill" : "backward.fill")
                .font(.largeTitle)
                .offset(x: 0, y: -180)
                .rotationEffect(.degrees(isSpinning ? 0 : 90))
                .animation(Animation.linear(duration: 5)
                .repeatForever(autoreverses: true))
        }
        .onAppear() {//뷰가 나타나면 .onAppear() 수정자는 isSpinning 상태 프로퍼티를
            self.isSpinning.toggle()//false로 전환
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
