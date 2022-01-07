; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_bo = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_bo_create(%struct.drm_device* %0, i64 %1, %struct.tegra_bo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tegra_bo**, align 8
  %8 = alloca %struct.tegra_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.tegra_bo** %2, %struct.tegra_bo*** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ule i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %75

15:                                               ; preds = %3
  %16 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.tegra_bo* @malloc(i32 8, i32 %16, i32 %19)
  store %struct.tegra_bo* %20, %struct.tegra_bo** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @round_page(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %25 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @drm_gem_object_init(%struct.drm_device* %23, i32* %25, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %15
  %31 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %32 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %33 = call i32 @free(%struct.tegra_bo* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %15
  %36 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %37 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %36, i32 0, i32 0
  %38 = call i32 @drm_gem_create_mmap_offset(i32* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %43 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %42, i32 0, i32 0
  %44 = call i32 @drm_gem_object_release(i32* %43)
  %45 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %46 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %47 = call i32 @free(%struct.tegra_bo* %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %75

49:                                               ; preds = %35
  %50 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %51 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %50, i32 0, i32 0
  %52 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @cdev_pager_allocate(i32* %51, i32 %52, i32 %57, i64 %58, i32 0, i32 0, i32* null)
  %60 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %61 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %63 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %64 = call i32 @tegra_bo_alloc(%struct.drm_device* %62, %struct.tegra_bo* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %49
  %68 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %69 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %68, i32 0, i32 0
  %70 = call i32 @tegra_bo_free_object(i32* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %75

72:                                               ; preds = %49
  %73 = load %struct.tegra_bo*, %struct.tegra_bo** %8, align 8
  %74 = load %struct.tegra_bo**, %struct.tegra_bo*** %7, align 8
  store %struct.tegra_bo* %73, %struct.tegra_bo** %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %67, %41, %30, %12
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.tegra_bo* @malloc(i32, i32, i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, i32*, i64) #1

declare dso_local i32 @free(%struct.tegra_bo*, i32) #1

declare dso_local i32 @drm_gem_create_mmap_offset(i32*) #1

declare dso_local i32 @drm_gem_object_release(i32*) #1

declare dso_local i32 @cdev_pager_allocate(i32*, i32, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @tegra_bo_alloc(%struct.drm_device*, %struct.tegra_bo*) #1

declare dso_local i32 @tegra_bo_free_object(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
