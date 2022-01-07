; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_hw_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_spi_softc = type { i32, i32 }

@CTRLR0_OPM_MASTER = common dso_local global i32 0, align 4
@CTRLR0_XFM_TR = common dso_local global i32 0, align 4
@CTRLR0_FRF_MOTO = common dso_local global i32 0, align 4
@CTRLR0_BHT_8BIT = common dso_local global i32 0, align 4
@CTRLR0_EM_BIG = common dso_local global i32 0, align 4
@CTRLR0_SSD_ONE = common dso_local global i32 0, align 4
@CTRLR0_DFS_8BIT = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPHA = common dso_local global i32 0, align 4
@CTRLR0_SCPH = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPOL = common dso_local global i32 0, align 4
@CTRLR0_SCPOL = common dso_local global i32 0, align 4
@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@RK_SPI_BAUDR = common dso_local global i32 0, align 4
@RK_SPI_CTRLR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_spi_softc*, i32, i32)* @rk_spi_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_spi_hw_setup(%struct.rk_spi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rk_spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rk_spi_softc* %0, %struct.rk_spi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @CTRLR0_OPM_MASTER, align 4
  %10 = load i32, i32* @CTRLR0_XFM_TR, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CTRLR0_FRF_MOTO, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CTRLR0_BHT_8BIT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CTRLR0_EM_BIG, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @CTRLR0_SSD_ONE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CTRLR0_DFS_8BIT, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SPIBUS_MODE_CPHA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @CTRLR0_SCPH, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @SPIBUS_MODE_CPOL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @CTRLR0_SCPOL, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = mul nsw i32 %43, 2
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 2, %50
  %52 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %53 = call i32 @clk_set_freq(i32 %49, i32 %51, i32 %52)
  %54 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %55 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %58 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %57, i32 0, i32 0
  %59 = call i32 @clk_get_freq(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %46, %39
  %61 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %63, %64
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %6, align 4
  %68 = sdiv i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  %71 = and i32 %70, 65534
  store i32 %71, i32* %8, align 4
  %72 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %73 = load i32, i32* @RK_SPI_BAUDR, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %77 = load i32, i32* @RK_SPI_CTRLR0, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %76, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
