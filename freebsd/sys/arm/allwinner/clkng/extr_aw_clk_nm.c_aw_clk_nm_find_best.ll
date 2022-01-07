; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nm.c_aw_clk_nm_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_clk_nm_sc = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AW_CLK_FACTOR_POWER_OF_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_clk_nm_sc*, i32, i32*, i32*, i32*)* @aw_clk_nm_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_nm_find_best(%struct.aw_clk_nm_sc* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.aw_clk_nm_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.aw_clk_nm_sc* %0, %struct.aw_clk_nm_sc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %6, align 8
  %22 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %21, i32 0, i32 0
  %23 = call i32 @aw_clk_factor_get_max(%struct.TYPE_3__* %22)
  store i32 %23, i32* %15, align 4
  %24 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %6, align 8
  %25 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %24, i32 0, i32 1
  %26 = call i32 @aw_clk_factor_get_max(%struct.TYPE_3__* %25)
  store i32 %26, i32* %16, align 4
  %27 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %6, align 8
  %28 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %27, i32 0, i32 0
  %29 = call i32 @aw_clk_factor_get_min(%struct.TYPE_3__* %28)
  store i32 %29, i32* %17, align 4
  %30 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %6, align 8
  %31 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %30, i32 0, i32 1
  %32 = call i32 @aw_clk_factor_get_min(%struct.TYPE_3__* %31)
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* %17, align 4
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %96, %5
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %97

38:                                               ; preds = %34
  %39 = load i32, i32* %17, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %81, %38
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sdiv i32 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %11, align 4
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %51, %52
  %54 = call i64 @abs(i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sub nsw i32 %56, %57
  %59 = call i64 @abs(i32 %58)
  %60 = icmp slt i64 %54, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %13, align 4
  %66 = load i32*, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %44
  %68 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %6, align 8
  %69 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AW_CLK_FACTOR_POWER_OF_TWO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %14, align 4
  %77 = shl i32 %76, 1
  store i32 %77, i32* %14, align 4
  br label %81

78:                                               ; preds = %67
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %40

82:                                               ; preds = %40
  %83 = load %struct.aw_clk_nm_sc*, %struct.aw_clk_nm_sc** %6, align 8
  %84 = getelementptr inbounds %struct.aw_clk_nm_sc, %struct.aw_clk_nm_sc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AW_CLK_FACTOR_POWER_OF_TWO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %13, align 4
  %92 = shl i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %96

93:                                               ; preds = %82
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %34

97:                                               ; preds = %34
  %98 = load i32, i32* %12, align 4
  ret i32 %98
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
