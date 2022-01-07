; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_disengage_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_disengage_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, i32 }

@AML_SDXC_PDMA_REG = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_DMA_EN = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_RX_FLUSH_NOW = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_REG = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_RX_CNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"RX FIFO drain timeout\0A\00", align 1
@AML_SDXC_PDMA_RX_FLUSH_MODE_SW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_sdxc_softc*)* @aml8726_sdxc_disengage_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_sdxc_disengage_dma(%struct.aml8726_sdxc_softc* %0) #0 {
  %2 = alloca %struct.aml8726_sdxc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_data*, align 8
  store %struct.aml8726_sdxc_softc* %0, %struct.aml8726_sdxc_softc** %2, align 8
  %7 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %6, align 8
  %12 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %13 = icmp eq %struct.mmc_data* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  br label %98

20:                                               ; preds = %14
  %21 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %22 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %23 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %25 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load i32, i32* @AML_SDXC_PDMA_DMA_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %34 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %33, i32 %34, i32 %35)
  %37 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %38 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %39 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %37, i32 %38)
  br label %98

40:                                               ; preds = %20
  %41 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MMC_DATA_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %40
  %48 = load i32, i32* @AML_SDXC_PDMA_RX_FLUSH_NOW, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %52 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %51, i32 %52, i32 %53)
  %55 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %56 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %57 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %72, %47
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %59, 100
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %63 = load i32, i32* @AML_SDXC_STATUS_REG, align 4
  %64 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @AML_SDXC_STATUS_RX_CNT_MASK, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %75

70:                                               ; preds = %61
  %71 = call i32 @DELAY(i32 1)
  br label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %58

75:                                               ; preds = %69, %58
  %76 = load i32, i32* %3, align 4
  %77 = icmp sge i32 %76, 100
  br i1 %77, label %78, label %83

78:                                               ; preds = %75
  %79 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %80 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %83, %40
  %85 = load i32, i32* @AML_SDXC_PDMA_DMA_EN, align 4
  %86 = load i32, i32* @AML_SDXC_PDMA_RX_FLUSH_MODE_SW, align 4
  %87 = or i32 %85, %86
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %92 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %91, i32 %92, i32 %93)
  %95 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %96 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %97 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %95, i32 %96)
  br label %98

98:                                               ; preds = %84, %28, %19
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
