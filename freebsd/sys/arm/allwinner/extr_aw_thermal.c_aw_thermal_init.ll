; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_thermal.c_aw_thermal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_thermal_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ths-calib\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ths-calib nvmem cell is too large\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot read THS efuse\0A\00", align 1
@THS_CALIB0 = common dso_local global i32 0, align 4
@THS_CALIB1 = common dso_local global i32 0, align 4
@THS_CTRL1 = common dso_local global i32 0, align 4
@ADC_CALI_EN = common dso_local global i32 0, align 4
@THS_CTRL0 = common dso_local global i32 0, align 4
@THS_CTRL2 = common dso_local global i32 0, align 4
@SENSOR_ACQ1_SHIFT = common dso_local global i32 0, align 4
@THS_INTC = common dso_local global i32 0, align 4
@THS_THERMAL_PER_SHIFT = common dso_local global i32 0, align 4
@THS_FILTER = common dso_local global i32 0, align 4
@THS_INTS = common dso_local global i32 0, align 4
@SHUT_INT_ALL = common dso_local global i32 0, align 4
@ALARM_INT_ALL = common dso_local global i32 0, align 4
@SENSOR_ENABLE_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aw_thermal_softc*)* @aw_thermal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_thermal_init(%struct.aw_thermal_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aw_thermal_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.aw_thermal_softc* %0, %struct.aw_thermal_softc** %3, align 8
  %7 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %8 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @ofw_bus_get_node(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @nvmem_get_cell_len(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = sext i32 %12 to i64
  %14 = icmp ugt i64 %13, 8
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %17 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %136

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = bitcast [2 x i32]* %5 to i8*
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @nvmem_get_cell_len(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @nvmem_read_cell_by_name(i32 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %31 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %136

35:                                               ; preds = %21
  %36 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %37 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %45 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %35
  %56 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %57 = load i32, i32* @THS_CALIB0, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @WR4(%struct.aw_thermal_softc* %56, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %55, %35
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %67 = load i32, i32* @THS_CALIB1, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @WR4(%struct.aw_thermal_softc* %66, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %61
  %72 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %73 = load i32, i32* @THS_CTRL1, align 4
  %74 = load i32, i32* @ADC_CALI_EN, align 4
  %75 = call i32 @WR4(%struct.aw_thermal_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %77 = load i32, i32* @THS_CTRL0, align 4
  %78 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %79 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @WR4(%struct.aw_thermal_softc* %76, i32 %77, i32 %82)
  %84 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %85 = load i32, i32* @THS_CTRL2, align 4
  %86 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %87 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @SENSOR_ACQ1_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = call i32 @WR4(%struct.aw_thermal_softc* %84, i32 %85, i32 %92)
  %94 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %95 = load i32, i32* @THS_INTC, align 4
  %96 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %97 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %96, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @THS_THERMAL_PER_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = call i32 @WR4(%struct.aw_thermal_softc* %94, i32 %95, i32 %102)
  %104 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %105 = load i32, i32* @THS_FILTER, align 4
  %106 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %107 = getelementptr inbounds %struct.aw_thermal_softc, %struct.aw_thermal_softc* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @WR4(%struct.aw_thermal_softc* %104, i32 %105, i32 %110)
  %112 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %113 = load i32, i32* @THS_INTS, align 4
  %114 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %115 = load i32, i32* @THS_INTS, align 4
  %116 = call i32 @RD4(%struct.aw_thermal_softc* %114, i32 %115)
  %117 = call i32 @WR4(%struct.aw_thermal_softc* %112, i32 %113, i32 %116)
  %118 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %119 = load i32, i32* @THS_INTC, align 4
  %120 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %121 = load i32, i32* @THS_INTC, align 4
  %122 = call i32 @RD4(%struct.aw_thermal_softc* %120, i32 %121)
  %123 = load i32, i32* @SHUT_INT_ALL, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ALARM_INT_ALL, align 4
  %126 = or i32 %124, %125
  %127 = call i32 @WR4(%struct.aw_thermal_softc* %118, i32 %119, i32 %126)
  %128 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %129 = load i32, i32* @THS_CTRL2, align 4
  %130 = load %struct.aw_thermal_softc*, %struct.aw_thermal_softc** %3, align 8
  %131 = load i32, i32* @THS_CTRL2, align 4
  %132 = call i32 @RD4(%struct.aw_thermal_softc* %130, i32 %131)
  %133 = load i32, i32* @SENSOR_ENABLE_ALL, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @WR4(%struct.aw_thermal_softc* %128, i32 %129, i32 %134)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %71, %29, %15
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @nvmem_get_cell_len(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @nvmem_read_cell_by_name(i32, i8*, i8*, i32) #1

declare dso_local i32 @WR4(%struct.aw_thermal_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.aw_thermal_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
