; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.axp8xx_softc = type { i32 }

@axp8xx_pins = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC_SHIFT = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@AXP_GPIO_FUNC_DRVLO = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC_DRVHI = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @axp8xx_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_gpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.axp8xx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @axp8xx_pins, align 8
  %14 = call i64 @nitems(%struct.TYPE_3__* %13)
  %15 = icmp uge i64 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %63

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.axp8xx_softc* @device_get_softc(i32 %19)
  store %struct.axp8xx_softc* %20, %struct.axp8xx_softc** %8, align 8
  %21 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %8, align 8
  %22 = call i32 @AXP_LOCK(%struct.axp8xx_softc* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @axp8xx_pins, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @axp8xx_read(i32 %23, i32 %28, i32* %9, i32 1)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AXP_GPIO_FUNC, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @AXP_GPIO_FUNC_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @AXP_GPIO_FUNC_INPUT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %43 = load i64*, i64** %7, align 8
  store i64 %42, i64* %43, align 8
  br label %58

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @AXP_GPIO_FUNC_DRVLO, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @AXP_GPIO_FUNC_DRVHI, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %44
  %53 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %54 = load i64*, i64** %7, align 8
  store i64 %53, i64* %54, align 8
  br label %57

55:                                               ; preds = %48
  %56 = load i64*, i64** %7, align 8
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %55, %52
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %18
  %60 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %8, align 8
  %61 = call i32 @AXP_UNLOCK(%struct.axp8xx_softc* %60)
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %16
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local %struct.axp8xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @AXP_LOCK(%struct.axp8xx_softc*) #1

declare dso_local i32 @axp8xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @AXP_UNLOCK(%struct.axp8xx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
