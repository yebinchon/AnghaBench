; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event_queue = type { i64*, i64* }

@pte_internal = common dso_local global i32 0, align 4
@evb_max = common dso_local global i32 0, align 4
@evq_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pt_evq_empty(%struct.pt_event_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_event_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pt_event_queue* %0, %struct.pt_event_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %9 = icmp ne %struct.pt_event_queue* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load i32, i32* @evb_max, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @pte_internal, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %53

20:                                               ; preds = %13
  %21 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %22 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %6, align 8
  %28 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %29 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* @evq_max, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load i32, i32* @pte_internal, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %20
  %42 = load i64, i64* @evq_max, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sle i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* @pte_internal, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %45, %38, %17, %10
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
