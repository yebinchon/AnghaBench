; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_init_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_hdmi.c_hdmi_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm = type { i32 }
%struct.hdmi_softc = type { %struct.TYPE_9__, i32, %struct.tegra_drm* }
%struct.TYPE_9__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@hdmi_setup_clock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cannot attach output connector\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@hdmi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to init HDMI output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.tegra_drm*)* @hdmi_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_init_client(i32 %0, i32 %1, %struct.tegra_drm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_drm*, align 8
  %8 = alloca %struct.hdmi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.tegra_drm* %2, %struct.tegra_drm** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.hdmi_softc* @device_get_softc(i32 %11)
  store %struct.hdmi_softc* %12, %struct.hdmi_softc** %8, align 8
  %13 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %14 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ofw_bus_get_node(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %18 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %19 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %18, i32 0, i32 2
  store %struct.tegra_drm* %17, %struct.tegra_drm** %19, align 8
  %20 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %21 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32* @hdmi_setup_clock, i32** %22, align 8
  %23 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %24 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @tegra_drm_encoder_attach(%struct.TYPE_9__* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %4, align 4
  br label %85

33:                                               ; preds = %3
  %34 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %35 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %34, i32 0, i32 0
  %36 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %37 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %40 = call i32 @drm_connector_init(i32* %35, %struct.TYPE_10__* %38, i32* @hdmi_connector_funcs, i32 %39)
  %41 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %42 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = call i32 @drm_connector_helper_add(%struct.TYPE_10__* %43, i32* @hdmi_connector_helper_funcs)
  %45 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %46 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %47 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %50, i32 0, i32 0
  %52 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %53 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %56 = call i32 @drm_encoder_init(i32* %51, %struct.TYPE_11__* %54, i32* @hdmi_encoder_funcs, i32 %55)
  %57 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %58 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = call i32 @drm_encoder_helper_add(%struct.TYPE_11__* %59, i32* @hdmi_encoder_helper_funcs)
  %61 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %62 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %65 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = call i32 @drm_mode_connector_attach_encoder(%struct.TYPE_10__* %63, %struct.TYPE_11__* %66)
  %68 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %69 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %68, i32 0, i32 0
  %70 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %71 = call i32 @tegra_drm_encoder_init(%struct.TYPE_9__* %69, %struct.tegra_drm* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %33
  %75 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %76 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %33
  %81 = load %struct.hdmi_softc*, %struct.hdmi_softc** %8, align 8
  %82 = getelementptr inbounds %struct.hdmi_softc, %struct.hdmi_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  store i32 3, i32* %84, align 8
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %74, %29
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.hdmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @tegra_drm_encoder_attach(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @drm_connector_init(i32*, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @drm_encoder_init(i32*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @drm_mode_connector_attach_encoder(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @tegra_drm_encoder_init(%struct.TYPE_9__*, %struct.tegra_drm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
