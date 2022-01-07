; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_kill_one_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_kill_one_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list_entry = type { i32 }
%struct.thread_info = type { i32 }
%struct.process_info = type { i32 }

@PT_KILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inferior_list_entry*)* @fbsd_kill_one_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_kill_one_process(%struct.inferior_list_entry* %0) #0 {
  %2 = alloca %struct.inferior_list_entry*, align 8
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca %struct.process_info*, align 8
  %5 = alloca i32, align 4
  store %struct.inferior_list_entry* %0, %struct.inferior_list_entry** %2, align 8
  %6 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %2, align 8
  %7 = bitcast %struct.inferior_list_entry* %6 to %struct.thread_info*
  store %struct.thread_info* %7, %struct.thread_info** %3, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %9 = call %struct.process_info* @get_thread_process(%struct.thread_info* %8)
  store %struct.process_info* %9, %struct.process_info** %4, align 8
  br label %10

10:                                               ; preds = %17, %1
  %11 = load i32, i32* @PT_KILL, align 4
  %12 = load %struct.process_info*, %struct.process_info** %4, align 8
  %13 = call i32 @pid_of(%struct.process_info* %12)
  %14 = call i32 @ptrace(i32 %11, i32 %13, i32 0, i32 0)
  %15 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %16 = call i32 @fbsd_wait_for_event(%struct.thread_info* %15)
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @WIFSTOPPED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %10, label %21

21:                                               ; preds = %17
  ret void
}

declare dso_local %struct.process_info* @get_thread_process(%struct.thread_info*) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @pid_of(%struct.process_info*) #1

declare dso_local i32 @fbsd_wait_for_event(%struct.thread_info*) #1

declare dso_local i64 @WIFSTOPPED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
