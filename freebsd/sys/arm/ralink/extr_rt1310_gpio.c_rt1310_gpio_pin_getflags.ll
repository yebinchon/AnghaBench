; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_rt1310_gpio.c_rt1310_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt1310_gpio_softc = type { i32 }
%struct.rt1310_gpio_pinmap = type { i64, i32 }

@RT_GPIO_NPINS = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@RT_GPIO_OFF_PADIR = common dso_local global i32 0, align 4
@RT_GPIO_OFF_PBDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown GPIO port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @rt1310_gpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt1310_gpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rt1310_gpio_softc*, align 8
  %9 = alloca %struct.rt1310_gpio_pinmap*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.rt1310_gpio_softc* @device_get_softc(i32 %12)
  store %struct.rt1310_gpio_softc* %13, %struct.rt1310_gpio_softc** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @RT_GPIO_NPINS, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  store i32 %18, i32* %4, align 4
  br label %78

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i64 %20)
  store %struct.rt1310_gpio_pinmap* %21, %struct.rt1310_gpio_pinmap** %9, align 8
  %22 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %23 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %26 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %27 = or i64 %25, %26
  %28 = and i64 %24, %27
  %29 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %30 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %31 = or i64 %29, %30
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %35 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** %7, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %78

38:                                               ; preds = %19
  %39 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %40 = getelementptr inbounds %struct.rt1310_gpio_pinmap, %struct.rt1310_gpio_pinmap* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %66 [
    i32 129, label %42
    i32 128, label %54
  ]

42:                                               ; preds = %38
  %43 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %44 = load i32, i32* @RT_GPIO_OFF_PADIR, align 4
  %45 = call i64 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc* %43, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap* %47, i64 %48)
  %50 = shl i32 1, %49
  %51 = sext i32 %50 to i64
  %52 = and i64 %46, %51
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %11, align 4
  br label %68

54:                                               ; preds = %38
  %55 = load %struct.rt1310_gpio_softc*, %struct.rt1310_gpio_softc** %8, align 8
  %56 = load i32, i32* @RT_GPIO_OFF_PBDIR, align 4
  %57 = call i64 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc* %55, i32 %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.rt1310_gpio_pinmap*, %struct.rt1310_gpio_pinmap** %9, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap* %59, i64 %60)
  %62 = shl i32 1, %61
  %63 = sext i32 %62 to i64
  %64 = and i64 %58, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  br label %68

66:                                               ; preds = %38
  %67 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %54, %42
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  br label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @GPIO_PIN_INPUT, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i64 [ %72, %71 ], [ %74, %73 ]
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %75, %33, %17
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.rt1310_gpio_softc* @device_get_softc(i32) #1

declare dso_local %struct.rt1310_gpio_pinmap* @rt1310_gpio_get_pinmap(i64) #1

declare dso_local i64 @rt1310_gpio_read_4(%struct.rt1310_gpio_softc*, i32) #1

declare dso_local i32 @RT_GPIO_PIN_BIT(%struct.rt1310_gpio_pinmap*, i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
