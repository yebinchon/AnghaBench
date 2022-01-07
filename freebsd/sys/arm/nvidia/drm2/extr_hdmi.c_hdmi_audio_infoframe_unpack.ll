; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_audio_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_audio_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_audio_infoframe = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HDMI_INFOFRAME_TYPE_AUDIO = common dso_local global i32 0, align 4
@HDMI_AUDIO_INFOFRAME_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AUDIO = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdmi_audio_infoframe*, i8*)* @hdmi_audio_infoframe_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_infoframe_unpack(%struct.hdmi_audio_infoframe* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdmi_audio_infoframe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hdmi_audio_infoframe* %0, %struct.hdmi_audio_infoframe** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HDMI_INFOFRAME_TYPE_AUDIO, align 4
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
  %24 = load i32, i32* @HDMI_AUDIO_INFOFRAME_SIZE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %15, %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %103

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @AUDIO, align 4
  %32 = call i32 @HDMI_INFOFRAME_SIZE(i32 %31)
  %33 = call i64 @hdmi_infoframe_checksum(i8* %30, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %103

38:                                               ; preds = %29
  %39 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %40 = call i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %103

45:                                               ; preds = %38
  %46 = load i32, i32* @HDMI_INFOFRAME_HEADER_SIZE, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %6, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 7
  %54 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %55 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = ashr i32 %58, 4
  %60 = and i32 %59, 15
  %61 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %62 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 3
  %67 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %68 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 2
  %73 = and i32 %72, 7
  %74 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %75 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 31
  %80 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %81 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %86 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 3
  %91 = and i32 %90, 15
  %92 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %93 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 128
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %102 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %45, %43, %35, %26
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64 @hdmi_infoframe_checksum(i8*, i32) #1

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

declare dso_local i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
