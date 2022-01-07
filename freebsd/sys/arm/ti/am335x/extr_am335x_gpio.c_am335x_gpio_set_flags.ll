; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_gpio.c_am335x_gpio_set_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_gpio.c_am335x_gpio_set_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i32 }

@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@PADCONF_OUTPUT_PULLUP = common dso_local global i32 0, align 4
@PADCONF_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@PADCONF_INPUT_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@PADCONF_INPUT_PULLDOWN = common dso_local global i32 0, align 4
@PADCONF_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @am335x_gpio_set_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_gpio_set_flags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ti_gpio_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ti_gpio_softc* @device_get_softc(i32 %9)
  store %struct.ti_gpio_softc* %10, %struct.ti_gpio_softc** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @PADCONF_OUTPUT_PULLUP, align 4
  store i32 %21, i32* %7, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @PADCONF_OUTPUT, align 4
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %22, %20
  br label %49

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @PADCONF_INPUT_PULLUP, align 4
  store i32 %36, i32* %7, align 4
  br label %47

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @PADCONF_INPUT_PULLDOWN, align 4
  store i32 %43, i32* %7, align 4
  br label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @PADCONF_INPUT, align 4
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %44, %42
  br label %47

47:                                               ; preds = %46, %35
  br label %48

48:                                               ; preds = %47, %25
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %8, align 8
  %51 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %52, 32
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ti_pinmux_padconf_set_gpiomode(i32 %55, i32 %56)
  ret i32 %57
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_pinmux_padconf_set_gpiomode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
