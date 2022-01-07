; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_detach_one_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_detach_one_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list_entry = type { i32 }
%struct.thread_info = type { i32 }
%struct.process_info = type { i32 }

@PT_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inferior_list_entry*)* @fbsd_detach_one_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_detach_one_process(%struct.inferior_list_entry* %0) #0 {
  %2 = alloca %struct.inferior_list_entry*, align 8
  %3 = alloca %struct.thread_info*, align 8
  %4 = alloca %struct.process_info*, align 8
  store %struct.inferior_list_entry* %0, %struct.inferior_list_entry** %2, align 8
  %5 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %2, align 8
  %6 = bitcast %struct.inferior_list_entry* %5 to %struct.thread_info*
  store %struct.thread_info* %6, %struct.thread_info** %3, align 8
  %7 = load %struct.thread_info*, %struct.thread_info** %3, align 8
  %8 = call %struct.process_info* @get_thread_process(%struct.thread_info* %7)
  store %struct.process_info* %8, %struct.process_info** %4, align 8
  %9 = load i32, i32* @PT_DETACH, align 4
  %10 = load %struct.process_info*, %struct.process_info** %4, align 8
  %11 = call i32 @pid_of(%struct.process_info* %10)
  %12 = call i32 @ptrace(i32 %9, i32 %11, i32 0, i32 0)
  ret void
}

declare dso_local %struct.process_info* @get_thread_process(%struct.thread_info*) #1

declare dso_local i32 @ptrace(i32, i32, i32, i32) #1

declare dso_local i32 @pid_of(%struct.process_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
