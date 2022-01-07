; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_thread_db_create_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/gdbserver/extr_thread-db.c_thread_db_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.inferior_linux_data = type { i32 }

@debug_threads = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Thread creation event.\0A\00", align 1
@current_inferior = common dso_local global i32 0, align 4
@thread_agent = common dso_local global i32 0, align 4
@TD_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"thread getmsg err: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @thread_db_create_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_db_create_event(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.inferior_linux_data*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i64, i64* @debug_threads, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 (i32, i8*, ...) @fprintf(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @current_inferior, align 4
  %13 = call %struct.inferior_linux_data* @inferior_target_data(i32 %12)
  store %struct.inferior_linux_data* %13, %struct.inferior_linux_data** %5, align 8
  %14 = load i32, i32* @thread_agent, align 4
  %15 = call i64 @td_ta_event_getmsg(i32 %14, %struct.TYPE_3__* %3)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @TD_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @stderr, align 4
  %21 = load i64, i64* %4, align 8
  %22 = call i8* @thread_db_err_str(i64 %21)
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %19, %11
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @find_new_threads_callback(i32 %26, i32* null)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.inferior_linux_data* @inferior_target_data(i32) #1

declare dso_local i64 @td_ta_event_getmsg(i32, %struct.TYPE_3__*) #1

declare dso_local i8* @thread_db_err_str(i64) #1

declare dso_local i32 @find_new_threads_callback(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
