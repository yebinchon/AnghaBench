; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/tests/extr_isctest.c_isc_test_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/tests/extr_isctest.c_isc_test_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@taskmgr = common dso_local global i32* null, align 8
@lctx = common dso_local global i32* null, align 8
@hash_active = common dso_local global i64 0, align 8
@ISC_FALSE = common dso_local global i64 0, align 8
@ectx = common dso_local global i32* null, align 8
@mctx = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isc_test_end() #0 {
  %1 = load i32*, i32** @taskmgr, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @isc_taskmgr_destroy(i32** @taskmgr)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32*, i32** @lctx, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = call i32 @isc_log_destroy(i32** @lctx)
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i64, i64* @hash_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = call i32 (...) @isc_hash_destroy()
  %15 = load i64, i64* @ISC_FALSE, align 8
  store i64 %15, i64* @hash_active, align 8
  br label %16

16:                                               ; preds = %13, %10
  %17 = load i32*, i32** @ectx, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @isc_entropy_detach(i32** @ectx)
  br label %21

21:                                               ; preds = %19, %16
  %22 = call i32 (...) @cleanup_managers()
  %23 = load i32*, i32** @mctx, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @isc_mem_destroy(i32** @mctx)
  br label %27

27:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @isc_taskmgr_destroy(i32**) #1

declare dso_local i32 @isc_log_destroy(i32**) #1

declare dso_local i32 @isc_hash_destroy(...) #1

declare dso_local i32 @isc_entropy_detach(i32**) #1

declare dso_local i32 @cleanup_managers(...) #1

declare dso_local i32 @isc_mem_destroy(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
