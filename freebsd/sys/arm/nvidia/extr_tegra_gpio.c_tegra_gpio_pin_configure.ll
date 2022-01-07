; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_MSK_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_gpio_softc*, %struct.gpio_pin*, i32)* @tegra_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_gpio_pin_configure(%struct.tegra_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_gpio_softc* %0, %struct.tegra_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %9 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %47

14:                                               ; preds = %3
  %15 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %16 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %20 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %14
  %28 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %29 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %30 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %4, align 8
  %34 = load i32, i32* @GPIO_MSK_OE, align 4
  %35 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %36 = call i32 @gpio_write_masked(%struct.tegra_gpio_softc* %33, i32 %34, %struct.gpio_pin* %35, i32 1)
  br label %47

37:                                               ; preds = %14
  %38 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %39 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %40 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %4, align 8
  %44 = load i32, i32* @GPIO_MSK_OE, align 4
  %45 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %46 = call i32 @gpio_write_masked(%struct.tegra_gpio_softc* %43, i32 %44, %struct.gpio_pin* %45, i32 0)
  br label %47

47:                                               ; preds = %13, %37, %27
  ret void
}

declare dso_local i32 @gpio_write_masked(%struct.tegra_gpio_softc*, i32, %struct.gpio_pin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
