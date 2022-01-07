; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_pin_config_32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_gpio.c_rk_gpio_pin_config_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_INPUT = common dso_local global i64 0, align 8
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@RK_GPIO_SWPORTA_DDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i64*)* @rk_gpio_pin_config_32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_gpio_pin_config_32(i32 %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.rk_gpio_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.rk_gpio_softc* @device_get_softc(i32 %16)
  store %struct.rk_gpio_softc* %17, %struct.rk_gpio_softc** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = icmp sgt i64 %21, 32
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %86

25:                                               ; preds = %20
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %64, %25
  %27 = load i32, i32* %15, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %8, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i64, i64* %13, align 8
  %33 = shl i64 %32, 1
  %34 = or i64 %33, 1
  store i64 %34, i64* %13, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @GPIO_PIN_INPUT, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %31
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 1, %45
  %47 = xor i32 %46, -1
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %12, align 8
  %50 = and i64 %49, %48
  store i64 %50, i64* %12, align 8
  br label %63

51:                                               ; preds = %31
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %15, align 4
  %58 = shl i32 1, %57
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %12, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %56, %51
  br label %63

63:                                               ; preds = %62, %44
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %26

67:                                               ; preds = %26
  %68 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %10, align 8
  %69 = call i32 @RK_GPIO_LOCK(%struct.rk_gpio_softc* %68)
  %70 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %10, align 8
  %71 = load i32, i32* @RK_GPIO_SWPORTA_DDR, align 4
  %72 = call i64 @RK_GPIO_READ(%struct.rk_gpio_softc* %70, i32 %71)
  store i64 %72, i64* %11, align 8
  %73 = load i64, i64* %13, align 8
  %74 = xor i64 %73, -1
  %75 = load i64, i64* %11, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %11, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %10, align 8
  %81 = load i32, i32* @RK_GPIO_SWPORTA_DDR, align 4
  %82 = load i64, i64* %11, align 8
  %83 = call i32 @RK_GPIO_WRITE(%struct.rk_gpio_softc* %80, i32 %81, i64 %82)
  %84 = load %struct.rk_gpio_softc*, %struct.rk_gpio_softc** %10, align 8
  %85 = call i32 @RK_GPIO_UNLOCK(%struct.rk_gpio_softc* %84)
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %67, %23
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.rk_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @RK_GPIO_LOCK(%struct.rk_gpio_softc*) #1

declare dso_local i64 @RK_GPIO_READ(%struct.rk_gpio_softc*, i32) #1

declare dso_local i32 @RK_GPIO_WRITE(%struct.rk_gpio_softc*, i32, i64) #1

declare dso_local i32 @RK_GPIO_UNLOCK(%struct.rk_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
