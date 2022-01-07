; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_enqueue_one_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_enqueue_one_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evq_fixture = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evq_fixture*, i32, i64)* @enqueue_one_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_one_dequeue(%struct.evq_fixture* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.evq_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pt_event*, align 8
  %10 = alloca %struct.pt_event*, align 8
  store %struct.evq_fixture* %0, %struct.evq_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %17 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %16, i32 0, i32 0
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.pt_event* @pt_evq_enqueue(i32* %17, i32 %18)
  store %struct.pt_event* %19, %struct.pt_event** %9, align 8
  %20 = load %struct.pt_event*, %struct.pt_event** %9, align 8
  %21 = call i32 @ptu_ptr(%struct.pt_event* %20)
  %22 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %23 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.pt_event* @pt_evq_dequeue(i32* %23, i32 %24)
  store %struct.pt_event* %25, %struct.pt_event** %10, align 8
  %26 = load %struct.pt_event*, %struct.pt_event** %10, align 8
  %27 = load %struct.pt_event*, %struct.pt_event** %9, align 8
  %28 = call i32 @ptu_ptr_eq(%struct.pt_event* %26, %struct.pt_event* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %11

32:                                               ; preds = %11
  %33 = call i32 (...) @ptu_passed()
  %34 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  ret i32 %36
}

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @ptu_ptr(%struct.pt_event*) #1

declare dso_local %struct.pt_event* @pt_evq_dequeue(i32*, i32) #1

declare dso_local i32 @ptu_ptr_eq(%struct.pt_event*, %struct.pt_event*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
