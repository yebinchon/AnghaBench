; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp209.c_axp2xx_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp2xx_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AXP2XX_GPIO_FUNC_MASK = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@AXP2XX_GPIO_FUNC_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @axp2xx_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp2xx_gpio_pin_setflags(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.axp2xx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.axp2xx_softc* @device_get_softc(i32 %11)
  store %struct.axp2xx_softc* %12, %struct.axp2xx_softc** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %15 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %70

20:                                               ; preds = %3
  %21 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %22 = call i32 @AXP_LOCK(%struct.axp2xx_softc* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %25 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @axp2xx_read(i32 %23, i32 %30, i32* %9, i32 1)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %20
  %35 = load i32, i32* @AXP2XX_GPIO_FUNC_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %41 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %42 = or i64 %40, %41
  %43 = and i64 %39, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %48 = and i64 %46, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @AXP2XX_GPIO_FUNC_INPUT, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %34
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %58 = getelementptr inbounds %struct.axp2xx_softc, %struct.axp2xx_softc* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @axp2xx_write(i32 %56, i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %55, %20
  %67 = load %struct.axp2xx_softc*, %struct.axp2xx_softc** %8, align 8
  %68 = call i32 @AXP_UNLOCK(%struct.axp2xx_softc* %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %66, %18
  %71 = load i32, i32* %4, align 4
  ret i32 %71
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
