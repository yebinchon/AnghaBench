; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_CNF = common dso_local global i32 0, align 4
@GPIO_MSK_CNF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @tegra_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_pin_setflags(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tegra_gpio_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
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
  br label %52

19:                                               ; preds = %3
  %20 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %21 = call i32 @GPIO_LOCK(%struct.tegra_gpio_softc* %20)
  %22 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %23 = load i32, i32* @GPIO_CNF, align 4
  %24 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %25 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @gpio_read(%struct.tegra_gpio_softc* %22, i32 %23, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %34 = load i32, i32* @GPIO_MSK_CNF, align 4
  %35 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %36 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = call i32 @gpio_write_masked(%struct.tegra_gpio_softc* %33, i32 %34, i32* %39, i32 1)
  br label %41

41:                                               ; preds = %32, %19
  %42 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %43 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %44 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @tegra_gpio_pin_configure(%struct.tegra_gpio_softc* %42, i32* %47, i64 %48)
  %50 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %51 = call i32 @GPIO_UNLOCK(%struct.tegra_gpio_softc* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %41, %17
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.tegra_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.tegra_gpio_softc*) #1

declare dso_local i32 @gpio_read(%struct.tegra_gpio_softc*, i32, i32*) #1

declare dso_local i32 @gpio_write_masked(%struct.tegra_gpio_softc*, i32, i32*, i32) #1

declare dso_local i32 @tegra_gpio_pin_configure(%struct.tegra_gpio_softc*, i32*, i64) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.tegra_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
