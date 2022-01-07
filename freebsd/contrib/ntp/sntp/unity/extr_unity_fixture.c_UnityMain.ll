; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity_fixture.c_UnityMain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/unity/extr_unity_fixture.c_UnityMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@UnityFixture = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UnityMain(i32 %0, i8** %1, void ()* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca void ()*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store void ()* %2, void ()** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i8**, i8*** %6, align 8
  %12 = call i32 @UnityGetCommandLineOptions(i32 %10, i8** %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %37

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @UnityFixture, i32 0, i32 0), align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i8**, i8*** %6, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @UnityBegin(i8* %25)
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @announceTestRun(i32 %27)
  %29 = load void ()*, void ()** %7, align 8
  call void %29()
  %30 = call i32 @UNITY_OUTPUT_CHAR(i8 signext 10)
  %31 = call i32 (...) @UnityEnd()
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %9, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %18

35:                                               ; preds = %18
  %36 = call i32 (...) @UnityFailureCount()
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @UnityGetCommandLineOptions(i32, i8**) #1

declare dso_local i32 @UnityBegin(i8*) #1

declare dso_local i32 @announceTestRun(i32) #1

declare dso_local i32 @UNITY_OUTPUT_CHAR(i8 signext) #1

declare dso_local i32 @UnityEnd(...) #1

declare dso_local i32 @UnityFailureCount(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
