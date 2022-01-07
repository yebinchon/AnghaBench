; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_map_gpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_pic_map_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i64 }
%struct.intr_map_data_gpio = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_LOW = common dso_local global i64 0, align 8
@GPIO_INTR_LEVEL_HIGH = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_RISING = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_FALLING = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_BOTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_gpio_softc*, %struct.intr_map_data_gpio*, i64*, i64*)* @ti_gpio_pic_map_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_pic_map_gpio(%struct.ti_gpio_softc* %0, %struct.intr_map_data_gpio* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ti_gpio_softc*, align 8
  %7 = alloca %struct.intr_map_data_gpio*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.ti_gpio_softc* %0, %struct.ti_gpio_softc** %6, align 8
  store %struct.intr_map_data_gpio* %1, %struct.intr_map_data_gpio** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %11 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %7, align 8
  %12 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %6, align 8
  %15 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %56

20:                                               ; preds = %4
  %21 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %7, align 8
  %22 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @GPIO_INTR_LEVEL_LOW, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %20
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @GPIO_INTR_LEVEL_HIGH, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @GPIO_INTR_EDGE_RISING, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* @GPIO_INTR_EDGE_FALLING, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @GPIO_INTR_EDGE_BOTH, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %5, align 4
  br label %56

45:                                               ; preds = %39, %35, %31, %27, %20
  %46 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %7, align 8
  %47 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %8, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i64*, i64** %9, align 8
  %51 = icmp ne i64* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i64, i64* %10, align 8
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %45
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %43, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
