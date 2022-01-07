; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i64 }
%struct.tegra_gpio_softc = type { i32 }
%struct.tegra_gpio_irqsrc = type { i64 }
%struct.intr_map_data_fdt = type { i32, i32 }
%struct.intr_map_data_gpio = type { i32, i32, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@INTR_MAP_DATA_GPIO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GPIO_INT_LVL = common dso_local global i32 0, align 4
@GPIO_INT_LVL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @tegra_gpio_pic_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_pic_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tegra_gpio_softc*, align 8
  %14 = alloca %struct.tegra_gpio_irqsrc*, align 8
  %15 = alloca %struct.intr_map_data_fdt*, align 8
  %16 = alloca %struct.intr_map_data_gpio*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.tegra_gpio_softc* @device_get_softc(i32 %17)
  store %struct.tegra_gpio_softc* %18, %struct.tegra_gpio_softc** %13, align 8
  %19 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %20 = bitcast %struct.intr_irqsrc* %19 to %struct.tegra_gpio_irqsrc*
  store %struct.tegra_gpio_irqsrc* %20, %struct.tegra_gpio_irqsrc** %14, align 8
  %21 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %22 = icmp eq %struct.intr_map_data* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOTSUP, align 4
  store i32 %24, i32* %5, align 4
  br label %99

25:                                               ; preds = %4
  %26 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %27 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %33 = bitcast %struct.intr_map_data* %32 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %33, %struct.intr_map_data_fdt** %15, align 8
  %34 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %13, align 8
  %35 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %15, align 8
  %36 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %15, align 8
  %39 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tegra_gpio_pic_map_fdt(%struct.tegra_gpio_softc* %34, i32 %37, i32 %40, i32* %10, i64* %11)
  store i32 %41, i32* %12, align 4
  br label %65

42:                                               ; preds = %25
  %43 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %44 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @INTR_MAP_DATA_GPIO, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %50 = bitcast %struct.intr_map_data* %49 to %struct.intr_map_data_gpio*
  store %struct.intr_map_data_gpio* %50, %struct.intr_map_data_gpio** %16, align 8
  %51 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %13, align 8
  %52 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %16, align 8
  %53 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %16, align 8
  %56 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %16, align 8
  %59 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @tegra_gpio_pic_map_gpio(%struct.tegra_gpio_softc* %51, i32 %54, i32 %57, i32 %60, i32* %10, i64* %11)
  store i32 %61, i32* %12, align 4
  br label %64

62:                                               ; preds = %42
  %63 = load i32, i32* @ENOTSUP, align 4
  store i32 %63, i32* %5, align 4
  br label %99

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %31
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %5, align 4
  br label %99

70:                                               ; preds = %65
  %71 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %72 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %14, align 8
  %77 = getelementptr inbounds %struct.tegra_gpio_irqsrc, %struct.tegra_gpio_irqsrc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @EINVAL, align 4
  br label %84

84:                                               ; preds = %82, %81
  %85 = phi i32 [ 0, %81 ], [ %83, %82 ]
  store i32 %85, i32* %5, align 4
  br label %99

86:                                               ; preds = %70
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %14, align 8
  %89 = getelementptr inbounds %struct.tegra_gpio_irqsrc, %struct.tegra_gpio_irqsrc* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %13, align 8
  %91 = load i32, i32* @GPIO_INT_LVL, align 4
  %92 = load %struct.tegra_gpio_irqsrc*, %struct.tegra_gpio_irqsrc** %14, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i32, i32* @GPIO_INT_LVL_MASK, align 4
  %95 = call i32 @intr_write_modify(%struct.tegra_gpio_softc* %90, i32 %91, %struct.tegra_gpio_irqsrc* %92, i64 %93, i32 %94)
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %98 = call i32 @tegra_gpio_pic_enable_intr(i32 %96, %struct.intr_irqsrc* %97)
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %86, %84, %68, %62, %23
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local %struct.tegra_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @tegra_gpio_pic_map_fdt(%struct.tegra_gpio_softc*, i32, i32, i32*, i64*) #1

declare dso_local i32 @tegra_gpio_pic_map_gpio(%struct.tegra_gpio_softc*, i32, i32, i32, i32*, i64*) #1

declare dso_local i32 @intr_write_modify(%struct.tegra_gpio_softc*, i32, %struct.tegra_gpio_irqsrc*, i64, i32) #1

declare dso_local i32 @tegra_gpio_pic_enable_intr(i32, %struct.intr_irqsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
