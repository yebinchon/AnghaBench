; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP2XX_GPIO_FUNC_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @axp2xx_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_gpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.axp2xx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
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
  br label %85

21:                                               ; preds = %3
  %22 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %23 = call i32 @AXP_LOCK(%struct.axp2xx_softc* %22)
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %26 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @axp2xx_read(i32 %24, i32 %31, i32* %9, i32 1)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %81

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %78 [
    i32 129, label %40
    i32 130, label %42
    i32 128, label %44
  ]

40:                                               ; preds = %35
  %41 = load i32*, i32** %7, align 8
  store i32 0, i32* %41, align 4
  br label %80

42:                                               ; preds = %35
  %43 = load i32*, i32** %7, align 8
  store i32 1, i32* %43, align 4
  br label %80

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %47 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @axp2xx_read(i32 %45, i32 %52, i32* %9, i32 1)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %77

56:                                               ; preds = %44
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %59 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %57, %64
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %68 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %74, align 4
  %76 = lshr i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %56, %44
  br label %80

78:                                               ; preds = %35
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %78, %77, %42, %40
  br label %81

81:                                               ; preds = %80, %21
  %82 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %83 = call i32 @AXP_UNLOCK(%struct.axp2xx_softc* %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %81, %19
  %86 = load i32, i32* %4, align 4
  ret i32 %86
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
