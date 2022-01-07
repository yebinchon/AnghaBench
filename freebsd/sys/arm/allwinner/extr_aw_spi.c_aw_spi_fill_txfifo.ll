; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_fill_txfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_fill_txfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i64, i64, i32* }

@AW_SPI_FSR = common dso_local global i32 0, align 4
@AW_SPI_FSR_TF_CNT_MASK = common dso_local global i32 0, align 4
@AW_SPI_FSR_TF_CNT_SHIFT = common dso_local global i32 0, align 4
@AW_SPI_FIFO_SIZE = common dso_local global i32 0, align 4
@AW_SPI_TXD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_spi_softc*)* @aw_spi_fill_txfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_spi_fill_txfifo(%struct.aw_spi_softc* %0) #0 {
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
  br label %56

14:                                               ; preds = %1
  %15 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %16 = load i32, i32* @AW_SPI_FSR, align 4
  %17 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @AW_SPI_FSR_TF_CNT_MASK, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AW_SPI_FSR_TF_CNT_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %52, %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @AW_SPI_FIFO_SIZE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %32 = load i32, i32* @AW_SPI_TXD, align 4
  %33 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %34 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %37 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds i32, i32* %35, i64 %38
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @AW_SPI_WRITE_1(%struct.aw_spi_softc* %31, i32 %32, i32 %41)
  %43 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %44 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %2, align 8
  %47 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %55

51:                                               ; preds = %30
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %24

55:                                               ; preds = %50, %24
  br label %56

56:                                               ; preds = %55, %13
  ret void
}

declare dso_local i32 @AW_SPI_READ_4(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @AW_SPI_WRITE_1(%struct.aw_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
