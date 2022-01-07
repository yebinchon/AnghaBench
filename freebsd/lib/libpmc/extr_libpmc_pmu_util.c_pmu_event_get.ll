; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_event_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_event_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_event = type { i32*, i64, i64 }
%struct.pmu_events_map = type { %struct.pmu_event* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmu_event* (i8*, i8*, i32*)* @pmu_event_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmu_event* @pmu_event_get(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.pmu_event*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pmu_events_map*, align 8
  %9 = alloca %struct.pmu_event*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call %struct.pmu_events_map* @pmu_events_map_get(i8* %11)
  store %struct.pmu_events_map* %12, %struct.pmu_events_map** %8, align 8
  %13 = icmp eq %struct.pmu_events_map* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.pmu_event* null, %struct.pmu_event** %4, align 8
  br label %64

15:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %16 = load %struct.pmu_events_map*, %struct.pmu_events_map** %8, align 8
  %17 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %16, i32 0, i32 0
  %18 = load %struct.pmu_event*, %struct.pmu_event** %17, align 8
  store %struct.pmu_event* %18, %struct.pmu_event** %9, align 8
  br label %19

19:                                               ; preds = %58, %15
  %20 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %21 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %26 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %31 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %24, %19
  %35 = phi i1 [ true, %24 ], [ true, %19 ], [ %33, %29 ]
  br i1 %35, label %36, label %63

36:                                               ; preds = %34
  %37 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %38 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %58

42:                                               ; preds = %36
  %43 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %44 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i64 @strcasecmp(i32* %45, i8* %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %7, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  store %struct.pmu_event* %56, %struct.pmu_event** %4, align 8
  br label %64

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %41
  %59 = load %struct.pmu_event*, %struct.pmu_event** %9, align 8
  %60 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %59, i32 1
  store %struct.pmu_event* %60, %struct.pmu_event** %9, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %19

63:                                               ; preds = %34
  store %struct.pmu_event* null, %struct.pmu_event** %4, align 8
  br label %64

64:                                               ; preds = %63, %55, %14
  %65 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  ret %struct.pmu_event* %65
}

declare dso_local %struct.pmu_events_map* @pmu_events_map_get(i8*) #1

declare dso_local i64 @strcasecmp(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
