; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_set_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_set_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_gpio_softc*, i32, i32)* @bcm_gpio_set_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_gpio_set_function(%struct.bcm_gpio_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %11 = call i32 @BCM_GPIO_LOCK_ASSERT(%struct.bcm_gpio_softc* %10)
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %12, 10
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 10
  %17 = sub nsw i32 %14, %16
  %18 = mul nsw i32 %17, 3
  store i32 %18, i32* %9, align 4
  %19 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @BCM_GPIO_GPFSEL(i32 %20)
  %22 = call i32 @BCM_GPIO_READ(%struct.bcm_gpio_softc* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 7, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %8, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @BCM_GPIO_GPFSEL(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @BCM_GPIO_WRITE(%struct.bcm_gpio_softc* %33, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @BCM_GPIO_LOCK_ASSERT(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @BCM_GPIO_READ(%struct.bcm_gpio_softc*, i32) #1

declare dso_local i32 @BCM_GPIO_GPFSEL(i32) #1

declare dso_local i32 @BCM_GPIO_WRITE(%struct.bcm_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
