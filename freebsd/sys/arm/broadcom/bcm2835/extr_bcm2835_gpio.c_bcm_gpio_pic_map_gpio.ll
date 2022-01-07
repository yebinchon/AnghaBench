; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map_gpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }
%struct.intr_map_data_gpio = type { i64, i64 }

@BCM_GPIO_PINS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_LOW = common dso_local global i64 0, align 8
@GPIO_INTR_LEVEL_HIGH = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_RISING = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_FALLING = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_BOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_gpio_softc*, %struct.intr_map_data_gpio*, i64*, i64*)* @bcm_gpio_pic_map_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_pic_map_gpio(%struct.bcm_gpio_softc* %0, %struct.intr_map_data_gpio* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_gpio_softc*, align 8
  %7 = alloca %struct.intr_map_data_gpio*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %6, align 8
  store %struct.intr_map_data_gpio* %1, %struct.intr_map_data_gpio** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %7, align 8
  %13 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @BCM_GPIO_PINS, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i64 @bcm_gpio_pin_is_ro(%struct.bcm_gpio_softc* %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18, %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %59

25:                                               ; preds = %18
  %26 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %7, align 8
  %27 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @GPIO_INTR_LEVEL_LOW, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @GPIO_INTR_LEVEL_HIGH, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @GPIO_INTR_EDGE_RISING, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @GPIO_INTR_EDGE_FALLING, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %5, align 4
  br label %59

50:                                               ; preds = %44, %40, %36, %32, %25
  %51 = load i64, i64* %10, align 8
  %52 = load i64*, i64** %8, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = icmp ne i64* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i64, i64* %11, align 8
  %57 = load i64*, i64** %9, align 8
  store i64 %56, i64* %57, align 8
  br label %58

58:                                               ; preds = %55, %50
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %48, %23
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @bcm_gpio_pin_is_ro(%struct.bcm_gpio_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
