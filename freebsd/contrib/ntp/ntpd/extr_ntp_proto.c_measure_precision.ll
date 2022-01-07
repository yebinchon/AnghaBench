; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_measure_precision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_proto.c_measure_precision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@trunc_os_clock = common dso_local global i32 0, align 4
@measured_tick = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"proto: precision = %.3f usec (%d)\00", align 1
@sys_tick = common dso_local global i32 0, align 4
@sys_precision = common dso_local global i32 0, align 4
@sys_fuzz = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"proto: fuzz beneath %.3f usec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @measure_precision() #0 {
  %1 = call i32 @set_sys_fuzz(i32 0)
  %2 = load i32, i32* @FALSE, align 4
  store i32 %2, i32* @trunc_os_clock, align 4
  %3 = call i32 (...) @measure_tick_fuzz()
  store i32 %3, i32* @measured_tick, align 4
  %4 = load i32, i32* @measured_tick, align 4
  %5 = call i32 @set_sys_tick_precision(i32 %4)
  %6 = load i32, i32* @LOG_INFO, align 4
  %7 = load i32, i32* @sys_tick, align 4
  %8 = sitofp i32 %7 to double
  %9 = fmul double %8, 1.000000e+06
  %10 = fptosi double %9 to i32
  %11 = load i32, i32* @sys_precision, align 4
  %12 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* @sys_fuzz, align 4
  %14 = load i32, i32* @sys_tick, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %0
  %17 = load i32, i32* @LOG_NOTICE, align 4
  %18 = load i32, i32* @sys_fuzz, align 4
  %19 = sitofp i32 %18 to double
  %20 = fmul double %19, 1.000000e+06
  %21 = fptosi double %20 to i32
  %22 = call i32 (i32, i8*, i32, ...) @msyslog(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @set_sys_fuzz(i32) #1

declare dso_local i32 @measure_tick_fuzz(...) #1

declare dso_local i32 @set_sys_tick_precision(i32) #1

declare dso_local i32 @msyslog(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
