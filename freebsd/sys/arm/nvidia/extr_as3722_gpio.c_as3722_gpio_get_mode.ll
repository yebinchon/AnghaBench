; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_get_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32 }

@AS3722_CFG_BIAS_HIGH_IMPEDANCE = common dso_local global i32 0, align 4
@GPIO_PIN_TRISTATE = common dso_local global i64 0, align 8
@AS3722_MODE_TRISTATE = common dso_local global i32 0, align 4
@AS3722_CFG_OPEN_DRAIN = common dso_local global i32 0, align 4
@GPIO_PIN_OPENDRAIN = common dso_local global i64 0, align 8
@AS3722_CFG_BIAS_PULL_UP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLUP = common dso_local global i64 0, align 8
@AS3722_MODE_OPEN_DRAIN_LV = common dso_local global i32 0, align 4
@AS3722_MODE_OPEN_DRAIN = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@AS3722_MODE_INPUT_PULL_UP_LV = common dso_local global i32 0, align 4
@AS3722_CFG_BIAS_PULL_DOWN = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i64 0, align 8
@AS3722_MODE_INPUT_PULL_DOWN = common dso_local global i32 0, align 4
@AS3722_MODE_INPUT = common dso_local global i32 0, align 4
@AS3722_MODE_PUSH_PULL_LV = common dso_local global i32 0, align 4
@AS3722_MODE_PUSH_PULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_softc*, i64, i64)* @as3722_gpio_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_gpio_get_mode(%struct.as3722_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.as3722_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.as3722_softc* %0, %struct.as3722_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %11 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %12, i64 %13
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %19 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %20, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @AS3722_CFG_BIAS_HIGH_IMPEDANCE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @GPIO_PIN_TRISTATE, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %3
  %36 = load i32, i32* @AS3722_MODE_TRISTATE, align 4
  store i32 %36, i32* %4, align 4
  br label %106

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @AS3722_CFG_OPEN_DRAIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @GPIO_PIN_OPENDRAIN, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42, %37
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @AS3722_CFG_BIAS_PULL_UP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i64, i64* %7, align 8
  %54 = load i64, i64* @GPIO_PIN_PULLUP, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @AS3722_MODE_OPEN_DRAIN_LV, align 4
  store i32 %58, i32* %4, align 4
  br label %106

59:                                               ; preds = %52
  %60 = load i32, i32* @AS3722_MODE_OPEN_DRAIN, align 4
  store i32 %60, i32* %4, align 4
  br label %106

61:                                               ; preds = %42
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %64 = and i64 %62, %63
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %92

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @AS3722_CFG_BIAS_PULL_UP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @GPIO_PIN_PULLUP, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71, %66
  %77 = load i32, i32* @AS3722_MODE_INPUT_PULL_UP_LV, align 4
  store i32 %77, i32* %4, align 4
  br label %106

78:                                               ; preds = %71
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @AS3722_CFG_BIAS_PULL_DOWN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @GPIO_PIN_PULLDOWN, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @AS3722_MODE_INPUT_PULL_DOWN, align 4
  store i32 %89, i32* %4, align 4
  br label %106

90:                                               ; preds = %83
  %91 = load i32, i32* @AS3722_MODE_INPUT, align 4
  store i32 %91, i32* %4, align 4
  br label %106

92:                                               ; preds = %61
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @AS3722_CFG_BIAS_PULL_DOWN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* @GPIO_PIN_PULLDOWN, align 8
  %100 = and i64 %98, %99
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97, %92
  %103 = load i32, i32* @AS3722_MODE_PUSH_PULL_LV, align 4
  store i32 %103, i32* %4, align 4
  br label %106

104:                                              ; preds = %97
  %105 = load i32, i32* @AS3722_MODE_PUSH_PULL, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %102, %90, %88, %76, %59, %57, %35
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
