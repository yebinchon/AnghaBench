; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_channel_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_channel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_pwm_softc = type { i32, i32, i32 }

@NS_PER_SEC = common dso_local global i32 0, align 4
@AW_PWM_MAX_FREQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"duty < period\0A\00", align 1
@AW_PWM_CTRL_PRESCALE_MASK = common dso_local global i32 0, align 4
@AW_PWM_PERIOD_TOTAL_MASK = common dso_local global i32 0, align 4
@aw_pwm_clk_prescaler = common dso_local global i32* null, align 8
@AW_PWM_CTRL = common dso_local global i32 0, align 4
@AW_PWM_CTRL_PERIOD_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"pwm busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AW_PWM_PERIOD_TOTAL_SHIFT = common dso_local global i32 0, align 4
@AW_PWM_PERIOD_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@AW_PWM_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @aw_pwm_channel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_pwm_channel_config(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.aw_pwm_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.aw_pwm_softc* @device_get_softc(i32 %18)
  store %struct.aw_pwm_softc* %19, %struct.aw_pwm_softc** %10, align 8
  %20 = load i32, i32* @NS_PER_SEC, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @AW_PWM_MAX_FREQ, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %5, align 4
  br label %146

28:                                               ; preds = %4
  %29 = load i32, i32* @NS_PER_SEC, align 4
  %30 = load i32, i32* %9, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %10, align 8
  %37 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %146

41:                                               ; preds = %28
  %42 = load i32, i32* @AW_PWM_MAX_FREQ, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @AW_PWM_CTRL_PRESCALE_MASK, align 4
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* @AW_PWM_MAX_FREQ, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sdiv i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* @AW_PWM_PERIOD_TOTAL_MASK, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %41
  store i32 0, i32* %17, align 4
  br label %52

52:                                               ; preds = %89, %51
  %53 = load i32, i32* %17, align 4
  %54 = load i32*, i32** @aw_pwm_clk_prescaler, align 8
  %55 = call i32 @nitems(i32* %54)
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %52
  %58 = load i32*, i32** @aw_pwm_clk_prescaler, align 8
  %59 = load i32, i32* %17, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %89

65:                                               ; preds = %57
  %66 = load i32, i32* @AW_PWM_MAX_FREQ, align 4
  %67 = load i32*, i32** @aw_pwm_clk_prescaler, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %66, %71
  %73 = load i32, i32* %11, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* @AW_PWM_PERIOD_TOTAL_MASK, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %65
  %80 = load i32, i32* %17, align 4
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* @AW_PWM_MAX_FREQ, align 4
  %82 = load i32*, i32** @aw_pwm_clk_prescaler, align 8
  %83 = load i32, i32* %17, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %81, %86
  store i32 %87, i32* %13, align 4
  br label %92

88:                                               ; preds = %65
  br label %89

89:                                               ; preds = %88, %64
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %17, align 4
  br label %52

92:                                               ; preds = %79, %52
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @AW_PWM_CTRL_PRESCALE_MASK, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %5, align 4
  br label %146

98:                                               ; preds = %92
  br label %99

99:                                               ; preds = %98, %41
  %100 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %10, align 8
  %101 = load i32, i32* @AW_PWM_CTRL, align 4
  %102 = call i32 @AW_PWM_READ(%struct.aw_pwm_softc* %100, i32 %101)
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* @AW_PWM_CTRL_PERIOD_BUSY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %10, align 8
  %109 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EBUSY, align 4
  store i32 %112, i32* %5, align 4
  br label %146

113:                                              ; preds = %99
  %114 = load i32, i32* @AW_PWM_CTRL_PRESCALE_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %15, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* %15, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %15, align 4
  %121 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %10, align 8
  %122 = load i32, i32* @AW_PWM_CTRL, align 4
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @AW_PWM_WRITE(%struct.aw_pwm_softc* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %11, align 4
  %127 = sdiv i32 %125, %126
  %128 = load i32, i32* @AW_PWM_PERIOD_TOTAL_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sdiv i32 %130, %131
  %133 = load i32, i32* @AW_PWM_PERIOD_ACTIVE_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = or i32 %129, %134
  store i32 %135, i32* %15, align 4
  %136 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %10, align 8
  %137 = load i32, i32* @AW_PWM_PERIOD, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @AW_PWM_WRITE(%struct.aw_pwm_softc* %136, i32 %137, i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %10, align 8
  %142 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %10, align 8
  %145 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %113, %107, %96, %35, %26
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.aw_pwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @AW_PWM_READ(%struct.aw_pwm_softc*, i32) #1

declare dso_local i32 @AW_PWM_WRITE(%struct.aw_pwm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
