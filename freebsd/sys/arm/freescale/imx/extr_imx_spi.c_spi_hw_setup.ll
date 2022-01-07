; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_hw_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32 }

@CTLREG_EN = common dso_local global i32 0, align 4
@CTLREG_CMODES_MASTER = common dso_local global i32 0, align 4
@CTLREG_SMC = common dso_local global i32 0, align 4
@CTLREG_BLEN_SHIFT = common dso_local global i32 0, align 4
@ECSPI_CTLREG = common dso_local global i32 0, align 4
@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@CFGREG_SSPOL_SHIFT = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPHA = common dso_local global i32 0, align 4
@CFGREG_SCLKPHA_SHIFT = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPOL = common dso_local global i32 0, align 4
@CFGREG_SCLKPOL_SHIFT = common dso_local global i32 0, align 4
@CFGREG_SCLKCTL_SHIFT = common dso_local global i32 0, align 4
@ECSPI_CFGREG = common dso_local global i32 0, align 4
@FIFO_RXTHRESH = common dso_local global i32 0, align 4
@DMA_RX_THRESH_SHIFT = common dso_local global i32 0, align 4
@FIFO_TXTHRESH = common dso_local global i32 0, align 4
@DMA_TX_THRESH_SHIFT = common dso_local global i32 0, align 4
@ECSPI_DMAREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_softc*, i32, i32, i32)* @spi_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_hw_setup(%struct.spi_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.spi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_softc* %0, %struct.spi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @CTLREG_EN, align 4
  %11 = load i32, i32* @CTLREG_CMODES_MASTER, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CTLREG_SMC, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @spi_calc_clockdiv(%struct.spi_softc* %17, i32 %18)
  %20 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %21 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @CTLREG_BLEN_SHIFT, align 4
  %25 = shl i32 7, %24
  %26 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %27 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %31 = load i32, i32* @ECSPI_CTLREG, align 4
  %32 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %33 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WR4(%struct.spi_softc* %30, i32 %31, i32 %34)
  store i32 0, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %4
  %41 = load i32, i32* @CFGREG_SSPOL_SHIFT, align 4
  %42 = shl i32 1, %41
  %43 = load i32, i32* %9, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %40, %4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SPIBUS_MODE_CPHA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @CFGREG_SCLKPHA_SHIFT, align 4
  %52 = shl i32 1, %51
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @SPIBUS_MODE_CPOL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i32, i32* @CFGREG_SCLKPOL_SHIFT, align 4
  %62 = shl i32 1, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @CFGREG_SCLKCTL_SHIFT, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %60, %55
  %70 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %71 = load i32, i32* @ECSPI_CFGREG, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @WR4(%struct.spi_softc* %70, i32 %71, i32 %72)
  %74 = load i32, i32* @FIFO_RXTHRESH, align 4
  %75 = load i32, i32* @DMA_RX_THRESH_SHIFT, align 4
  %76 = shl i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* @FIFO_TXTHRESH, align 4
  %78 = load i32, i32* @DMA_TX_THRESH_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %83 = load i32, i32* @ECSPI_DMAREG, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @WR4(%struct.spi_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.spi_softc*, %struct.spi_softc** %5, align 8
  %87 = load i32, i32* @ECSPI_CFGREG, align 4
  %88 = call i32 @RD4(%struct.spi_softc* %86, i32 %87)
  ret void
}

declare dso_local i32 @spi_calc_clockdiv(%struct.spi_softc*, i32) #1

declare dso_local i32 @WR4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
