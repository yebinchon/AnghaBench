; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityPrintNumberByStyle.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityPrintNumberByStyle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNITY_DISPLAY_RANGE_INT = common dso_local global i32 0, align 4
@UNITY_DISPLAY_RANGE_UINT = common dso_local global i32 0, align 4
@UnitySizeMask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityPrintNumberByStyle(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @UNITY_DISPLAY_RANGE_INT, align 4
  %7 = and i32 %5, %6
  %8 = load i32, i32* @UNITY_DISPLAY_RANGE_INT, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @UnityPrintNumber(i64 %11)
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @UNITY_DISPLAY_RANGE_UINT, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @UNITY_DISPLAY_RANGE_UINT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** @UnitySizeMask, align 8
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 15
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %21, %28
  %30 = call i32 @UnityPrintNumberUnsigned(i32 %29)
  br label %39

31:                                               ; preds = %13
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 15
  %36 = shl i32 %35, 1
  %37 = trunc i32 %36 to i8
  %38 = call i32 @UnityPrintNumberHex(i32 %33, i8 signext %37)
  br label %39

39:                                               ; preds = %31, %19
  br label %40

40:                                               ; preds = %39, %10
  ret void
}

declare dso_local i32 @UnityPrintNumber(i64) #1

declare dso_local i32 @UnityPrintNumberUnsigned(i32) #1

declare dso_local i32 @UnityPrintNumberHex(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
