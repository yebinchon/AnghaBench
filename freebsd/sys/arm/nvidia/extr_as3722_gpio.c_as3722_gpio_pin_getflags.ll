; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AS3722_GPIO_IOSF_SHIFT = common dso_local global i32 0, align 4
@AS3722_GPIO_IOSF_MASK = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_SHIFT = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_MASK = common dso_local global i32 0, align 4
@AS3722_GPIO_INVERT = common dso_local global i32 0, align 4
@AS3722_IOSF_GPIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OPENDRAIN = common dso_local global i64 0, align 8
@GPIO_PIN_TRISTATE = common dso_local global i64 0, align 8
@GPIO_PIN_PULLUP = common dso_local global i64 0, align 8
@GPIO_PIN_PULLDOWN = common dso_local global i64 0, align 8
@GPIO_PIN_INVIN = common dso_local global i64 0, align 8
@GPIO_PIN_INVOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_gpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.as3722_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.as3722_softc* @device_get_softc(i32 %14)
  store %struct.as3722_softc* %15, %struct.as3722_softc** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %18 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp uge i64 %16, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %90

23:                                               ; preds = %3
  %24 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %25 = call i32 @GPIO_LOCK(%struct.as3722_softc* %24)
  %26 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %27 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %35 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @AS3722_GPIO_IOSF_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @AS3722_GPIO_IOSF_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  %44 = load i32, i32* @AS3722_GPIO_MODE_MASK, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @AS3722_GPIO_INVERT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @AS3722_IOSF_GPIO, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %23
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %4, align 4
  br label %90

56:                                               ; preds = %23
  store i64 0, i64* %12, align 8
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %78 [
    i32 135, label %58
    i32 130, label %60
    i32 129, label %60
    i32 132, label %62
    i32 131, label %62
    i32 128, label %68
    i32 133, label %70
    i32 134, label %74
  ]

58:                                               ; preds = %56
  %59 = load i64, i64* @GPIO_PIN_INPUT, align 8
  store i64 %59, i64* %12, align 8
  br label %78

60:                                               ; preds = %56, %56
  %61 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  store i64 %61, i64* %12, align 8
  br label %78

62:                                               ; preds = %56, %56
  %63 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %64 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %67 = or i64 %65, %66
  store i64 %67, i64* %12, align 8
  br label %78

68:                                               ; preds = %56
  %69 = load i64, i64* @GPIO_PIN_TRISTATE, align 8
  store i64 %69, i64* %12, align 8
  br label %78

70:                                               ; preds = %56
  %71 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %72 = load i64, i64* @GPIO_PIN_PULLUP, align 8
  %73 = or i64 %71, %72
  store i64 %73, i64* %12, align 8
  br label %78

74:                                               ; preds = %56
  %75 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %76 = load i64, i64* @GPIO_PIN_PULLDOWN, align 8
  %77 = or i64 %75, %76
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %56, %74, %70, %68, %62, %60, %58
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i64, i64* @GPIO_PIN_INVIN, align 8
  %83 = load i64, i64* @GPIO_PIN_INVOUT, align 8
  %84 = or i64 %82, %83
  %85 = load i64, i64* %12, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i64, i64* %12, align 8
  %89 = load i64*, i64** %7, align 8
  store i64 %88, i64* %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %54, %21
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.as3722_softc*) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.as3722_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
