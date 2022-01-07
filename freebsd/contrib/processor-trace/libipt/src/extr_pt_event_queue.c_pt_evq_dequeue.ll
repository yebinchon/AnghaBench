; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32 }
%struct.pt_event_queue = type { i64*, i64*, %struct.pt_event** }

@evb_max = common dso_local global i32 0, align 4
@evq_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_event* @pt_evq_dequeue(%struct.pt_event_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_event*, align 8
  %4 = alloca %struct.pt_event_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pt_event_queue* %0, %struct.pt_event_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %9 = icmp ne %struct.pt_event_queue* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %63

11:                                               ; preds = %2
  %12 = load i32, i32* @evb_max, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ule i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %63

16:                                               ; preds = %11
  %17 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %18 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %25 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* @evq_max, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %63

35:                                               ; preds = %16
  %36 = load i64, i64* @evq_max, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %63

40:                                               ; preds = %35
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %63

45:                                               ; preds = %40
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @pt_evq_inc(i64 %46)
  %48 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %49 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 %47, i64* %53, align 8
  %54 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %55 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %54, i32 0, i32 2
  %56 = load %struct.pt_event**, %struct.pt_event*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %56, i64 %58
  %60 = load %struct.pt_event*, %struct.pt_event** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %60, i64 %61
  store %struct.pt_event* %62, %struct.pt_event** %3, align 8
  br label %63

63:                                               ; preds = %45, %44, %39, %34, %15, %10
  %64 = load %struct.pt_event*, %struct.pt_event** %3, align 8
  ret %struct.pt_event* %64
}

declare dso_local i64 @pt_evq_inc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
