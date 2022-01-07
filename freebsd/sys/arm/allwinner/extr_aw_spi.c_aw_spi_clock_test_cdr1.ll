; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_clock_test_cdr1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_clock_test_cdr1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i32 }

@AW_SPI_CCR_CDR1_MASK = common dso_local global i32 0, align 4
@AW_SPI_CCR_CDR1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aw_spi_softc*, i64, i32*)* @aw_spi_clock_test_cdr1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aw_spi_clock_test_cdr1(%struct.aw_spi_softc* %0, i64 %1, i32* %2) #0 {
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
  %12 = load i32, i32* @AW_SPI_CCR_CDR1_MASK, align 4
  %13 = load i32, i32* @AW_SPI_CCR_CDR1_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %38, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 1, %23
  %25 = sdiv i32 %22, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %30, %31
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %34, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @AW_SPI_CCR_CDR1_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i64, i64* %8, align 8
  ret i64 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
