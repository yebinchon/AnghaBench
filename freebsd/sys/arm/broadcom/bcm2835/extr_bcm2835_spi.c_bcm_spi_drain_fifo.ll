; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_spi_softc = type { i64, i64, %struct.spi_command* }
%struct.spi_command = type { i64, i64, i64 }

@SPI_CS = common dso_local global i32 0, align 4
@SPI_CS_RXD = common dso_local global i64 0, align 8
@SPI_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_spi_softc*)* @bcm_spi_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_spi_drain_fifo(%struct.bcm_spi_softc* %0) #0 {
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
  %13 = load i64, i64* @SPI_CS_RXD, align 8
  %14 = and i64 %12, %13
  store i64 %14, i64* %4, align 8
  br label %15

15:                                               ; preds = %53, %1
  %16 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @SPI_CS_RXD, align 8
  %26 = icmp eq i64 %24, %25
  br label %27

27:                                               ; preds = %23, %15
  %28 = phi i1 [ false, %15 ], [ %26, %23 ]
  br i1 %28, label %29, label %67

29:                                               ; preds = %27
  %30 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %31 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %6, align 8
  %34 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %35 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  store i64 %36, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %40 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %29
  %44 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %45 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %6, align 8
  %48 = load %struct.spi_command*, %struct.spi_command** %3, align 8
  %49 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %43, %29
  %54 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %55 = load i32, i32* @SPI_FIFO, align 4
  %56 = call i64 @BCM_SPI_READ(%struct.bcm_spi_softc* %54, i32 %55)
  %57 = and i64 %56, 255
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 %58, i32* %61, align 4
  %62 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %63 = load i32, i32* @SPI_CS, align 4
  %64 = call i64 @BCM_SPI_READ(%struct.bcm_spi_softc* %62, i32 %63)
  %65 = load i64, i64* @SPI_CS_RXD, align 8
  %66 = and i64 %64, %65
  store i64 %66, i64* %4, align 8
  br label %15

67:                                               ; preds = %27
  ret void
}

declare dso_local i64 @BCM_SPI_READ(%struct.bcm_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
