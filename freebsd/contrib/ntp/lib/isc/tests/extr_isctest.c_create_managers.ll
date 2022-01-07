; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/tests/extr_isctest.c_create_managers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/tests/extr_isctest.c_create_managers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ncpus = common dso_local global i32 0, align 4
@mctx = common dso_local global i32 0, align 4
@taskmgr = common dso_local global i32 0, align 4
@timermgr = common dso_local global i32 0, align 4
@socketmgr = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_managers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_managers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* @ncpus, align 4
  %3 = load i32, i32* @mctx, align 4
  %4 = load i32, i32* @ncpus, align 4
  %5 = call i32 @isc_taskmgr_create(i32 %3, i32 %4, i32 0, i32* @taskmgr)
  %6 = call i32 @CHECK(i32 %5)
  %7 = load i32, i32* @mctx, align 4
  %8 = call i32 @isc_timermgr_create(i32 %7, i32* @timermgr)
  %9 = call i32 @CHECK(i32 %8)
  %10 = load i32, i32* @mctx, align 4
  %11 = call i32 @isc_socketmgr_create(i32 %10, i32* @socketmgr)
  %12 = call i32 @CHECK(i32 %11)
  %13 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %13, i32* %1, align 4
  br label %17

14:                                               ; No predecessors!
  %15 = call i32 (...) @cleanup_managers()
  %16 = load i32, i32* %2, align 4
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %14, %0
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @isc_taskmgr_create(i32, i32, i32, i32*) #1

declare dso_local i32 @isc_timermgr_create(i32, i32*) #1

declare dso_local i32 @isc_socketmgr_create(i32, i32*) #1

declare dso_local i32 @cleanup_managers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
