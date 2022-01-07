; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/softfloat/bits32/extr_softfloat-macros_estimateSqrt32.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/softfloat/bits32/extr_softfloat-macros_estimateSqrt32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@estimateSqrt32.sqrtOddAdjustments = internal constant [16 x i32] [i32 4, i32 34, i32 93, i32 177, i32 285, i32 415, i32 566, i32 736, i32 924, i32 1128, i32 1349, i32 1585, i32 1835, i32 2098, i32 2374, i32 2663], align 16
@estimateSqrt32.sqrtEvenAdjustments = internal constant [16 x i32] [i32 2605, i32 2223, i32 1882, i32 1577, i32 1306, i32 1065, i32 854, i32 670, i32 512, i32 377, i32 265, i32 175, i32 104, i32 52, i32 18, i32 2], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @estimateSqrt32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @estimateSqrt32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = ashr i32 %8, 27
  %10 = and i32 %9, 15
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = ashr i32 %16, 17
  %18 = add nsw i32 16384, %17
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* @estimateSqrt32.sqrtOddAdjustments, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %23, %24
  %26 = shl i32 %25, 14
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 15
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = ashr i32 %33, 17
  %35 = add nsw i32 32768, %34
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* @estimateSqrt32.sqrtEvenAdjustments, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sdiv i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sle i32 131072, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %51

48:                                               ; preds = %32
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 15
  br label %51

51:                                               ; preds = %48, %47
  %52 = phi i32 [ -32768, %47 ], [ %50, %48 ]
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = ashr i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %68

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %15
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @estimateDiv64To32(i32 %61, i32 0, i32 %62)
  %64 = ashr i32 %63, 1
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 1
  %67 = add nsw i32 %64, %66
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %60, %56
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @estimateDiv64To32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
