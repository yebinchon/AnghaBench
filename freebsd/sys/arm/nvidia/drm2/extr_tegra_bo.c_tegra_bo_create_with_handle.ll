; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_create_with_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_bo.c_tegra_bo_create_with_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.tegra_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_file*, %struct.drm_device*, i64, i32*, %struct.tegra_bo**)* @tegra_bo_create_with_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_bo_create_with_handle(%struct.drm_file* %0, %struct.drm_device* %1, i64 %2, i32* %3, %struct.tegra_bo** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.tegra_bo**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tegra_bo*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %7, align 8
  store %struct.drm_device* %1, %struct.drm_device** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.tegra_bo** %4, %struct.tegra_bo*** %11, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @tegra_bo_create(%struct.drm_device* %14, i64 %15, %struct.tegra_bo** %13)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %6, align 4
  br label %43

21:                                               ; preds = %5
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load %struct.tegra_bo*, %struct.tegra_bo** %13, align 8
  %24 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %23, i32 0, i32 0
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @drm_gem_handle_create(%struct.drm_file* %22, i32* %24, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = load %struct.tegra_bo*, %struct.tegra_bo** %13, align 8
  %31 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %30, i32 0, i32 0
  %32 = call i32 @tegra_bo_free_object(i32* %31)
  %33 = load %struct.tegra_bo*, %struct.tegra_bo** %13, align 8
  %34 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %33, i32 0, i32 0
  %35 = call i32 @drm_gem_object_release(i32* %34)
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %43

37:                                               ; preds = %21
  %38 = load %struct.tegra_bo*, %struct.tegra_bo** %13, align 8
  %39 = getelementptr inbounds %struct.tegra_bo, %struct.tegra_bo* %38, i32 0, i32 0
  %40 = call i32 @drm_gem_object_unreference_unlocked(i32* %39)
  %41 = load %struct.tegra_bo*, %struct.tegra_bo** %13, align 8
  %42 = load %struct.tegra_bo**, %struct.tegra_bo*** %11, align 8
  store %struct.tegra_bo* %41, %struct.tegra_bo** %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %37, %29, %19
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @tegra_bo_create(%struct.drm_device*, i64, %struct.tegra_bo**) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @tegra_bo_free_object(i32*) #1

declare dso_local i32 @drm_gem_object_release(i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
