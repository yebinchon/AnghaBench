; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityDefaultTestRun.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity.c_UnityDefaultTestRun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i64 }

@Unity = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnityDefaultTestRun(i32 (...)* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32 (...)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 (...)* %0, i32 (...)** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i8*, i8** %5, align 8
  store i8* %7, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 0), align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 3), align 8
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 2), align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 2), align 4
  %12 = call i64 (...) @TEST_PROTECT()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = call i32 (...) @setUp()
  %16 = load i32 (...)*, i32 (...)** %4, align 8
  %17 = call i32 (...) %16()
  br label %18

18:                                               ; preds = %14, %3
  %19 = call i64 (...) @TEST_PROTECT()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Unity, i32 0, i32 1), align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = call i32 (...) @tearDown()
  br label %26

26:                                               ; preds = %24, %21, %18
  %27 = call i32 (...) @UnityConcludeTest()
  ret void
}

declare dso_local i64 @TEST_PROTECT(...) #1

declare dso_local i32 @setUp(...) #1

declare dso_local i32 @tearDown(...) #1

declare dso_local i32 @UnityConcludeTest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
