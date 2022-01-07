; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx51_gpio_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OPENDRAIN = common dso_local global i32 0, align 4
@IMX_GPIO_PSR_REG = common dso_local global i32 0, align 4
@IMX_GPIO_DR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @imx51_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx51_gpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.imx51_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.imx51_gpio_softc* @device_get_softc(i32 %9)
  store %struct.imx51_gpio_softc* %10, %struct.imx51_gpio_softc** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %13 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %48

18:                                               ; preds = %3
  %19 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %20 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GPIO_PIN_OPENDRAIN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %18
  %30 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %31 = load i32, i32* @IMX_GPIO_PSR_REG, align 4
  %32 = call i64 @READ4(%struct.imx51_gpio_softc* %30, i32 %31)
  %33 = load i64, i64* %6, align 8
  %34 = lshr i64 %32, %33
  %35 = and i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %47

38:                                               ; preds = %18
  %39 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %40 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %41 = call i64 @READ4(%struct.imx51_gpio_softc* %39, i32 %40)
  %42 = load i64, i64* %6, align 8
  %43 = lshr i64 %41, %42
  %44 = and i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %7, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %29
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.imx51_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @READ4(%struct.imx51_gpio_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
