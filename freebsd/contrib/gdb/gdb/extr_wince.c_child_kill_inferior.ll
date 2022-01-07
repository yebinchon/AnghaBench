; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_child_kill_inferior.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_child_kill_inferior.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@current_process_handle = common dso_local global i32 0, align 4
@DBG_CONTINUE = common dso_local global i32 0, align 4
@current_event = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@INFINITE = common dso_local global i32 0, align 4
@EXIT_PROCESS_DEBUG_EVENT = common dso_local global i64 0, align 8
@current_thread = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @child_kill_inferior() #0 {
  %1 = load i32, i32* @current_process_handle, align 4
  %2 = call i32 @terminate_process(i32 %1)
  %3 = call i32 @CHECK(i32 %2)
  br label %4

4:                                                ; preds = %19, %0
  %5 = load i32, i32* @DBG_CONTINUE, align 4
  %6 = call i32 @child_continue(i32 %5, i32 -1)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  br label %20

9:                                                ; preds = %4
  %10 = load i32, i32* @INFINITE, align 4
  %11 = call i32 @wait_for_debug_event(%struct.TYPE_4__* @current_event, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  br label %20

14:                                               ; preds = %9
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @current_event, i32 0, i32 0), align 8
  %16 = load i64, i64* @EXIT_PROCESS_DEBUG_EVENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %14
  br label %4

20:                                               ; preds = %18, %13, %8
  %21 = load i32, i32* @current_process_handle, align 4
  %22 = call i32 @close_handle(i32 %21)
  %23 = call i32 @CHECK(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current_thread, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @close_handle(i32 %26)
  %28 = call i32 (...) @target_mourn_inferior()
  ret void
}

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @terminate_process(i32) #1

declare dso_local i32 @child_continue(i32, i32) #1

declare dso_local i32 @wait_for_debug_event(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @close_handle(i32) #1

declare dso_local i32 @target_mourn_inferior(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
