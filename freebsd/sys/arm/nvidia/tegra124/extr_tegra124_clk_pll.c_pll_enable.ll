; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pll_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { i64, i32 }

@PLL_E = common dso_local global i64 0, align 8
@PLL_BASE_BYPASS = common dso_local global i32 0, align 4
@PLL_BASE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_sc*)* @pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_enable(%struct.pll_sc* %0) #0 {
  %2 = alloca %struct.pll_sc*, align 8
  %3 = alloca i32, align 4
  store %struct.pll_sc* %0, %struct.pll_sc** %2, align 8
  %4 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %5 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %6 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @RD4(%struct.pll_sc* %4, i32 %7, i32* %3)
  %9 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %10 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PLL_E, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @PLL_BASE_BYPASS, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* @PLL_BASE_ENABLE, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %24 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %25 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @WR4(%struct.pll_sc* %23, i32 %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @RD4(%struct.pll_sc*, i32, i32*) #1

declare dso_local i32 @WR4(%struct.pll_sc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
