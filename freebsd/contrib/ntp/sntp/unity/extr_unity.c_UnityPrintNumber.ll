; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityPrintNumber.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityPrintNumber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITY_LONG_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityPrintNumber(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 1, i64* %3, align 8
  %6 = load i64, i64* %2, align 8
  %7 = load i32, i32* @UNITY_LONG_WIDTH, align 4
  %8 = sub nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = icmp eq i64 %6, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = call i32 @UNITY_OUTPUT_CHAR(i8 signext 45)
  %14 = load i32, i32* @UNITY_LONG_WIDTH, align 4
  %15 = sub nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = shl i64 1, %16
  store i64 %17, i64* %5, align 8
  br label %28

18:                                               ; preds = %1
  %19 = load i64, i64* %2, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = call i32 @UNITY_OUTPUT_CHAR(i8 signext 45)
  %23 = load i64, i64* %2, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %5, align 8
  br label %27

25:                                               ; preds = %18
  %26 = load i64, i64* %2, align 8
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %25, %21
  br label %28

28:                                               ; preds = %27, %12
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %3, align 8
  %32 = sdiv i64 %30, %31
  %33 = icmp sgt i64 %32, 9
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i64, i64* %3, align 8
  %36 = mul nsw i64 %35, 10
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %3, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* %3, align 8
  br label %43

42:                                               ; preds = %34
  br label %44

43:                                               ; preds = %40
  br label %29

44:                                               ; preds = %42, %29
  br label %45

45:                                               ; preds = %55, %44
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* %3, align 8
  %48 = sdiv i64 %46, %47
  %49 = srem i64 %48, 10
  %50 = add nsw i64 48, %49
  %51 = trunc i64 %50 to i8
  %52 = call i32 @UNITY_OUTPUT_CHAR(i8 signext %51)
  %53 = load i64, i64* %3, align 8
  %54 = sdiv i64 %53, 10
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %45
  %56 = load i64, i64* %3, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %45, label %58

58:                                               ; preds = %55
  ret void
}

declare dso_local i32 @UNITY_OUTPUT_CHAR(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
