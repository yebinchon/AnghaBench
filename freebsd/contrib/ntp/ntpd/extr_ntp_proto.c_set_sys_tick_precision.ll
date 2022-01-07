; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_set_sys_tick_precision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_set_sys_tick_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"unsupported tick %.3f > 1s ignored\00", align 1
@measured_tick = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"proto: tick %.3f less than measured tick %.3f, ignored\00", align 1
@TRUE = common dso_local global i32 0, align 4
@trunc_os_clock = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"proto: truncating system clock to multiples of %.9f\00", align 1
@sys_tick = common dso_local global double 0.000000e+00, align 8
@sys_precision = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_sys_tick_precision(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  store double %0, double* %2, align 8
  %4 = load double, double* %2, align 8
  %5 = fcmp ogt double %4, 1.000000e+00
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @LOG_ERR, align 4
  %8 = load double, double* %2, align 8
  %9 = call i32 (i32, i8*, double, ...) @msyslog(i32 %7, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), double %8)
  br label %53

10:                                               ; preds = %1
  %11 = load double, double* %2, align 8
  %12 = load double, double* @measured_tick, align 8
  %13 = fcmp olt double %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* @LOG_ERR, align 4
  %16 = load double, double* %2, align 8
  %17 = load double, double* @measured_tick, align 8
  %18 = call i32 (i32, i8*, double, ...) @msyslog(i32 %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), double %16, double %17)
  br label %53

19:                                               ; preds = %10
  %20 = load double, double* %2, align 8
  %21 = load double, double* @measured_tick, align 8
  %22 = fcmp ogt double %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* @trunc_os_clock, align 4
  %25 = load i32, i32* @LOG_NOTICE, align 4
  %26 = load double, double* %2, align 8
  %27 = call i32 (i32, i8*, double, ...) @msyslog(i32 %25, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), double %26)
  br label %28

28:                                               ; preds = %23, %19
  br label %29

29:                                               ; preds = %28
  %30 = load double, double* %2, align 8
  store double %30, double* @sys_tick, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %37, %29
  %32 = load double, double* %2, align 8
  %33 = fcmp ole double %32, 1.000000e+00
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load double, double* %2, align 8
  %36 = fmul double %35, 2.000000e+00
  store double %36, double* %2, align 8
  br label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %3, align 4
  br label %31

40:                                               ; preds = %31
  %41 = load double, double* %2, align 8
  %42 = fsub double %41, 1.000000e+00
  %43 = load double, double* %2, align 8
  %44 = fdiv double %43, 2.000000e+00
  %45 = fsub double 1.000000e+00, %44
  %46 = fcmp ogt double %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  store i64 %52, i64* @sys_precision, align 8
  br label %53

53:                                               ; preds = %50, %14, %6
  ret void
}

declare dso_local i32 @msyslog(i32, i8*, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
