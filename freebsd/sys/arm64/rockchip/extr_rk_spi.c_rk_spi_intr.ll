; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_spi_softc = type { i64, i64, i32 }

@RK_SPI_IMR = common dso_local global i32 0, align 4
@RK_SPI_ISR = common dso_local global i32 0, align 4
@RK_SPI_ICR = common dso_local global i32 0, align 4
@ISR_RFFIS = common dso_local global i32 0, align 4
@ISR_TFEIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rk_spi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_spi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rk_spi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rk_spi_softc*
  store %struct.rk_spi_softc* %7, %struct.rk_spi_softc** %3, align 8
  %8 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %9 = call i32 @RK_SPI_LOCK(%struct.rk_spi_softc* %8)
  %10 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %11 = load i32, i32* @RK_SPI_IMR, align 4
  %12 = call i32 @RK_SPI_READ_4(%struct.rk_spi_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %14 = load i32, i32* @RK_SPI_ISR, align 4
  %15 = call i32 @RK_SPI_READ_4(%struct.rk_spi_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %17 = load i32, i32* @RK_SPI_ICR, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ISR_RFFIS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %26 = call i32 @rk_spi_empty_rxfifo(%struct.rk_spi_softc* %25)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @ISR_TFEIS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %34 = call i32 @rk_spi_fill_txfifo(%struct.rk_spi_softc* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %44, i32 0, i32 2
  store i32 0, i32* %45, align 8
  %46 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %47 = call i32 @wakeup(%struct.rk_spi_softc* %46)
  br label %48

48:                                               ; preds = %43, %35
  %49 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %56 = load i32, i32* @RK_SPI_IMR, align 4
  %57 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %58 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %55, i32 %56, i32 %59)
  %61 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %62 = load i32, i32* @RK_SPI_IMR, align 4
  %63 = call i32 @RK_SPI_READ_4(%struct.rk_spi_softc* %61, i32 %62)
  br label %64

64:                                               ; preds = %54, %48
  %65 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %3, align 8
  %66 = call i32 @RK_SPI_UNLOCK(%struct.rk_spi_softc* %65)
  ret void
}

declare dso_local i32 @RK_SPI_LOCK(%struct.rk_spi_softc*) #1

declare dso_local i32 @RK_SPI_READ_4(%struct.rk_spi_softc*, i32) #1

declare dso_local i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc*, i32, i32) #1

declare dso_local i32 @rk_spi_empty_rxfifo(%struct.rk_spi_softc*) #1

declare dso_local i32 @rk_spi_fill_txfifo(%struct.rk_spi_softc*) #1

declare dso_local i32 @wakeup(%struct.rk_spi_softc*) #1

declare dso_local i32 @RK_SPI_UNLOCK(%struct.rk_spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
