; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32 }

@BCM_GPIO_PINS = common dso_local global i64 0, align 8
@GPIO_INTR_CONFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_gpio_softc*)* @bcm_gpio_pic_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_pic_attach(%struct.bcm_gpio_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_gpio_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %3, align 8
  %7 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @device_get_nameunit(i32 %9)
  store i8* %10, i8** %6, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @BCM_GPIO_PINS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i64 %16, i64* %22, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @BCM_GPIO_MASK(i64 %23)
  %25 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %24, i32* %30, align 8
  %31 = load i32, i32* @GPIO_INTR_CONFORM, align 4
  %32 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %33 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %31, i32* %37, align 4
  %38 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %45 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @intr_isrc_register(i32* %43, i32 %46, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %47, i64 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %15
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %72

54:                                               ; preds = %15
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %11

58:                                               ; preds = %11
  %59 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %60 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %3, align 8
  %63 = getelementptr inbounds %struct.bcm_gpio_softc, %struct.bcm_gpio_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ofw_bus_get_node(i32 %64)
  %66 = call i32 @OF_xref_from_node(i32 %65)
  %67 = call i32* @intr_pic_register(i32 %61, i32 %66)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @ENXIO, align 4
  store i32 %70, i32* %2, align 4
  br label %72

71:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %69, %52
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @BCM_GPIO_MASK(i64) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i64) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
