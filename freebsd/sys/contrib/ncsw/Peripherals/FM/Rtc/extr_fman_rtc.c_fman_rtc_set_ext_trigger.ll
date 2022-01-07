; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_set_ext_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_set_ext_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_regs = type { i32 }

@FMAN_RTC_TMR_TEVENT_ETS1 = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_TEVENT_ETS2 = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_PP1L = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_PP2L = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_rtc_set_ext_trigger(%struct.rtc_regs* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtc_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtc_regs* %0, %struct.rtc_regs** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @FMAN_RTC_TMR_TEVENT_ETS1, align 4
  store i32 %16, i32* %9, align 4
  br label %19

17:                                               ; preds = %12
  %18 = load i32, i32* @FMAN_RTC_TMR_TEVENT_ETS2, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = load %struct.rtc_regs*, %struct.rtc_regs** %5, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @fman_rtc_enable_interupt(%struct.rtc_regs* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @FMAN_RTC_TMR_CTRL_PP1L, align 4
  store i32 %30, i32* %9, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @FMAN_RTC_TMR_CTRL_PP2L, align 4
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.rtc_regs*, %struct.rtc_regs** %5, align 8
  %35 = load %struct.rtc_regs*, %struct.rtc_regs** %5, align 8
  %36 = call i32 @fman_rtc_get_timer_ctrl(%struct.rtc_regs* %35)
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs* %34, i32 %38)
  br label %40

40:                                               ; preds = %33, %23
  ret void
}

declare dso_local i32 @fman_rtc_enable_interupt(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_get_timer_ctrl(%struct.rtc_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
