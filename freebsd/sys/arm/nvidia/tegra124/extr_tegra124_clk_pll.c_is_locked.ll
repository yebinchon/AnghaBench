; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_is_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_is_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { i32, i32, i32 }

@PLLRE_MISC_LOCK = common dso_local global i64 0, align 8
@PLLE_MISC_LOCK = common dso_local global i64 0, align 8
@PLL_BASE_LOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_sc*)* @is_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_locked(%struct.pll_sc* %0) #0 {
  %2 = alloca %struct.pll_sc*, align 8
  %3 = alloca i64, align 8
  store %struct.pll_sc* %0, %struct.pll_sc** %2, align 8
  %4 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %5 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 128, label %7
    i32 129, label %16
  ]

7:                                                ; preds = %1
  %8 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %9 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %10 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @RD4(%struct.pll_sc* %8, i32 %11, i64* %3)
  %13 = load i64, i64* @PLLRE_MISC_LOCK, align 8
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %3, align 8
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %18 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %19 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @RD4(%struct.pll_sc* %17, i32 %20, i64* %3)
  %22 = load i64, i64* @PLLE_MISC_LOCK, align 8
  %23 = load i64, i64* %3, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %3, align 8
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %27 = load %struct.pll_sc*, %struct.pll_sc** %2, align 8
  %28 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @RD4(%struct.pll_sc* %26, i32 %29, i64* %3)
  %31 = load i64, i64* @PLL_BASE_LOCK, align 8
  %32 = load i64, i64* %3, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %3, align 8
  br label %34

34:                                               ; preds = %25, %16, %7
  %35 = load i64, i64* %3, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i32 @RD4(%struct.pll_sc*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
