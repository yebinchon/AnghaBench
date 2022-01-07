; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_reload.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_app.c_isc__app_reload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_TRUE = common dso_local global i64 0, align 8
@lock = common dso_local global i32 0, align 4
@running = common dso_local global i32 0, align 4
@shutdown_requested = common dso_local global i64 0, align 8
@ISC_FALSE = common dso_local global i64 0, align 8
@hEvents = common dso_local global i32* null, align 8
@RELOAD_EVENT = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc__app_reload() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @ISC_TRUE, align 8
  store i64 %2, i64* %1, align 8
  %3 = call i32 @LOCK(i32* @lock)
  %4 = load i32, i32* @running, align 4
  %5 = call i32 @REQUIRE(i32 %4)
  %6 = load i64, i64* @shutdown_requested, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i64, i64* @ISC_FALSE, align 8
  store i64 %9, i64* %1, align 8
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 @UNLOCK(i32* @lock)
  %12 = load i64, i64* %1, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i32*, i32** @hEvents, align 8
  %16 = load i64, i64* @RELOAD_EVENT, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SetEvent(i32 %18)
  br label %20

20:                                               ; preds = %14, %10
  %21 = load i32, i32* @ISC_R_SUCCESS, align 4
  ret i32 %21
}

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @SetEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
