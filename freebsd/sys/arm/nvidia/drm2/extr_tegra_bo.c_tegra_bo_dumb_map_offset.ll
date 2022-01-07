; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_dumb_map_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_dumb_map_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Object not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_GEM_MAPPING_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_device*, i32, i32*)* @tegra_bo_dumb_map_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_dumb_map_offset(%struct.drm_file* %0, %struct.drm_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %13 = call i32 @DRM_LOCK(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %14, %struct.drm_file* %15, i32 %16)
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %10, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %19 = icmp eq %struct.drm_gem_object* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %26 = call i32 @DRM_UNLOCK(%struct.drm_device* %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %54

29:                                               ; preds = %4
  %30 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %31 = call i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %48

35:                                               ; preds = %29
  %36 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %37 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DRM_GEM_MAPPING_OFF(i32 %39)
  %41 = load i32, i32* @DRM_GEM_MAPPING_KEY, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %45 = call i32 @drm_gem_object_unreference(%struct.drm_gem_object* %44)
  %46 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %47 = call i32 @DRM_UNLOCK(%struct.drm_device* %46)
  store i32 0, i32* %5, align 4
  br label %54

48:                                               ; preds = %34
  %49 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %50 = call i32 @drm_gem_object_unreference(%struct.drm_gem_object* %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %52 = call i32 @DRM_UNLOCK(%struct.drm_device* %51)
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %35, %20
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

declare dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @DRM_GEM_MAPPING_OFF(i32) #1

declare dso_local i32 @drm_gem_object_unreference(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
