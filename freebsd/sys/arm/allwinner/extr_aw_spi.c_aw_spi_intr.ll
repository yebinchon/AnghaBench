; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i64, i64, i64 }

@AW_SPI_ISR = common dso_local global i32 0, align 4
@AW_SPI_IER_RF_FULL = common dso_local global i32 0, align 4
@AW_SPI_IER_TF_EMP = common dso_local global i32 0, align 4
@AW_SPI_IER = common dso_local global i32 0, align 4
@AW_SPI_IER_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aw_spi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_spi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aw_spi_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.aw_spi_softc*
  store %struct.aw_spi_softc* %6, %struct.aw_spi_softc** %3, align 8
  %7 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %8 = load i32, i32* @AW_SPI_ISR, align 4
  %9 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @AW_SPI_IER_RF_FULL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %16 = call i32 @aw_spi_read_rxfifo(%struct.aw_spi_softc* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @AW_SPI_IER_TF_EMP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %24 = call i32 @aw_spi_fill_txfifo(%struct.aw_spi_softc* %23)
  %25 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %26 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %34 = load i32, i32* @AW_SPI_IER, align 4
  %35 = load i32, i32* @AW_SPI_IER_TC, align 4
  %36 = load i32, i32* @AW_SPI_IER_RF_FULL, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %22
  br label %40

40:                                               ; preds = %39, %17
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @AW_SPI_IER_TC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %47 = call i32 @aw_spi_read_rxfifo(%struct.aw_spi_softc* %46)
  %48 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %49 = load i32, i32* @AW_SPI_IER, align 4
  %50 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %48, i32 %49, i32 0)
  %51 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %52 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %54 = call i32 @wakeup(%struct.aw_spi_softc* %53)
  br label %55

55:                                               ; preds = %45, %40
  %56 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %3, align 8
  %57 = load i32, i32* @AW_SPI_ISR, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @AW_SPI_READ_4(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @aw_spi_read_rxfifo(%struct.aw_spi_softc*) #1

declare dso_local i32 @aw_spi_fill_txfifo(%struct.aw_spi_softc*) #1

declare dso_local i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc*, i32, i32) #1

declare dso_local i32 @wakeup(%struct.aw_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
