; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_frac.c_aw_clk_frac_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_clk_frac_sc = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_clk_frac_sc*, i32, i32, i32*, i32*)* @aw_clk_frac_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_frac_find_best(%struct.aw_clk_frac_sc* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.aw_clk_frac_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.aw_clk_frac_sc* %0, %struct.aw_clk_frac_sc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %10, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %7, align 8
  %23 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %22, i32 0, i32 2
  %24 = call i32 @aw_clk_factor_get_max(i32* %23)
  store i32 %24, i32* %16, align 4
  %25 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %7, align 8
  %26 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %25, i32 0, i32 3
  %27 = call i32 @aw_clk_factor_get_max(i32* %26)
  store i32 %27, i32* %17, align 4
  %28 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %7, align 8
  %29 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %28, i32 0, i32 2
  %30 = call i32 @aw_clk_factor_get_min(i32* %29)
  store i32 %30, i32* %18, align 4
  %31 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %7, align 8
  %32 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %19, align 4
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %15, align 4
  br label %37

37:                                               ; preds = %97, %5
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %17, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %100

41:                                               ; preds = %37
  %42 = load i32, i32* %18, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %93, %41
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %15, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %14, align 4
  %52 = sdiv i32 %50, %51
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %7, align 8
  %55 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %93

59:                                               ; preds = %47
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.aw_clk_frac_sc*, %struct.aw_clk_frac_sc** %7, align 8
  %62 = getelementptr inbounds %struct.aw_clk_frac_sc, %struct.aw_clk_frac_sc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %93

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* %15, align 4
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %6, align 4
  br label %102

76:                                               ; preds = %66
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  %80 = call i64 @abs(i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i64 @abs(i32 %83)
  %85 = icmp slt i64 %80, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %76
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %11, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %76
  br label %93

93:                                               ; preds = %92, %65, %58
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %43

96:                                               ; preds = %43
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %15, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %15, align 4
  br label %37

100:                                              ; preds = %37
  %101 = load i32, i32* %13, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %100, %70
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @aw_clk_factor_get_max(i32*) #1

declare dso_local i32 @aw_clk_factor_get_min(i32*) #1

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
