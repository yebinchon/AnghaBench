; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_print_counter_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_print_counter_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_events_map = type { %struct.pmu_event* }
%struct.pmu_event = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [8 x i8] c"%s:\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmc_pmu_print_counter_desc(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pmu_events_map*, align 8
  %4 = alloca %struct.pmu_event*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call %struct.pmu_events_map* @pmu_events_map_get(i32* null)
  store %struct.pmu_events_map* %5, %struct.pmu_events_map** %3, align 8
  %6 = icmp eq %struct.pmu_events_map* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %59

8:                                                ; preds = %1
  %9 = load %struct.pmu_events_map*, %struct.pmu_events_map** %3, align 8
  %10 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %9, i32 0, i32 0
  %11 = load %struct.pmu_event*, %struct.pmu_event** %10, align 8
  store %struct.pmu_event* %11, %struct.pmu_event** %4, align 8
  br label %12

12:                                               ; preds = %56, %8
  %13 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %14 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %19 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %24 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %17, %12
  %28 = phi i1 [ true, %17 ], [ true, %12 ], [ %26, %22 ]
  br i1 %28, label %29, label %59

29:                                               ; preds = %27
  %30 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %31 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %56

35:                                               ; preds = %29
  %36 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %37 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i32* @strcasestr(i8* %38, i8* %39)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %44 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %49 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %52 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %53)
  br label %55

55:                                               ; preds = %47, %42, %35
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %58 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %57, i32 1
  store %struct.pmu_event* %58, %struct.pmu_event** %4, align 8
  br label %12

59:                                               ; preds = %7, %27
  ret void
}

declare dso_local %struct.pmu_events_map* @pmu_events_map_get(i32*) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
