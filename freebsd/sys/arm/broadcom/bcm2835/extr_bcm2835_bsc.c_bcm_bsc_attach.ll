; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bsc_softc = type { i32*, i32, i8*, i8*, i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bcm_bsc_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot setup the interrupt handler\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"bcm_bsc\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@bus_generic_attach = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_bsc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_bsc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_bsc_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bcm_bsc_softc* @device_get_softc(i32 %6)
  store %struct.bcm_bsc_softc* %7, %struct.bcm_bsc_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load i32, i32* @RF_ACTIVE, align 4
  %14 = call i8* @bus_alloc_resource_any(i32 %11, i32 %12, i32* %5, i32 %13)
  %15 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %120

25:                                               ; preds = %1
  %26 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %27 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @rman_get_bustag(i8* %28)
  %30 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %33 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @rman_get_bushandle(i8* %34)
  %36 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %5, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @SYS_RES_IRQ, align 4
  %40 = load i32, i32* @RF_ACTIVE, align 4
  %41 = load i32, i32* @RF_SHAREABLE, align 4
  %42 = or i32 %40, %41
  %43 = call i8* @bus_alloc_resource_any(i32 %38, i32 %39, i32* %5, i32 %42)
  %44 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %60, label %50

50:                                               ; preds = %25
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 0, i8* %55)
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_printf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %2, align 4
  br label %120

60:                                               ; preds = %25
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %63 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @INTR_TYPE_MISC, align 4
  %66 = load i32, i32* @INTR_MPSAFE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @bcm_bsc_intr, align 4
  %69 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %70 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %71 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %70, i32 0, i32 4
  %72 = call i64 @bus_setup_intr(i32 %61, i8* %64, i32 %67, i32* null, i32 %68, %struct.bcm_bsc_softc* %69, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %60
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @SYS_RES_IRQ, align 4
  %77 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %78 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @bus_release_resource(i32 %75, i32 %76, i32 0, i8* %79)
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @SYS_RES_MEMORY, align 4
  %83 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %84 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @bus_release_resource(i32 %81, i32 %82, i32 0, i8* %85)
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %2, align 4
  br label %120

90:                                               ; preds = %60
  %91 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %92 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %91, i32 0, i32 1
  %93 = load i32, i32* @MTX_DEF, align 4
  %94 = call i32 @mtx_init(i32* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %93)
  %95 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %96 = call i32 @bcm_bsc_sysctl_init(%struct.bcm_bsc_softc* %95)
  %97 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %98 = call i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc* %97)
  %99 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %100 = call i32 @bcm_bsc_reset(%struct.bcm_bsc_softc* %99)
  %101 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %102 = call i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc* %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32* @device_add_child(i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 -1)
  %105 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %106 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %105, i32 0, i32 0
  store i32* %104, i32** %106, align 8
  %107 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %108 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %90
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @bcm_bsc_detach(i32 %112)
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %2, align 4
  br label %120

115:                                              ; preds = %90
  %116 = load i64, i64* @bus_generic_attach, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @config_intrhook_oneshot(i32 %117, i32 %118)
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %111, %74, %50, %21
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.bcm_bsc_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.bcm_bsc_softc*, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bcm_bsc_sysctl_init(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @bcm_bsc_reset(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bcm_bsc_detach(i32) #1

declare dso_local i32 @config_intrhook_oneshot(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
