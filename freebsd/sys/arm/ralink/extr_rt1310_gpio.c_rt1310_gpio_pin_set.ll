; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_gpio_softc = type { i32 }
%struct.rt1310_gpio_pinmap = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RT_GPIO_OFF_PADR = common dso_local global i32 0, align 4
@RT_GPIO_OFF_PBDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rt1310_gpio_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_gpio_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt1310_gpio_softc*, align 8
  %9 = alloca %struct.rt1310_gpio_pinmap*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
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
  br label %64

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %64

30:                                               ; preds = %23
  %31 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %32 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %38 [
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @RT_GPIO_OFF_PADR, align 4
  store i32 %35, i32* %12, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @RT_GPIO_OFF_PBDR, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %30, %36, %34
  %39 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap* %45, i32 %46)
  %48 = shl i32 1, %47
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  br label %59

51:                                               ; preds = %38
  %52 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap* %52, i32 %53)
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %10, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %51, %44
  %60 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @rt1310_gpio_write_4(%struct.rt1310_gpio_softc* %60, i32 %61, i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %28, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.rt1310_gpio_softc* @device_get_softc(i32) #1

declare dso_local %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i32) #1

declare dso_local i64 @rt1310_gpio_pin_getflags(i32, i32, i32*) #1

declare dso_local i32 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc*, i32) #1

declare dso_local i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap*, i32) #1

declare dso_local i32 @rt1310_gpio_write_4(%struct.rt1310_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
