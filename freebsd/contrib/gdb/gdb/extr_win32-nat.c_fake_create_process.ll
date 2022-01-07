; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_fake_create_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_fake_create_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PROCESS_ALL_ACCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@current_event = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@current_process_handle = common dso_local global i32 0, align 4
@main_thread_id = common dso_local global i32 0, align 4
@current_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fake_create_process() #0 {
  %1 = load i32, i32* @PROCESS_ALL_ACCESS, align 4
  %2 = load i32, i32* @FALSE, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 2), align 4
  %4 = call i32 @OpenProcess(i32 %1, i32 %2, i32 %3)
  store i32 %4, i32* @current_process_handle, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 1), align 4
  store i32 %5, i32* @main_thread_id, align 4
  %6 = load i32, i32* @main_thread_id, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_event, i32 0, i32 0, i32 0, i32 0), align 4
  %8 = call i32 @child_add_thread(i32 %6, i32 %7)
  store i32 %8, i32* @current_thread, align 4
  %9 = load i32, i32* @main_thread_id, align 4
  ret i32 %9
}

declare dso_local i32 @OpenProcess(i32, i32, i32) #1

declare dso_local i32 @child_add_thread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
