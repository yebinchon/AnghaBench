; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_fract.c_clk_compute_fract_div.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/clk/extr_rk_clk_fract.c_clk_compute_fract_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32*)* @clk_compute_fract_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_compute_fract_div(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
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
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %18, align 4
  store i32 0, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %23

23:                                               ; preds = %36, %6
  %24 = load i32, i32* %18, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br label %34

34:                                               ; preds = %30, %26, %23
  %35 = phi i1 [ false, %26 ], [ false, %23 ], [ %33, %30 ]
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %18, align 4
  store i32 %40, i32* %19, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = srem i32 %41, %42
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 %46, %47
  %49 = add nsw i32 %45, %48
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %19, align 4
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* %16, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %52, %55
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %16, align 4
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %19, align 4
  store i32 %58, i32* %16, align 4
  br label %23

59:                                               ; preds = %34
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %13, align 4
  %69 = load i32*, i32** %11, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %12, align 8
  store i32 %70, i32* %71, align 4
  br label %77

72:                                               ; preds = %63
  %73 = load i32, i32* %15, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %67
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
