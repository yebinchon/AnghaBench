; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32 }
%struct.pt_event_queue = type { i64*, i64*, %struct.pt_event** }

@evb_max = common dso_local global i32 0, align 4
@evq_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_event* @pt_evq_find(%struct.pt_event_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_event*, align 8
  %5 = alloca %struct.pt_event_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pt_event*, align 8
  store %struct.pt_event_queue* %0, %struct.pt_event_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.pt_event_queue*, %struct.pt_event_queue** %5, align 8
  %12 = icmp ne %struct.pt_event_queue* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.pt_event* null, %struct.pt_event** %4, align 8
  br label %70

14:                                               ; preds = %3
  %15 = load i32, i32* @evb_max, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ule i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store %struct.pt_event* null, %struct.pt_event** %4, align 8
  br label %70

19:                                               ; preds = %14
  %20 = load %struct.pt_event_queue*, %struct.pt_event_queue** %5, align 8
  %21 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.pt_event_queue*, %struct.pt_event_queue** %5, align 8
  %28 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* @evq_max, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store %struct.pt_event* null, %struct.pt_event** %4, align 8
  br label %70

38:                                               ; preds = %19
  %39 = load i64, i64* @evq_max, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.pt_event* null, %struct.pt_event** %4, align 8
  br label %70

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %66, %43
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %44
  %49 = load %struct.pt_event_queue*, %struct.pt_event_queue** %5, align 8
  %50 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %49, i32 0, i32 2
  %51 = load %struct.pt_event**, %struct.pt_event*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pt_event*, %struct.pt_event** %51, i64 %53
  %55 = load %struct.pt_event*, %struct.pt_event** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %55, i64 %56
  store %struct.pt_event* %57, %struct.pt_event** %10, align 8
  %58 = load %struct.pt_event*, %struct.pt_event** %10, align 8
  %59 = getelementptr inbounds %struct.pt_event, %struct.pt_event* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load %struct.pt_event*, %struct.pt_event** %10, align 8
  store %struct.pt_event* %64, %struct.pt_event** %4, align 8
  br label %70

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @pt_evq_inc(i64 %67)
  store i64 %68, i64* %8, align 8
  br label %44

69:                                               ; preds = %44
  store %struct.pt_event* null, %struct.pt_event** %4, align 8
  br label %70

70:                                               ; preds = %69, %63, %42, %37, %18, %13
  %71 = load %struct.pt_event*, %struct.pt_event** %4, align 8
  ret %struct.pt_event* %71
}

declare dso_local i64 @pt_evq_inc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
