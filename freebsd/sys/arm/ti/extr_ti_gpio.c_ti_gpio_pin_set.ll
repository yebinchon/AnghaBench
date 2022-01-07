; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@TI_GPIO_CLEARDATAOUT = common dso_local global i32 0, align 4
@TI_GPIO_SETDATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ti_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ti_gpio_softc* @device_get_softc(i32 %10)
  store %struct.ti_gpio_softc* %11, %struct.ti_gpio_softc** %8, align 8
  %12 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @ti_gpio_valid_pin(%struct.ti_gpio_softc* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %8, align 8
  %20 = call i32 @TI_GPIO_LOCK(%struct.ti_gpio_softc* %19)
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GPIO_PIN_LOW, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @TI_GPIO_CLEARDATAOUT, align 4
  store i32 %25, i32* %9, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @TI_GPIO_SETDATAOUT, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @TI_GPIO_MASK(i32 %31)
  %33 = call i32 @ti_gpio_write_4(%struct.ti_gpio_softc* %29, i32 %30, i32 %32)
  %34 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %8, align 8
  %35 = call i32 @TI_GPIO_UNLOCK(%struct.ti_gpio_softc* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_gpio_valid_pin(%struct.ti_gpio_softc*, i32) #1

declare dso_local i32 @TI_GPIO_LOCK(%struct.ti_gpio_softc*) #1

declare dso_local i32 @ti_gpio_write_4(%struct.ti_gpio_softc*, i32, i32) #1

declare dso_local i32 @TI_GPIO_MASK(i32) #1

declare dso_local i32 @TI_GPIO_UNLOCK(%struct.ti_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
