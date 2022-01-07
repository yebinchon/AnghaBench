; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_spi.c_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_spi.c_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32*, i32, i32, i32 }

@spi_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@spi_sc = common dso_local global %struct.spi_softc* null, align 8
@FB_CLK_SEL = common dso_local global i32 0, align 4
@FB_CLK_180 = common dso_local global i32 0, align 4
@CH_CFG = common dso_local global i32 0, align 4
@RX_CH_ON = common dso_local global i32 0, align 4
@TX_CH_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.spi_softc* @device_get_softc(i32 %6)
  store %struct.spi_softc* %7, %struct.spi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @spi_spec, align 4
  %13 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %14 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rman_get_bustag(i32 %27)
  %29 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %30 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rman_get_bushandle(i32 %35)
  %37 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  store %struct.spi_softc* %39, %struct.spi_softc** @spi_sc, align 8
  %40 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %41 = load i32, i32* @FB_CLK_SEL, align 4
  %42 = load i32, i32* @FB_CLK_180, align 4
  %43 = call i32 @WRITE4(%struct.spi_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %45 = load i32, i32* @CH_CFG, align 4
  %46 = call i32 @READ4(%struct.spi_softc* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* @RX_CH_ON, align 4
  %48 = load i32, i32* @TX_CH_ON, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %53 = load i32, i32* @CH_CFG, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @WRITE4(%struct.spi_softc* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_add_child(i32 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @bus_generic_attach(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %22, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.spi_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @WRITE4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.spi_softc*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
