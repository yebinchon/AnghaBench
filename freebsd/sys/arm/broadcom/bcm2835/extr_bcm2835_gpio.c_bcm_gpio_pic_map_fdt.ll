; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_gpio.c_bcm_gpio_pic_map_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_gpio_softc = type { i32 }
%struct.intr_map_data_fdt = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@BCM_GPIO_PINS = common dso_local global i64 0, align 8
@GPIO_INTR_EDGE_RISING = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_FALLING = common dso_local global i32 0, align 4
@GPIO_INTR_EDGE_BOTH = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_HIGH = common dso_local global i32 0, align 4
@GPIO_INTR_LEVEL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_gpio_softc*, %struct.intr_map_data_fdt*, i64*, i32*)* @bcm_gpio_pic_map_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_gpio_pic_map_fdt(%struct.bcm_gpio_softc* %0, %struct.intr_map_data_fdt* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_gpio_softc*, align 8
  %7 = alloca %struct.intr_map_data_fdt*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.bcm_gpio_softc* %0, %struct.bcm_gpio_softc** %6, align 8
  store %struct.intr_map_data_fdt* %1, %struct.intr_map_data_fdt** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %13 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %94

18:                                               ; preds = %4
  %19 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %20 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @BCM_GPIO_PINS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = load %struct.bcm_gpio_softc*, %struct.bcm_gpio_softc** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i64 @bcm_gpio_pin_is_ro(%struct.bcm_gpio_softc* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27, %18
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %94

34:                                               ; preds = %27
  %35 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %36 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @GPIO_INTR_EDGE_RISING, align 4
  store i32 %42, i32* %11, align 4
  br label %85

43:                                               ; preds = %34
  %44 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %45 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 2
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @GPIO_INTR_EDGE_FALLING, align 4
  store i32 %51, i32* %11, align 4
  br label %84

52:                                               ; preds = %43
  %53 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %54 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @GPIO_INTR_EDGE_BOTH, align 4
  store i32 %60, i32* %11, align 4
  br label %83

61:                                               ; preds = %52
  %62 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %63 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 4
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @GPIO_INTR_LEVEL_HIGH, align 4
  store i32 %69, i32* %11, align 4
  br label %82

70:                                               ; preds = %61
  %71 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %7, align 8
  %72 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 8
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @GPIO_INTR_LEVEL_LOW, align 4
  store i32 %78, i32* %11, align 4
  br label %81

79:                                               ; preds = %70
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %5, align 4
  br label %94

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %59
  br label %84

84:                                               ; preds = %83, %50
  br label %85

85:                                               ; preds = %84, %41
  %86 = load i64, i64* %10, align 8
  %87 = load i64*, i64** %8, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %85
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %79, %32, %16
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @bcm_gpio_pin_is_ro(%struct.bcm_gpio_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
