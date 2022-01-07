; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_gpio_softc = type { i32 }

@RK_GPIO_SWPORTA_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rk_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk_gpio_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.rk_gpio_softc* @device_get_softc(i32 %9)
  store %struct.rk_gpio_softc* %10, %struct.rk_gpio_softc** %7, align 8
  %11 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %7, align 8
  %12 = call i32 @RK_GPIO_LOCK(%struct.rk_gpio_softc* %11)
  %13 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %7, align 8
  %14 = load i32, i32* @RK_GPIO_SWPORTA_DR, align 4
  %15 = call i32 @RK_GPIO_READ(%struct.rk_gpio_softc* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %7, align 8
  %31 = load i32, i32* @RK_GPIO_SWPORTA_DR, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @RK_GPIO_WRITE(%struct.rk_gpio_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %7, align 8
  %35 = call i32 @RK_GPIO_UNLOCK(%struct.rk_gpio_softc* %34)
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
