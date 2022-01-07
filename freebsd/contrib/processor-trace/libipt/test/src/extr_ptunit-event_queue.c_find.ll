; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evq_fixture = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@evq_enqueue_other = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evq_fixture*, i32, i32, i64, i64)* @find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find(%struct.evq_fixture* %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ptunit_result, align 4
  %7 = alloca %struct.evq_fixture*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pt_event*, align 8
  %13 = alloca %struct.pt_event*, align 8
  store %struct.evq_fixture* %0, %struct.evq_fixture** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* @evq_enqueue_other, align 4
  %15 = load %struct.evq_fixture*, %struct.evq_fixture** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @ptu_test(i32 %14, %struct.evq_fixture* %15, i32 %16, i32 %17, i64 %18)
  %20 = load %struct.evq_fixture*, %struct.evq_fixture** %7, align 8
  %21 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.pt_event* @pt_evq_enqueue(i32* %21, i32 %22)
  store %struct.pt_event* %23, %struct.pt_event** %12, align 8
  %24 = load %struct.pt_event*, %struct.pt_event** %12, align 8
  %25 = call i32 @ptu_ptr(%struct.pt_event* %24)
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.pt_event*, %struct.pt_event** %12, align 8
  %28 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @evq_enqueue_other, align 4
  %30 = load %struct.evq_fixture*, %struct.evq_fixture** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @ptu_test(i32 %29, %struct.evq_fixture* %30, i32 %31, i32 %32, i64 %33)
  %35 = load %struct.evq_fixture*, %struct.evq_fixture** %7, align 8
  %36 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %35, i32 0, i32 0
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.pt_event* @pt_evq_find(i32* %36, i32 %37, i32 %38)
  store %struct.pt_event* %39, %struct.pt_event** %13, align 8
  %40 = load %struct.pt_event*, %struct.pt_event** %13, align 8
  %41 = load %struct.pt_event*, %struct.pt_event** %12, align 8
  %42 = call i32 @ptu_ptr_eq(%struct.pt_event* %40, %struct.pt_event* %41)
  %43 = call i32 (...) @ptu_passed()
  %44 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %6, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %6, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i32 @ptu_test(i32, %struct.evq_fixture*, i32, i32, i64) #1

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @ptu_ptr(%struct.pt_event*) #1

declare dso_local %struct.pt_event* @pt_evq_find(i32*, i32, i32) #1

declare dso_local i32 @ptu_ptr_eq(%struct.pt_event*, %struct.pt_event*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
