; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_mux.c_rk_clk_mux_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_mux.c_rk_clk_mux_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.rk_clk_mux_def = type { i32, i32, i32, i32, i32 }
%struct.clknode = type { i32 }
%struct.rk_clk_mux_sc = type { i32, i32, i32, i32 }

@rk_clk_mux_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rk_clk_mux_register(%struct.clkdom* %0, %struct.rk_clk_mux_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clkdom*, align 8
  %5 = alloca %struct.rk_clk_mux_def*, align 8
  %6 = alloca %struct.clknode*, align 8
  %7 = alloca %struct.rk_clk_mux_sc*, align 8
  store %struct.clkdom* %0, %struct.clkdom** %4, align 8
  store %struct.rk_clk_mux_def* %1, %struct.rk_clk_mux_def** %5, align 8
  %8 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %9 = load %struct.rk_clk_mux_def*, %struct.rk_clk_mux_def** %5, align 8
  %10 = getelementptr inbounds %struct.rk_clk_mux_def, %struct.rk_clk_mux_def* %9, i32 0, i32 4
  %11 = call %struct.clknode* @clknode_create(%struct.clkdom* %8, i32* @rk_clk_mux_class, i32* %10)
  store %struct.clknode* %11, %struct.clknode** %6, align 8
  %12 = load %struct.clknode*, %struct.clknode** %6, align 8
  %13 = icmp eq %struct.clknode* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.clknode*, %struct.clknode** %6, align 8
  %17 = call %struct.rk_clk_mux_sc* @clknode_get_softc(%struct.clknode* %16)
  store %struct.rk_clk_mux_sc* %17, %struct.rk_clk_mux_sc** %7, align 8
  %18 = load %struct.rk_clk_mux_def*, %struct.rk_clk_mux_def** %5, align 8
  %19 = getelementptr inbounds %struct.rk_clk_mux_def, %struct.rk_clk_mux_def* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %22 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.rk_clk_mux_def*, %struct.rk_clk_mux_def** %5, align 8
  %24 = getelementptr inbounds %struct.rk_clk_mux_def, %struct.rk_clk_mux_def* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %27 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rk_clk_mux_def*, %struct.rk_clk_mux_def** %5, align 8
  %29 = getelementptr inbounds %struct.rk_clk_mux_def, %struct.rk_clk_mux_def* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = sub nsw i32 %31, 1
  %33 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %34 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rk_clk_mux_def*, %struct.rk_clk_mux_def** %5, align 8
  %36 = getelementptr inbounds %struct.rk_clk_mux_def, %struct.rk_clk_mux_def* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rk_clk_mux_sc*, %struct.rk_clk_mux_sc** %7, align 8
  %39 = getelementptr inbounds %struct.rk_clk_mux_sc, %struct.rk_clk_mux_sc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.clkdom*, %struct.clkdom** %4, align 8
  %41 = load %struct.clknode*, %struct.clknode** %6, align 8
  %42 = call i32 @clknode_register(%struct.clkdom* %40, %struct.clknode* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %15, %14
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.clknode* @clknode_create(%struct.clkdom*, i32*, i32*) #1

declare dso_local %struct.rk_clk_mux_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @clknode_register(%struct.clkdom*, %struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
