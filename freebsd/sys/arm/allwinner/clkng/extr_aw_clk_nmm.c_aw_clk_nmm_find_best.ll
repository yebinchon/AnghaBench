; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nmm.c_aw_clk_nmm_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nmm.c_aw_clk_nmm_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_clk_nmm_sc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_clk_nmm_sc*, i32, i32*, i32*, i32*, i32*)* @aw_clk_nmm_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_nmm_find_best(%struct.aw_clk_nmm_sc* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.aw_clk_nmm_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.aw_clk_nmm_sc* %0, %struct.aw_clk_nmm_sc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32*, i32** %11, align 8
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %10, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %7, align 8
  %28 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %27, i32 0, i32 2
  %29 = call i32 @aw_clk_factor_get_max(i32* %28)
  store i32 %29, i32* %18, align 4
  %30 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %7, align 8
  %31 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %30, i32 0, i32 2
  %32 = call i32 @aw_clk_factor_get_min(i32* %31)
  store i32 %32, i32* %21, align 4
  %33 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %7, align 8
  %34 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %33, i32 0, i32 1
  %35 = call i32 @aw_clk_factor_get_max(i32* %34)
  store i32 %35, i32* %19, align 4
  %36 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %7, align 8
  %37 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %36, i32 0, i32 1
  %38 = call i32 @aw_clk_factor_get_min(i32* %37)
  store i32 %38, i32* %22, align 4
  %39 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %7, align 8
  %40 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %39, i32 0, i32 0
  %41 = call i32 @aw_clk_factor_get_max(i32* %40)
  store i32 %41, i32* %20, align 4
  %42 = load %struct.aw_clk_nmm_sc*, %struct.aw_clk_nmm_sc** %7, align 8
  %43 = getelementptr inbounds %struct.aw_clk_nmm_sc, %struct.aw_clk_nmm_sc* %42, i32 0, i32 0
  %44 = call i32 @aw_clk_factor_get_min(i32* %43)
  store i32 %44, i32* %23, align 4
  %45 = load i32, i32* %22, align 4
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %95, %6
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %19, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %98

50:                                               ; preds = %46
  %51 = load i32, i32* %23, align 4
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %92, %50
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load i32, i32* %21, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %89, %56
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %18, align 4
  %61 = icmp sle i32 %59, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %58
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %15, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %16, align 4
  %67 = sdiv i32 %65, %66
  %68 = load i32, i32* %17, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %13, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  %74 = call i64 @abs(i32 %73)
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i64 @abs(i32 %78)
  %80 = icmp slt i64 %74, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %62
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32*, i32** %10, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32*, i32** %11, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32*, i32** %12, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %62
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %58

92:                                               ; preds = %58
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %52

95:                                               ; preds = %52
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %16, align 4
  br label %46

98:                                               ; preds = %46
  %99 = load i32, i32* %14, align 4
  ret i32 %99
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
