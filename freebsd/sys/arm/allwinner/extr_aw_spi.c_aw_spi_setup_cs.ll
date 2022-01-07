; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_setup_cs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_setup_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aw_spi_softc = type { i32 }

@AW_SPI_TCR = common dso_local global i32 0, align 4
@AW_SPI_TCR_SSSEL_MASK = common dso_local global i32 0, align 4
@AW_SPI_TCR_SSSEL_SHIFT = common dso_local global i32 0, align 4
@AW_SPI_TCR_SS_OWNER = common dso_local global i32 0, align 4
@AW_SPI_TCR_SS_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aw_spi_softc*, i32, i32)* @aw_spi_setup_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aw_spi_setup_cs(%struct.aw_spi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aw_spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aw_spi_softc* %0, %struct.aw_spi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %9 = load i32, i32* @AW_SPI_TCR, align 4
  %10 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @AW_SPI_TCR_SSSEL_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AW_SPI_TCR_SSSEL_SHIFT, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @AW_SPI_TCR_SS_OWNER, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @AW_SPI_TCR_SS_LEVEL, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @AW_SPI_TCR_SS_LEVEL, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %4, align 8
  %36 = load i32, i32* @AW_SPI_TCR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @AW_SPI_READ_4(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
