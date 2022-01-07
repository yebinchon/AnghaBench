; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_clock_test_cdr2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_clock_test_cdr2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i32 }

@AW_SPI_CCR_CDR2_MASK = common dso_local global i32 0, align 4
@AW_SPI_CCR_CDR2_SHIFT = common dso_local global i32 0, align 4
@AW_SPI_CCR_DRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aw_spi_softc*, i64, i32*)* @aw_spi_clock_test_cdr2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aw_spi_clock_test_cdr2(%struct.aw_spi_softc* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.aw_spi_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aw_spi_softc* %0, %struct.aw_spi_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load i32, i32* @AW_SPI_CCR_CDR2_MASK, align 4
  %13 = load i32, i32* @AW_SPI_CCR_CDR2_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %39, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %24, 1
  %26 = sdiv i32 %22, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %28, %29
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %31, %32
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load i64, i64* %7, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %35, %19
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* @AW_SPI_CCR_DRS, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @AW_SPI_CCR_CDR2_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = or i32 %43, %46
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i64, i64* %8, align 8
  ret i64 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
