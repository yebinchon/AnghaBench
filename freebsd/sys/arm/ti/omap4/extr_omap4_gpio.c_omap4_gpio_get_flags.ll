; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_gpio.c_omap4_gpio_get_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_gpio.c_omap4_gpio_get_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @omap4_gpio_get_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_gpio_get_flags(i32 %0, i32 %1, i32* %2) #0 {
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
  %15 = sub nsw i32 %14, 1
  %16 = mul nsw i32 %15, 32
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  %19 = call i64 @ti_pinmux_padconf_get_gpiomode(i32 %18, i32* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %42 [
    i32 128, label %26
    i32 131, label %29
    i32 129, label %32
    i32 130, label %37
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %44

29:                                               ; preds = %24
  %30 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  br label %44

32:                                               ; preds = %24
  %33 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %34 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** %7, align 8
  store i32 %35, i32* %36, align 4
  br label %44

37:                                               ; preds = %24
  %38 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %39 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %40 = or i32 %38, %39
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %44

42:                                               ; preds = %24
  %43 = load i32*, i32** %7, align 8
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %37, %32, %29, %26
  br label %45

45:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_pinmux_padconf_get_gpiomode(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
