; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_init_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_init_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm = type { i64, i32 }
%struct.dc_softc = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@dc_crtc_funcs = common dso_local global i32 0, align 4
@dc_crtc_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Cannot init planes\0A\00", align 1
@DC_CMD_INT_TYPE = common dso_local global i32 0, align 4
@WIN_A_UF_INT = common dso_local global i32 0, align 4
@WIN_B_UF_INT = common dso_local global i32 0, align 4
@WIN_C_UF_INT = common dso_local global i32 0, align 4
@WIN_A_OF_INT = common dso_local global i32 0, align 4
@WIN_B_OF_INT = common dso_local global i32 0, align 4
@WIN_C_OF_INT = common dso_local global i32 0, align 4
@DC_CMD_INT_POLARITY = common dso_local global i32 0, align 4
@DC_CMD_INT_ENABLE = common dso_local global i32 0, align 4
@DC_CMD_INT_MASK = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@dc_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot register interrupt handler\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.tegra_drm*)* @dc_init_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_init_client(i32 %0, i32 %1, %struct.tegra_drm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_drm*, align 8
  %8 = alloca %struct.dc_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.tegra_drm* %2, %struct.tegra_drm** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.dc_softc* @device_get_softc(i32 %10)
  store %struct.dc_softc* %11, %struct.dc_softc** %8, align 8
  %12 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %13 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %16 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %14, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %21 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %24 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %27 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %26, i32 0, i32 1
  %28 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %29 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = call i32 @drm_crtc_init(i32* %27, i32* %30, i32* @dc_crtc_funcs)
  %32 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %33 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = call i32 @drm_mode_crtc_set_gamma_size(i32* %34, i32 256)
  %36 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %37 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = call i32 @drm_crtc_helper_add(i32* %38, i32* @dc_crtc_helper_funcs)
  %40 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %41 = load %struct.tegra_drm*, %struct.tegra_drm** %7, align 8
  %42 = call i32 @dc_init_planes(%struct.dc_softc* %40, %struct.tegra_drm* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %25
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %120

49:                                               ; preds = %25
  %50 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %51 = load i32, i32* @DC_CMD_INT_TYPE, align 4
  %52 = load i32, i32* @WIN_A_UF_INT, align 4
  %53 = load i32, i32* @WIN_B_UF_INT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @WIN_C_UF_INT, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @WIN_A_OF_INT, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @WIN_B_OF_INT, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @WIN_C_OF_INT, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @WR4(%struct.dc_softc* %50, i32 %51, i32 %62)
  %64 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %65 = load i32, i32* @DC_CMD_INT_POLARITY, align 4
  %66 = load i32, i32* @WIN_A_UF_INT, align 4
  %67 = load i32, i32* @WIN_B_UF_INT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @WIN_C_UF_INT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @WIN_A_OF_INT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @WIN_B_OF_INT, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @WIN_C_OF_INT, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @WR4(%struct.dc_softc* %64, i32 %65, i32 %76)
  %78 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %79 = load i32, i32* @DC_CMD_INT_ENABLE, align 4
  %80 = call i32 @WR4(%struct.dc_softc* %78, i32 %79, i32 0)
  %81 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %82 = load i32, i32* @DC_CMD_INT_MASK, align 4
  %83 = call i32 @WR4(%struct.dc_softc* %81, i32 %82, i32 0)
  %84 = load i32, i32* %5, align 4
  %85 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %86 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @INTR_TYPE_MISC, align 4
  %89 = load i32, i32* @INTR_MPSAFE, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @dc_intr, align 4
  %92 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %93 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %94 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %93, i32 0, i32 2
  %95 = call i32 @bus_setup_intr(i32 %84, i32 %87, i32 %90, i32* null, i32 %91, %struct.dc_softc* %92, i32* %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %49
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %4, align 4
  br label %120

102:                                              ; preds = %49
  %103 = load i32, i32* @M_WAITOK, align 4
  %104 = load i32, i32* @M_ZERO, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @PAGE_SIZE, align 4
  %107 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %108 = call i32 @kmem_alloc_contig(i32 262144, i32 %105, i32 0, i64 -1, i32 %106, i32 0, i32 %107)
  %109 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %110 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 8
  %112 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %113 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @vtophys(i32 %115)
  %117 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %118 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %102, %98, %45
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.dc_softc* @device_get_softc(i32) #1

declare dso_local i32 @drm_crtc_init(i32*, i32*, i32*) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32*) #1

declare dso_local i32 @dc_init_planes(%struct.dc_softc*, %struct.tegra_drm*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @WR4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.dc_softc*, i32*) #1

declare dso_local i32 @kmem_alloc_contig(i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @vtophys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
