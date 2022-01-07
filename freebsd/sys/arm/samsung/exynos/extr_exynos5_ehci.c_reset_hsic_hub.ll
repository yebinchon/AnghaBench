; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_reset_hsic_hub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_ehci.c_reset_hsic_hub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_ehci_softc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"freebsd,reset-gpio\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"failed to decode reset GPIO pin number for HSIC hub\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Cant find gpio device\0A\00", align 1
@GPIO_PIN_LOW = common dso_local global i32 0, align 4
@GPIO_PIN_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_ehci_softc*, i32)* @reset_hsic_hub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_hsic_hub(%struct.exynos_ehci_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_ehci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.exynos_ehci_softc* %0, %struct.exynos_ehci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @OF_hasprop(i32 %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @OF_getencprop(i32 %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %7, i32 4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %41

21:                                               ; preds = %12
  %22 = call i32 @devclass_find(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32* @devclass_get_device(i32 %22, i32 0)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.exynos_ehci_softc*, %struct.exynos_ehci_softc** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_ehci_softc, %struct.exynos_ehci_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %41

31:                                               ; preds = %21
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @GPIO_PIN_LOW, align 4
  %35 = call i32 @GPIO_PIN_SET(i32* %32, i32 %33, i32 %34)
  %36 = call i32 @DELAY(i32 100)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GPIO_PIN_HIGH, align 4
  %40 = call i32 @GPIO_PIN_SET(i32* %37, i32 %38, i32 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %31, %26, %16, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @GPIO_PIN_SET(i32*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
