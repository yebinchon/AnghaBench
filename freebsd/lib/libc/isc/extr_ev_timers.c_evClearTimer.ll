; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evClearTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/isc/extr_ev_timers.c_evClearTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }

@Timer = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"deferring delete of timer (executing)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"timers after evClearTimer:\0A\00", align 1
@print_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evClearTimer(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  store %struct.TYPE_18__* %11, %struct.TYPE_18__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @Timer, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %18
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %35 = icmp eq %struct.TYPE_17__* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = call i32 @evPrintf(%struct.TYPE_18__* %37, i32 8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 @evConsTime(i32 0, i32 0)
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %3, align 4
  br label %83

42:                                               ; preds = %26, %18, %2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_17__* @heap_element(i32 %45, i32 %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %51 = icmp ne %struct.TYPE_17__* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @ENOENT, align 4
  %54 = call i32 @EV_ERR(i32 %53)
  br label %55

55:                                               ; preds = %52, %42
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @heap_delete(i32 %58, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %83

65:                                               ; preds = %55
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = call i32 @FREE(%struct.TYPE_17__* %66)
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp sgt i32 %70, 7
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = call i32 @evPrintf(%struct.TYPE_18__* %73, i32 7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @print_timer, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = bitcast %struct.TYPE_18__* %79 to i8*
  %81 = call i32 @heap_for_each(i32 %77, i32 %78, i8* %80)
  br label %82

82:                                               ; preds = %72, %65
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %64, %36
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @evPrintf(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @evConsTime(i32, i32) #1

declare dso_local %struct.TYPE_17__* @heap_element(i32, i32) #1

declare dso_local i32 @EV_ERR(i32) #1

declare dso_local i64 @heap_delete(i32, i32) #1

declare dso_local i32 @FREE(%struct.TYPE_17__*) #1

declare dso_local i32 @heap_for_each(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
