; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_tegra124_pll_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_tegra124_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.pll_sc = type { i32, i64, i32, i32 }

@PLL_BASE_ENABLE = common dso_local global i32 0, align 4
@PLL_REFE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @tegra124_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_pll_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pll_sc*, align 8
  %6 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clknode*, %struct.clknode** %3, align 8
  %8 = call %struct.pll_sc* @clknode_get_softc(%struct.clknode* %7)
  store %struct.pll_sc* %8, %struct.pll_sc** %5, align 8
  %9 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %10 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %11 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @RD4(%struct.pll_sc* %9, i32 %12, i32* %6)
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PLL_BASE_ENABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %20 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %21 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @RD4(%struct.pll_sc* %19, i32 %22, i32* %6)
  %24 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %25 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %30 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %31 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @WR4(%struct.pll_sc* %29, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %18, %2
  %36 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %37 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PLL_REFE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %43 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %44 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @RD4(%struct.pll_sc* %42, i32 %45, i32* %6)
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, -536870913
  store i32 %48, i32* %6, align 4
  %49 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %50 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %51 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @WR4(%struct.pll_sc* %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %41, %35
  %56 = load %struct.clknode*, %struct.clknode** %3, align 8
  %57 = call i32 @clknode_init_parent_idx(%struct.clknode* %56, i32 0)
  ret i32 0
}

declare dso_local %struct.pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @RD4(%struct.pll_sc*, i32, i32*) #1

declare dso_local i32 @WR4(%struct.pll_sc*, i32, i32) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
