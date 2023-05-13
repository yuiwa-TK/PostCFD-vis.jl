module PostCFDvis

using PlotlyJS
using PostCFD
# using Reexport


function greet()
    com=`echo -e "\e[36;1m================================\e[m"`;
    com1= `echo -e "\e[36;1mRunning PostCFDvis...\e[m"`;
    run(com);run(com1);run(com);
    print("current directory::");pwd();
end

function julia_main()
    greet();
    try 
        ExecPlotApp()
    catch
        Base.invokelatest(Base.display_error,Base.catch_stack())
        return 1
    end
    # include("../test/dataset/test_vis.jl")
    return 0
end

function ExecPlotApp()
    @show ARGS
    @show Base.PROGRAM_FILE
    # println("Parsing input arguments...")
    # Dataparams=parase
    @show readlines()
    # Datasets = DataFormatting(Data)

    # Main_plot(Datasets, Plotparams)

    return 0
end


end #module
