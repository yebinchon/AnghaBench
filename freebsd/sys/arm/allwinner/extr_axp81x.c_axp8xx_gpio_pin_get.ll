; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.axp8xx_softc = type { i32 }

@axp8xx_pins = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC = common dso_local global i32 0, align 4
@AXP_GPIO_FUNC_SHIFT = common dso_local global i32 0, align 4
@AXP_GPIO_SIGBIT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @axp8xx_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_gpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.axp8xx_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @axp8xx_pins, align 8
  %14 = call i64 @nitems(%struct.TYPE_3__* %13)
  %15 = icmp uge i64 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %67

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
  br i1 %31, label %32, label %63

32:                                               ; preds = %18
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AXP_GPIO_FUNC, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @AXP_GPIO_FUNC_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  switch i32 %38, label %60 [
    i32 129, label %39
    i32 130, label %41
    i32 128, label %43
  ]

39:                                               ; preds = %32
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  br label %62

41:                                               ; preds = %32
  %42 = load i32*, i32** %7, align 8
  store i32 1, i32* %42, align 4
  br label %62

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @AXP_GPIO_SIGBIT, align 4
  %46 = call i32 @axp8xx_read(i32 %44, i32 %45, i32* %9, i32 1)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = load i64, i64* %6, align 8
  %52 = trunc i64 %51 to i32
  %53 = shl i32 1, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %49, %43
  br label %62

60:                                               ; preds = %32
  %61 = load i32, i32* @EIO, align 4
  store i32 %61, i32* %11, align 4
  br label %62

62:                                               ; preds = %60, %59, %41, %39
  br label %63

63:                                               ; preds = %62, %18
  %64 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %8, align 8
  %65 = call i32 @AXP_UNLOCK(%struct.axp8xx_softc* %64)
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %16
  %68 = load i32, i32* %4, align 4
  ret i32 %68
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
