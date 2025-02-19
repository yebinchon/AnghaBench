; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @zy7_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_gpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zy7_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.zy7_gpio_softc* @device_get_softc(i32 %9)
  store %struct.zy7_gpio_softc* %10, %struct.zy7_gpio_softc** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @VALID_PIN(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %27

16:                                               ; preds = %3
  %17 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 5
  %20 = call i32 @ZY7_GPIO_DATA_RO(i32 %19)
  %21 = call i32 @RD4(%struct.zy7_gpio_softc* %17, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 31
  %24 = ashr i32 %21, %23
  %25 = and i32 %24, 1
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.zy7_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VALID_PIN(i32) #1

declare dso_local i32 @RD4(%struct.zy7_gpio_softc*, i32) #1

declare dso_local i32 @ZY7_GPIO_DATA_RO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
