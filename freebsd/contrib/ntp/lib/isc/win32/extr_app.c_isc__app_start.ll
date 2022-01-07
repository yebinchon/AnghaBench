; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@main_thread = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@hEvents = common dso_local global i32* null, align 8
@RELOAD_EVENT = common dso_local global i64 0, align 8
@SHUTDOWN_EVENT = common dso_local global i64 0, align 8
@on_run = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc__app_start() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = call i32 (...) @GetCurrentThread()
  store i32 %3, i32* @main_thread, align 4
  %4 = call i64 @isc_mutex_init(i32* @lock)
  store i64 %4, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @ISC_R_SUCCESS, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* %2, align 8
  store i64 %9, i64* %1, align 8
  br label %26

10:                                               ; preds = %0
  %11 = load i32, i32* @FALSE, align 4
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @CreateEvent(i32* null, i32 %11, i32 %12, i32* null)
  %14 = load i32*, i32** @hEvents, align 8
  %15 = load i64, i64* @RELOAD_EVENT, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @CreateEvent(i32* null, i32 %17, i32 %18, i32* null)
  %20 = load i32*, i32** @hEvents, align 8
  %21 = load i64, i64* @SHUTDOWN_EVENT, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @on_run, align 4
  %24 = call i32 @ISC_LIST_INIT(i32 %23)
  %25 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %25, i64* %1, align 8
  br label %26

26:                                               ; preds = %10, %8
  %27 = load i64, i64* %1, align 8
  ret i64 %27
}

declare dso_local i32 @GetCurrentThread(...) #1

declare dso_local i64 @isc_mutex_init(i32*) #1

declare dso_local i32 @CreateEvent(i32*, i32, i32, i32*) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
