; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_db_trace.c_db_trace_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_db_trace.c_db_trace_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.unwind_state = type { i8*, i8*, i8* }
%struct.pcb = type { i64*, i64 }

@curthread = common dso_local global %struct.thread* null, align 8

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
  br i1 %9, label %10, label %33

10:                                               ; preds = %2
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = call %struct.pcb* @kdb_thr_ctx(%struct.thread* %11)
  store %struct.pcb* %12, %struct.pcb** %6, align 8
  %13 = load %struct.pcb*, %struct.pcb** %6, align 8
  %14 = getelementptr inbounds %struct.pcb, %struct.pcb* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 2
  store i8* %16, i8** %17, align 8
  %18 = load %struct.pcb*, %struct.pcb** %6, align 8
  %19 = getelementptr inbounds %struct.pcb, %struct.pcb* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 29
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load %struct.pcb*, %struct.pcb** %6, align 8
  %26 = getelementptr inbounds %struct.pcb, %struct.pcb* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 30
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.unwind_state, %struct.unwind_state* %5, i32 0, i32 0
  store i8* %30, i8** %31, align 8
  %32 = call i32 @db_stack_trace_cmd(%struct.unwind_state* %5)
  br label %35

33:                                               ; preds = %2
  %34 = call i32 (...) @db_trace_self()
  br label %35

35:                                               ; preds = %33, %10
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
