; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_defconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_defconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_cfg = type { i32*, i32*, i32, i32, i32, i32 }

@DEFAULT_SRC_CLOCK = common dso_local global i32 0, align 4
@DEFAULT_INVERT_INPUT_CLK_PHASE = common dso_local global i32 0, align 4
@DEFAULT_INVERT_OUTPUT_CLK_PHASE = common dso_local global i32 0, align 4
@DEFAULT_PULSE_REALIGN = common dso_local global i32 0, align 4
@FMAN_RTC_MAX_NUM_OF_ALARMS = common dso_local global i32 0, align 4
@DEFAULT_ALARM_POLARITY = common dso_local global i32 0, align 4
@FMAN_RTC_MAX_NUM_OF_EXT_TRIGGERS = common dso_local global i32 0, align 4
@DEFAULT_TRIGGER_POLARITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_rtc_defconfig(%struct.rtc_cfg* %0) #0 {
  %2 = alloca %struct.rtc_cfg*, align 8
  %3 = alloca i32, align 4
  store %struct.rtc_cfg* %0, %struct.rtc_cfg** %2, align 8
  %4 = load i32, i32* @DEFAULT_SRC_CLOCK, align 4
  %5 = load %struct.rtc_cfg*, %struct.rtc_cfg** %2, align 8
  %6 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %5, i32 0, i32 5
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @DEFAULT_INVERT_INPUT_CLK_PHASE, align 4
  %8 = load %struct.rtc_cfg*, %struct.rtc_cfg** %2, align 8
  %9 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @DEFAULT_INVERT_OUTPUT_CLK_PHASE, align 4
  %11 = load %struct.rtc_cfg*, %struct.rtc_cfg** %2, align 8
  %12 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @DEFAULT_PULSE_REALIGN, align 4
  %14 = load %struct.rtc_cfg*, %struct.rtc_cfg** %2, align 8
  %15 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %28, %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @FMAN_RTC_MAX_NUM_OF_ALARMS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* @DEFAULT_ALARM_POLARITY, align 4
  %22 = load %struct.rtc_cfg*, %struct.rtc_cfg** %2, align 8
  %23 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %21, i32* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %16

31:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %44, %31
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @FMAN_RTC_MAX_NUM_OF_EXT_TRIGGERS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load i32, i32* @DEFAULT_TRIGGER_POLARITY, align 4
  %38 = load %struct.rtc_cfg*, %struct.rtc_cfg** %2, align 8
  %39 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %32

47:                                               ; preds = %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
