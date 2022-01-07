; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP2XX_GPIO_FUNC_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @axp2xx_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_gpio_pin_set(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.axp2xx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
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
  br label %77

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
  br i1 %34, label %35, label %59

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  switch i32 %39, label %56 [
    i32 128, label %40
    i32 129, label %40
  ]

40:                                               ; preds = %35, %35
  %41 = load i64, i64* %6, align 8
  %42 = icmp eq i64 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %11, align 4
  br label %58

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %9, align 4
  br label %58

56:                                               ; preds = %35
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %48, %46
  br label %59

59:                                               ; preds = %58, %21
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %65 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @axp2xx_write(i32 %63, i32 %70, i32 %71)
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %62, %59
  %74 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %75 = call i32 @AXP_UNLOCK(%struct.axp2xx_softc* %74)
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %19
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.axp2xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @AXP_LOCK(%struct.axp2xx_softc*) #1

declare dso_local i32 @axp2xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @axp2xx_write(i32, i32, i32) #1

declare dso_local i32 @AXP_UNLOCK(%struct.axp2xx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
