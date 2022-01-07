; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_condition.c_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_condition.c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@WAIT_FAILED = common dso_local global i64 0, align 8
@ISC_R_UNEXPECTED = common dso_local global i64 0, align 8
@WAIT_TIMEOUT = common dso_local global i64 0, align 8
@ISC_R_TIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i64)* @wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wait(%struct.TYPE_7__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %11 = call i32 (...) @isc_thread_self()
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = call i64 @find_thread_condition(i32 %11, %struct.TYPE_7__* %12, %struct.TYPE_6__** %10)
  store i64 %13, i64* %9, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @ISC_R_SUCCESS, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* %9, align 8
  store i64 %18, i64* %4, align 8
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @LeaveCriticalSection(i32* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @WaitForMultipleObjects(i32 2, i32 %28, i32 %29, i64 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @EnterCriticalSection(i32* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @WAIT_FAILED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %19
  %42 = load i64, i64* @ISC_R_UNEXPECTED, align 8
  store i64 %42, i64* %4, align 8
  br label %51

43:                                               ; preds = %19
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @WAIT_TIMEOUT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i64, i64* @ISC_R_TIMEDOUT, align 8
  store i64 %48, i64* %4, align 8
  br label %51

49:                                               ; preds = %43
  %50 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %47, %41, %17
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i64 @find_thread_condition(i32, %struct.TYPE_7__*, %struct.TYPE_6__**) #1

declare dso_local i32 @isc_thread_self(...) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i64 @WaitForMultipleObjects(i32, i32, i32, i64) #1

declare dso_local i32 @EnterCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
