; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_TRISTATE = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @zy7_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_gpio_pin_getflags(i32 %0, i32 %1, i32* %2) #0 {
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
  br label %55

16:                                               ; preds = %3
  %17 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %18 = call i32 @ZGPIO_LOCK(%struct.zy7_gpio_softc* %17)
  %19 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 5
  %22 = call i32 @ZY7_GPIO_DIRM(i32 %21)
  %23 = call i32 @RD4(%struct.zy7_gpio_softc* %19, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 31
  %26 = shl i32 1, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %16
  %30 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = ashr i32 %31, 5
  %33 = call i32 @ZY7_GPIO_OEN(i32 %32)
  %34 = call i32 @RD4(%struct.zy7_gpio_softc* %30, i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 31
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %42 = load i32, i32* @GPIO_PIN_TRISTATE, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %7, align 8
  store i32 %43, i32* %44, align 4
  br label %48

45:                                               ; preds = %29
  %46 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  br label %52

49:                                               ; preds = %16
  %50 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %48
  %53 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %54 = call i32 @ZGPIO_UNLOCK(%struct.zy7_gpio_softc* %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %14
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.zy7_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VALID_PIN(i32) #1

declare dso_local i32 @ZGPIO_LOCK(%struct.zy7_gpio_softc*) #1

declare dso_local i32 @RD4(%struct.zy7_gpio_softc*, i32) #1

declare dso_local i32 @ZY7_GPIO_DIRM(i32) #1

declare dso_local i32 @ZY7_GPIO_OEN(i32) #1

declare dso_local i32 @ZGPIO_UNLOCK(%struct.zy7_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
