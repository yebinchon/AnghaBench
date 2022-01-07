; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_config_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_gpio.c_imx51_gpio_pin_config_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx51_gpio_softc = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IMX_GPIO_DR_REG = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@GPIO_PIN_PRESET_LOW = common dso_local global i64 0, align 8
@GPIO_PIN_PRESET_HIGH = common dso_local global i64 0, align 8
@IMX_GPIO_OE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64*)* @imx51_gpio_pin_config_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx51_gpio_pin_config_32(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.imx51_gpio_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.imx51_gpio_softc* @device_get_softc(i32 %19)
  store %struct.imx51_gpio_softc* %20, %struct.imx51_gpio_softc** %10, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %26 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %4
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %124

31:                                               ; preds = %23
  store i64 0, i64* %17, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  %32 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %33 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %34 = call i64 @READ4(%struct.imx51_gpio_softc* %32, i32 %33)
  store i64 %34, i64* %18, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %92, %31
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* %8, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %95

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  %42 = shl i32 1, %41
  %43 = zext i32 %42 to i64
  store i64 %43, i64* %12, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %16, align 8
  %55 = or i64 %54, %53
  store i64 %55, i64* %16, align 8
  br label %91

56:                                               ; preds = %39
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %90

61:                                               ; preds = %56
  %62 = load i64, i64* %12, align 8
  %63 = load i64, i64* %17, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* @GPIO_PIN_PRESET_LOW, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %13, align 8
  br label %89

73:                                               ; preds = %61
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* @GPIO_PIN_PRESET_HIGH, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %14, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %14, align 8
  br label %88

82:                                               ; preds = %73
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* %12, align 8
  %85 = and i64 %83, %84
  %86 = load i64, i64* %14, align 8
  %87 = or i64 %86, %85
  store i64 %87, i64* %14, align 8
  br label %88

88:                                               ; preds = %82, %78
  br label %89

89:                                               ; preds = %88, %69
  br label %90

90:                                               ; preds = %89, %56
  br label %91

91:                                               ; preds = %90, %52
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %11, align 8
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %11, align 8
  br label %35

95:                                               ; preds = %35
  %96 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %97 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %96, i32 0, i32 1
  %98 = call i32 @mtx_lock_spin(i32* %97)
  %99 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %100 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %101 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %102 = load i32, i32* @IMX_GPIO_DR_REG, align 4
  %103 = call i64 @READ4(%struct.imx51_gpio_softc* %101, i32 %102)
  %104 = load i64, i64* %13, align 8
  %105 = xor i64 %104, -1
  %106 = and i64 %103, %105
  %107 = load i64, i64* %14, align 8
  %108 = or i64 %106, %107
  %109 = call i32 @WRITE4(%struct.imx51_gpio_softc* %99, i32 %100, i64 %108)
  %110 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %111 = load i32, i32* @IMX_GPIO_OE_REG, align 4
  %112 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %113 = load i32, i32* @IMX_GPIO_OE_REG, align 4
  %114 = call i64 @READ4(%struct.imx51_gpio_softc* %112, i32 %113)
  %115 = load i64, i64* %16, align 8
  %116 = xor i64 %115, -1
  %117 = and i64 %114, %116
  %118 = load i64, i64* %17, align 8
  %119 = or i64 %117, %118
  %120 = call i32 @WRITE4(%struct.imx51_gpio_softc* %110, i32 %111, i64 %119)
  %121 = load %struct.imx51_gpio_softc*, %struct.imx51_gpio_softc** %10, align 8
  %122 = getelementptr inbounds %struct.imx51_gpio_softc, %struct.imx51_gpio_softc* %121, i32 0, i32 1
  %123 = call i32 @mtx_unlock_spin(i32* %122)
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %95, %29
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.imx51_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @READ4(%struct.imx51_gpio_softc*, i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @WRITE4(%struct.imx51_gpio_softc*, i32, i64) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
