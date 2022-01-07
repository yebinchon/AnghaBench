; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_gpio.c_aml8726_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_gpio_softc = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@AML_GPIO_OUT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @aml8726_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
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
  %13 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %14 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %12, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %59

22:                                               ; preds = %17
  %23 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %24 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @rman_get_start(i32 %27)
  %29 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %30 = getelementptr inbounds %struct.aml8726_gpio_softc, %struct.aml8726_gpio_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @rman_get_start(i32 %33)
  %35 = icmp eq i64 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 16
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %22
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  store i32 %41, i32* %9, align 4
  %42 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %43 = call i32 @AML_GPIO_LOCK(%struct.aml8726_gpio_softc* %42)
  %44 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %45 = load i32, i32* @AML_GPIO_OUT_REG, align 4
  %46 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %47 = load i32, i32* @AML_GPIO_OUT_REG, align 4
  %48 = call i32 @CSR_READ_4(%struct.aml8726_gpio_softc* %46, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %51, %54
  %56 = call i32 @CSR_WRITE_4(%struct.aml8726_gpio_softc* %44, i32 %45, i32 %55)
  %57 = load %struct.aml8726_gpio_softc*, %struct.aml8726_gpio_softc** %8, align 8
  %58 = call i32 @AML_GPIO_UNLOCK(%struct.aml8726_gpio_softc* %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %39, %20
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.aml8726_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_get_start(i32) #1

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
