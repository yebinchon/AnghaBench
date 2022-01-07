; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @aw_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aw_gpio_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.aw_gpio_softc* @device_get_softc(i32 %9)
  store %struct.aw_gpio_softc* %10, %struct.aw_gpio_softc** %7, align 8
  %11 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %7, align 8
  %12 = call i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc* %11)
  %13 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @aw_gpio_pin_set_locked(%struct.aw_gpio_softc* %13, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %7, align 8
  %18 = call i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc* %17)
  %19 = load i32, i32* %8, align 4
  ret i32 %19
}

declare dso_local %struct.aw_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc*) #1

declare dso_local i32 @aw_gpio_pin_set_locked(%struct.aw_gpio_softc*, i32, i32) #1

declare dso_local i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
