; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_prediv_mux.c_aw_clk_prediv_mux_recalc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_prediv_mux.c_aw_clk_prediv_mux_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_prediv_mux_sc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32*)* @aw_clk_prediv_mux_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_prediv_mux_recalc(%struct.clknode* %0, i32* %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.aw_clk_prediv_mux_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.clknode*, %struct.clknode** %3, align 8
  %10 = call %struct.aw_clk_prediv_mux_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.aw_clk_prediv_mux_sc* %10, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %11 = load %struct.clknode*, %struct.clknode** %3, align 8
  %12 = call i32 @DEVICE_LOCK(%struct.clknode* %11)
  %13 = load %struct.clknode*, %struct.clknode** %3, align 8
  %14 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %15 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @READ4(%struct.clknode* %13, i32 %16, i32* %6)
  %18 = load %struct.clknode*, %struct.clknode** %3, align 8
  %19 = call i32 @DEVICE_UNLOCK(%struct.clknode* %18)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %22 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %21, i32 0, i32 1
  %23 = call i32 @aw_clk_get_factor(i32 %20, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.aw_clk_prediv_mux_sc*, %struct.aw_clk_prediv_mux_sc** %5, align 8
  %26 = getelementptr inbounds %struct.aw_clk_prediv_mux_sc, %struct.aw_clk_prediv_mux_sc* %25, i32 0, i32 0
  %27 = call i32 @aw_clk_get_factor(i32 %24, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sdiv i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  ret i32 0
}

declare dso_local %struct.aw_clk_prediv_mux_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

declare dso_local i32 @aw_clk_get_factor(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
