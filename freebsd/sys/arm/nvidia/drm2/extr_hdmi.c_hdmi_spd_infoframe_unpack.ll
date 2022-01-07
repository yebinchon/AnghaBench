; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_spd_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_spd_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spd_infoframe = type { i32 }

@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@HDMI_SPD_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPD = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_spd_infoframe*, i8*)* @hdmi_spd_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_spd_infoframe_unpack(%struct.hdmi_spd_infoframe* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_spd_infoframe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hdmi_spd_infoframe* %0, %struct.hdmi_spd_infoframe** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %26, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HDMI_SPD_INFOFRAME_SIZE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %15, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @SPD, align 4
  %32 = call i32 @HDMI_INFOFRAME_SIZE(i32 %31)
  %33 = call i64 @hdmi_infoframe_checksum(i8* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %29
  %39 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %6, align 8
  %43 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 8
  %47 = call i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe* %43, i32* %44, i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %3, align 4
  br label %58

52:                                               ; preds = %38
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 24
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %4, align 8
  %57 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %50, %35, %26
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i32) #1

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

declare dso_local i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
