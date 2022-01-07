; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_kmod.c_bcm_vchiq_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/vchiq_arm/extr_vchiq_kmod.c_bcm_vchiq_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_vchiq_softc = type { i32, i32, i32*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@bcm_vchiq_sc = common dso_local global %struct.bcm_vchiq_softc* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@compat_data = common dso_local global i32 0, align 4
@UPSTREAM_DTB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"cache-line-size\00", align 1
@g_cache_line_size = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@bcm_vchiq_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Unable to setup the clock irq handler.\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vchiq\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm_vchiq_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_vchiq_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_vchiq_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.bcm_vchiq_softc* @device_get_softc(i32 %8)
  store %struct.bcm_vchiq_softc* %9, %struct.bcm_vchiq_softc** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** @bcm_vchiq_sc, align 8
  %11 = icmp ne %struct.bcm_vchiq_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %114

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = call i8* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %7, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %23 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %114

30:                                               ; preds = %14
  %31 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %32 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @rman_get_bustag(i32* %33)
  %35 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %36 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %38 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @rman_get_bushandle(i32* %39)
  %41 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %42 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %7, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @SYS_RES_IRQ, align 4
  %45 = load i32, i32* @RF_ACTIVE, align 4
  %46 = call i8* @bus_alloc_resource_any(i32 %43, i32 %44, i32* %7, i32 %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %49 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %30
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %2, align 4
  br label %114

58:                                               ; preds = %30
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @compat_data, align 4
  %61 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %59, i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UPSTREAM_DTB, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %68 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %67, i32 0, i32 0
  store i32 -64, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @ofw_bus_get_node(i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @OF_getencprop(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* %6, i32 4)
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* @g_cache_line_size, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = call i32 (...) @vchiq_core_initialize()
  %79 = load i32, i32* %3, align 4
  %80 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %81 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @INTR_TYPE_MISC, align 4
  %84 = load i32, i32* @INTR_MPSAFE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @bcm_vchiq_intr, align 4
  %87 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %88 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %89 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %88, i32 0, i32 3
  %90 = call i64 @bus_setup_intr(i32 %79, i32* %82, i32 %85, i32* null, i32 %86, %struct.bcm_vchiq_softc* %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %77
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @SYS_RES_IRQ, align 4
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %97 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @bus_release_resource(i32 %93, i32 %94, i32 %95, i32* %98)
  %100 = load i32, i32* %3, align 4
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* @ENXIO, align 4
  store i32 %102, i32* %2, align 4
  br label %114

103:                                              ; preds = %77
  %104 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  %105 = getelementptr inbounds %struct.bcm_vchiq_softc, %struct.bcm_vchiq_softc* %104, i32 0, i32 1
  %106 = load i32, i32* @MTX_DEF, align 4
  %107 = call i32 @mtx_init(i32* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 %106)
  %108 = load %struct.bcm_vchiq_softc*, %struct.bcm_vchiq_softc** %4, align 8
  store %struct.bcm_vchiq_softc* %108, %struct.bcm_vchiq_softc** @bcm_vchiq_sc, align 8
  %109 = call i32 (...) @vchiq_init()
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @bus_generic_probe(i32 %110)
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @bus_generic_attach(i32 %112)
  store i32 0, i32* %2, align 4
  br label %114

114:                                              ; preds = %103, %92, %54, %26, %12
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local %struct.bcm_vchiq_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @vchiq_core_initialize(...) #1

declare dso_local i64 @bus_setup_intr(i32, i32*, i32, i32*, i32, %struct.bcm_vchiq_softc*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32, i32) #1

declare dso_local i32 @vchiq_init(...) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
