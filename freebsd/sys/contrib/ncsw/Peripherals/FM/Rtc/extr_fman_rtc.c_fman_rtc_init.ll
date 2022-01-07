; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Rtc/extr_fman_rtc.c_fman_rtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_cfg = type { i32, i64*, i64*, i64, i32, i64, i64 }
%struct.rtc_regs = type { i32 }

@FMAN_RTC_TMR_CTRL_CKSEL_MAC_CLK = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_CKSEL_OSC_CLK = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_CKSEL_EXT_CLK = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_TCLK_PERIOD_SHIFT = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_TCLK_PERIOD_MASK = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_CIPH = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_COPH = common dso_local global i32 0, align 4
@E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW = common dso_local global i64 0, align 8
@FMAN_RTC_TMR_CTRL_ALMP1 = common dso_local global i32 0, align 4
@E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE = common dso_local global i64 0, align 8
@FMAN_RTC_TMR_CTRL_ETEP1 = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_CTRL_BYP = common dso_local global i32 0, align 4
@FMAN_RTC_TMR_TEVENT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fman_rtc_init(%struct.rtc_cfg* %0, %struct.rtc_regs* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.rtc_cfg*, align 8
  %10 = alloca %struct.rtc_regs*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtc_cfg* %0, %struct.rtc_cfg** %9, align 8
  store %struct.rtc_regs* %1, %struct.rtc_regs** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %20 = call i32 @fman_rtc_timers_soft_reset(%struct.rtc_regs* %19)
  %21 = load %struct.rtc_cfg*, %struct.rtc_cfg** %9, align 8
  %22 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %28 [
    i32 128, label %24
    i32 129, label %26
  ]

24:                                               ; preds = %8
  %25 = load i32, i32* @FMAN_RTC_TMR_CTRL_CKSEL_MAC_CLK, align 4
  store i32 %25, i32* %17, align 4
  br label %30

26:                                               ; preds = %8
  %27 = load i32, i32* @FMAN_RTC_TMR_CTRL_CKSEL_OSC_CLK, align 4
  store i32 %27, i32* %17, align 4
  br label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @FMAN_RTC_TMR_CTRL_CKSEL_EXT_CLK, align 4
  store i32 %29, i32* %17, align 4
  br label %30

30:                                               ; preds = %28, %26, %24
  %31 = load i32, i32* @FMAN_RTC_TMR_CTRL_TCLK_PERIOD_SHIFT, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* @FMAN_RTC_TMR_CTRL_TCLK_PERIOD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %17, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %17, align 4
  %37 = load %struct.rtc_cfg*, %struct.rtc_cfg** %9, align 8
  %38 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i32, i32* @FMAN_RTC_TMR_CTRL_CIPH, align 4
  %43 = load i32, i32* %17, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %17, align 4
  br label %45

45:                                               ; preds = %41, %30
  %46 = load %struct.rtc_cfg*, %struct.rtc_cfg** %9, align 8
  %47 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @FMAN_RTC_TMR_CTRL_COPH, align 4
  %52 = load i32, i32* %17, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %50, %45
  store i32 0, i32* %18, align 4
  br label %55

55:                                               ; preds = %76, %54
  %56 = load i32, i32* %18, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = load %struct.rtc_cfg*, %struct.rtc_cfg** %9, align 8
  %61 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @E_FMAN_RTC_ALARM_POLARITY_ACTIVE_LOW, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %59
  %70 = load i32, i32* @FMAN_RTC_TMR_CTRL_ALMP1, align 4
  %71 = load i32, i32* %18, align 4
  %72 = ashr i32 %70, %71
  %73 = load i32, i32* %17, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %69, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %18, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %18, align 4
  br label %55

79:                                               ; preds = %55
  store i32 0, i32* %18, align 4
  br label %80

80:                                               ; preds = %101, %79
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %80
  %85 = load %struct.rtc_cfg*, %struct.rtc_cfg** %9, align 8
  %86 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %85, i32 0, i32 2
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @E_FMAN_RTC_TRIGGER_ON_FALLING_EDGE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %84
  %95 = load i32, i32* @FMAN_RTC_TMR_CTRL_ETEP1, align 4
  %96 = load i32, i32* %18, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %17, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %17, align 4
  br label %100

100:                                              ; preds = %94, %84
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %18, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %18, align 4
  br label %80

104:                                              ; preds = %80
  %105 = load %struct.rtc_cfg*, %struct.rtc_cfg** %9, align 8
  %106 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %104
  %110 = load %struct.rtc_cfg*, %struct.rtc_cfg** %9, align 8
  %111 = getelementptr inbounds %struct.rtc_cfg, %struct.rtc_cfg* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* @FMAN_RTC_TMR_CTRL_BYP, align 4
  %116 = load i32, i32* %17, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %17, align 4
  br label %118

118:                                              ; preds = %114, %109, %104
  %119 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs* %119, i32 %120)
  %122 = load i32, i32* %14, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %118
  %125 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @fman_rtc_set_frequency_compensation(%struct.rtc_regs* %125, i32 %126)
  br label %128

128:                                              ; preds = %124, %118
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %137, %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %135 = load i32, i32* %18, align 4
  %136 = call i32 @fman_rtc_set_timer_alarm(%struct.rtc_regs* %134, i32 %135, i32 -1)
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %18, align 4
  br label %129

140:                                              ; preds = %129
  %141 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %142 = load i32, i32* @FMAN_RTC_TMR_TEVENT_ALL, align 4
  %143 = call i32 @fman_rtc_ack_event(%struct.rtc_regs* %141, i32 %142)
  %144 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %145 = call i32 @fman_rtc_set_interrupt_mask(%struct.rtc_regs* %144, i32 0)
  store i32 0, i32* %18, align 4
  br label %146

146:                                              ; preds = %154, %140
  %147 = load i32, i32* %18, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp slt i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @fman_rtc_set_timer_fiper(%struct.rtc_regs* %151, i32 %152, i32 -1)
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %18, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %18, align 4
  br label %146

157:                                              ; preds = %146
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %160 = getelementptr inbounds %struct.rtc_regs, %struct.rtc_regs* %159, i32 0, i32 0
  %161 = call i32 @iowrite32be(i32 %158, i32* %160)
  %162 = load %struct.rtc_regs*, %struct.rtc_regs** %10, align 8
  %163 = call i32 @fman_rtc_set_timer_offset(%struct.rtc_regs* %162, i32 0)
  ret void
}

declare dso_local i32 @fman_rtc_timers_soft_reset(%struct.rtc_regs*) #1

declare dso_local i32 @fman_rtc_set_timer_ctrl(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_set_frequency_compensation(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_set_timer_alarm(%struct.rtc_regs*, i32, i32) #1

declare dso_local i32 @fman_rtc_ack_event(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_set_interrupt_mask(%struct.rtc_regs*, i32) #1

declare dso_local i32 @fman_rtc_set_timer_fiper(%struct.rtc_regs*, i32, i32) #1

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @fman_rtc_set_timer_offset(%struct.rtc_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
