; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_events_map_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc_pmu_util.c_pmu_events_map_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu_events_map = type { i8* }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"kern.hwpmc.cpuid\00", align 1
@pmu_events_map = common dso_local global %struct.pmu_events_map* null, align 8
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"regex '%s' failed to compile, ignoring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pmu_events_map* (i8*)* @pmu_events_map_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pmu_events_map* @pmu_events_map_get(i8* %0) #0 {
  %2 = alloca %struct.pmu_events_map*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.TYPE_3__], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca [64 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca %struct.pmu_events_map*, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @memcpy(i8* %14, i8* %15, i32 64)
  br label %27

17:                                               ; preds = %1
  %18 = call i32 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* null, i64* %6, i8* null, i32 0)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store %struct.pmu_events_map* null, %struct.pmu_events_map** %2, align 8
  br label %73

21:                                               ; preds = %17
  %22 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %23 = call i32 @sysctlbyname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %22, i64* %6, i8* null, i32 0)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.pmu_events_map* null, %struct.pmu_events_map** %2, align 8
  br label %73

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.pmu_events_map*, %struct.pmu_events_map** @pmu_events_map, align 8
  store %struct.pmu_events_map* %28, %struct.pmu_events_map** %10, align 8
  br label %29

29:                                               ; preds = %69, %27
  %30 = load %struct.pmu_events_map*, %struct.pmu_events_map** %10, align 8
  %31 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %72

34:                                               ; preds = %29
  %35 = load %struct.pmu_events_map*, %struct.pmu_events_map** %10, align 8
  %36 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i32, i32* @REG_EXTENDED, align 4
  %39 = call i64 @regcomp(i32* %4, i8* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.pmu_events_map*, %struct.pmu_events_map** %10, align 8
  %43 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  br label %69

46:                                               ; preds = %34
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %49 = call i32 @regexec(i32* %4, i8* %47, i32 1, %struct.TYPE_3__* %48, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = call i32 @regfree(i32* %4)
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %46
  %54 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 16
  %57 = getelementptr inbounds [1 x %struct.TYPE_3__], [1 x %struct.TYPE_3__]* %5, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub i64 %56, %59
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %63 = call i64 @strlen(i8* %62)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load %struct.pmu_events_map*, %struct.pmu_events_map** %10, align 8
  store %struct.pmu_events_map* %66, %struct.pmu_events_map** %2, align 8
  br label %73

67:                                               ; preds = %53
  br label %68

68:                                               ; preds = %67, %46
  br label %69

69:                                               ; preds = %68, %41
  %70 = load %struct.pmu_events_map*, %struct.pmu_events_map** %10, align 8
  %71 = getelementptr inbounds %struct.pmu_events_map, %struct.pmu_events_map* %70, i32 1
  store %struct.pmu_events_map* %71, %struct.pmu_events_map** %10, align 8
  br label %29

72:                                               ; preds = %29
  store %struct.pmu_events_map* null, %struct.pmu_events_map** %2, align 8
  br label %73

73:                                               ; preds = %72, %65, %25, %20
  %74 = load %struct.pmu_events_map*, %struct.pmu_events_map** %2, align 8
  ret %struct.pmu_events_map* %74
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i8*, i64*, i8*, i32) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @regexec(i32*, i8*, i32, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @regfree(i32*) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
