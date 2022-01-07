; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_set_cs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_set_cs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_spi_softc = type { i32 }

@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SPIBUS_CS_HIGH is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CS_MAX = common dso_local global i32 0, align 4
@RK_SPI_SER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_spi_softc*, i32, i32)* @rk_spi_set_cs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_spi_set_cs(%struct.rk_spi_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rk_spi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rk_spi_softc* %0, %struct.rk_spi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %5, align 8
  %15 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %47

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @CS_MAX, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %4, align 4
  br label %47

25:                                               ; preds = %19
  %26 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %5, align 8
  %27 = load i32, i32* @RK_SPI_SER, align 4
  %28 = call i32 @RK_SPI_READ_4(%struct.rk_spi_softc* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %42

36:                                               ; preds = %25
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %5, align 8
  %44 = load i32, i32* @RK_SPI_SER, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %43, i32 %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %42, %23, %13
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RK_SPI_READ_4(%struct.rk_spi_softc*, i32) #1

declare dso_local i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
