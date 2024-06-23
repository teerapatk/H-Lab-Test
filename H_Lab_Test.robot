*** Setting ***
Library         SeleniumLibrary

*** Variables ***
${URL}    https://shopee.co.th/
${Browser}      chrome
${username}     xxxxxxxxx            #username
${password}     xxxxxxxxx            #password

*** Keywords ***
Open Website Shopee
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Wait Until Page Contains Element    //*[@id="modal"]/div[1]/div[1]/div/div[3]/div[2]/button
    Click Button    //*[@id="modal"]/div[1]/div[1]/div/div[3]/div[2]/button
    Wait Until Page Contains Element    //*[@id="main"]/div/div[2]/div/div/div/div[2]/div/div[2]/form/div[1]/div[1]/input
    Input Text    //*[@id="main"]/div/div[2]/div/div/div/div[2]/div/div[2]/form/div[1]/div[1]/input    ${username}
    Wait Until Page Contains Element    //*[@id="main"]/div/div[2]/div/div/div/div[2]/div/div[2]/form/div[2]/div[1]/input
    Input Text    //*[@id="main"]/div/div[2]/div/div/div/div[2]/div/div[2]/form/div[2]/div[1]/input    ${password}
    Wait Until Page Contains Element    //*[@id="main"]/div/div[2]/div/div/div/div[2]/div/div[2]/form/button
    Click Button    //*[@id="main"]/div/div[2]/div/div/div/div[2]/div/div[2]/form/button
    Wait Until Page Contains Element    //*[@id="main"]/div/header/div[2]/div/div[1]/form/div/div/input
    Input Text    //*[@id="main"]/div/header/div[2]/div/div[1]/form/div/div/input    baby toys
    Wait Until Page Contains Element    //*[@id="main"]/div/header/div[2]/div/div[1]/form/button
    Click Button    //*[@id="main"]/div/header/div[2]/div/div[1]/form/button

*** Test Cases ***
TC_H_Lab_Test_001
    Open Website Shopee    ${URL}    ${Browser}
    Sleep    10s
    