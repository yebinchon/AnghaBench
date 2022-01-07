; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_spi.c_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_spi.c_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32*, i32, i32 }

@spi_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SPI_MCR = common dso_local global i32 0, align 4
@MCR_MSTR = common dso_local global i32 0, align 4
@MCR_CONT_SCKE = common dso_local global i32 0, align 4
@MCR_MDIS = common dso_local global i32 0, align 4
@MCR_FRZ = common dso_local global i32 0, align 4
@MCR_PCSIS_M = common dso_local global i32 0, align 4
@MCR_PCSIS_S = common dso_local global i32 0, align 4
@MCR_CLR_TXF = common dso_local global i32 0, align 4
@MCR_CLR_RXF = common dso_local global i32 0, align 4
@SPI_RSER = common dso_local global i32 0, align 4
@RSER_EOQF_RE = common dso_local global i32 0, align 4
@MCR_HALT = common dso_local global i32 0, align 4
@SPI_CTAR0 = common dso_local global i32 0, align 4
@CTAR_FMSZ_M = common dso_local global i32 0, align 4
@CTAR_FMSZ_S = common dso_local global i32 0, align 4
@CTAR_FMSZ_8 = common dso_local global i32 0, align 4
@CTAR_CPOL = common dso_local global i32 0, align 4
@CTAR_CPHA = common dso_local global i32 0, align 4
@CTAR_LSBFE = common dso_local global i32 0, align 4
@CTAR_PBR_M = common dso_local global i32 0, align 4
@CTAR_PBR_S = common dso_local global i32 0, align 4
@CTAR_PBR_7 = common dso_local global i32 0, align 4
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
  %9 = load i32, i32* @spi_spec, align 4
  %10 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @bus_alloc_resources(i32 %8, i32 %9, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %141

19:                                               ; preds = %1
  %20 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @rman_get_bustag(i32 %24)
  %26 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %27 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @rman_get_bushandle(i32 %32)
  %34 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %37 = load i32, i32* @SPI_MCR, align 4
  %38 = call i32 @READ4(%struct.spi_softc* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @MCR_MSTR, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @MCR_CONT_SCKE, align 4
  %43 = load i32, i32* @MCR_MDIS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MCR_FRZ, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %5, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @MCR_PCSIS_M, align 4
  %51 = load i32, i32* @MCR_PCSIS_S, align 4
  %52 = shl i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* @MCR_PCSIS_M, align 4
  %57 = load i32, i32* @MCR_PCSIS_S, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @MCR_CLR_TXF, align 4
  %62 = load i32, i32* @MCR_CLR_RXF, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %67 = load i32, i32* @SPI_MCR, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @WRITE4(%struct.spi_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %71 = load i32, i32* @SPI_RSER, align 4
  %72 = call i32 @READ4(%struct.spi_softc* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* @RSER_EOQF_RE, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %77 = load i32, i32* @SPI_RSER, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @WRITE4(%struct.spi_softc* %76, i32 %77, i32 %78)
  %80 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %81 = load i32, i32* @SPI_MCR, align 4
  %82 = call i32 @READ4(%struct.spi_softc* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* @MCR_HALT, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %88 = load i32, i32* @SPI_MCR, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @WRITE4(%struct.spi_softc* %87, i32 %88, i32 %89)
  %91 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %92 = load i32, i32* @SPI_CTAR0, align 4
  %93 = call i32 @READ4(%struct.spi_softc* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @CTAR_FMSZ_M, align 4
  %95 = load i32, i32* @CTAR_FMSZ_S, align 4
  %96 = shl i32 %94, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @CTAR_FMSZ_8, align 4
  %101 = load i32, i32* @CTAR_FMSZ_S, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %5, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @CTAR_CPOL, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @CTAR_CPHA, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @CTAR_LSBFE, align 4
  %113 = load i32, i32* %5, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %116 = load i32, i32* @SPI_CTAR0, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @WRITE4(%struct.spi_softc* %115, i32 %116, i32 %117)
  %119 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %120 = load i32, i32* @SPI_CTAR0, align 4
  %121 = call i32 @READ4(%struct.spi_softc* %119, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* @CTAR_PBR_M, align 4
  %123 = load i32, i32* @CTAR_PBR_S, align 4
  %124 = shl i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @CTAR_PBR_7, align 4
  %129 = load i32, i32* @CTAR_PBR_S, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %5, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %5, align 4
  %133 = load %struct.spi_softc*, %struct.spi_softc** %4, align 8
  %134 = load i32, i32* @SPI_CTAR0, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @WRITE4(%struct.spi_softc* %133, i32 %134, i32 %135)
  %137 = load i32, i32* %3, align 4
  %138 = call i32 @device_add_child(i32 %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %139 = load i32, i32* %3, align 4
  %140 = call i32 @bus_generic_attach(i32 %139)
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %19, %15
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.spi_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @READ4(%struct.spi_softc*, i32) #1

declare dso_local i32 @WRITE4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
