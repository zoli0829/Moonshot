//
//  AstronautView.swift
//  Moonshot
//
//  Created by Zoltan Vegh on 17/04/2025.
//

import SwiftUI

struct AstronautView: View {
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
            .accessibilityElement()
            .accessibilityLabel(astronaut.name)
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    
    return AstronautView(astronaut: astronauts["aldrin"]!)
        .preferredColorScheme(.dark)
}
