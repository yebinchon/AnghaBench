; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_drm_subr.c_tegra_drm_encoder_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_tegra_drm_subr.c_tegra_drm_encoder_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_drm_encoder = type { %struct.TYPE_2__, i32*, i32*, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"nvidia,edid\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Malformed \22nvidia,edid\22 property\0A\00", align 1
@M_OFWPROP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"nvidia,hpd-gpio\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"nvidia,ddc-i2c-bus\00", align 1
@DRM_CONNECTOR_POLL_DISCONNECT = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_drm_encoder_attach(%struct.tegra_drm_encoder* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_drm_encoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tegra_drm_encoder* %0, %struct.tegra_drm_encoder** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %9, i32 0, i32 3
  %11 = bitcast i32** %10 to i8**
  %12 = call i32 @OF_getencprop_alloc(i64 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 4
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* @M_OFWPROP, align 4
  %33 = call i32 @free(i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %19
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %78

36:                                               ; preds = %15, %2
  %37 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %41, i32 0, i32 1
  %43 = call i32 @gpio_pin_get_by_ofw_property(i32 %39, i64 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32** %42)
  store i64 0, i64* %7, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @OF_getencprop(i64 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %7, i32 8)
  %46 = load i64, i64* %7, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load i64, i64* %7, align 8
  %50 = call i32* @OF_device_from_xref(i64 %49)
  %51 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  br label %53

53:                                               ; preds = %48, %36
  %54 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %60 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* @ENXIO, align 4
  store i32 %64, i32* %3, align 4
  br label %78

65:                                               ; preds = %58, %53
  %66 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %67 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* @DRM_CONNECTOR_POLL_DISCONNECT, align 4
  %72 = load i32, i32* @DRM_CONNECTOR_POLL_CONNECT, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.tegra_drm_encoder*, %struct.tegra_drm_encoder** %4, align 8
  %75 = getelementptr inbounds %struct.tegra_drm_encoder, %struct.tegra_drm_encoder* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  br label %77

77:                                               ; preds = %70, %65
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %63, %34
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @OF_getencprop_alloc(i64, i8*, i8**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @gpio_pin_get_by_ofw_property(i32, i64, i8*, i32**) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i32* @OF_device_from_xref(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
