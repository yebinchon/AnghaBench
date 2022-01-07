; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_rstclock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_loopfilter.c_rstclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [44 x i8] c"rstclock: mu %lu state %d poll %d count %d\0A\00", align 1
@current_time = common dso_local global i64 0, align 8
@clock_epoch = common dso_local global i64 0, align 8
@sys_poll = common dso_local global i32 0, align 4
@tc_counter = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@EVNT_FSET = common dso_local global i32 0, align 4
@clock_offset = common dso_local global double 0.000000e+00, align 8
@last_offset = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, double)* @rstclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rstclock(i32 %0, double %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store double %1, double* %4, align 8
  %5 = load i64, i64* @current_time, align 8
  %6 = load i64, i64* @clock_epoch, align 8
  %7 = sub nsw i64 %5, %6
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @sys_poll, align 4
  %10 = load i32, i32* @tc_counter, align 4
  %11 = sext i32 %10 to i64
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @DPRINTF(i32 2, i8* %12)
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @state, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @EVNT_FSET, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @report_event(i32 %22, i32* null, i32* null)
  br label %24

24:                                               ; preds = %21, %17, %2
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* @state, align 4
  %26 = load double, double* %4, align 8
  store double %26, double* @clock_offset, align 8
  store double %26, double* @last_offset, align 8
  %27 = load i64, i64* @current_time, align 8
  store i64 %27, i64* @clock_epoch, align 8
  ret void
}

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @report_event(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
