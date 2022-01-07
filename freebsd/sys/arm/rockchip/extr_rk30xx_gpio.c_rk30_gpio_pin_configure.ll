; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk30_gpio_softc*, %struct.gpio_pin*, i32)* @rk30_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk30_gpio_pin_configure(%struct.rk30_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.rk30_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  store %struct.rk30_gpio_softc* %0, %struct.rk30_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %8 = call i32 @RK30_GPIO_LOCK(%struct.rk30_gpio_softc* %7)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %11 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %3
  %16 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %17 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %21 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %30 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %31 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %40

34:                                               ; preds = %15
  %35 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %36 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %37 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %34, %28
  %41 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %42 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %46 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @rk30_gpio_set_function(%struct.rk30_gpio_softc* %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %3
  %50 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %51 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %55 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %60 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %61 = or i32 %59, %60
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %49
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %71 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %72 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %81

75:                                               ; preds = %64
  %76 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %77 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %78 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %69
  br label %82

82:                                               ; preds = %81, %49
  %83 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %84 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %85 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %88 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rk30_gpio_set_pud(%struct.rk30_gpio_softc* %83, i32 %86, i32 %89)
  %91 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %92 = call i32 @RK30_GPIO_UNLOCK(%struct.rk30_gpio_softc* %91)
  ret void
}

declare dso_local i32 @RK30_GPIO_LOCK(%struct.rk30_gpio_softc*) #1

declare dso_local i32 @rk30_gpio_set_function(%struct.rk30_gpio_softc*, i32, i32) #1

declare dso_local i32 @rk30_gpio_set_pud(%struct.rk30_gpio_softc*, i32, i32) #1

declare dso_local i32 @RK30_GPIO_UNLOCK(%struct.rk30_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
