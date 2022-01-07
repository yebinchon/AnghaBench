; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_fill_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_fill_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_spi_softc = type { i64, i64, %struct.spi_command* }
%struct.spi_command = type { i64, i64, i64 }

@SPI_CS = common dso_local global i32 0, align 4
@SPI_CS_TA = common dso_local global i64 0, align 8
@SPI_CS_TXD = common dso_local global i64 0, align 8
@SPI_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_spi_softc*)* @bcm_spi_fill_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_spi_fill_fifo(%struct.bcm_spi_softc* %0) #0 {
  %2 = alloca %struct.bcm_spi_softc*, align 8
  %3 = alloca %struct.spi_command*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.bcm_spi_softc* %0, %struct.bcm_spi_softc** %2, align 8
  %7 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %7, i32 0, i32 2
  %9 = load %struct.spi_command*, %struct.spi_command** %8, align 8
  store %struct.spi_command* %9, %struct.spi_command** %3, align 8
  %10 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %11 = load i32, i32* @SPI_CS, align 4
  %12 = call i64 @BCM_SPI_READ(%struct.bcm_spi_softc* %10, i32 %11)
  %13 = load i64, i64* @SPI_CS_TA, align 8
  %14 = load i64, i64* @SPI_CS_TXD, align 8
  %15 = or i64 %13, %14
  %16 = and i64 %12, %15
  store i64 %16, i64* %4, align 8
  br label %17

17:                                               ; preds = %57, %1
  %18 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %22 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @SPI_CS_TA, align 8
  %28 = load i64, i64* @SPI_CS_TXD, align 8
  %29 = or i64 %27, %28
  %30 = icmp eq i64 %26, %29
  br label %31

31:                                               ; preds = %25, %17
  %32 = phi i1 [ false, %17 ], [ %30, %25 ]
  br i1 %32, label %33, label %72

33:                                               ; preds = %31
  %34 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %35 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %6, align 8
  %38 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  store i64 %40, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %44 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp uge i64 %42, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %33
  %48 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %49 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %6, align 8
  %52 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %53 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = sub i64 %55, %54
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %47, %33
  %58 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %59 = load i32, i32* @SPI_FIFO, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @BCM_SPI_WRITE(%struct.bcm_spi_softc* %58, i32 %59, i32 %63)
  %65 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %66 = load i32, i32* @SPI_CS, align 4
  %67 = call i64 @BCM_SPI_READ(%struct.bcm_spi_softc* %65, i32 %66)
  %68 = load i64, i64* @SPI_CS_TA, align 8
  %69 = load i64, i64* @SPI_CS_TXD, align 8
  %70 = or i64 %68, %69
  %71 = and i64 %67, %70
  store i64 %71, i64* %4, align 8
  br label %17

72:                                               ; preds = %31
  ret void
}

declare dso_local i64 @BCM_SPI_READ(%struct.bcm_spi_softc*, i32) #1

declare dso_local i32 @BCM_SPI_WRITE(%struct.bcm_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
