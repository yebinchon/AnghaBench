; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_queue_one_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/gdbserver/extr_fbsd-low.c_fbsd_queue_one_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inferior_list_entry = type { i32 }
%struct.process_info = type { %struct.TYPE_2__*, %struct.pending_signals* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.pending_signals = type { i64, %struct.pending_signals* }
%struct.thread_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inferior_list_entry*)* @fbsd_queue_one_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbsd_queue_one_thread(%struct.inferior_list_entry* %0) #0 {
  %2 = alloca %struct.inferior_list_entry*, align 8
  %3 = alloca %struct.process_info*, align 8
  %4 = alloca %struct.thread_info*, align 8
  %5 = alloca %struct.pending_signals*, align 8
  store %struct.inferior_list_entry* %0, %struct.inferior_list_entry** %2, align 8
  %6 = load %struct.inferior_list_entry*, %struct.inferior_list_entry** %2, align 8
  %7 = bitcast %struct.inferior_list_entry* %6 to %struct.thread_info*
  store %struct.thread_info* %7, %struct.thread_info** %4, align 8
  %8 = load %struct.thread_info*, %struct.thread_info** %4, align 8
  %9 = call %struct.process_info* @get_thread_process(%struct.thread_info* %8)
  store %struct.process_info* %9, %struct.process_info** %3, align 8
  %10 = load %struct.process_info*, %struct.process_info** %3, align 8
  %11 = getelementptr inbounds %struct.process_info, %struct.process_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %44

17:                                               ; preds = %1
  %18 = load %struct.process_info*, %struct.process_info** %3, align 8
  %19 = getelementptr inbounds %struct.process_info, %struct.process_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %17
  %25 = call %struct.pending_signals* @malloc(i32 16)
  store %struct.pending_signals* %25, %struct.pending_signals** %5, align 8
  %26 = load %struct.process_info*, %struct.process_info** %3, align 8
  %27 = getelementptr inbounds %struct.process_info, %struct.process_info* %26, i32 0, i32 1
  %28 = load %struct.pending_signals*, %struct.pending_signals** %27, align 8
  %29 = load %struct.pending_signals*, %struct.pending_signals** %5, align 8
  %30 = getelementptr inbounds %struct.pending_signals, %struct.pending_signals* %29, i32 0, i32 1
  store %struct.pending_signals* %28, %struct.pending_signals** %30, align 8
  %31 = load %struct.process_info*, %struct.process_info** %3, align 8
  %32 = getelementptr inbounds %struct.process_info, %struct.process_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pending_signals*, %struct.pending_signals** %5, align 8
  %37 = getelementptr inbounds %struct.pending_signals, %struct.pending_signals* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.pending_signals*, %struct.pending_signals** %5, align 8
  %39 = load %struct.process_info*, %struct.process_info** %3, align 8
  %40 = getelementptr inbounds %struct.process_info, %struct.process_info* %39, i32 0, i32 1
  store %struct.pending_signals* %38, %struct.pending_signals** %40, align 8
  br label %41

41:                                               ; preds = %24, %17
  %42 = load %struct.process_info*, %struct.process_info** %3, align 8
  %43 = getelementptr inbounds %struct.process_info, %struct.process_info* %42, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %43, align 8
  br label %44

44:                                               ; preds = %41, %16
  ret void
}

declare dso_local %struct.process_info* @get_thread_process(%struct.thread_info*) #1

declare dso_local %struct.pending_signals* @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
