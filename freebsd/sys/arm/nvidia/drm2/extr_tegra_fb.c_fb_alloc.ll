; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_fb.c_fb_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_fb.c_fb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_mode_fb_cmd2 = type { i32 }
%struct.tegra_bo = type { i32 }
%struct.tegra_fb = type { i32, %struct.tegra_bo**, i32 }

@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@fb_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Cannot initialize frame buffer %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_mode_fb_cmd2*, %struct.tegra_bo**, i32, %struct.tegra_fb**)* @fb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_alloc(%struct.drm_device* %0, %struct.drm_mode_fb_cmd2* %1, %struct.tegra_bo** %2, i32 %3, %struct.tegra_fb** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.drm_mode_fb_cmd2*, align 8
  %9 = alloca %struct.tegra_bo**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tegra_fb**, align 8
  %12 = alloca %struct.tegra_fb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.drm_mode_fb_cmd2* %1, %struct.drm_mode_fb_cmd2** %8, align 8
  store %struct.tegra_bo** %2, %struct.tegra_bo*** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.tegra_fb** %4, %struct.tegra_fb*** %11, align 8
  %15 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call i8* @malloc(i32 24, i32 %15, i32 %18)
  %20 = bitcast i8* %19 to %struct.tegra_fb*
  store %struct.tegra_fb* %20, %struct.tegra_fb** %12, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call i8* @malloc(i32 %24, i32 %25, i32 %28)
  %30 = bitcast i8* %29 to %struct.tegra_bo**
  %31 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %32 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %31, i32 0, i32 1
  store %struct.tegra_bo** %30, %struct.tegra_bo*** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %35 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %37 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %36, i32 0, i32 2
  %38 = load %struct.drm_mode_fb_cmd2*, %struct.drm_mode_fb_cmd2** %8, align 8
  %39 = call i32 @drm_helper_mode_fill_fb_struct(i32* %37, %struct.drm_mode_fb_cmd2* %38)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %58, %5
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %43 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.tegra_bo**, %struct.tegra_bo*** %9, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.tegra_bo*, %struct.tegra_bo** %47, i64 %49
  %51 = load %struct.tegra_bo*, %struct.tegra_bo** %50, align 8
  %52 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %53 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %52, i32 0, i32 1
  %54 = load %struct.tegra_bo**, %struct.tegra_bo*** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.tegra_bo*, %struct.tegra_bo** %54, i64 %56
  store %struct.tegra_bo* %51, %struct.tegra_bo** %57, align 8
  br label %58

58:                                               ; preds = %46
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %63 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %64 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %63, i32 0, i32 2
  %65 = call i32 @drm_framebuffer_init(%struct.drm_device* %62, i32* %64, i32* @fb_funcs)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %75 = getelementptr inbounds %struct.tegra_fb, %struct.tegra_fb* %74, i32 0, i32 1
  %76 = load %struct.tegra_bo**, %struct.tegra_bo*** %75, align 8
  %77 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %78 = call i32 @free(%struct.tegra_bo** %76, i32 %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %6, align 4
  br label %83

80:                                               ; preds = %61
  %81 = load %struct.tegra_fb*, %struct.tegra_fb** %12, align 8
  %82 = load %struct.tegra_fb**, %struct.tegra_fb*** %11, align 8
  store %struct.tegra_fb* %81, %struct.tegra_fb** %82, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %68
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @drm_helper_mode_fill_fb_struct(i32*, %struct.drm_mode_fb_cmd2*) #1

declare dso_local i32 @drm_framebuffer_init(%struct.drm_device*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @free(%struct.tegra_bo**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
