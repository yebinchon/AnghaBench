; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_sample_rate_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_sample_rate_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_event = type { i8*, i32* }
%struct.pmu_event_desc = type { i32 }

@DEFAULT_SAMPLE_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_pmu_sample_rate_get(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.pmu_event*, align 8
  %5 = alloca %struct.pmu_event_desc, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i8* @pmu_alias_get(i8* %6)
  store i8* %7, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.pmu_event* @pmu_event_get(i32* null, i8* %8, i32* null)
  store %struct.pmu_event* %9, %struct.pmu_event** %4, align 8
  %10 = icmp eq %struct.pmu_event* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @DEFAULT_SAMPLE_COUNT, align 4
  store i32 %12, i32* %2, align 4
  br label %44

13:                                               ; preds = %1
  %14 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %15 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %20 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct.pmu_event* @pmu_event_get(i32* null, i8* %21, i32* null)
  store %struct.pmu_event* %22, %struct.pmu_event** %4, align 8
  %23 = icmp eq %struct.pmu_event* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @DEFAULT_SAMPLE_COUNT, align 4
  store i32 %25, i32* %2, align 4
  br label %44

26:                                               ; preds = %18, %13
  %27 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %28 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @DEFAULT_SAMPLE_COUNT, align 4
  store i32 %32, i32* %2, align 4
  br label %44

33:                                               ; preds = %26
  %34 = load %struct.pmu_event*, %struct.pmu_event** %4, align 8
  %35 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @pmu_parse_event(%struct.pmu_event_desc* %5, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @DEFAULT_SAMPLE_COUNT, align 4
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.pmu_event_desc, %struct.pmu_event_desc* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %39, %31, %24, %11
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @pmu_alias_get(i8*) #1

declare dso_local %struct.pmu_event* @pmu_event_get(i32*, i8*, i32*) #1

declare dso_local i64 @pmu_parse_event(%struct.pmu_event_desc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
