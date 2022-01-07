; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_gpio_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_gpio_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_ehci_softc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"cant find gpio_dev\0A\00", align 1
@PIN_USB = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_ehci_softc*, i32, i32)* @gpio_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_ctrl(%struct.exynos_ehci_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_ehci_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.exynos_ehci_softc* %0, %struct.exynos_ehci_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %10 = call i32* @devclass_get_device(i32 %9, i32 0)
  store i32* %10, i32** %8, align 8
  %11 = load i32*, i32** %8, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %5, align 8
  %15 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %45

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* @PIN_USB, align 4
  %24 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %25 = call i32 @GPIO_PIN_SET(i32* %22, i32 %23, i32 %24)
  br label %31

26:                                               ; preds = %18
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @PIN_USB, align 4
  %29 = load i32, i32* @GPIO_PIN_LOW, align 4
  %30 = call i32 @GPIO_PIN_SET(i32* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @PIN_USB, align 4
  %37 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %38 = call i32 @GPIO_PIN_SETFLAGS(i32* %35, i32 %36, i32 %37)
  br label %44

39:                                               ; preds = %31
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @PIN_USB, align 4
  %42 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %43 = call i32 @GPIO_PIN_SETFLAGS(i32* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i32 @GPIO_PIN_SETFLAGS(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
