; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_set_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_dc.c_dc_set_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }
%struct.tegra_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dc_window = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unsupported pixel format %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*, i32, i32, %struct.tegra_fb*)* @dc_set_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_set_base(%struct.dc_softc* %0, i32 %1, i32 %2, %struct.tegra_fb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_fb*, align 8
  %10 = alloca %struct.dc_window, align 4
  %11 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.tegra_fb* %3, %struct.tegra_fb** %9, align 8
  %12 = call i32 @memset(%struct.dc_window* %10, i32 0, i32 32)
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.tegra_fb*, %struct.tegra_fb** %9, align 8
  %18 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 7
  store i32 %20, i32* %21, align 4
  %22 = load %struct.tegra_fb*, %struct.tegra_fb** %9, align 8
  %23 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 6
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.tegra_fb*, %struct.tegra_fb** %9, align 8
  %32 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 5
  store i32 %34, i32* %35, align 4
  %36 = load %struct.tegra_fb*, %struct.tegra_fb** %9, align 8
  %37 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.dc_window, %struct.dc_window* %10, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load %struct.tegra_fb*, %struct.tegra_fb** %9, align 8
  %42 = call i32 @dc_parse_drm_format(%struct.tegra_fb* %41, %struct.dc_window* %10)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %4
  %46 = load %struct.tegra_fb*, %struct.tegra_fb** %9, align 8
  %47 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DRM_WARNING(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %55

52:                                               ; preds = %4
  %53 = load %struct.dc_softc*, %struct.dc_softc** %6, align 8
  %54 = call i32 @dc_setup_window(%struct.dc_softc* %53, i32 0, %struct.dc_window* %10)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %45
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @memset(%struct.dc_window*, i32, i32) #1

declare dso_local i32 @dc_parse_drm_format(%struct.tegra_fb*, %struct.dc_window*) #1

declare dso_local i32 @DRM_WARNING(i8*, i32) #1

declare dso_local i32 @dc_setup_window(%struct.dc_softc*, i32, %struct.dc_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
