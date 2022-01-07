; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx51_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PRESET_LOW = common dso_local global i32 0, align 4
@GPIO_PIN_PRESET_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_OPENDRAIN = common dso_local global i32 0, align 4
@IMX_GPIO_PSR_REG = common dso_local global i32 0, align 4
@IMX_GPIO_DR_REG = common dso_local global i32 0, align 4
@IMX_GPIO_OE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx51_gpio_softc*, %struct.gpio_pin*, i32)* @imx51_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx51_gpio_pin_configure(%struct.imx51_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.imx51_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.imx51_gpio_softc* %0, %struct.imx51_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %10 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %9, i32 0, i32 0
  %11 = call i32 @mtx_lock_spin(i32* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %14 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %98

18:                                               ; preds = %3
  %19 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %20 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %23 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %21, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %83

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @GPIO_PIN_PRESET_LOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %64

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @GPIO_PIN_PRESET_HIGH, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  br label %63

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @GPIO_PIN_OPENDRAIN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %50 = load i32, i32* @IMX_GPIO_PSR_REG, align 4
  %51 = call i32 @READ4(%struct.imx51_gpio_softc* %49, i32 %50)
  store i32 %51, i32* %8, align 4
  br label %56

52:                                               ; preds = %43
  %53 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %54 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %55 = call i32 @READ4(%struct.imx51_gpio_softc* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %57, %60
  %62 = and i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %56, %42
  br label %64

64:                                               ; preds = %63, %36
  %65 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %66 = load i32, i32* %7, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %69 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %72 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %70, %73
  %75 = call i32 @SET4(%struct.imx51_gpio_softc* %68, i32 %69, i32 %74)
  %76 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %77 = load i32, i32* @IMX_GPIO_OE_REG, align 4
  %78 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %79 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 1, %80
  %82 = call i32 @SET4(%struct.imx51_gpio_softc* %76, i32 %77, i32 %81)
  br label %94

83:                                               ; preds = %18
  %84 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %88 = load i32, i32* @IMX_GPIO_OE_REG, align 4
  %89 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %90 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 1, %91
  %93 = call i32 @CLEAR4(%struct.imx51_gpio_softc* %87, i32 %88, i32 %92)
  br label %94

94:                                               ; preds = %83, %64
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %97 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %3
  %99 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %100 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %99, i32 0, i32 0
  %101 = call i32 @mtx_unlock_spin(i32* %100)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @READ4(%struct.imx51_gpio_softc*, i32) #1

declare dso_local i32 @SET4(%struct.imx51_gpio_softc*, i32, i32) #1

declare dso_local i32 @CLEAR4(%struct.imx51_gpio_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
