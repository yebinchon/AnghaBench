; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_trace_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_db_trace.c_db_trace_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.trapframe = type { i32 }
%struct.pcb = type { i32, i32, i64 }
%struct.amd64_frame = type { i32 }

@kdb_thread = common dso_local global %struct.thread* null, align 8
@kdb_frame = common dso_local global %struct.trapframe* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_trace_thread(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcb*, align 8
  %6 = alloca %struct.trapframe*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = call %struct.pcb* @kdb_thr_ctx(%struct.thread* %7)
  store %struct.pcb* %8, %struct.pcb** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = load %struct.thread*, %struct.thread** @kdb_thread, align 8
  %11 = icmp eq %struct.thread* %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.trapframe*, %struct.trapframe** @kdb_frame, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi %struct.trapframe* [ %13, %12 ], [ null, %14 ]
  store %struct.trapframe* %16, %struct.trapframe** %6, align 8
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %19 = load %struct.pcb*, %struct.pcb** %5, align 8
  %20 = getelementptr inbounds %struct.pcb, %struct.pcb* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.amd64_frame*
  %23 = load %struct.pcb*, %struct.pcb** %5, align 8
  %24 = getelementptr inbounds %struct.pcb, %struct.pcb* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pcb*, %struct.pcb** %5, align 8
  %27 = getelementptr inbounds %struct.pcb, %struct.pcb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @db_backtrace(%struct.thread* %17, %struct.trapframe* %18, %struct.amd64_frame* %22, i32 %25, i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local %struct.pcb* @kdb_thr_ctx(%struct.thread*) #1

declare dso_local i32 @db_backtrace(%struct.thread*, %struct.trapframe*, %struct.amd64_frame*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
