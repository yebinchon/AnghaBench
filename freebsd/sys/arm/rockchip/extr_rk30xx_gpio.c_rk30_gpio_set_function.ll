; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_set_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_set_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_gpio_softc = type { i32 }

@RK30_GPIO_SWPORT_DDR = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk30_gpio_softc*, i64, i64)* @rk30_gpio_set_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk30_gpio_set_function(%struct.rk30_gpio_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rk30_gpio_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rk30_gpio_softc* %0, %struct.rk30_gpio_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %9 = call i32 @RK30_GPIO_LOCK_ASSERT(%struct.rk30_gpio_softc* %8)
  %10 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %11 = load i32, i32* @RK30_GPIO_SWPORT_DDR, align 4
  %12 = call i64 @RK30_GPIO_READ(%struct.rk30_gpio_softc* %10, i32 %11)
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = trunc i64 %17 to i32
  %19 = shl i32 1, %18
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %7, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %7, align 8
  br label %31

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* %7, align 8
  %30 = and i64 %29, %28
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %23, %16
  %32 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %33 = load i32, i32* @RK30_GPIO_SWPORT_DDR, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @RK30_GPIO_WRITE(%struct.rk30_gpio_softc* %32, i32 %33, i64 %34)
  ret void
}

declare dso_local i32 @RK30_GPIO_LOCK_ASSERT(%struct.rk30_gpio_softc*) #1

declare dso_local i64 @RK30_GPIO_READ(%struct.rk30_gpio_softc*, i32) #1

declare dso_local i32 @RK30_GPIO_WRITE(%struct.rk30_gpio_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
