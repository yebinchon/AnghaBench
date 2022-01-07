; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_fill_txfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_fill_txfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_spi_softc = type { i64, i64, i64, i32, i32* }

@RK_SPI_TXFLR = common dso_local global i32 0, align 4
@RK_SPI_TXDR = common dso_local global i32 0, align 4
@IMR_TFEIM = common dso_local global i32 0, align 4
@IMR_RFFIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_spi_softc*)* @rk_spi_fill_txfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_spi_fill_txfifo(%struct.rk_spi_softc* %0) #0 {
  %2 = alloca %struct.rk_spi_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.rk_spi_softc* %0, %struct.rk_spi_softc** %2, align 8
  %5 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %6 = load i32, i32* @RK_SPI_TXFLR, align 4
  %7 = call i64 @RK_SPI_READ_4(%struct.rk_spi_softc* %5, i32 %6)
  store i64 %7, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %24, %1
  %9 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i1 [ false, %8 ], [ %21, %16 ]
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %26 = load i32, i32* @RK_SPI_TXDR, align 4
  %27 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %28 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %31 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds i32, i32* %29, i64 %32
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %25, i32 %26, i32 %35)
  %37 = load i64, i64* %3, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %8

41:                                               ; preds = %22
  %42 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %43 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %46 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %41
  %50 = load i32, i32* @IMR_TFEIM, align 4
  %51 = load i32, i32* @IMR_RFFIM, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %2, align 8
  %54 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %49, %41
  ret void
}

declare dso_local i64 @RK_SPI_READ_4(%struct.rk_spi_softc*, i32) #1

declare dso_local i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
