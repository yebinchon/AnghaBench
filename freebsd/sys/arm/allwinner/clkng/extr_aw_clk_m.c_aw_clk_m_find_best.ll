; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_m.c_aw_clk_m_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_m.c_aw_clk_m_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_clk_m_sc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AW_CLK_FACTOR_POWER_OF_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_clk_m_sc*, i32, i32*, i32*)* @aw_clk_m_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_m_find_best(%struct.aw_clk_m_sc* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.aw_clk_m_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.aw_clk_m_sc* %0, %struct.aw_clk_m_sc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %5, align 8
  %16 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %15, i32 0, i32 0
  %17 = call i32 @aw_clk_factor_get_max(%struct.TYPE_3__* %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %5, align 8
  %19 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %18, i32 0, i32 0
  %20 = call i32 @aw_clk_factor_get_min(%struct.TYPE_3__* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %59, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 %31, %32
  %34 = call i64 @abs(i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %36, %37
  %39 = call i64 @abs(i32 %38)
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %26
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %26
  %46 = load %struct.aw_clk_m_sc*, %struct.aw_clk_m_sc** %5, align 8
  %47 = getelementptr inbounds %struct.aw_clk_m_sc, %struct.aw_clk_m_sc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AW_CLK_FACTOR_POWER_OF_TWO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %59

56:                                               ; preds = %45
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %53
  br label %22

60:                                               ; preds = %22
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @aw_clk_factor_get_max(%struct.TYPE_3__*) #1

declare dso_local i32 @aw_clk_factor_get_min(%struct.TYPE_3__*) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
