; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_enqueue_all_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/test/src/extr_ptunit-event_queue.c_enqueue_all_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evq_fixture = type { i32 }
%struct.ptunit_result = type { i32 }
%struct.pt_event = type { i32 }

@evq_max = common dso_local global i32 0, align 4
@evq_pending = common dso_local global i32 0, align 4
@evq_others_empty = common dso_local global i32 0, align 4
@evq_empty = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evq_fixture*, i32, i64)* @enqueue_all_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enqueue_all_dequeue(%struct.evq_fixture* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ptunit_result, align 4
  %5 = alloca %struct.evq_fixture*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.evq_fixture* %0, %struct.evq_fixture** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @evq_max, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca %struct.pt_event*, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i32, i32* @evq_max, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca %struct.pt_event*, i64 %17, align 16
  store i64 %17, i64* %10, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @evq_max, align 4
  %21 = sub nsw i32 %20, 2
  %22 = call i32 @ptu_uint_le(i64 %19, i32 %21)
  store i64 0, i64* %11, align 8
  br label %23

23:                                               ; preds = %38, %3
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %29 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.pt_event* @pt_evq_enqueue(i32* %29, i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %15, i64 %32
  store %struct.pt_event* %31, %struct.pt_event** %33, align 8
  %34 = load i64, i64* %11, align 8
  %35 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %15, i64 %34
  %36 = load %struct.pt_event*, %struct.pt_event** %35, align 8
  %37 = call i32 @ptu_ptr(%struct.pt_event* %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %11, align 8
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* @evq_pending, align 4
  %43 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ptu_test(i32 %42, %struct.evq_fixture* %43, i32 %44)
  %46 = load i32, i32* @evq_others_empty, align 4
  %47 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ptu_test(i32 %46, %struct.evq_fixture* %47, i32 %48)
  store i64 0, i64* %11, align 8
  br label %50

50:                                               ; preds = %68, %41
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %56 = getelementptr inbounds %struct.evq_fixture, %struct.evq_fixture* %55, i32 0, i32 0
  %57 = load i32, i32* %6, align 4
  %58 = call %struct.pt_event* @pt_evq_dequeue(i32* %56, i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %18, i64 %59
  store %struct.pt_event* %58, %struct.pt_event** %60, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %18, i64 %61
  %63 = load %struct.pt_event*, %struct.pt_event** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %15, i64 %64
  %66 = load %struct.pt_event*, %struct.pt_event** %65, align 8
  %67 = call i32 @ptu_ptr_eq(%struct.pt_event* %63, %struct.pt_event* %66)
  br label %68

68:                                               ; preds = %54
  %69 = load i64, i64* %11, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %11, align 8
  br label %50

71:                                               ; preds = %50
  %72 = load i32, i32* @evq_empty, align 4
  %73 = load %struct.evq_fixture*, %struct.evq_fixture** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @ptu_test(i32 %72, %struct.evq_fixture* %73, i32 %74)
  %76 = call i32 (...) @ptu_passed()
  %77 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  store i32 %76, i32* %77, align 4
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = getelementptr inbounds %struct.ptunit_result, %struct.ptunit_result* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ptu_uint_le(i64, i32) #2

declare dso_local %struct.pt_event* @pt_evq_enqueue(i32*, i32) #2

declare dso_local i32 @ptu_ptr(%struct.pt_event*) #2

declare dso_local i32 @ptu_test(i32, %struct.evq_fixture*, i32) #2

declare dso_local %struct.pt_event* @pt_evq_dequeue(i32*, i32) #2

declare dso_local i32 @ptu_ptr_eq(%struct.pt_event*, %struct.pt_event*) #2

declare dso_local i32 @ptu_passed(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
