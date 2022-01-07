; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_fb_helper_getinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_host1x.c_host1x_fb_helper_getinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.host1x_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_info* (i32)* @host1x_fb_helper_getinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_info* @host1x_fb_helper_getinfo(i32 %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.host1x_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.host1x_softc* @device_get_softc(i32 %5)
  store %struct.host1x_softc* %6, %struct.host1x_softc** %4, align 8
  %7 = load %struct.host1x_softc*, %struct.host1x_softc** %4, align 8
  %8 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.fb_info* null, %struct.fb_info** %2, align 8
  br label %18

12:                                               ; preds = %1
  %13 = load %struct.host1x_softc*, %struct.host1x_softc** %4, align 8
  %14 = getelementptr inbounds %struct.host1x_softc, %struct.host1x_softc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call %struct.fb_info* @tegra_drm_fb_getinfo(i32* %16)
  store %struct.fb_info* %17, %struct.fb_info** %2, align 8
  br label %18

18:                                               ; preds = %12, %11
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  ret %struct.fb_info* %19
}

declare dso_local %struct.host1x_softc* @device_get_softc(i32) #1

declare dso_local %struct.fb_info* @tegra_drm_fb_getinfo(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
