; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_gpio_softc = type { i32 }
%struct.rt1310_gpio_pinmap = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@RT_GPIO_OFF_PADR = common dso_local global i32 0, align 4
@RT_GPIO_OFF_PBDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @rt1310_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_gpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rt1310_gpio_softc*, align 8
  %9 = alloca %struct.rt1310_gpio_pinmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.rt1310_gpio_softc* @device_get_softc(i32 %13)
  store %struct.rt1310_gpio_softc* %14, %struct.rt1310_gpio_softc** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i32 %15)
  store %struct.rt1310_gpio_pinmap* %16, %struct.rt1310_gpio_pinmap** %9, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @rt1310_gpio_pin_getflags(i32 %17, i32 %18, i32* %11)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %70

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %12, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %29
  %36 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %37 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %69 [
    i32 129, label %39
    i32 128, label %54
  ]

39:                                               ; preds = %35
  %40 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %41 = load i32, i32* @RT_GPIO_OFF_PADR, align 4
  %42 = call i32 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap* %44, i32 %45)
  %47 = shl i32 1, %46
  %48 = and i32 %43, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  br label %69

54:                                               ; preds = %35
  %55 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %56 = load i32, i32* @RT_GPIO_OFF_PBDR, align 4
  %57 = call i32 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap* %59, i32 %60)
  %62 = shl i32 1, %61
  %63 = and i32 %58, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %35, %54, %39
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %21
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local %struct.rt1310_gpio_softc* @device_get_softc(i32) #1

declare dso_local %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i32) #1

declare dso_local i64 @rt1310_gpio_pin_getflags(i32, i32, i32*) #1

declare dso_local i32 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc*, i32) #1

declare dso_local i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
