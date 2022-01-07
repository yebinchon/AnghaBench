; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_pmcallocate.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmc_pmu_pmcallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_op_pmcallocate = type { i32, i32, i32 }
%struct.pmu_event = type { i8*, i32* }
%struct.pmu_event_desc = type { i32 }

@PMU_INVALID = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@PMC_CAP_READ = common dso_local global i32 0, align 4
@PMC_CAP_WRITE = common dso_local global i32 0, align 4
@PMU_INTEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_pmu_pmcallocate(i8* %0, %struct.pmc_op_pmcallocate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pmc_op_pmcallocate*, align 8
  %6 = alloca %struct.pmu_event*, align 8
  %7 = alloca %struct.pmu_event_desc, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.pmc_op_pmcallocate* %1, %struct.pmc_op_pmcallocate** %5, align 8
  store i32 -1, i32* %9, align 4
  %10 = call i64 (...) @pmu_events_mfr()
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* @PMU_INVALID, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %17 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %16, i32 0, i32 2
  %18 = call i32 @bzero(i32* %17, i32 4)
  %19 = load i32, i32* @PMC_CAP_READ, align 4
  %20 = load i32, i32* @PMC_CAP_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %23 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = call i8* @pmu_alias_get(i8* %26)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.pmu_event* @pmu_event_get(i32* null, i8* %28, i32* %9)
  store %struct.pmu_event* %29, %struct.pmu_event** %6, align 8
  %30 = icmp eq %struct.pmu_event* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %3, align 4
  br label %80

33:                                               ; preds = %15
  %34 = load %struct.pmu_event*, %struct.pmu_event** %6, align 8
  %35 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.pmu_event*, %struct.pmu_event** %6, align 8
  %40 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.pmu_event* @pmu_event_get(i32* null, i8* %41, i32* %9)
  store %struct.pmu_event* %42, %struct.pmu_event** %6, align 8
  %43 = icmp eq %struct.pmu_event* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOENT, align 4
  store i32 %45, i32* %3, align 4
  br label %80

46:                                               ; preds = %38, %33
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %53 = getelementptr inbounds %struct.pmc_op_pmcallocate, %struct.pmc_op_pmcallocate* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.pmu_event*, %struct.pmu_event** %6, align 8
  %55 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @ENOENT, align 4
  store i32 %59, i32* %3, align 4
  br label %80

60:                                               ; preds = %46
  %61 = load %struct.pmu_event*, %struct.pmu_event** %6, align 8
  %62 = getelementptr inbounds %struct.pmu_event, %struct.pmu_event* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @pmu_parse_event(%struct.pmu_event_desc* %7, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @ENOENT, align 4
  store i32 %67, i32* %3, align 4
  br label %80

68:                                               ; preds = %60
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @PMU_INTEL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i8*, i8** %4, align 8
  %74 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %75 = call i32 @pmc_pmu_intel_pmcallocate(i8* %73, %struct.pmc_op_pmcallocate* %74, %struct.pmu_event_desc* %7)
  store i32 %75, i32* %3, align 4
  br label %80

76:                                               ; preds = %68
  %77 = load i8*, i8** %4, align 8
  %78 = load %struct.pmc_op_pmcallocate*, %struct.pmc_op_pmcallocate** %5, align 8
  %79 = call i32 @pmc_pmu_amd_pmcallocate(i8* %77, %struct.pmc_op_pmcallocate* %78, %struct.pmu_event_desc* %7)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %72, %66, %58, %44, %31, %13
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @pmu_events_mfr(...) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i8* @pmu_alias_get(i8*) #1

declare dso_local %struct.pmu_event* @pmu_event_get(i32*, i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @pmu_parse_event(%struct.pmu_event_desc*, i32*) #1

declare dso_local i32 @pmc_pmu_intel_pmcallocate(i8*, %struct.pmc_op_pmcallocate*, %struct.pmu_event_desc*) #1

declare dso_local i32 @pmc_pmu_amd_pmcallocate(i8*, %struct.pmc_op_pmcallocate*, %struct.pmu_event_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
