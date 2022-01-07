; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_get_divisors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_get_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { i32, %struct.mnp_bits }
%struct.mnp_bits = type { i32, i32, i32, i32 }

@PLL_BASE_DIVM_SHIFT = common dso_local global i32 0, align 4
@PLL_BASE_DIVN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pll_sc*, i32*, i32*, i32*)* @get_divisors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_divisors(%struct.pll_sc* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.pll_sc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mnp_bits*, align 8
  store %struct.pll_sc* %0, %struct.pll_sc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %12 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %11, i32 0, i32 1
  store %struct.mnp_bits* %12, %struct.mnp_bits** %10, align 8
  %13 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %14 = load %struct.pll_sc*, %struct.pll_sc** %5, align 8
  %15 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @RD4(%struct.pll_sc* %13, i32 %16, i32* %9)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @PLL_BASE_DIVM_SHIFT, align 4
  %20 = load %struct.mnp_bits*, %struct.mnp_bits** %10, align 8
  %21 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @get_masked(i32 %18, i32 %19, i32 %22)
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @PLL_BASE_DIVN_SHIFT, align 4
  %27 = load %struct.mnp_bits*, %struct.mnp_bits** %10, align 8
  %28 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @get_masked(i32 %25, i32 %26, i32 %29)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.mnp_bits*, %struct.mnp_bits** %10, align 8
  %34 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mnp_bits*, %struct.mnp_bits** %10, align 8
  %37 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_masked(i32 %32, i32 %35, i32 %38)
  %40 = load i32*, i32** %8, align 8
  store i32 %39, i32* %40, align 4
  ret void
}

declare dso_local i32 @RD4(%struct.pll_sc*, i32, i32*) #1

declare dso_local i32 @get_masked(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
