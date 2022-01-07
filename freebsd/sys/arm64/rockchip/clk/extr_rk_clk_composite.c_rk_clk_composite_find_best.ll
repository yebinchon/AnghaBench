; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_composite.c_rk_clk_composite_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_clk_composite_sc = type { i32, i32, i64 }

@RK_CLK_COMPOSITE_DIV_EXP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_clk_composite_sc*, i32, i32, i32*)* @rk_clk_composite_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_clk_composite_find_best(%struct.rk_clk_composite_sc* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.rk_clk_composite_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rk_clk_composite_sc* %0, %struct.rk_clk_composite_sc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %54, %4
  %16 = load i32, i32* %14, align 4
  %17 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %18 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %21 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %19, %22
  %24 = add nsw i32 %23, 1
  %25 = icmp sle i32 %16, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %15
  %27 = load %struct.rk_clk_composite_sc*, %struct.rk_clk_composite_sc** %5, align 8
  %28 = getelementptr inbounds %struct.rk_clk_composite_sc, %struct.rk_clk_composite_sc* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @RK_CLK_COMPOSITE_DIV_EXP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %14, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %13, align 4
  br label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %14, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %13, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %13, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %12, align 4
  br label %57

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %15

57:                                               ; preds = %49, %15
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %11, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
