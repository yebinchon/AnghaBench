; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx51_gpio_softc = type { i32, i32*, i64* }

@NUM_IRQRES = common dso_local global i32 0, align 4
@FIRST_IRQRES = common dso_local global i32 0, align 4
@imx_gpio_spec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @imx51_gpio_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx51_gpio_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx51_gpio_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.imx51_gpio_softc* @device_get_softc(i32 %5)
  store %struct.imx51_gpio_softc* %6, %struct.imx51_gpio_softc** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @gpiobus_detach_bus(i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NUM_IRQRES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  %14 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %15 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %41

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %25 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FIRST_IRQRES, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %34 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @bus_teardown_intr(i32 %23, i32 %32, i64 %39)
  br label %41

41:                                               ; preds = %22, %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %9

45:                                               ; preds = %9
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* @imx_gpio_spec, align 4
  %48 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %49 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @bus_release_resources(i32 %46, i32 %47, i32* %50)
  %52 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %4, align 8
  %53 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %52, i32 0, i32 0
  %54 = call i32 @mtx_destroy(i32* %53)
  ret i32 0
}

declare dso_local %struct.imx51_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @gpiobus_detach_bus(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i64) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
