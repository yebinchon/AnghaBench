; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_events_mfr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_events_mfr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"kern.hwpmc.cpuid\00", align 1
@PMU_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"AuthenticAMD\00", align 1
@PMU_AMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"GenuineIntel\00", align 1
@PMU_INTEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pmu_events_mfr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmu_events_mfr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* null, i64* %3, i8* null, i32 0)
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @PMU_INVALID, align 4
  store i32 %8, i32* %1, align 4
  br label %43

9:                                                ; preds = %0
  %10 = load i64, i64* %3, align 8
  %11 = add i64 %10, 1
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @PMU_INVALID, align 4
  store i32 %15, i32* %1, align 4
  br label %43

16:                                               ; preds = %9
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %17, i64* %3, i8* null, i32 0)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load i32, i32* @PMU_INVALID, align 4
  store i32 %23, i32* %1, align 4
  br label %43

24:                                               ; preds = %16
  %25 = load i8*, i8** %2, align 8
  %26 = call i32* @strcasestr(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @PMU_AMD, align 4
  store i32 %29, i32* %4, align 4
  br label %39

30:                                               ; preds = %24
  %31 = load i8*, i8** %2, align 8
  %32 = call i32* @strcasestr(i8* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @PMU_INTEL, align 4
  store i32 %35, i32* %4, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @PMU_INVALID, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %28
  %40 = load i8*, i8** %2, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %39, %20, %14, %7
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @strcasestr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
