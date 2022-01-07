; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_spi.c_rk_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_spi_softc = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@rk_spi_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@rk_spi_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"cannot get apb_pclk clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"spiclk\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"cannot get spiclk clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"cannot enable ahb clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"cannot enable spiclk clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"failed to get fifo size\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@RK_SPI_IMR = common dso_local global i32 0, align 4
@RK_SPI_TXFTLR = common dso_local global i32 0, align 4
@RK_SPI_RXFTLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rk_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rk_spi_softc* @device_get_softc(i32 %6)
  store %struct.rk_spi_softc* %7, %struct.rk_spi_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 8
  %11 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %12 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %11, i32 0, i32 7
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @device_get_nameunit(i32 %13)
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %12, i32 %14, i32* null, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @rk_spi_spec, align 4
  %19 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @bus_alloc_resources(i32 %17, i32 %18, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %5, align 4
  br label %138

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INTR_TYPE_MISC, align 4
  %36 = load i32, i32* @INTR_MPSAFE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @rk_spi_intr, align 4
  %39 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %40 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %40, i32 0, i32 6
  %42 = call i64 @bus_setup_intr(i32 %29, i32 %34, i32 %37, i32* null, i32 %38, %struct.rk_spi_softc* %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %28
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @rk_spi_spec, align 4
  %47 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %48 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @bus_release_resources(i32 %45, i32 %46, i32* %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %142

54:                                               ; preds = %28
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %57 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %56, i32 0, i32 4
  %58 = call i32 @clk_get_by_ofw_name(i32 %55, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %138

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %67 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %66, i32 0, i32 3
  %68 = call i32 @clk_get_by_ofw_name(i32 %65, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %138

74:                                               ; preds = %64
  %75 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %76 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @clk_enable(i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %138

84:                                               ; preds = %74
  %85 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @clk_enable(i32 %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %138

94:                                               ; preds = %84
  %95 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %96 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %99 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %98, i32 0, i32 2
  %100 = call i32 @clk_get_freq(i32 %97, i32* %99)
  %101 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %102 = call i32 @rk_spi_fifo_size(%struct.rk_spi_softc* %101)
  %103 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %104 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %106 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %94
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  br label %138

112:                                              ; preds = %94
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @device_add_child(i32 %113, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %115 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %116 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %118 = load i32, i32* @RK_SPI_IMR, align 4
  %119 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %117, i32 %118, i32 0)
  %120 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %121 = load i32, i32* @RK_SPI_TXFTLR, align 4
  %122 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %123 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sdiv i32 %124, 2
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %120, i32 %121, i32 %126)
  %128 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %129 = load i32, i32* @RK_SPI_RXFTLR, align 4
  %130 = load %struct.rk_spi_softc*, %struct.rk_spi_softc** %4, align 8
  %131 = getelementptr inbounds %struct.rk_spi_softc, %struct.rk_spi_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sdiv i32 %132, 2
  %134 = sub nsw i32 %133, 1
  %135 = call i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc* %128, i32 %129, i32 %134)
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @bus_generic_attach(i32 %136)
  store i32 %137, i32* %2, align 4
  br label %142

138:                                              ; preds = %109, %91, %81, %71, %61, %24
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @rk_spi_detach(i32 %139)
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %138, %112, %44
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local %struct.rk_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.rk_spi_softc*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @rk_spi_fifo_size(%struct.rk_spi_softc*) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @RK_SPI_WRITE_4(%struct.rk_spi_softc*, i32, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @rk_spi_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
