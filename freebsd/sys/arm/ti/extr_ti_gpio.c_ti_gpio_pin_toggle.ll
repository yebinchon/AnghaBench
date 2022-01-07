; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TI_GPIO_DATAOUT = common dso_local global i32 0, align 4
@TI_GPIO_CLEARDATAOUT = common dso_local global i32 0, align 4
@TI_GPIO_SETDATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ti_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_gpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ti_gpio_softc* @device_get_softc(i32 %9)
  store %struct.ti_gpio_softc* %10, %struct.ti_gpio_softc** %6, align 8
  %11 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @ti_gpio_valid_pin(%struct.ti_gpio_softc* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %6, align 8
  %19 = call i32 @TI_GPIO_LOCK(%struct.ti_gpio_softc* %18)
  %20 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %6, align 8
  %21 = load i32, i32* @TI_GPIO_DATAOUT, align 4
  %22 = call i32 @ti_gpio_read_4(%struct.ti_gpio_softc* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @TI_GPIO_MASK(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i32, i32* @TI_GPIO_CLEARDATAOUT, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %17
  %31 = load i32, i32* @TI_GPIO_SETDATAOUT, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @TI_GPIO_MASK(i32 %35)
  %37 = call i32 @ti_gpio_write_4(%struct.ti_gpio_softc* %33, i32 %34, i32 %36)
  %38 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %6, align 8
  %39 = call i32 @TI_GPIO_UNLOCK(%struct.ti_gpio_softc* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %32, %15
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_gpio_valid_pin(%struct.ti_gpio_softc*, i32) #1

declare dso_local i32 @TI_GPIO_LOCK(%struct.ti_gpio_softc*) #1

declare dso_local i32 @ti_gpio_read_4(%struct.ti_gpio_softc*, i32) #1

declare dso_local i32 @TI_GPIO_MASK(i32) #1

declare dso_local i32 @ti_gpio_write_4(%struct.ti_gpio_softc*, i32, i32) #1

declare dso_local i32 @TI_GPIO_UNLOCK(%struct.ti_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
