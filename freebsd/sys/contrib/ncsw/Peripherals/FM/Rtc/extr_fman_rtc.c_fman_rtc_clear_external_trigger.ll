; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_clear_external_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_clear_external_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_regs = type { i32 }

@FMAN_RTC_TMR_TEVENT_ETS1 = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_TEVENT_ETS2 = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_PP1L = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_PP2L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_rtc_clear_external_trigger(%struct.rtc_regs* %0, i32 %1) #0 {
  %3 = alloca %struct.rtc_regs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtc_regs* %0, %struct.rtc_regs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @FMAN_RTC_TMR_TEVENT_ETS1, align 4
  store i32 %10, i32* %5, align 4
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @FMAN_RTC_TMR_TEVENT_ETS2, align 4
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @fman_rtc_disable_interupt(%struct.rtc_regs* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @FMAN_RTC_TMR_CTRL_PP1L, align 4
  store i32 %20, i32* %5, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @FMAN_RTC_TMR_CTRL_PP2L, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %25 = call i32 @fman_rtc_get_timer_ctrl(%struct.rtc_regs* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.rtc_regs*, %struct.rtc_regs** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs* %31, i32 %35)
  br label %37

37:                                               ; preds = %30, %23
  ret void
}

declare dso_local i32 @fman_rtc_disable_interupt(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_get_timer_ctrl(%struct.rtc_regs*) #1

declare dso_local i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
