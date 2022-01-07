; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx51_gpio_softc = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IMX_GPIO_DR_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @imx51_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx51_gpio_pin_set(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.imx51_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.imx51_gpio_softc* @device_get_softc(i32 %9)
  store %struct.imx51_gpio_softc* %10, %struct.imx51_gpio_softc** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %13 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %20 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %19, i32 0, i32 1
  %21 = call i32 @mtx_lock_spin(i32* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %26 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = shl i32 1, %28
  %30 = call i32 @SET4(%struct.imx51_gpio_softc* %25, i32 %26, i32 %29)
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %33 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %34 = load i64, i64* %6, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 1, %35
  %37 = call i32 @CLEAR4(%struct.imx51_gpio_softc* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %8, align 8
  %40 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %39, i32 0, i32 1
  %41 = call i32 @mtx_unlock_spin(i32* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.imx51_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @SET4(%struct.imx51_gpio_softc*, i32, i32) #1

declare dso_local i32 @CLEAR4(%struct.imx51_gpio_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
