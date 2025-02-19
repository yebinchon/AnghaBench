; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_CNF = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @tegra_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tegra_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.tegra_gpio_softc* @device_get_softc(i32 %10)
  store %struct.tegra_gpio_softc* %11, %struct.tegra_gpio_softc** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %14 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %21 = call i32 @GPIO_LOCK(%struct.tegra_gpio_softc* %20)
  %22 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %23 = load i32, i32* @GPIO_CNF, align 4
  %24 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %25 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = call i32 @gpio_read(%struct.tegra_gpio_softc* %22, i32 %23, %struct.TYPE_2__* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %34 = call i32 @GPIO_UNLOCK(%struct.tegra_gpio_softc* %33)
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %4, align 4
  br label %47

36:                                               ; preds = %19
  %37 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %38 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %46 = call i32 @GPIO_UNLOCK(%struct.tegra_gpio_softc* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %36, %32, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.tegra_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.tegra_gpio_softc*) #1

declare dso_local i32 @gpio_read(%struct.tegra_gpio_softc*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.tegra_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
