; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_setup_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_setup_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i32 }

@AW_SPI_GCR = common dso_local global i32 0, align 4
@AW_SPI_GCR_MODE_MASTER = common dso_local global i32 0, align 4
@AW_SPI_TCR = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPHA = common dso_local global i32 0, align 4
@AW_SPI_TCR_CPHA = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPOL = common dso_local global i32 0, align 4
@AW_SPI_TCR_CPOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_spi_softc*, i32)* @aw_spi_setup_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_spi_setup_mode(%struct.aw_spi_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aw_spi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aw_spi_softc* %0, %struct.aw_spi_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %7 = load i32, i32* @AW_SPI_GCR, align 4
  %8 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @AW_SPI_GCR_MODE_MASTER, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %13 = load i32, i32* @AW_SPI_GCR, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %17 = load i32, i32* @AW_SPI_TCR, align 4
  %18 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @SPIBUS_MODE_CPHA, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @AW_SPI_TCR_CPHA, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SPIBUS_MODE_CPOL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @AW_SPI_TCR_CPOL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %38 = load i32, i32* @AW_SPI_TCR, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @AW_SPI_READ_4(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
