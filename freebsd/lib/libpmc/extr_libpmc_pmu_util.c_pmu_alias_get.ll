; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_alias_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_alias_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_alias = type { i8*, i32* }

@PMU_INVALID = common dso_local global i64 0, align 8
@PMU_AMD = common dso_local global i64 0, align 8
@pmu_amd_alias_table = common dso_local global %struct.pmu_alias* null, align 8
@PMU_INTEL = common dso_local global i64 0, align 8
@pmu_intel_alias_table = common dso_local global %struct.pmu_alias* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @pmu_alias_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pmu_alias_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pmu_alias*, align 8
  %6 = alloca %struct.pmu_alias*, align 8
  store i8* %0, i8** %3, align 8
  %7 = call i64 (...) @pmu_events_mfr()
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* @PMU_INVALID, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %2, align 8
  br label %51

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @PMU_AMD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load %struct.pmu_alias*, %struct.pmu_alias** @pmu_amd_alias_table, align 8
  store %struct.pmu_alias* %17, %struct.pmu_alias** %6, align 8
  br label %27

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PMU_INTEL, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load %struct.pmu_alias*, %struct.pmu_alias** @pmu_intel_alias_table, align 8
  store %struct.pmu_alias* %23, %struct.pmu_alias** %6, align 8
  br label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  store i8* %25, i8** %2, align 8
  br label %51

26:                                               ; preds = %22
  br label %27

27:                                               ; preds = %26, %16
  %28 = load %struct.pmu_alias*, %struct.pmu_alias** %6, align 8
  store %struct.pmu_alias* %28, %struct.pmu_alias** %5, align 8
  br label %29

29:                                               ; preds = %46, %27
  %30 = load %struct.pmu_alias*, %struct.pmu_alias** %5, align 8
  %31 = getelementptr inbounds %struct.pmu_alias, %struct.pmu_alias* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.pmu_alias*, %struct.pmu_alias** %5, align 8
  %37 = getelementptr inbounds %struct.pmu_alias, %struct.pmu_alias* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @strcasecmp(i8* %35, i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.pmu_alias*, %struct.pmu_alias** %5, align 8
  %43 = getelementptr inbounds %struct.pmu_alias, %struct.pmu_alias* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %2, align 8
  br label %51

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.pmu_alias*, %struct.pmu_alias** %5, align 8
  %48 = getelementptr inbounds %struct.pmu_alias, %struct.pmu_alias* %47, i32 1
  store %struct.pmu_alias* %48, %struct.pmu_alias** %5, align 8
  br label %29

49:                                               ; preds = %29
  %50 = load i8*, i8** %3, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %49, %41, %24, %10
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i64 @pmu_events_mfr(...) #1

declare dso_local i64 @strcasecmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
