; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_spi.c_mv_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_spi.c_mv_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_spi_softc = type { i32, i8*, i8*, i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@MV_SPI_CONTROL = common dso_local global i32 0, align 4
@MV_SPI_CTRL_CS_ACTIVE = common dso_local global i32 0, align 4
@MV_SPI_CONF = common dso_local global i32 0, align 4
@MV_SPI_CONF_BYTELEN = common dso_local global i32 0, align 4
@MV_SPI_INTR_MASK = common dso_local global i32 0, align 4
@MV_SPI_INTR_STAT = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@mv_spi_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot setup the interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mv_spi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@bus_generic_attach = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_spi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mv_spi_softc* @device_get_softc(i32 %7)
  store %struct.mv_spi_softc* %8, %struct.mv_spi_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %10, i32 0, i32 6
  store i32 %9, i32* %11, align 4
  store i32 0, i32* %5, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SYS_RES_MEMORY, align 4
  %14 = load i32, i32* @RF_ACTIVE, align 4
  %15 = call i8* @bus_alloc_resource_any(i32 %12, i32 %13, i32* %5, i32 %14)
  %16 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %126

26:                                               ; preds = %1
  %27 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @rman_get_bustag(i8* %29)
  %31 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @rman_get_bushandle(i8* %35)
  %37 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SYS_RES_IRQ, align 4
  %41 = load i32, i32* @RF_ACTIVE, align 4
  %42 = call i8* @bus_alloc_resource_any(i32 %39, i32 %40, i32* %5, i32 %41)
  %43 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %44 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %26
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @SYS_RES_MEMORY, align 4
  %52 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 0, i8* %54)
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %126

59:                                               ; preds = %26
  %60 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %61 = load i32, i32* @MV_SPI_CONTROL, align 4
  %62 = call i32 @MV_SPI_READ(%struct.mv_spi_softc* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %64 = load i32, i32* @MV_SPI_CONTROL, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @MV_SPI_CTRL_CS_ACTIVE, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %63, i32 %64, i32 %68)
  %70 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %71 = load i32, i32* @MV_SPI_CONF, align 4
  %72 = call i32 @MV_SPI_READ(%struct.mv_spi_softc* %70, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %74 = load i32, i32* @MV_SPI_CONF, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @MV_SPI_CONF_BYTELEN, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %73, i32 %74, i32 %78)
  %80 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %81 = load i32, i32* @MV_SPI_INTR_MASK, align 4
  %82 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %80, i32 %81, i32 0)
  %83 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %84 = load i32, i32* @MV_SPI_INTR_STAT, align 4
  %85 = call i32 @MV_SPI_WRITE(%struct.mv_spi_softc* %83, i32 %84, i32 0)
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %88 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %87, i32 0, i32 2
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @INTR_TYPE_MISC, align 4
  %91 = load i32, i32* @INTR_MPSAFE, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @mv_spi_intr, align 4
  %94 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %95 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %96 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %95, i32 0, i32 3
  %97 = call i64 @bus_setup_intr(i32 %86, i8* %89, i32 %92, i32* null, i32 %93, %struct.mv_spi_softc* %94, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %59
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @SYS_RES_IRQ, align 4
  %102 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %103 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @bus_release_resource(i32 %100, i32 %101, i32 0, i8* %104)
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* @SYS_RES_MEMORY, align 4
  %108 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %109 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @bus_release_resource(i32 %106, i32 %107, i32 0, i8* %110)
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %126

115:                                              ; preds = %59
  %116 = load %struct.mv_spi_softc*, %struct.mv_spi_softc** %4, align 8
  %117 = getelementptr inbounds %struct.mv_spi_softc, %struct.mv_spi_softc* %116, i32 0, i32 0
  %118 = load i32, i32* @MTX_DEF, align 4
  %119 = call i32 @mtx_init(i32* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @device_add_child(i32 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %122 = load i64, i64* @bus_generic_attach, align 8
  %123 = trunc i64 %122 to i32
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @config_intrhook_oneshot(i32 %123, i32 %124)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %115, %99, %49, %22
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local %struct.mv_spi_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i32 @MV_SPI_READ(%struct.mv_spi_softc*, i32) #1

declare dso_local i32 @MV_SPI_WRITE(%struct.mv_spi_softc*, i32, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.mv_spi_softc*, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
