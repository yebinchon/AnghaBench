; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_audio_infoframe_pack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_audio_infoframe_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_audio_infoframe = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdmi_audio_infoframe_pack(%struct.hdmi_audio_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hdmi_audio_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.hdmi_audio_infoframe* %0, %struct.hdmi_audio_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %14 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %15 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %13, %16
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @ENOSPC, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %117

24:                                               ; preds = %3
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @memset(i8* %25, i32 0, i64 %26)
  %28 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %29 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %30, 2
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %34 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %8, align 1
  br label %39

38:                                               ; preds = %24
  store i8 0, i8* %8, align 1
  br label %39

39:                                               ; preds = %38, %32
  %40 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %41 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %46 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %51 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  store i32 0, i32* %57, align 4
  %58 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 %58
  store i32* %60, i32** %9, align 8
  %61 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %62 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 15
  %65 = shl i32 %64, 4
  %66 = load i8, i8* %8, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 7
  %69 = or i32 %65, %68
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %73 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 7
  %76 = shl i32 %75, 2
  %77 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %78 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 3
  %81 = or i32 %76, %80
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %85 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 31
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %91 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %96 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %95, i32 0, i32 9
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 15
  %99 = shl i32 %98, 3
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %5, align 8
  %103 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %102, i32 0, i32 10
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %39
  %107 = call i32 @BIT(i32 7)
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 4
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %39
  %113 = load i8*, i8** %6, align 8
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @hdmi_infoframe_set_checksum(i8* %113, i64 %114)
  %116 = load i64, i64* %10, align 8
  store i64 %116, i64* %4, align 8
  br label %117

117:                                              ; preds = %112, %21
  %118 = load i64, i64* %4, align 8
  ret i64 %118
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hdmi_infoframe_set_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
