; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @zy7_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.zy7_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.zy7_gpio_softc* @device_get_softc(i32 %7)
  store %struct.zy7_gpio_softc* %8, %struct.zy7_gpio_softc** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @VALID_PIN(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %6, align 8
  %16 = call i32 @ZGPIO_LOCK(%struct.zy7_gpio_softc* %15)
  %17 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 5
  %20 = call i32 @ZY7_GPIO_DATA(i32 %19)
  %21 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 5
  %24 = call i32 @ZY7_GPIO_DATA(i32 %23)
  %25 = call i32 @RD4(%struct.zy7_gpio_softc* %21, i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = and i32 %26, 31
  %28 = shl i32 1, %27
  %29 = xor i32 %25, %28
  %30 = call i32 @WR4(%struct.zy7_gpio_softc* %17, i32 %20, i32 %29)
  %31 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %6, align 8
  %32 = call i32 @ZGPIO_UNLOCK(%struct.zy7_gpio_softc* %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %14, %12
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.zy7_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VALID_PIN(i32) #1

declare dso_local i32 @ZGPIO_LOCK(%struct.zy7_gpio_softc*) #1

declare dso_local i32 @WR4(%struct.zy7_gpio_softc*, i32, i32) #1

declare dso_local i32 @ZY7_GPIO_DATA(i32) #1

declare dso_local i32 @RD4(%struct.zy7_gpio_softc*, i32) #1

declare dso_local i32 @ZGPIO_UNLOCK(%struct.zy7_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
