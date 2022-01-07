; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP2XX_GPIO_FUNC_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @axp2xx_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.axp2xx_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.axp2xx_softc* @device_get_softc(i32 %10)
  store %struct.axp2xx_softc* %11, %struct.axp2xx_softc** %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %6, align 8
  %14 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp uge i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %6, align 8
  %21 = call i32 @AXP_LOCK(%struct.axp2xx_softc* %20)
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %6, align 8
  %24 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @axp2xx_read(i32 %22, i32 %29, i32* %7, i32 1)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %19
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %36 = and i32 %34, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %57 [
    i32 128, label %38
    i32 129, label %50
  ]

38:                                               ; preds = %33
  %39 = load i64, i64* %5, align 8
  %40 = icmp eq i64 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %9, align 4
  br label %59

43:                                               ; preds = %38
  %44 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, 129
  store i32 %49, i32* %7, align 4
  br label %59

50:                                               ; preds = %33
  %51 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 128
  store i32 %56, i32* %7, align 4
  br label %59

57:                                               ; preds = %33
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %50, %43, %41
  br label %60

60:                                               ; preds = %59, %19
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %6, align 8
  %66 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @axp2xx_write(i32 %64, i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %63, %60
  %75 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %6, align 8
  %76 = call i32 @AXP_UNLOCK(%struct.axp2xx_softc* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %74, %17
  %79 = load i32, i32* %3, align 4
  ret i32 %79
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
