; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_trace.c_db_trace_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_db_trace.c_db_trace_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.unwind_state = type { i32* }
%struct.pcb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@FP = common dso_local global i64 0, align 8
@SP = common dso_local global i64 0, align 8
@LR = common dso_local global i64 0, align 8
@PC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_trace_thread(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.unwind_state, align 8
  %6 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.thread*, %struct.thread** %3, align 8
  %8 = load %struct.thread*, %struct.thread** @curthread, align 8
  %9 = icmp ne %struct.thread* %7, %8
  br i1 %9, label %10, label %46

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = call %struct.pcb* @kdb_thr_ctx(%struct.thread* %11)
  store %struct.pcb* %12, %struct.pcb** %6, align 8
  %13 = load %struct.pcb*, %struct.pcb** %6, align 8
  %14 = getelementptr inbounds %struct.pcb, %struct.pcb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @FP, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %16, i32* %20, align 4
  %21 = load %struct.pcb*, %struct.pcb** %6, align 8
  %22 = getelementptr inbounds %struct.pcb, %struct.pcb* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @SP, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load %struct.pcb*, %struct.pcb** %6, align 8
  %30 = getelementptr inbounds %struct.pcb, %struct.pcb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @LR, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load %struct.pcb*, %struct.pcb** %6, align 8
  %38 = getelementptr inbounds %struct.pcb, %struct.pcb* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @PC, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = call i32 @db_stack_trace_cmd(%struct.unwind_state* %5)
  br label %48

46:                                               ; preds = %2
  %47 = call i32 (...) @db_trace_self()
  br label %48

48:                                               ; preds = %46, %10
  ret i32 0
}

declare dso_local %struct.pcb* @kdb_thr_ctx(%struct.thread*) #1

declare dso_local i32 @db_stack_trace_cmd(%struct.unwind_state*) #1

declare dso_local i32 @db_trace_self(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
