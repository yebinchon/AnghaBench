; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_mipi.c_aw_clk_mipi_find_best.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_mipi.c_aw_clk_mipi_find_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_clk_mipi_sc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aw_clk_mipi_sc*, i64, i64*, i64*, i64*, i64*)* @aw_clk_mipi_find_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aw_clk_mipi_find_best(%struct.aw_clk_mipi_sc* %0, i64 %1, i64* %2, i64* %3, i64* %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.aw_clk_mipi_sc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.aw_clk_mipi_sc* %0, %struct.aw_clk_mipi_sc** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i64 0, i64* %15, align 8
  %19 = load i64*, i64** %13, align 8
  store i64 0, i64* %19, align 8
  %20 = load i64*, i64** %11, align 8
  store i64 0, i64* %20, align 8
  %21 = load i64*, i64** %12, align 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %8, align 8
  %23 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %22, i32 0, i32 2
  %24 = call i64 @aw_clk_factor_get_min(i32* %23)
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %89, %6
  %26 = load i64, i64* %16, align 8
  %27 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %8, align 8
  %28 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %27, i32 0, i32 2
  %29 = call i64 @aw_clk_factor_get_max(i32* %28)
  %30 = icmp sle i64 %26, %29
  br i1 %30, label %31, label %92

31:                                               ; preds = %25
  %32 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %8, align 8
  %33 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %32, i32 0, i32 1
  %34 = call i64 @aw_clk_factor_get_min(i32* %33)
  store i64 %34, i64* %17, align 8
  br label %35

35:                                               ; preds = %86, %31
  %36 = load i64, i64* %17, align 8
  %37 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %8, align 8
  %38 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %37, i32 0, i32 1
  %39 = call i64 @aw_clk_factor_get_max(i32* %38)
  %40 = icmp sle i64 %36, %39
  br i1 %40, label %41, label %89

41:                                               ; preds = %35
  %42 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %8, align 8
  %43 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %42, i32 0, i32 0
  %44 = call i64 @aw_clk_factor_get_min(i32* %43)
  store i64 %44, i64* %18, align 8
  br label %45

45:                                               ; preds = %83, %41
  %46 = load i64, i64* %18, align 8
  %47 = load %struct.aw_clk_mipi_sc*, %struct.aw_clk_mipi_sc** %8, align 8
  %48 = getelementptr inbounds %struct.aw_clk_mipi_sc, %struct.aw_clk_mipi_sc* %47, i32 0, i32 0
  %49 = call i64 @aw_clk_factor_get_max(i32* %48)
  %50 = icmp sle i64 %46, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %16, align 8
  %54 = mul nsw i64 %52, %53
  %55 = load i64, i64* %17, align 8
  %56 = mul nsw i64 %54, %55
  %57 = load i64, i64* %18, align 8
  %58 = sdiv i64 %56, %57
  store i64 %58, i64* %14, align 8
  %59 = load i64*, i64** %10, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %14, align 8
  %62 = sub nsw i64 %60, %61
  %63 = load i64*, i64** %10, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %15, align 8
  %66 = sub nsw i64 %64, %65
  %67 = icmp slt i64 %62, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %51
  %69 = load i64, i64* %14, align 8
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64*, i64** %13, align 8
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %17, align 8
  %73 = load i64*, i64** %11, align 8
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %18, align 8
  %75 = load i64*, i64** %12, align 8
  store i64 %74, i64* %75, align 8
  br label %76

76:                                               ; preds = %68, %51
  %77 = load i64, i64* %15, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i64, i64* %15, align 8
  store i64 %82, i64* %7, align 8
  br label %94

83:                                               ; preds = %76
  %84 = load i64, i64* %18, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %18, align 8
  br label %45

86:                                               ; preds = %45
  %87 = load i64, i64* %17, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %17, align 8
  br label %35

89:                                               ; preds = %35
  %90 = load i64, i64* %16, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %16, align 8
  br label %25

92:                                               ; preds = %25
  %93 = load i64, i64* %15, align 8
  store i64 %93, i64* %7, align 8
  br label %94

94:                                               ; preds = %92, %81
  %95 = load i64, i64* %7, align 8
  ret i64 %95
}

declare dso_local i64 @aw_clk_factor_get_min(i32*) #1

declare dso_local i64 @aw_clk_factor_get_max(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
