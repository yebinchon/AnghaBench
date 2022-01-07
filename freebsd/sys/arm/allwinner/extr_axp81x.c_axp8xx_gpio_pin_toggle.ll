; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.axp8xx_softc = type { i32 }

@axp8xx_pins = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC_SHIFT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @axp8xx_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.axp8xx_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @axp8xx_pins, align 8
  %12 = call i64 @nitems(%struct.TYPE_3__* %11)
  %13 = icmp uge i64 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %74

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.axp8xx_softc* @device_get_softc(i32 %17)
  store %struct.axp8xx_softc* %18, %struct.axp8xx_softc** %6, align 8
  %19 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %6, align 8
  %20 = call i32 @AXP_LOCK(%struct.axp8xx_softc* %19)
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @axp8xx_pins, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @axp8xx_read(i32 %21, i32 %26, i32* %7, i32 1)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @AXP_GPIO_FUNC, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @AXP_GPIO_FUNC_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %55 [
    i32 128, label %37
    i32 129, label %46
  ]

37:                                               ; preds = %30
  %38 = load i32, i32* @AXP_GPIO_FUNC, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @AXP_GPIO_FUNC_SHIFT, align 4
  %43 = shl i32 129, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %57

46:                                               ; preds = %30
  %47 = load i32, i32* @AXP_GPIO_FUNC, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* @AXP_GPIO_FUNC_SHIFT, align 4
  %52 = shl i32 128, %51
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  br label %57

55:                                               ; preds = %30
  %56 = load i32, i32* @EIO, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %46, %37
  br label %58

58:                                               ; preds = %57, %16
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @axp8xx_pins, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @axp8xx_write(i32 %62, i32 %67, i32 %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %61, %58
  %71 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %6, align 8
  %72 = call i32 @AXP_UNLOCK(%struct.axp8xx_softc* %71)
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %70, %14
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @nitems(%struct.TYPE_3__*) #1

declare dso_local %struct.axp8xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @AXP_LOCK(%struct.axp8xx_softc*) #1

declare dso_local i32 @axp8xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @axp8xx_write(i32, i32, i32) #1

declare dso_local i32 @AXP_UNLOCK(%struct.axp8xx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
