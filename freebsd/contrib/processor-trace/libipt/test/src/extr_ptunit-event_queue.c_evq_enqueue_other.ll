; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_evq_enqueue_other.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_evq_enqueue_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evq_fixture = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evq_fixture*, i32, i32, i64)* @evq_enqueue_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evq_enqueue_other(%struct.evq_fixture* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.ptunit_result, align 4
  %6 = alloca %struct.evq_fixture*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pt_event*, align 8
  %12 = alloca i64, align 8
  store %struct.evq_fixture* %0, %struct.evq_fixture** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %34, %4
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i64, i64* %12, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = load %struct.evq_fixture*, %struct.evq_fixture** %6, align 8
  %25 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %24, i32 0, i32 0
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.pt_event* @pt_evq_enqueue(i32* %25, i32 %26)
  store %struct.pt_event* %27, %struct.pt_event** %11, align 8
  %28 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %29 = call i32 @ptu_ptr(%struct.pt_event* %28)
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.pt_event*, %struct.pt_event** %11, align 8
  %32 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %12, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %12, align 8
  br label %13

37:                                               ; preds = %13
  %38 = call i32 (...) @ptu_passed()
  %39 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %5, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  ret i32 %41
}

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #1

declare dso_local i32 @ptu_ptr(%struct.pt_event*) #1

declare dso_local i32 @ptu_passed(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
