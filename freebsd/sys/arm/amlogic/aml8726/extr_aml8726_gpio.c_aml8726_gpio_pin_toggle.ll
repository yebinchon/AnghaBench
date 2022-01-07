; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_gpio_softc = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@AML_GPIO_OUT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @aml8726_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.aml8726_gpio_softc*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.aml8726_gpio_softc* @device_get_softc(i32 %8)
  store %struct.aml8726_gpio_softc* %9, %struct.aml8726_gpio_softc** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %6, align 8
  %12 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %51

17:                                               ; preds = %2
  %18 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %6, align 8
  %19 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @rman_get_start(i32 %22)
  %24 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %6, align 8
  %25 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @rman_get_start(i32 %28)
  %30 = icmp eq i64 %23, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %17
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, 16
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %31, %17
  %35 = load i64, i64* %5, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = zext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  %39 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %6, align 8
  %40 = call i32 @AML_GPIO_LOCK(%struct.aml8726_gpio_softc* %39)
  %41 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %6, align 8
  %42 = load i32, i32* @AML_GPIO_OUT_REG, align 4
  %43 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %6, align 8
  %44 = load i32, i32* @AML_GPIO_OUT_REG, align 4
  %45 = call i64 @CSR_READ_4(%struct.aml8726_gpio_softc* %43, i32 %44)
  %46 = load i64, i64* %7, align 8
  %47 = xor i64 %45, %46
  %48 = call i32 @CSR_WRITE_4(%struct.aml8726_gpio_softc* %41, i32 %42, i64 %47)
  %49 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %6, align 8
  %50 = call i32 @AML_GPIO_UNLOCK(%struct.aml8726_gpio_softc* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %34, %15
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.aml8726_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_get_start(i32) #1

declare dso_local i32 @AML_GPIO_LOCK(%struct.aml8726_gpio_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_gpio_softc*, i32, i64) #1

declare dso_local i64 @CSR_READ_4(%struct.aml8726_gpio_softc*, i32) #1

declare dso_local i32 @AML_GPIO_UNLOCK(%struct.aml8726_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
