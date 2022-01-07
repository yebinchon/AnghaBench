; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@AML_GPIO_OE_N_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @aml8726_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_gpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.aml8726_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.aml8726_gpio_softc* @device_get_softc(i32 %10)
  store %struct.aml8726_gpio_softc* %11, %struct.aml8726_gpio_softc** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 1, %12
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %16 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %23 = call i32 @AML_GPIO_LOCK(%struct.aml8726_gpio_softc* %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %30 = load i32, i32* @AML_GPIO_OE_N_REG, align 4
  %31 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %32 = load i32, i32* @AML_GPIO_OE_N_REG, align 4
  %33 = call i32 @CSR_READ_4(%struct.aml8726_gpio_softc* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @CSR_WRITE_4(%struct.aml8726_gpio_softc* %29, i32 %30, i32 %36)
  br label %47

38:                                               ; preds = %21
  %39 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %40 = load i32, i32* @AML_GPIO_OE_N_REG, align 4
  %41 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %42 = load i32, i32* @AML_GPIO_OE_N_REG, align 4
  %43 = call i32 @CSR_READ_4(%struct.aml8726_gpio_softc* %41, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @CSR_WRITE_4(%struct.aml8726_gpio_softc* %39, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %38, %28
  %48 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %49 = call i32 @AML_GPIO_UNLOCK(%struct.aml8726_gpio_softc* %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %19
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.aml8726_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @AML_GPIO_LOCK(%struct.aml8726_gpio_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_gpio_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_gpio_softc*, i32) #1

declare dso_local i32 @AML_GPIO_UNLOCK(%struct.aml8726_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
