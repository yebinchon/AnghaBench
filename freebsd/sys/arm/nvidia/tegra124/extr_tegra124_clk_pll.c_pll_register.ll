; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pll_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pll_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clk_pll_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.pll_sc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tegra124_pll_class = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clkdom*, %struct.clk_pll_def*)* @pll_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_register(%struct.clkdom* %0, %struct.clk_pll_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.clk_pll_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.pll_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.clk_pll_def* %1, %struct.clk_pll_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %10 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %9, i32 0, i32 10
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @tegra124_pll_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ENXIO, align 4
  store i32 %15, i32* %3, align 4
  br label %76

16:                                               ; preds = %2
  %17 = load %struct.clknode*, %struct.clknode** %6, align 8
  %18 = call %struct.pll_sc* @clknode_get_softc(%struct.clknode* %17)
  store %struct.pll_sc* %18, %struct.pll_sc** %7, align 8
  %19 = load %struct.clknode*, %struct.clknode** %6, align 8
  %20 = call i32 @clknode_get_device(%struct.clknode* %19)
  %21 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %22 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 4
  %23 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %24 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %27 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %29 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %32 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 4
  %33 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %34 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %37 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %36, i32 0, i32 7
  store i32 %35, i32* %37, align 4
  %38 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %39 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %42 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 4
  %43 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %44 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %47 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %49 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %52 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %54 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %57 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 4
  %58 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %59 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %62 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %64 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %67 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.clk_pll_def*, %struct.clk_pll_def** %5, align 8
  %69 = getelementptr inbounds %struct.clk_pll_def, %struct.clk_pll_def* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %72 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %74 = load %struct.clknode*, %struct.clknode** %6, align 8
  %75 = call i32 @clknode_register(%struct.clkdom* %73, %struct.clknode* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %16, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_get_device(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
