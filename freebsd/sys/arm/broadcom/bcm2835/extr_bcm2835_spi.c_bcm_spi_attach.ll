; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_spi_softc = type { i32, i8*, i8*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"only one SPI controller supported\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bcm_spi_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"cannot setup the interrupt handler\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bcm_spi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SPI_CS = common dso_local global i32 0, align 4
@SPI_CS_CLEAR_RXFIFO = common dso_local global i32 0, align 4
@SPI_CS_CLEAR_TXFIFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_spi_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @device_get_unit(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_printf(i32 %10, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %113

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.bcm_spi_softc* @device_get_softc(i32 %14)
  store %struct.bcm_spi_softc* %15, %struct.bcm_spi_softc** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %17, i32 0, i32 6
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i8* @bus_alloc_resource_any(i32 %19, i32 %20, i32* %5, i32 %21)
  %23 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %2, align 4
  br label %113

33:                                               ; preds = %13
  %34 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %35 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @rman_get_bustag(i8* %36)
  %38 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %39 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %41 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @rman_get_bushandle(i8* %42)
  %44 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  store i32 0, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @SYS_RES_IRQ, align 4
  %48 = load i32, i32* @RF_ACTIVE, align 4
  %49 = call i8* @bus_alloc_resource_any(i32 %46, i32 %47, i32* %5, i32 %48)
  %50 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %53 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %66, label %56

56:                                               ; preds = %33
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @SYS_RES_MEMORY, align 4
  %59 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %60 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @bus_release_resource(i32 %57, i32 %58, i32 0, i8* %61)
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %113

66:                                               ; preds = %33
  %67 = load i32, i32* %3, align 4
  %68 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %69 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = load i32, i32* @INTR_TYPE_MISC, align 4
  %72 = load i32, i32* @INTR_MPSAFE, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @bcm_spi_intr, align 4
  %75 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %76 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %76, i32 0, i32 3
  %78 = call i64 @bus_setup_intr(i32 %67, i8* %70, i32 %73, i32* null, i32 %74, %struct.bcm_spi_softc* %75, i32* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %66
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SYS_RES_IRQ, align 4
  %83 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %84 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @bus_release_resource(i32 %81, i32 %82, i32 0, i8* %85)
  %87 = load i32, i32* %3, align 4
  %88 = load i32, i32* @SYS_RES_MEMORY, align 4
  %89 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %90 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @bus_release_resource(i32 %87, i32 %88, i32 0, i8* %91)
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %2, align 4
  br label %113

96:                                               ; preds = %66
  %97 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %98 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %97, i32 0, i32 0
  %99 = load i32, i32* @MTX_DEF, align 4
  %100 = call i32 @mtx_init(i32* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32* null, i32 %99)
  %101 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %102 = call i32 @bcm_spi_sysctl_init(%struct.bcm_spi_softc* %101)
  %103 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %4, align 8
  %104 = load i32, i32* @SPI_CS, align 4
  %105 = load i32, i32* @SPI_CS_CLEAR_RXFIFO, align 4
  %106 = load i32, i32* @SPI_CS_CLEAR_TXFIFO, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @BCM_SPI_WRITE(%struct.bcm_spi_softc* %103, i32 %104, i32 %107)
  %109 = load i32, i32* %3, align 4
  %110 = call i32 @device_add_child(i32 %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @bus_generic_attach(i32 %111)
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %96, %80, %56, %29, %9
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.bcm_spi_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.bcm_spi_softc*, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bcm_spi_sysctl_init(%struct.bcm_spi_softc*) #1

declare dso_local i32 @BCM_SPI_WRITE(%struct.bcm_spi_softc*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
