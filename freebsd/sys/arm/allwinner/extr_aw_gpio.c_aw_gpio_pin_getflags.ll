; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@GPIO_PIN_PULLDOWN = common dso_local global i64 0, align 8
@GPIO_PIN_PULLUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @aw_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.aw_gpio_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.aw_gpio_softc* @device_get_softc(i32 %11)
  store %struct.aw_gpio_softc* %12, %struct.aw_gpio_softc** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %8, align 8
  %15 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %13, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %56

22:                                               ; preds = %3
  %23 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %8, align 8
  %24 = call i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc* %23)
  %25 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %8, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @aw_gpio_get_function(%struct.aw_gpio_softc* %25, i64 %26)
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  switch i64 %28, label %35 [
    i64 131, label %29
    i64 130, label %32
  ]

29:                                               ; preds = %22
  %30 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %31 = load i64*, i64** %7, align 8
  store i64 %30, i64* %31, align 8
  br label %37

32:                                               ; preds = %22
  %33 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  br label %37

35:                                               ; preds = %22
  %36 = load i64*, i64** %7, align 8
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %35, %32, %29
  %38 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i64 @aw_gpio_get_pud(%struct.aw_gpio_softc* %38, i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  switch i64 %41, label %52 [
    i64 129, label %42
    i64 128, label %47
  ]

42:                                               ; preds = %37
  %43 = load i64, i64* @GPIO_PIN_PULLDOWN, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %53

47:                                               ; preds = %37
  %48 = load i64, i64* @GPIO_PIN_PULLUP, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %48
  store i64 %51, i64* %49, align 8
  br label %53

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %47, %42
  %54 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %8, align 8
  %55 = call i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc* %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %20
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.aw_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @AW_GPIO_LOCK(%struct.aw_gpio_softc*) #1

declare dso_local i64 @aw_gpio_get_function(%struct.aw_gpio_softc*, i64) #1

declare dso_local i64 @aw_gpio_get_pud(%struct.aw_gpio_softc*, i64) #1

declare dso_local i32 @AW_GPIO_UNLOCK(%struct.aw_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
