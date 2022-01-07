; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_socket_api.c_isc_socketmgr_createinctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_socket_api.c_isc_socketmgr_createinctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@createlock = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_socketmgr_createinctx(i32* %0, i32* %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32** %2, i32*** %6, align 8
  %8 = call i32 @LOCK(i32* @createlock)
  %9 = call i32 @REQUIRE(i32 1)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32**, i32*** %6, align 8
  %12 = call i64 @socketmgr_createfunc(i32* %10, i32** %11)
  store i64 %12, i64* %7, align 8
  %13 = call i32 @UNLOCK(i32* @createlock)
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @ISC_R_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32**, i32*** %6, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @isc_appctx_setsocketmgr(i32* %18, i32* %20)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i64, i64* %7, align 8
  ret i64 %23
}

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i64 @socketmgr_createfunc(i32*, i32**) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @isc_appctx_setsocketmgr(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
