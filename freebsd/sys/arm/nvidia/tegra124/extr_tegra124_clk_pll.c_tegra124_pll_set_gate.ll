; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_tegra124_pll_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_tegra124_pll_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.pll_sc = type { i64 }

@PLL_E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @tegra124_pll_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_pll_set_gate(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pll_sc*, align 8
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = call %struct.pll_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.pll_sc* %9, %struct.pll_sc** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %14 = call i32 @pll_disable(%struct.pll_sc* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %18 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PLL_E, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %24 = call i32 @plle_enable(%struct.pll_sc* %23)
  store i32 %24, i32* %6, align 4
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.pll_sc*, %struct.pll_sc** %7, align 8
  %27 = call i32 @pll_enable(%struct.pll_sc* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @pll_disable(%struct.pll_sc*) #1

declare dso_local i32 @plle_enable(%struct.pll_sc*) #1

declare dso_local i32 @pll_enable(%struct.pll_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
