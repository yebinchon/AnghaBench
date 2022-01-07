; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_spi_softc = type { i64, i64, i64, i32, i32 }

@MCSPI_IRQSTATUS = common dso_local global i32 0, align 4
@MCSPI_IRQ_TX0_EMPTY = common dso_local global i32 0, align 4
@MCSPI_IRQ_RX0_FULL = common dso_local global i32 0, align 4
@MCSPI_IRQ_EOW = common dso_local global i32 0, align 4
@TI_SPI_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ti_spi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_spi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_spi_softc*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ti_spi_softc*
  store %struct.ti_spi_softc* %7, %struct.ti_spi_softc** %4, align 8
  %8 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %9 = call i32 @TI_SPI_LOCK(%struct.ti_spi_softc* %8)
  %10 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %11 = load i32, i32* @MCSPI_IRQSTATUS, align 4
  %12 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @MCSPI_IRQ_TX0_EMPTY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %19 = call i32 @ti_spi_fill_fifo(%struct.ti_spi_softc* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MCSPI_IRQ_RX0_FULL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %27 = call i32 @ti_spi_drain_fifo(%struct.ti_spi_softc* %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MCSPI_IRQ_EOW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %36 = load i32, i32* @MCSPI_IRQSTATUS, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %35, i32 %36, i32 %37)
  %39 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %40 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %34
  %47 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = load i32, i32* @TI_SPI_DONE, align 4
  %56 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @wakeup(i32 %62)
  br label %64

64:                                               ; preds = %54, %46, %34
  %65 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %4, align 8
  %66 = call i32 @TI_SPI_UNLOCK(%struct.ti_spi_softc* %65)
  ret void
}

declare dso_local i32 @TI_SPI_LOCK(%struct.ti_spi_softc*) #1

declare dso_local i32 @TI_SPI_READ(%struct.ti_spi_softc*, i32) #1

declare dso_local i32 @ti_spi_fill_fifo(%struct.ti_spi_softc*) #1

declare dso_local i32 @ti_spi_drain_fifo(%struct.ti_spi_softc*) #1

declare dso_local i32 @TI_SPI_WRITE(%struct.ti_spi_softc*, i32, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @TI_SPI_UNLOCK(%struct.ti_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
