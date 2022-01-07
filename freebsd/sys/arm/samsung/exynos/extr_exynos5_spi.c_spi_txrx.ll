; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_spi.c_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_spi.c_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32 }

@CH_CFG = common dso_local global i32 0, align 4
@SW_RST = common dso_local global i32 0, align 4
@CS_REG = common dso_local global i32 0, align 4
@NSSOUT = common dso_local global i32 0, align 4
@SPI_STATUS = common dso_local global i32 0, align 4
@TX_FIFO_LVL_M = common dso_local global i32 0, align 4
@TX_FIFO_LVL_S = common dso_local global i32 0, align 4
@SPI_TX_DATA = common dso_local global i32 0, align 4
@RX_FIFO_LVL_M = common dso_local global i32 0, align 4
@RX_FIFO_LVL_S = common dso_local global i32 0, align 4
@SPI_RX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_softc*, i32*, i32*, i32, i32)* @spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_txrx(%struct.spi_softc* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.spi_softc* %0, %struct.spi_softc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %103

17:                                               ; preds = %5
  %18 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %19 = load i32, i32* @CH_CFG, align 4
  %20 = call i32 @READ4(%struct.spi_softc* %18, i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* @SW_RST, align 4
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  %24 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %25 = load i32, i32* @CH_CFG, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @WRITE4(%struct.spi_softc* %24, i32 %25, i32 %26)
  %28 = load i32, i32* @SW_RST, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %12, align 4
  %32 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %33 = load i32, i32* @CH_CFG, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @WRITE4(%struct.spi_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %37 = load i32, i32* @CS_REG, align 4
  %38 = call i32 @READ4(%struct.spi_softc* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @NSSOUT, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %12, align 4
  %43 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %44 = load i32, i32* @CS_REG, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @WRITE4(%struct.spi_softc* %43, i32 %44, i32 %45)
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %89, %17
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %92

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %61, %51
  %53 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %54 = load i32, i32* @SPI_STATUS, align 4
  %55 = call i32 @READ4(%struct.spi_softc* %53, i32 %54)
  %56 = load i32, i32* @TX_FIFO_LVL_M, align 4
  %57 = load i32, i32* @TX_FIFO_LVL_S, align 4
  %58 = shl i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %52
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %64 = load i32, i32* @SPI_TX_DATA, align 4
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @WRITE1(%struct.spi_softc* %63, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %80, %62
  %72 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %73 = load i32, i32* @SPI_STATUS, align 4
  %74 = call i32 @READ4(%struct.spi_softc* %72, i32 %73)
  %75 = load i32, i32* @RX_FIFO_LVL_M, align 4
  %76 = load i32, i32* @RX_FIFO_LVL_S, align 4
  %77 = shl i32 %75, %76
  %78 = and i32 %74, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %71

81:                                               ; preds = %71
  %82 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %83 = load i32, i32* @SPI_RX_DATA, align 4
  %84 = call i32 @READ1(%struct.spi_softc* %82, i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %84, i32* %88, align 4
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %13, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %13, align 4
  br label %47

92:                                               ; preds = %47
  %93 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %94 = load i32, i32* @CS_REG, align 4
  %95 = call i32 @READ4(%struct.spi_softc* %93, i32 %94)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* @NSSOUT, align 4
  %97 = load i32, i32* %12, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %12, align 4
  %99 = load %struct.spi_softc*, %struct.spi_softc** %7, align 8
  %100 = load i32, i32* @CS_REG, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @WRITE4(%struct.spi_softc* %99, i32 %100, i32 %101)
  store i32 0, i32* %6, align 4
  br label %103

103:                                              ; preds = %92, %16
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @READ4(%struct.spi_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @WRITE1(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @READ1(%struct.spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
