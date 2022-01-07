; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ilogb.c_ilogb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/src/extr_s_ilogb.c_ilogb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP_ILOGB0 = common dso_local global i32 0, align 4
@FP_ILOGBNAN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ilogb(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store double %0, double* %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load double, double* %3, align 8
  %10 = call i32 @EXTRACT_WORDS(i32 %7, i32 %8, double %9)
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 2147483647
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1048576
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @FP_ILOGB0, align 4
  store i32 %21, i32* %2, align 4
  br label %69

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  store i32 -1043, i32* %6, align 4
  br label %26

26:                                               ; preds = %32, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %26

35:                                               ; preds = %26
  br label %49

36:                                               ; preds = %22
  store i32 -1022, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = shl i32 %37, 11
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %45, %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %39

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %69

52:                                               ; preds = %1
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %53, 2146435072
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = ashr i32 %56, 20
  %58 = sub nsw i32 %57, 1023
  store i32 %58, i32* %2, align 4
  br label %69

59:                                               ; preds = %52
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 2146435072
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %59
  %66 = load i32, i32* @FP_ILOGBNAN, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @INT_MAX, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %65, %55, %50, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @EXTRACT_WORDS(i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
