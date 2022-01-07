; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_drm_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_drm_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32* }
%struct.host1x_softc = type { i32 }

@mode_config_funcs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i64)* @host1x_drm_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @host1x_drm_load(%struct.drm_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.host1x_softc*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.host1x_softc* @device_get_softc(i32 %10)
  store %struct.host1x_softc* %11, %struct.host1x_softc** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call i32 @drm_mode_config_init(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 32, i32* %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 32, i32* %19, align 4
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 4096, i32* %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 4096, i32* %25, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 5
  store i32* @mode_config_funcs, i32** %28, align 8
  %29 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %30 = call i32 @host1x_drm_init(%struct.host1x_softc* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %69

34:                                               ; preds = %2
  %35 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 1
  store i32 -1, i32* %38, align 4
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %43 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @drm_vblank_init(%struct.drm_device* %41, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %66

50:                                               ; preds = %34
  %51 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %52 = call i32 @drm_mode_config_reset(%struct.drm_device* %51)
  %53 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %54 = call i32 @tegra_drm_fb_init(%struct.drm_device* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %61

58:                                               ; preds = %50
  %59 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %60 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %59)
  store i32 0, i32* %3, align 4
  br label %73

61:                                               ; preds = %57
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = call i32 @tegra_drm_fb_destroy(%struct.drm_device* %62)
  %64 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %65 = call i32 @drm_vblank_cleanup(%struct.drm_device* %64)
  br label %66

66:                                               ; preds = %61, %49
  %67 = load %struct.host1x_softc*, %struct.host1x_softc** %6, align 8
  %68 = call i32 @host1x_drm_exit(%struct.host1x_softc* %67)
  br label %69

69:                                               ; preds = %66, %33
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %70)
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %58
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.host1x_softc* @device_get_softc(i32) #1

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @host1x_drm_init(%struct.host1x_softc*) #1

declare dso_local i32 @drm_vblank_init(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @tegra_drm_fb_init(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

declare dso_local i32 @tegra_drm_fb_destroy(%struct.drm_device*) #1

declare dso_local i32 @drm_vblank_cleanup(%struct.drm_device*) #1

declare dso_local i32 @host1x_drm_exit(%struct.host1x_softc*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
