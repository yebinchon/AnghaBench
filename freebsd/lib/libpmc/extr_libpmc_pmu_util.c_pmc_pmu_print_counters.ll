; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_print_counters.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_print_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_events_map = type { %struct.pmu_event* }
%struct.pmu_event = type { i8*, i64, i64 }
%struct.pmu_event_desc = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"PMUDEBUG\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmc_pmu_print_counters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pmu_events_map*, align 8
  %4 = alloca %struct.pmu_event*, align 8
  %5 = alloca %struct.pmu_event_desc, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %11, %1
  %17 = call %struct.pmu_events_map* @pmu_events_map_get(i32* null)
  store %struct.pmu_events_map* %17, %struct.pmu_events_map** %3, align 8
  %18 = icmp eq %struct.pmu_events_map* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %74

20:                                               ; preds = %16
  %21 = load %struct.pmu_events_map*, %struct.pmu_events_map** %3, align 8
  %22 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %21, i32 0, i32 0
  %23 = load %struct.pmu_event*, %struct.pmu_event** %22, align 8
  store %struct.pmu_event* %23, %struct.pmu_event** %4, align 8
  br label %24

24:                                               ; preds = %71, %20
  %25 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %26 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %31 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %36 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29, %24
  %40 = phi i1 [ true, %29 ], [ true, %24 ], [ %38, %34 ]
  br i1 %40, label %41, label %74

41:                                               ; preds = %39
  %42 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %43 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %71

47:                                               ; preds = %41
  %48 = load i8*, i8** %2, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %52 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = call i32* @strcasestr(i8* %53, i8* %54)
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %71

58:                                               ; preds = %50, %47
  %59 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %60 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %67 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @pmu_parse_event(%struct.pmu_event_desc* %5, i64 %68)
  br label %70

70:                                               ; preds = %65, %58
  br label %71

71:                                               ; preds = %70, %57, %46
  %72 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %73 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %72, i32 1
  store %struct.pmu_event* %73, %struct.pmu_event** %4, align 8
  br label %24

74:                                               ; preds = %19, %39
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.pmu_events_map* @pmu_events_map_get(i32*) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @pmu_parse_event(%struct.pmu_event_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
