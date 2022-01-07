; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_gpio_softc = type { i32 }
%struct.rt1310_gpio_pinmap = type { i32, i32 }

@RT_GPIO_NPINS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@RT_GPIO_OFF_PADIR = common dso_local global i32 0, align 4
@RT_GPIO_OFF_PBDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rt1310_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_gpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
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
  %16 = load i32, i32* @RT_GPIO_NPINS, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @ENODEV, align 4
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i32 %21)
  store %struct.rt1310_gpio_pinmap* %22, %struct.rt1310_gpio_pinmap** %9, align 8
  %23 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %24 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %27 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %31 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @ENOTSUP, align 4
  store i32 %35, i32* %4, align 4
  br label %84

36:                                               ; preds = %20
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %50 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %56 [
    i32 129, label %52
    i32 128, label %54
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @RT_GPIO_OFF_PADIR, align 4
  store i32 %53, i32* %12, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @RT_GPIO_OFF_PBDIR, align 4
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %48, %54, %52
  %57 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %56
  %65 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @RT_GPIO_PIN_IDX(%struct.rt1310_gpio_pinmap* %65, i32 %66)
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %11, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %79

72:                                               ; preds = %56
  %73 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @RT_GPIO_PIN_IDX(%struct.rt1310_gpio_pinmap* %73, i32 %74)
  %76 = shl i32 1, %75
  %77 = load i32, i32* %11, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %72, %64
  %80 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @rt1310_gpio_write_4(%struct.rt1310_gpio_softc* %80, i32 %81, i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %79, %34, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.rt1310_gpio_softc* @device_get_softc(i32) #1

declare dso_local %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i32) #1

declare dso_local i32 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc*, i32) #1

declare dso_local i32 @RT_GPIO_PIN_IDX(%struct.rt1310_gpio_pinmap*, i32) #1

declare dso_local i32 @rt1310_gpio_write_4(%struct.rt1310_gpio_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
