@echo off
if x%1x == xx (
    echo This file will set up 25 directories with copies of notebooks for Neuroworkshop
    echo This assumes there is a directory called NeuroWorkshop with all notebooks
    echo Press ^c to exit, or any key to proceed
    pause
    pushd
    cd \dsvm\notebooks
    for /l %%l in (1,1,25) do call %0 %%l
    popd
) ELSE (
    mkdir User%1
    copy NeuroWorkshop\*.ipynb User%1
)
