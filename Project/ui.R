#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
cvd <- read.csv2("CVD.csv")
# Use a fluid Bootstrap layout 
fluidPage(     
    
    # Give the page a title 
    titlePanel("Covid deaths per country"), 
    
    # Generate a row with a sidebar 
    sidebarLayout(       
        
        
        # Define the sidebar with one input 
        sidebarPanel(p(strong("Documentation:",style="color:red"), a("User Help Page",href="https://github.com/xli53/RShiny-Project/blob/main/README.md")), 
                     selectInput("Country", "Country:",  
                                 choices=colnames(cvd[-1])), 
                     hr(), 
                     helpText("Covid deaths") 
        ), 
        
        # Create a spot for the barplot 
        mainPanel( 
            plotOutput("deaths")   
        ) 
        
    ) 
) 


