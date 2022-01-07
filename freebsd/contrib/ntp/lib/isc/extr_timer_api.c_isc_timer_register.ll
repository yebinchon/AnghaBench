; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_timer_api.c_isc_timer_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_timer_api.c_isc_timer_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@once = common dso_local global i32 0, align 4
@initialize = common dso_local global i32 0, align 4
@createlock = common dso_local global i32 0, align 4
@timermgr_createfunc = common dso_local global i32* null, align 8
@ISC_R_EXISTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_timer_register(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %4, i64* %3, align 8
  %5 = load i32, i32* @initialize, align 4
  %6 = call i64 @isc_once_do(i32* @once, i32 %5)
  %7 = load i64, i64* @ISC_R_SUCCESS, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @RUNTIME_CHECK(i32 %9)
  %11 = call i32 @LOCK(i32* @createlock)
  %12 = load i32*, i32** @timermgr_createfunc, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  store i32* %15, i32** @timermgr_createfunc, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @ISC_R_EXISTS, align 8
  store i64 %17, i64* %3, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = call i32 @UNLOCK(i32* @createlock)
  %20 = load i64, i64* %3, align 8
  ret i64 %20
}

declare dso_local i32 @RUNTIME_CHECK(i32) #1

declare dso_local i64 @isc_once_do(i32*, i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
