; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_spd_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_spd_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spd_infoframe = type { i32, i32, i32 }
%struct.hdmi_any_infoframe = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"    vendor: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"    product: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"    source device information: %s (0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi_spd_infoframe*)* @hdmi_spd_infoframe_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_spd_infoframe_log(%struct.hdmi_spd_infoframe* %0) #0 {
  %2 = alloca %struct.hdmi_spd_infoframe*, align 8
  %3 = alloca [17 x i32], align 16
  store %struct.hdmi_spd_infoframe* %0, %struct.hdmi_spd_infoframe** %2, align 8
  %4 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %2, align 8
  %5 = bitcast %struct.hdmi_spd_infoframe* %4 to %struct.hdmi_any_infoframe*
  %6 = call i32 @hdmi_infoframe_log_header(%struct.hdmi_any_infoframe* %5)
  %7 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %8 = call i32 @memset(i32* %7, i32 0, i32 68)
  %9 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %10 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %2, align 8
  %11 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @strncpy(i32* %9, i32 %12, i32 8)
  %14 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %15 = ptrtoint i32* %14 to i32
  %16 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %18 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %2, align 8
  %19 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @strncpy(i32* %17, i32 %20, i32 16)
  %22 = getelementptr inbounds [17 x i32], [17 x i32]* %3, i64 0, i64 0
  %23 = ptrtoint i32* %22 to i32
  %24 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %2, align 8
  %26 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hdmi_spd_sdi_get_name(i32 %27)
  %29 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %2, align 8
  %30 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, ...) @hdmi_log(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %31)
  ret void
}

declare dso_local i32 @hdmi_infoframe_log_header(%struct.hdmi_any_infoframe*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i32, i32) #1

declare dso_local i32 @hdmi_log(i8*, i32, ...) #1

declare dso_local i32 @hdmi_spd_sdi_get_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
