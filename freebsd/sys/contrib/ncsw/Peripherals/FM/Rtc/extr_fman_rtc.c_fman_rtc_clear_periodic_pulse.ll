; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_clear_periodic_pulse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_clear_periodic_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_regs = type { i32 }

@FMAN_RTC_TMR_TEVENT_PP1 = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_TEVENT_PP2 = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_FS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_rtc_clear_periodic_pulse(%struct.rtc_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.rtc_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rtc_regs* %0, %struct.rtc_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @FMAN_RTC_TMR_TEVENT_PP1, align 4
  store i32 %9, i32* %5, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @FMAN_RTC_TMR_TEVENT_PP2, align 4
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @fman_rtc_disable_interupt(%struct.rtc_regs* %13, i32 %14)
  %16 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %17 = call i32 @fman_rtc_get_timer_ctrl(%struct.rtc_regs* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @FMAN_RTC_TMR_CTRL_FS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %12
  %23 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @FMAN_RTC_TMR_CTRL_FS, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs* %23, i32 %27)
  br label %29

29:                                               ; preds = %22, %12
  %30 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @fman_rtc_set_timer_fiper(%struct.rtc_regs* %30, i32 %31, i32 -1)
  ret void
}

declare dso_local i32 @fman_rtc_disable_interupt(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_get_timer_ctrl(%struct.rtc_regs*) #1

declare dso_local i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_set_timer_fiper(%struct.rtc_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
