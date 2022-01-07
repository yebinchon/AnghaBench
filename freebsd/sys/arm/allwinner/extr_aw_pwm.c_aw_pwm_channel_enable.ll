; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_channel_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_pwm.c_aw_pwm_channel_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_pwm_softc = type { i32 }

@AW_PWM_CTRL = common dso_local global i32 0, align 4
@AW_PWM_CTRL_GATE = common dso_local global i32 0, align 4
@AW_PWM_CTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @aw_pwm_channel_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_pwm_channel_enable(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aw_pwm_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.aw_pwm_softc* @device_get_softc(i32 %10)
  store %struct.aw_pwm_softc* %11, %struct.aw_pwm_softc** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %8, align 8
  %16 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %47

20:                                               ; preds = %14, %3
  %21 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %8, align 8
  %22 = load i32, i32* @AW_PWM_CTRL, align 4
  %23 = call i32 @AW_PWM_READ(%struct.aw_pwm_softc* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, i32* @AW_PWM_CTRL_GATE, align 4
  %28 = load i32, i32* @AW_PWM_CTRL_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %39

32:                                               ; preds = %20
  %33 = load i32, i32* @AW_PWM_CTRL_GATE, align 4
  %34 = load i32, i32* @AW_PWM_CTRL_EN, align 4
  %35 = or i32 %33, %34
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %8, align 8
  %41 = load i32, i32* @AW_PWM_CTRL, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @AW_PWM_WRITE(%struct.aw_pwm_softc* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.aw_pwm_softc*, %struct.aw_pwm_softc** %8, align 8
  %46 = getelementptr inbounds %struct.aw_pwm_softc, %struct.aw_pwm_softc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %39, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.aw_pwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_PWM_READ(%struct.aw_pwm_softc*, i32) #1

declare dso_local i32 @AW_PWM_WRITE(%struct.aw_pwm_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
