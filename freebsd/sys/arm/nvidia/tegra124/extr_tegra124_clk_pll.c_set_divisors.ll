; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_set_divisors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_set_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { %struct.mnp_bits }
%struct.mnp_bits = type { i32, i32, i32, i32 }

@PLL_BASE_DIVM_SHIFT = common dso_local global i32 0, align 4
@PLL_BASE_DIVN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_sc*, i32, i32, i32, i32)* @set_divisors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_divisors(%struct.pll_sc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pll_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mnp_bits*, align 8
  store %struct.pll_sc* %0, %struct.pll_sc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pll_sc*, %struct.pll_sc** %6, align 8
  %13 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %12, i32 0, i32 0
  store %struct.mnp_bits* %13, %struct.mnp_bits** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PLL_BASE_DIVM_SHIFT, align 4
  %17 = load %struct.mnp_bits*, %struct.mnp_bits** %11, align 8
  %18 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @set_masked(i32 %14, i32 %15, i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PLL_BASE_DIVN_SHIFT, align 4
  %24 = load %struct.mnp_bits*, %struct.mnp_bits** %11, align 8
  %25 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @set_masked(i32 %21, i32 %22, i32 %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.mnp_bits*, %struct.mnp_bits** %11, align 8
  %31 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mnp_bits*, %struct.mnp_bits** %11, align 8
  %34 = getelementptr inbounds %struct.mnp_bits, %struct.mnp_bits* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_masked(i32 %28, i32 %29, i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @set_masked(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
