; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_gpio.c_am335x_gpio_get_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_gpio.c_am335x_gpio_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @am335x_gpio_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_gpio_get_flags(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.ti_gpio_softc* @device_get_softc(i32 %10)
  store %struct.ti_gpio_softc* %11, %struct.ti_gpio_softc** %9, align 8
  %12 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %9, align 8
  %13 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 32
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i64 @ti_pinmux_padconf_get_gpiomode(i32 %17, i32* %8)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %50

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %46 [
    i32 129, label %25
    i32 128, label %28
    i32 132, label %33
    i32 130, label %36
    i32 131, label %41
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %48

28:                                               ; preds = %23
  %29 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %30 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %48

33:                                               ; preds = %23
  %34 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  br label %48

36:                                               ; preds = %23
  %37 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %38 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %39 = or i32 %37, %38
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %48

41:                                               ; preds = %23
  %42 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %43 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %44 = or i32 %42, %43
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  br label %48

46:                                               ; preds = %23
  %47 = load i32*, i32** %7, align 8
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %46, %41, %36, %33, %28, %25
  br label %49

49:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_pinmux_padconf_get_gpiomode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
