; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityAssertNumbersWithin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityAssertNumbersWithin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@UNITY_SKIP_EXECUTION = common dso_local global i32 0, align 4
@UNITY_DISPLAY_RANGE_INT = common dso_local global i32 0, align 4
@Unity = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@UnityStrDelta = common dso_local global i32 0, align 4
@UnityStrExpected = common dso_local global i32 0, align 4
@UnityStrWas = common dso_local global i32 0, align 4
@UNITY_FAIL_AND_BAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityAssertNumbersWithin(i64 %0, i64 %1, i64 %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @UNITY_SKIP_EXECUTION, align 4
  %14 = load i32, i32* %12, align 4
  %15 = load i32, i32* @UNITY_DISPLAY_RANGE_INT, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @UNITY_DISPLAY_RANGE_INT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %6
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %8, align 8
  %26 = sub nsw i64 %24, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp sgt i64 %26, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 4
  br label %37

30:                                               ; preds = %19
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %9, align 8
  %33 = sub nsw i64 %31, %32
  %34 = load i64, i64* %7, align 8
  %35 = icmp sgt i64 %33, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 4
  br label %37

37:                                               ; preds = %30, %23
  br label %57

38:                                               ; preds = %6
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i64, i64* %7, align 8
  %47 = icmp sgt i64 %45, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 4
  br label %56

49:                                               ; preds = %38
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load i64, i64* %7, align 8
  %54 = icmp sgt i64 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 4
  br label %56

56:                                               ; preds = %49, %42
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @UnityTestResultsFailBegin(i32 %61)
  %63 = load i32, i32* @UnityStrDelta, align 4
  %64 = call i32 @UnityPrint(i32 %63)
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @UnityPrintNumberByStyle(i64 %65, i32 %66)
  %68 = load i32, i32* @UnityStrExpected, align 4
  %69 = call i32 @UnityPrint(i32 %68)
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @UnityPrintNumberByStyle(i64 %70, i32 %71)
  %73 = load i32, i32* @UnityStrWas, align 4
  %74 = call i32 @UnityPrint(i32 %73)
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @UnityPrintNumberByStyle(i64 %75, i32 %76)
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @UnityAddMsgIfSpecified(i8* %78)
  %80 = load i32, i32* @UNITY_FAIL_AND_BAIL, align 4
  br label %81

81:                                               ; preds = %60, %57
  ret void
}

declare dso_local i32 @UnityTestResultsFailBegin(i32) #1

declare dso_local i32 @UnityPrint(i32) #1

declare dso_local i32 @UnityPrintNumberByStyle(i64, i32) #1

declare dso_local i32 @UnityAddMsgIfSpecified(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
