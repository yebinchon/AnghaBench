; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_empty_rxfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_empty_rxfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_spi_softc = type { i64, i64, i64* }

@RK_SPI_RXFLR = common dso_local global i32 0, align 4
@RK_SPI_RXDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_spi_softc*)* @rk_spi_empty_rxfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_spi_empty_rxfifo(%struct.rk_spi_softc* %0) #0 {
  %2 = alloca %struct.rk_spi_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.rk_spi_softc* %0, %struct.rk_spi_softc** %2, align 8
  %4 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %5 = load i32, i32* @RK_SPI_RXFLR, align 4
  %6 = call i64 @RK_SPI_READ_4(%struct.rk_spi_softc* %4, i32 %5)
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %7
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %3, align 8
  %18 = icmp sgt i64 %16, 0
  br label %19

19:                                               ; preds = %15, %7
  %20 = phi i1 [ false, %7 ], [ %18, %15 ]
  br i1 %20, label %21, label %33

21:                                               ; preds = %19
  %22 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %23 = load i32, i32* @RK_SPI_RXDR, align 4
  %24 = call i64 @RK_SPI_READ_4(%struct.rk_spi_softc* %22, i32 %23)
  %25 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds i64, i64* %27, i64 %30
  store i64 %24, i64* %32, align 8
  br label %7

33:                                               ; preds = %19
  ret void
}

declare dso_local i64 @RK_SPI_READ_4(%struct.rk_spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
