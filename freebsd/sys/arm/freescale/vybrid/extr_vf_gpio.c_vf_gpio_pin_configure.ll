; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_gpio.c_vf_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf_gpio_softc*, %struct.gpio_pin*, i32)* @vf_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf_gpio_pin_configure(%struct.vf_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.vf_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  store %struct.vf_gpio_softc* %0, %struct.vf_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %8 = call i32 @GPIO_LOCK(%struct.vf_gpio_softc* %7)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %11 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %3
  %16 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %17 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %30 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %31 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %51

34:                                               ; preds = %15
  %35 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %36 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %41 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %42 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @GPIO_PCOR(i32 %43)
  %45 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %46 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = srem i32 %47, 32
  %49 = shl i32 1, %48
  %50 = call i32 @WRITE4(%struct.vf_gpio_softc* %40, i32 %44, i32 %49)
  br label %51

51:                                               ; preds = %34, %28
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.vf_gpio_softc*, %struct.vf_gpio_softc** %4, align 8
  %54 = call i32 @GPIO_UNLOCK(%struct.vf_gpio_softc* %53)
  ret void
}

declare dso_local i32 @GPIO_LOCK(%struct.vf_gpio_softc*) #1

declare dso_local i32 @WRITE4(%struct.vf_gpio_softc*, i32, i32) #1

declare dso_local i32 @GPIO_PCOR(i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.vf_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
