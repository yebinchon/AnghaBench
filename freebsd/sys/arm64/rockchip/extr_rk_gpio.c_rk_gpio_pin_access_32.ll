; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_pin_access_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_pin_access_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_gpio_softc = type { i32 }

@RK_GPIO_SWPORTA_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @rk_gpio_pin_access_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gpio_pin_access_32(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rk_gpio_softc*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.rk_gpio_softc* @device_get_softc(i32 %13)
  store %struct.rk_gpio_softc* %14, %struct.rk_gpio_softc** %11, align 8
  %15 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %11, align 8
  %16 = call i32 @RK_GPIO_LOCK(%struct.rk_gpio_softc* %15)
  %17 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %11, align 8
  %18 = load i32, i32* @RK_GPIO_SWPORTA_DR, align 4
  %19 = call i32 @RK_GPIO_READ(%struct.rk_gpio_softc* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load i32, i32* %12, align 4
  %24 = load i32*, i32** %10, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %5
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = load i32, i32* %9, align 4
  %36 = xor i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %11, align 8
  %38 = load i32, i32* @RK_GPIO_SWPORTA_DR, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @RK_GPIO_WRITE(%struct.rk_gpio_softc* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %25
  %42 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %11, align 8
  %43 = call i32 @RK_GPIO_UNLOCK(%struct.rk_gpio_softc* %42)
  ret i32 0
}

declare dso_local %struct.rk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @RK_GPIO_LOCK(%struct.rk_gpio_softc*) #1

declare dso_local i32 @RK_GPIO_READ(%struct.rk_gpio_softc*, i32) #1

declare dso_local i32 @RK_GPIO_WRITE(%struct.rk_gpio_softc*, i32, i32) #1

declare dso_local i32 @RK_GPIO_UNLOCK(%struct.rk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
