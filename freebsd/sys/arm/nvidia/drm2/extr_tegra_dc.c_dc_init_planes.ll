; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_init_planes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_init_planes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_drm = type { i32 }
%struct.tegra_plane = type { i32, i32 }

@DC_MAX_PLANES = common dso_local global i32 0, align 4
@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@dc_plane_funcs = common dso_local global i32 0, align 4
@dc_plane_formats = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*, %struct.tegra_drm*)* @dc_init_planes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_init_planes(%struct.dc_softc* %0, %struct.tegra_drm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_softc*, align 8
  %5 = alloca %struct.tegra_drm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_plane*, align 8
  store %struct.dc_softc* %0, %struct.dc_softc** %4, align 8
  store %struct.tegra_drm* %1, %struct.tegra_drm** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DC_MAX_PLANES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load i32, i32* @DRM_MEM_KMS, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call %struct.tegra_plane* @malloc(i32 8, i32 %14, i32 %17)
  store %struct.tegra_plane* %18, %struct.tegra_plane** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, 1
  %21 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %22 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tegra_drm*, %struct.tegra_drm** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_drm, %struct.tegra_drm* %23, i32 0, i32 0
  %25 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %26 = getelementptr inbounds %struct.tegra_plane, %struct.tegra_plane* %25, i32 0, i32 1
  %27 = load %struct.dc_softc*, %struct.dc_softc** %4, align 8
  %28 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 1, %30
  %32 = load i32, i32* @dc_plane_formats, align 4
  %33 = load i32, i32* @dc_plane_formats, align 4
  %34 = call i32 @nitems(i32 %33)
  %35 = call i32 @drm_plane_init(i32* %24, i32* %26, i32 %31, i32* @dc_plane_funcs, i32 %32, i32 %34, i32 0)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %13
  %39 = load %struct.tegra_plane*, %struct.tegra_plane** %8, align 8
  %40 = load i32, i32* @DRM_MEM_KMS, align 4
  %41 = call i32 @free(%struct.tegra_plane* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %48

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  br label %9

47:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.tegra_plane* @malloc(i32, i32, i32) #1

declare dso_local i32 @drm_plane_init(i32*, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @nitems(i32) #1

declare dso_local i32 @free(%struct.tegra_plane*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
