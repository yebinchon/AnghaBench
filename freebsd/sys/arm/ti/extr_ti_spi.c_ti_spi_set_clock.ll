; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_set_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_spi_softc = type { i32 }

@TI_SPI_GCLK = common dso_local global i32 0, align 4
@MCSPI_EXTCLK_MSK = common dso_local global i32 0, align 4
@MCSPI_CONF_CLK_SHIFT = common dso_local global i32 0, align 4
@MCSPI_CONF_CLK_MSK = common dso_local global i32 0, align 4
@MCSPI_CONF_CLKG = common dso_local global i32 0, align 4
@MCSPI_CTRL_EXTCLK_MSK = common dso_local global i32 0, align 4
@MCSPI_CTRL_EXTCLK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_spi_softc*, i32, i32)* @ti_spi_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_spi_set_clock(%struct.ti_spi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ti_spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ti_spi_softc* %0, %struct.ti_spi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @TI_SPI_GCLK, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sdiv i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @MCSPI_EXTCLK_MSK, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  store i32 1, i32* %9, align 4
  br label %19

19:                                               ; preds = %30, %18
  %20 = load i32, i32* @TI_SPI_GCLK, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %7, align 4
  %27 = icmp sle i32 %26, 15
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i1 [ false, %19 ], [ %27, %25 ]
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %19

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MCSPI_CONF_CLK_SHIFT, align 4
  %38 = shl i32 %36, %37
  store i32 %38, i32* %8, align 4
  br label %50

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* @MCSPI_CONF_CLK_MSK, align 4
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @MCSPI_CONF_CLKG, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MCSPI_CONF_CLK_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %45, %48
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %39, %35
  %51 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @MCSPI_CTRL_CH(i32 %52)
  %54 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %51, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* @MCSPI_CTRL_EXTCLK_MSK, align 4
  %56 = load i32, i32* @MCSPI_CTRL_EXTCLK_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @MCSPI_CTRL_EXTCLK_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @MCSPI_CTRL_CH(i32 %67)
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %66, i32 %68, i32 %69)
  %71 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @MCSPI_CONF_CH(i32 %72)
  %74 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %71, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @MCSPI_CONF_CLKG, align 4
  %76 = load i32, i32* @MCSPI_CONF_CLK_MSK, align 4
  %77 = load i32, i32* @MCSPI_CONF_CLK_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %75, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @MCSPI_CONF_CH(i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %83, i32 %85, i32 %88)
  ret void
}

declare dso_local i32 @TI_SPI_READ(%struct.ti_spi_softc*, i32) #1

declare dso_local i32 @MCSPI_CTRL_CH(i32) #1

declare dso_local i32 @TI_SPI_WRITE(%struct.ti_spi_softc*, i32, i32) #1

declare dso_local i32 @MCSPI_CONF_CH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
