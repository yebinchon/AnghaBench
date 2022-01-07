; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_loop_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_util.c_record_loop_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@stats_control = common dso_local global i32 0, align 4
@loopstats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MJD_1900 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"%lu %s %.9f %.3f %.9f %.6f %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_loop_stats(double %0, double %1, double %2, double %3, i32 %4) #0 {
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  %12 = alloca i64, align 8
  store double %0, double* %6, align 8
  store double %1, double* %7, align 8
  store double %2, double* %8, align 8
  store double %3, double* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @stats_control, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  br label %46

16:                                               ; preds = %5
  %17 = call i32 @get_systime(%struct.TYPE_6__* %11)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @filegen_setup(%struct.TYPE_7__* @loopstats, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %22, 86400
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @MJD_1900, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %28, 86400
  store i32 %29, i32* %27, align 4
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @loopstats, i32 0, i32 0), align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %46

32:                                               ; preds = %16
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @loopstats, i32 0, i32 0), align 8
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @ulfptoa(%struct.TYPE_6__* %11, i32 3)
  %36 = load double, double* %6, align 8
  %37 = load double, double* %7, align 8
  %38 = fmul double %37, 1.000000e+06
  %39 = load double, double* %8, align 8
  %40 = load double, double* %9, align 8
  %41 = fmul double %40, 1.000000e+06
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @fprintf(i32* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35, double %36, double %38, double %39, double %41, i32 %42)
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @loopstats, i32 0, i32 0), align 8
  %45 = call i32 @fflush(i32* %44)
  br label %46

46:                                               ; preds = %15, %32, %16
  ret void
}

declare dso_local i32 @get_systime(%struct.TYPE_6__*) #1

declare dso_local i32 @filegen_setup(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i64, i32, double, double, double, double, i32) #1

declare dso_local i32 @ulfptoa(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fflush(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
