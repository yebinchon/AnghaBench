; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityEnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64 }

@UNITY_PRINT_EOL = common dso_local global i32 0, align 4
@UnityStrBreaker = common dso_local global i32 0, align 4
@Unity = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@UnityStrResultsTests = common dso_local global i32 0, align 4
@UnityStrResultsPass = common dso_local global i32 0, align 4
@UnityStrResultsXFAIL = common dso_local global i32 0, align 4
@UnityStrResultsFailures = common dso_local global i32 0, align 4
@UnityStrResultsXPASS = common dso_local global i32 0, align 4
@UnityStrResultsIgnored = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnityEnd() #0 {
  %1 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %2 = load i32, i32* @UnityStrBreaker, align 4
  %3 = call i32 @UnityPrint(i32 %2)
  %4 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 5), align 8
  %6 = trunc i64 %5 to i32
  %7 = call i32 @UnityPrintNumber(i32 %6)
  %8 = load i32, i32* @UnityStrResultsTests, align 4
  %9 = call i32 @UnityPrint(i32 %8)
  %10 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 4), align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @UnityPrintNumber(i32 %12)
  %14 = load i32, i32* @UnityStrResultsPass, align 4
  %15 = call i32 @UnityPrint(i32 %14)
  %16 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 3), align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @UnityPrintNumber(i32 %18)
  %20 = load i32, i32* @UnityStrResultsXFAIL, align 4
  %21 = call i32 @UnityPrint(i32 %20)
  %22 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 8
  %24 = call i32 @UnityPrintNumber(i32 %23)
  %25 = load i32, i32* @UnityStrResultsFailures, align 4
  %26 = call i32 @UnityPrint(i32 %25)
  %27 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 1), align 4
  %29 = call i32 @UnityPrintNumber(i32 %28)
  %30 = load i32, i32* @UnityStrResultsXPASS, align 4
  %31 = call i32 @UnityPrint(i32 %30)
  %32 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 2), align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @UnityPrintNumber(i32 %34)
  %36 = load i32, i32* @UnityStrResultsIgnored, align 4
  %37 = call i32 @UnityPrint(i32 %36)
  %38 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %39 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %0
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 1), align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (...) @UnityPrintOk()
  br label %49

47:                                               ; preds = %42, %0
  %48 = call i32 (...) @UnityPrintFail()
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* @UNITY_PRINT_EOL, align 4
  %51 = call i32 (...) @UNITY_OUTPUT_COMPLETE()
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 8
  ret i32 %52
}

declare dso_local i32 @UnityPrint(i32) #1

declare dso_local i32 @UnityPrintNumber(i32) #1

declare dso_local i32 @UnityPrintOk(...) #1

declare dso_local i32 @UnityPrintFail(...) #1

declare dso_local i32 @UNITY_OUTPUT_COMPLETE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
