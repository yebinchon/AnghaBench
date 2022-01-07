; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_engage_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_engage_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, i32 }

@AML_SDXC_PDMA_REG = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_RX_FLUSH_MODE_SW = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_DMA_EN = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_TX_FILL = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_REG = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_TX_CNT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TX FIFO fill timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_sdxc_softc*)* @aml8726_sdxc_engage_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_sdxc_engage_dma(%struct.aml8726_sdxc_softc* %0) #0 {
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
  %24 = load i32, i32* @AML_SDXC_PDMA_RX_FLUSH_MODE_SW, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @AML_SDXC_PDMA_DMA_EN, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %32 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %20
  %36 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %37 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %41 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %42 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %40, i32 %41)
  br label %98

43:                                               ; preds = %20
  %44 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MMC_DATA_READ, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load i32, i32* @AML_SDXC_PDMA_RX_FLUSH_MODE_SW, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %55 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %59 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %60 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %58, i32 %59)
  br label %98

61:                                               ; preds = %43
  %62 = load i32, i32* @AML_SDXC_PDMA_TX_FILL, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %66 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %65, i32 %66, i32 %67)
  %69 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %70 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %71 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %86, %61
  %73 = load i32, i32* %3, align 4
  %74 = icmp slt i32 %73, 100
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %77 = load i32, i32* @AML_SDXC_STATUS_REG, align 4
  %78 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @AML_SDXC_STATUS_TX_CNT_MASK, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %89

84:                                               ; preds = %75
  %85 = call i32 @DELAY(i32 1)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %72

89:                                               ; preds = %83, %72
  %90 = load i32, i32* %3, align 4
  %91 = icmp sge i32 %90, 100
  br i1 %91, label %92, label %97

92:                                               ; preds = %89
  %93 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %2, align 8
  %94 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %89
  br label %98

98:                                               ; preds = %19, %35, %97, %50
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
