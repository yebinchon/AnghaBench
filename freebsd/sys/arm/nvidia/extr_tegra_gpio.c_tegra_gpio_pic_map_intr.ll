; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.tegra_gpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intr_irqsrc }
%struct.intr_map_data_fdt = type { i32, i32 }
%struct.intr_map_data_gpio = type { i32, i32, i32 }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@INTR_MAP_DATA_GPIO = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @tegra_gpio_pic_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_pic_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.tegra_gpio_softc*, align 8
  %11 = alloca %struct.intr_map_data_fdt*, align 8
  %12 = alloca %struct.intr_map_data_gpio*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.tegra_gpio_softc* @device_get_softc(i32 %13)
  store %struct.tegra_gpio_softc* %14, %struct.tegra_gpio_softc** %10, align 8
  %15 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %16 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %22 = bitcast %struct.intr_map_data* %21 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %22, %struct.intr_map_data_fdt** %11, align 8
  %23 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %10, align 8
  %24 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %11, align 8
  %25 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %11, align 8
  %28 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tegra_gpio_pic_map_fdt(%struct.tegra_gpio_softc* %23, i32 %26, i32 %29, i64* %9, i32* null)
  store i32 %30, i32* %8, align 4
  br label %54

31:                                               ; preds = %3
  %32 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %33 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INTR_MAP_DATA_GPIO, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %31
  %38 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %39 = bitcast %struct.intr_map_data* %38 to %struct.intr_map_data_gpio*
  store %struct.intr_map_data_gpio* %39, %struct.intr_map_data_gpio** %12, align 8
  %40 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %10, align 8
  %41 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %12, align 8
  %42 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %12, align 8
  %45 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.intr_map_data_gpio*, %struct.intr_map_data_gpio** %12, align 8
  %48 = getelementptr inbounds %struct.intr_map_data_gpio, %struct.intr_map_data_gpio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @tegra_gpio_pic_map_gpio(%struct.tegra_gpio_softc* %40, i32 %43, i32 %46, i32 %49, i64* %9, i32* null)
  store i32 %50, i32* %8, align 4
  br label %53

51:                                               ; preds = %31
  %52 = load i32, i32* @ENOTSUP, align 4
  store i32 %52, i32* %4, align 4
  br label %67

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %54
  %58 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %10, align 8
  %59 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %63, %struct.intr_irqsrc** %64, align 8
  br label %65

65:                                               ; preds = %57, %54
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %51
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.tegra_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @tegra_gpio_pic_map_fdt(%struct.tegra_gpio_softc*, i32, i32, i64*, i32*) #1

declare dso_local i32 @tegra_gpio_pic_map_gpio(%struct.tegra_gpio_softc*, i32, i32, i32, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
