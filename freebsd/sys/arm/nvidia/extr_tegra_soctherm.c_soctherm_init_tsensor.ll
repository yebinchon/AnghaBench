; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_init_tsensor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_soctherm.c_soctherm_init_tsensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soctherm_softc = type { i32 }
%struct.tsensor = type { i8*, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.soctherm_shared_cal = type { i32 }

@TSENSOR_CONFIG0 = common dso_local global i64 0, align 8
@TSENSOR_CONFIG0_STOP = common dso_local global i32 0, align 4
@TSENSOR_CONFIG0_STATUS_CLR = common dso_local global i32 0, align 4
@TSENSOR_CONFIG1_TEMP_ENABLE = common dso_local global i32 0, align 4
@TSENSOR_CONFIG1 = common dso_local global i64 0, align 8
@TSENSOR_CONFIG2 = common dso_local global i64 0, align 8
@TSENSOR_STATUS0 = common dso_local global i64 0, align 8
@TSENSOR_STATUS1 = common dso_local global i64 0, align 8
@TSENSOR_STATUS2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.soctherm_softc*, %struct.tsensor*, %struct.soctherm_shared_cal*)* @soctherm_init_tsensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soctherm_init_tsensor(%struct.soctherm_softc* %0, %struct.tsensor* %1, %struct.soctherm_shared_cal* %2) #0 {
  %4 = alloca %struct.soctherm_softc*, align 8
  %5 = alloca %struct.tsensor*, align 8
  %6 = alloca %struct.soctherm_shared_cal*, align 8
  %7 = alloca i32, align 4
  store %struct.soctherm_softc* %0, %struct.soctherm_softc** %4, align 8
  store %struct.tsensor* %1, %struct.tsensor** %5, align 8
  store %struct.soctherm_shared_cal* %2, %struct.soctherm_shared_cal** %6, align 8
  %8 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %9 = load %struct.soctherm_shared_cal*, %struct.soctherm_shared_cal** %6, align 8
  %10 = call i32 @tsensor_calibration(%struct.tsensor* %8, %struct.soctherm_shared_cal* %9)
  %11 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %12 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %13 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @TSENSOR_CONFIG0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @RD4(%struct.soctherm_softc* %11, i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @TSENSOR_CONFIG0_STOP, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @TSENSOR_CONFIG0_STATUS_CLR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  %24 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %25 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %26 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TSENSOR_CONFIG0, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @WR4(%struct.soctherm_softc* %24, i64 %29, i32 %30)
  %32 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %33 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @TSENSOR_CONFIG0_TALL(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @TSENSOR_CONFIG0_STOP, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %42 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %43 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @TSENSOR_CONFIG0, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @WR4(%struct.soctherm_softc* %41, i64 %46, i32 %47)
  %49 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %50 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %49, i32 0, i32 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 1
  %55 = call i32 @TSENSOR_CONFIG1_TSAMPLE(i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %57 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %56, i32 0, i32 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @TSENSOR_CONFIG1_TIDDQ_EN(i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %7, align 4
  %64 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %65 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @TSENSOR_CONFIG1_TEN_COUNT(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @TSENSOR_CONFIG1_TEMP_ENABLE, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %76 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %77 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TSENSOR_CONFIG1, align 8
  %80 = add nsw i64 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @WR4(%struct.soctherm_softc* %75, i64 %80, i32 %81)
  %83 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %84 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @TSENSOR_CONFIG2_THERMA(i32 %86)
  %88 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %89 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @TSENSOR_CONFIG2_THERMB(i32 %91)
  %93 = or i32 %87, %92
  store i32 %93, i32* %7, align 4
  %94 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %95 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %96 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @TSENSOR_CONFIG2, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @WR4(%struct.soctherm_softc* %94, i64 %99, i32 %100)
  %102 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %103 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %104 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TSENSOR_CONFIG0, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @RD4(%struct.soctherm_softc* %102, i64 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @TSENSOR_CONFIG0_STOP, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %7, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load %struct.soctherm_softc*, %struct.soctherm_softc** %4, align 8
  %114 = load %struct.tsensor*, %struct.tsensor** %5, align 8
  %115 = getelementptr inbounds %struct.tsensor, %struct.tsensor* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TSENSOR_CONFIG0, align 8
  %118 = add nsw i64 %116, %117
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @WR4(%struct.soctherm_softc* %113, i64 %118, i32 %119)
  ret void
}

declare dso_local i32 @tsensor_calibration(%struct.tsensor*, %struct.soctherm_shared_cal*) #1

declare dso_local i32 @RD4(%struct.soctherm_softc*, i64) #1

declare dso_local i32 @WR4(%struct.soctherm_softc*, i64, i32) #1

declare dso_local i32 @TSENSOR_CONFIG0_TALL(i32) #1

declare dso_local i32 @TSENSOR_CONFIG1_TSAMPLE(i64) #1

declare dso_local i32 @TSENSOR_CONFIG1_TIDDQ_EN(i32) #1

declare dso_local i32 @TSENSOR_CONFIG1_TEN_COUNT(i32) #1

declare dso_local i32 @TSENSOR_CONFIG2_THERMA(i32) #1

declare dso_local i32 @TSENSOR_CONFIG2_THERMB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
