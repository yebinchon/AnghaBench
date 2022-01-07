; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_spi_softc = type { i32, i64, i64, i64, i32 }

@BCM_SPI_BUSY = common dso_local global i32 0, align 4
@SPI_CS = common dso_local global i32 0, align 4
@SPI_CS_TA = common dso_local global i32 0, align 4
@SPI_CS_INTR = common dso_local global i32 0, align 4
@SPI_CS_INTD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bcm_spi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_spi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcm_spi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.bcm_spi_softc*
  store %struct.bcm_spi_softc* %5, %struct.bcm_spi_softc** %3, align 8
  %6 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %7 = call i32 @BCM_SPI_LOCK(%struct.bcm_spi_softc* %6)
  %8 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BCM_SPI_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %16 = call i32 @BCM_SPI_UNLOCK(%struct.bcm_spi_softc* %15)
  br label %53

17:                                               ; preds = %1
  %18 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %19 = call i32 @bcm_spi_fill_fifo(%struct.bcm_spi_softc* %18)
  %20 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %21 = call i32 @bcm_spi_drain_fifo(%struct.bcm_spi_softc* %20)
  %22 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %50

29:                                               ; preds = %17
  %30 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %34 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %29
  %38 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %39 = load i32, i32* @SPI_CS, align 4
  %40 = load i32, i32* @SPI_CS_TA, align 4
  %41 = load i32, i32* @SPI_CS_INTR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SPI_CS_INTD, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @bcm_spi_modifyreg(%struct.bcm_spi_softc* %38, i32 %39, i32 %44, i32 0)
  %46 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %47 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wakeup(i32 %48)
  br label %50

50:                                               ; preds = %37, %29, %17
  %51 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %3, align 8
  %52 = call i32 @BCM_SPI_UNLOCK(%struct.bcm_spi_softc* %51)
  br label %53

53:                                               ; preds = %50, %14
  ret void
}

declare dso_local i32 @BCM_SPI_LOCK(%struct.bcm_spi_softc*) #1

declare dso_local i32 @BCM_SPI_UNLOCK(%struct.bcm_spi_softc*) #1

declare dso_local i32 @bcm_spi_fill_fifo(%struct.bcm_spi_softc*) #1

declare dso_local i32 @bcm_spi_drain_fifo(%struct.bcm_spi_softc*) #1

declare dso_local i32 @bcm_spi_modifyreg(%struct.bcm_spi_softc*, i32, i32, i32) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
