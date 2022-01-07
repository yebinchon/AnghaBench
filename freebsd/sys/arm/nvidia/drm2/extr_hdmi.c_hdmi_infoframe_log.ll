; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_infoframe_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_infoframe_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_infoframe = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_infoframe_log(%union.hdmi_infoframe* %0) #0 {
  %2 = alloca %union.hdmi_infoframe*, align 8
  store %union.hdmi_infoframe* %0, %union.hdmi_infoframe** %2, align 8
  %3 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %2, align 8
  %4 = bitcast %union.hdmi_infoframe* %3 to %struct.TYPE_2__*
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %23 [
    i32 130, label %7
    i32 129, label %11
    i32 131, label %15
    i32 128, label %19
  ]

7:                                                ; preds = %1
  %8 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %2, align 8
  %9 = bitcast %union.hdmi_infoframe* %8 to i32*
  %10 = call i32 @hdmi_avi_infoframe_log(i32* %9)
  br label %23

11:                                               ; preds = %1
  %12 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %2, align 8
  %13 = bitcast %union.hdmi_infoframe* %12 to i32*
  %14 = call i32 @hdmi_spd_infoframe_log(i32* %13)
  br label %23

15:                                               ; preds = %1
  %16 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %2, align 8
  %17 = bitcast %union.hdmi_infoframe* %16 to i32*
  %18 = call i32 @hdmi_audio_infoframe_log(i32* %17)
  br label %23

19:                                               ; preds = %1
  %20 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %2, align 8
  %21 = bitcast %union.hdmi_infoframe* %20 to i32*
  %22 = call i32 @hdmi_vendor_any_infoframe_log(i32* %21)
  br label %23

23:                                               ; preds = %1, %19, %15, %11, %7
  ret void
}

declare dso_local i32 @hdmi_avi_infoframe_log(i32*) #1

declare dso_local i32 @hdmi_spd_infoframe_log(i32*) #1

declare dso_local i32 @hdmi_audio_infoframe_log(i32*) #1

declare dso_local i32 @hdmi_vendor_any_infoframe_log(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
