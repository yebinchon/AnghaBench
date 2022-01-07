; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_find_new_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_thread-db.c_thread_db_find_new_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thread_agent = common dso_local global i32 0, align 4
@find_new_threads_callback = common dso_local global i32 0, align 4
@TD_THR_ANY_STATE = common dso_local global i32 0, align 4
@TD_THR_LOWEST_PRIORITY = common dso_local global i32 0, align 4
@TD_SIGNO_MASK = common dso_local global i32 0, align 4
@TD_THR_ANY_USER_FLAGS = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Cannot find new threads: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @thread_db_find_new_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_db_find_new_threads() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @thread_agent, align 4
  %3 = load i32, i32* @find_new_threads_callback, align 4
  %4 = load i32, i32* @TD_THR_ANY_STATE, align 4
  %5 = load i32, i32* @TD_THR_LOWEST_PRIORITY, align 4
  %6 = load i32, i32* @TD_SIGNO_MASK, align 4
  %7 = load i32, i32* @TD_THR_ANY_USER_FLAGS, align 4
  %8 = call i64 @td_ta_thr_iter_p(i32 %2, i32 %3, i32* null, i32 %4, i32 %5, i32 %6, i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* %1, align 8
  %10 = load i64, i64* @TD_OK, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %0
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @thread_db_err_str(i64 %13)
  %15 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %12, %0
  ret void
}

declare dso_local i64 @td_ta_thr_iter_p(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @thread_db_err_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
