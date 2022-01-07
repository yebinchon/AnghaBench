; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_audio_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_audio_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_audio_infoframe = type { i8*, i8*, i8*, i64, i32, i32, i32, i32 }
%struct.hdmi_any_infoframe = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"    channels: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"    channels: Refer to stream header\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"    coding type: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"    sample size: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"    sample frequency: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"    coding type ext: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"    channel allocation: 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"    level shift value: %u dB\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"    downmix inhibit: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_audio_infoframe*)* @hdmi_audio_infoframe_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_audio_infoframe_log(%struct.hdmi_audio_infoframe* %0) #0 {
  %2 = alloca %struct.hdmi_audio_infoframe*, align 8
  store %struct.hdmi_audio_infoframe* %0, %struct.hdmi_audio_infoframe** %2, align 8
  %3 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %4 = bitcast %struct.hdmi_audio_infoframe* %3 to %struct.hdmi_any_infoframe*
  %5 = call i32 @hdmi_infoframe_log_header(%struct.hdmi_any_infoframe* %4)
  %6 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %7 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 -1
  %15 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %14)
  br label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %10
  %19 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %20 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @hdmi_audio_coding_type_get_name(i32 %21)
  %23 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %24 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %25 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @hdmi_audio_sample_size_get_name(i32 %26)
  %28 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %27)
  %29 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %30 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @hdmi_audio_sample_frequency_get_name(i32 %31)
  %33 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  %34 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %35 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @hdmi_audio_coding_type_ext_get_name(i32 %36)
  %38 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %37)
  %39 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %40 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %41)
  %43 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %44 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %45)
  %47 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %2, align 8
  %48 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @hdmi_log(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %52)
  ret void
}

declare dso_local i32 @hdmi_infoframe_log_header(%struct.hdmi_any_infoframe*) #1

declare dso_local i32 @hdmi_log(i8*, ...) #1

declare dso_local i8* @hdmi_audio_coding_type_get_name(i32) #1

declare dso_local i8* @hdmi_audio_sample_size_get_name(i32) #1

declare dso_local i8* @hdmi_audio_sample_frequency_get_name(i32) #1

declare dso_local i8* @hdmi_audio_coding_type_ext_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
