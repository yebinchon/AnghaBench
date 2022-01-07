; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@BCM2835_FSEL_GPIO_OUT = common dso_local global i32 0, align 4
@BCM2835_FSEL_GPIO_IN = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i32 0, align 4
@BCM_GPIO_PULLUP = common dso_local global i32 0, align 4
@BCM_GPIO_PULLDOWN = common dso_local global i32 0, align 4
@BCM_GPIO_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_gpio_softc*, %struct.gpio_pin*, i32)* @bcm_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_gpio_pin_configure(%struct.bcm_gpio_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.bcm_gpio_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %8 = call i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc* %7)
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %11 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %53

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
  br i1 %27, label %28, label %40

28:                                               ; preds = %15
  %29 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %30 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %31 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %35 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %36 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BCM2835_FSEL_GPIO_OUT, align 4
  %39 = call i32 @bcm_gpio_set_function(%struct.bcm_gpio_softc* %34, i32 %37, i32 %38)
  br label %52

40:                                               ; preds = %15
  %41 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %42 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %43 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %47 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %48 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BCM2835_FSEL_GPIO_IN, align 4
  %51 = call i32 @bcm_gpio_set_function(%struct.bcm_gpio_softc* %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %40, %28
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %55 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %59 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %64 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %53
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load i32, i32* @GPIO_PIN_PULLUP, align 4
  %75 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %76 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %80 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %81 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @BCM_GPIO_PULLUP, align 4
  %84 = call i32 @bcm_gpio_set_pud(%struct.bcm_gpio_softc* %79, i32 %82, i32 %83)
  br label %97

85:                                               ; preds = %68
  %86 = load i32, i32* @GPIO_PIN_PULLDOWN, align 4
  %87 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %88 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %92 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %93 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BCM_GPIO_PULLDOWN, align 4
  %96 = call i32 @bcm_gpio_set_pud(%struct.bcm_gpio_softc* %91, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %85, %73
  br label %105

98:                                               ; preds = %53
  %99 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %100 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %101 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @BCM_GPIO_NONE, align 4
  %104 = call i32 @bcm_gpio_set_pud(%struct.bcm_gpio_softc* %99, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %97
  %106 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %4, align 8
  %107 = call i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc* %106)
  ret void
}

declare dso_local i32 @BCM_GPIO_LOCK(%struct.bcm_gpio_softc*) #1

declare dso_local i32 @bcm_gpio_set_function(%struct.bcm_gpio_softc*, i32, i32) #1

declare dso_local i32 @bcm_gpio_set_pud(%struct.bcm_gpio_softc*, i32, i32) #1

declare dso_local i32 @BCM_GPIO_UNLOCK(%struct.bcm_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
