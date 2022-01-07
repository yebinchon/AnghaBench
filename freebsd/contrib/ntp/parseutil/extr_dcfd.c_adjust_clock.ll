; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_adjust_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_adjust_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@no_set = common dso_local global i64 0, align 8
@skip_adjust = common dso_local global i32 0, align 4
@max_adj_offset_usec = common dso_local global i64 0, align 8
@clock_adjust = common dso_local global i64 0, align 8
@TIMECONSTANT = common dso_local global i64 0, align 8
@adjustments = common dso_local global i32 0, align 4
@FREQ_WEIGHT = common dso_local global i32 0, align 4
@USECSCALE = common dso_local global i64 0, align 8
@accum_drift = common dso_local global i64 0, align 8
@MAX_DRIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"clock_adjust: %s, clock_adjust %ld, drift_comp %ld(%ld) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timeval*, i8*, i32)* @adjust_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_clock(%struct.timeval* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* @no_set, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %119

13:                                               ; preds = %3
  %14 = load i32, i32* @skip_adjust, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* @skip_adjust, align 4
  br label %119

17:                                               ; preds = %13
  %18 = load %struct.timeval*, %struct.timeval** %4, align 8
  %19 = bitcast %struct.timeval* %7 to i8*
  %20 = bitcast %struct.timeval* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 8, i1 false)
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @l_abs(i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @l_abs(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @max_adj_offset_usec, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38, %17
  %45 = load %struct.timeval*, %struct.timeval** %4, align 8
  %46 = call i32 @set_time(%struct.timeval* %45)
  store i64 0, i64* @clock_adjust, align 8
  store i32 1, i32* @skip_adjust, align 4
  br label %119

47:                                               ; preds = %38, %34
  %48 = load %struct.timeval*, %struct.timeval** %4, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %50, 1000000
  %52 = load %struct.timeval*, %struct.timeval** %4, align 8
  %53 = getelementptr inbounds %struct.timeval, %struct.timeval* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* @TIMECONSTANT, align 8
  %59 = call i64 @R_SHIFT(i64 %57, i64 %58)
  store i64 %59, i64* @clock_adjust, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %65, %47
  %61 = load i32, i32* @adjustments, align 4
  %62 = load i32, i32* %9, align 4
  %63 = shl i32 1, %62
  %64 = icmp sgt i32 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %60

68:                                               ; preds = %60
  store i32 0, i32* @adjustments, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @FREQ_WEIGHT, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @FREQ_WEIGHT, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* @USECSCALE, align 8
  %77 = shl i64 %75, %76
  %78 = load i64, i64* @TIMECONSTANT, align 8
  %79 = load i64, i64* @TIMECONSTANT, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* @FREQ_WEIGHT, align 4
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %80, %82
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = sub nsw i64 %83, %85
  %87 = call i64 @R_SHIFT(i64 %77, i64 %86)
  %88 = load i64, i64* @accum_drift, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* @accum_drift, align 8
  %90 = load i64, i64* @accum_drift, align 8
  %91 = load i64, i64* @MAX_DRIFT, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %74
  %94 = load i64, i64* @MAX_DRIFT, align 8
  store i64 %94, i64* @accum_drift, align 8
  br label %104

95:                                               ; preds = %74
  %96 = load i64, i64* @accum_drift, align 8
  %97 = load i64, i64* @MAX_DRIFT, align 8
  %98 = sub nsw i64 0, %97
  %99 = icmp slt i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load i64, i64* @MAX_DRIFT, align 8
  %102 = sub nsw i64 0, %101
  store i64 %102, i64* @accum_drift, align 8
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103, %93
  %105 = load i8*, i8** %5, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @update_drift(i8* %105, i64 %106, i32 %107)
  %109 = load %struct.timeval*, %struct.timeval** %4, align 8
  %110 = call i32 @pr_timeval(%struct.timeval* %109)
  %111 = load i64, i64* @clock_adjust, align 8
  %112 = load i64, i64* @USECSCALE, align 8
  %113 = call i64 @R_SHIFT(i64 %111, i64 %112)
  %114 = load i64, i64* @accum_drift, align 8
  %115 = load i64, i64* @USECSCALE, align 8
  %116 = call i64 @R_SHIFT(i64 %114, i64 %115)
  %117 = load i64, i64* @accum_drift, align 8
  %118 = call i32 @LPRINTF(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %110, i64 %113, i64 %116, i64 %117)
  br label %119

119:                                              ; preds = %104, %44, %16, %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @l_abs(i32) #2

declare dso_local i32 @set_time(%struct.timeval*) #2

declare dso_local i64 @R_SHIFT(i64, i64) #2

declare dso_local i32 @update_drift(i8*, i64, i32) #2

declare dso_local i32 @LPRINTF(i8*, i32, i64, i64, i64) #2

declare dso_local i32 @pr_timeval(%struct.timeval*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
