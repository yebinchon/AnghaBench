; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_event_queue.c_pt_evq_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_event = type { i32 }
%struct.pt_event_queue = type { i64*, i64*, i32** }

@evb_max = common dso_local global i32 0, align 4
@evq_max = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pt_event* @pt_evq_enqueue(%struct.pt_event_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.pt_event*, align 8
  %4 = alloca %struct.pt_event_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.pt_event_queue* %0, %struct.pt_event_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %11 = icmp ne %struct.pt_event_queue* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %69

13:                                               ; preds = %2
  %14 = load i32, i32* @evb_max, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ule i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %69

18:                                               ; preds = %13
  %19 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %20 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  %26 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %27 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* @evq_max, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %69

37:                                               ; preds = %18
  %38 = load i64, i64* @evq_max, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sle i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %69

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @pt_evq_inc(i64 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @pt_evq_inc(i64 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store %struct.pt_event* null, %struct.pt_event** %3, align 8
  br label %69

51:                                               ; preds = %42
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %54 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  store i64 %52, i64* %58, align 8
  %59 = load %struct.pt_event_queue*, %struct.pt_event_queue** %4, align 8
  %60 = getelementptr inbounds %struct.pt_event_queue, %struct.pt_event_queue* %59, i32 0, i32 2
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  %68 = call %struct.pt_event* @pt_event_init(i32* %67)
  store %struct.pt_event* %68, %struct.pt_event** %3, align 8
  br label %69

69:                                               ; preds = %51, %50, %41, %36, %17, %12
  %70 = load %struct.pt_event*, %struct.pt_event** %3, align 8
  ret %struct.pt_event* %70
}

declare dso_local i64 @pt_evq_inc(i64) #1

declare dso_local %struct.pt_event* @pt_event_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
