; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP2XX_GPIO_FUNC_MASK = common dso_local global i32 0, align 4
@AXP2XX_GPIO_FUNC_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@AXP2XX_GPIO_FUNC_DRVLO = common dso_local global i32 0, align 4
@AXP2XX_GPIO_FUNC_DRVHI = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @axp2xx_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_gpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.axp2xx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.axp2xx_softc* @device_get_softc(i32 %12)
  store %struct.axp2xx_softc* %13, %struct.axp2xx_softc** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %16 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp uge i64 %14, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %64

21:                                               ; preds = %3
  %22 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %23 = call i32 @AXP_LOCK(%struct.axp2xx_softc* %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %26 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @axp2xx_read(i32 %24, i32 %31, i32* %9, i32 1)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @AXP2XX_GPIO_FUNC_INPUT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  br label %59

45:                                               ; preds = %35
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @AXP2XX_GPIO_FUNC_DRVLO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @AXP2XX_GPIO_FUNC_DRVHI, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49, %45
  %54 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %55 = load i64*, i64** %7, align 8
  store i64 %54, i64* %55, align 8
  br label %58

56:                                               ; preds = %49
  %57 = load i64*, i64** %7, align 8
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %56, %53
  br label %59

59:                                               ; preds = %58, %42
  br label %60

60:                                               ; preds = %59, %21
  %61 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %62 = call i32 @AXP_UNLOCK(%struct.axp2xx_softc* %61)
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.axp2xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @AXP_LOCK(%struct.axp2xx_softc*) #1

declare dso_local i32 @axp2xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @AXP_UNLOCK(%struct.axp2xx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
