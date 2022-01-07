; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gpio.c_aw_gpio_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@AW_GPIO_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@AW_GPIO_OUTPUT = common dso_local global i64 0, align 8
@GPIO_PIN_PRESET_LOW = common dso_local global i64 0, align 8
@GPIO_PIN_PRESET_HIGH = common dso_local global i64 0, align 8
@GPIO_PIN_PULLUP = common dso_local global i64 0, align 8
@AW_GPIO_PULLUP = common dso_local global i32 0, align 4
@GPIO_PIN_PULLDOWN = common dso_local global i64 0, align 8
@AW_GPIO_PULLDOWN = common dso_local global i32 0, align 4
@AW_GPIO_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_gpio_softc*, i64, i64)* @aw_gpio_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gpio_pin_configure(%struct.aw_gpio_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aw_gpio_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aw_gpio_softc* %0, %struct.aw_gpio_softc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %11 = call i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc* %10)
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %14 = getelementptr inbounds %struct.aw_gpio_softc, %struct.aw_gpio_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %12, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %119

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @AW_GPIO_INPUT, align 8
  %30 = call i32 @aw_gpio_set_function(%struct.aw_gpio_softc* %27, i64 %28, i64 %29)
  store i32 %30, i32* %9, align 4
  br label %87

31:                                               ; preds = %21
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %31
  %37 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i64 @aw_gpio_get_function(%struct.aw_gpio_softc* %37, i64 %38)
  %40 = load i64, i64* @AW_GPIO_OUTPUT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %86

42:                                               ; preds = %36
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @GPIO_PIN_PRESET_LOW, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @aw_gpio_pin_set_locked(%struct.aw_gpio_softc* %48, i64 %49, i32 0)
  br label %77

51:                                               ; preds = %42
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @GPIO_PIN_PRESET_HIGH, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @aw_gpio_pin_set_locked(%struct.aw_gpio_softc* %57, i64 %58, i32 1)
  br label %76

60:                                               ; preds = %51
  %61 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @AW_GPIO_INPUT, align 8
  %64 = call i32 @aw_gpio_set_function(%struct.aw_gpio_softc* %61, i64 %62, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @aw_gpio_pin_get_locked(%struct.aw_gpio_softc* %68, i64 %69, i32* %8)
  %71 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @aw_gpio_pin_set_locked(%struct.aw_gpio_softc* %71, i64 %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %60
  br label %76

76:                                               ; preds = %75, %56
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %9, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @AW_GPIO_OUTPUT, align 8
  %84 = call i32 @aw_gpio_set_function(%struct.aw_gpio_softc* %81, i64 %82, i64 %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %80, %77
  br label %86

86:                                               ; preds = %85, %36, %31
  br label %87

87:                                               ; preds = %86, %26
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %119

92:                                               ; preds = %87
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* @GPIO_PIN_PULLUP, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i32, i32* @AW_GPIO_PULLUP, align 4
  %101 = call i32 @aw_gpio_set_pud(%struct.aw_gpio_softc* %98, i64 %99, i32 %100)
  br label %118

102:                                              ; preds = %92
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* @GPIO_PIN_PULLDOWN, align 8
  %105 = and i64 %103, %104
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i32, i32* @AW_GPIO_PULLDOWN, align 4
  %111 = call i32 @aw_gpio_set_pud(%struct.aw_gpio_softc* %108, i64 %109, i32 %110)
  br label %117

112:                                              ; preds = %102
  %113 = load %struct.aw_gpio_softc*, %struct.aw_gpio_softc** %5, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i32, i32* @AW_GPIO_NONE, align 4
  %116 = call i32 @aw_gpio_set_pud(%struct.aw_gpio_softc* %113, i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %97
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %90, %19
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @AW_GPIO_LOCK_ASSERT(%struct.aw_gpio_softc*) #1

declare dso_local i32 @aw_gpio_set_function(%struct.aw_gpio_softc*, i64, i64) #1

declare dso_local i64 @aw_gpio_get_function(%struct.aw_gpio_softc*, i64) #1

declare dso_local i32 @aw_gpio_pin_set_locked(%struct.aw_gpio_softc*, i64, i32) #1

declare dso_local i32 @aw_gpio_pin_get_locked(%struct.aw_gpio_softc*, i64, i32*) #1

declare dso_local i32 @aw_gpio_set_pud(%struct.aw_gpio_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
