; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3399_clk_pll_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_pll.c_rk3399_clk_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_clk_pll_sc = type { i64, i64 }

@RK3399_CLK_PLL_MODE_NORMAL = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_MASK = common dso_local global i32 0, align 4
@RK_CLK_PLL_MASK_SHIFT = common dso_local global i32 0, align 4
@RK3399_CLK_PLL_MODE_OFFSET = common dso_local global i64 0, align 8
@RK3399_CLK_PLL_WRITE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @rk3399_clk_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3399_clk_pll_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rk_clk_pll_sc*, align 8
  %6 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clknode*, %struct.clknode** %3, align 8
  %8 = call %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode* %7)
  store %struct.rk_clk_pll_sc* %8, %struct.rk_clk_pll_sc** %5, align 8
  %9 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %5, align 8
  %10 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @RK3399_CLK_PLL_MODE_NORMAL, align 4
  %15 = load i32, i32* @RK3399_CLK_PLL_MODE_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @RK3399_CLK_PLL_MODE_MASK, align 4
  %18 = load i32, i32* @RK_CLK_PLL_MASK_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load %struct.clknode*, %struct.clknode** %3, align 8
  %23 = load %struct.rk_clk_pll_sc*, %struct.rk_clk_pll_sc** %5, align 8
  %24 = getelementptr inbounds %struct.rk_clk_pll_sc, %struct.rk_clk_pll_sc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RK3399_CLK_PLL_MODE_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @RK3399_CLK_PLL_WRITE_MASK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @WRITE4(%struct.clknode* %22, i64 %27, i32 %30)
  br label %32

32:                                               ; preds = %13, %2
  %33 = load %struct.clknode*, %struct.clknode** %3, align 8
  %34 = call i32 @clknode_init_parent_idx(%struct.clknode* %33, i32 0)
  ret i32 0
}

declare dso_local %struct.rk_clk_pll_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i64, i32) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
