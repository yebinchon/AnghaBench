; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_read_rxfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_read_rxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i64, i64, i32* }

@AW_SPI_FSR = common dso_local global i32 0, align 4
@AW_SPI_FSR_RF_CNT_MASK = common dso_local global i32 0, align 4
@AW_SPI_FSR_RF_CNT_SHIFT = common dso_local global i32 0, align 4
@AW_SPI_RDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_spi_softc*)* @aw_spi_read_rxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_spi_read_rxfifo(%struct.aw_spi_softc* %0) #0 {
  %2 = alloca %struct.aw_spi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aw_spi_softc* %0, %struct.aw_spi_softc** %2, align 8
  %6 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %52

14:                                               ; preds = %1
  %15 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %16 = load i32, i32* @AW_SPI_FSR, align 4
  %17 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @AW_SPI_FSR_RF_CNT_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @AW_SPI_FSR_RF_CNT_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %49, %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %29 = load i32, i32* @AW_SPI_RDX, align 4
  %30 = call i32 @AW_SPI_READ_1(%struct.aw_spi_softc* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %32 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %41 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %44 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %39, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %27
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %23

52:                                               ; preds = %13, %23
  ret void
}

declare dso_local i32 @AW_SPI_READ_4(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @AW_SPI_READ_1(%struct.aw_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
