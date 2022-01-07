; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_infoframe_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/drm2/extr_hdmi.c_hdmi_infoframe_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.hdmi_infoframe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdmi_infoframe_unpack(%union.hdmi_infoframe* %0, i8* %1) #0 {
  %3 = alloca %union.hdmi_infoframe*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %union.hdmi_infoframe* %0, %union.hdmi_infoframe** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to i32*
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %32 [
    i32 130, label %12
    i32 129, label %17
    i32 131, label %22
    i32 128, label %27
  ]

12:                                               ; preds = %2
  %13 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %14 = bitcast %union.hdmi_infoframe* %13 to i32*
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @hdmi_avi_infoframe_unpack(i32* %14, i8* %15)
  store i32 %16, i32* %5, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %19 = bitcast %union.hdmi_infoframe* %18 to i32*
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @hdmi_spd_infoframe_unpack(i32* %19, i8* %20)
  store i32 %21, i32* %5, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %24 = bitcast %union.hdmi_infoframe* %23 to i32*
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @hdmi_audio_infoframe_unpack(i32* %24, i8* %25)
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load %union.hdmi_infoframe*, %union.hdmi_infoframe** %3, align 8
  %29 = bitcast %union.hdmi_infoframe* %28 to i32*
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @hdmi_vendor_any_infoframe_unpack(i32* %29, i8* %30)
  store i32 %31, i32* %5, align 4
  br label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %32, %27, %22, %17, %12
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @hdmi_avi_infoframe_unpack(i32*, i8*) #1

declare dso_local i32 @hdmi_spd_infoframe_unpack(i32*, i8*) #1

declare dso_local i32 @hdmi_audio_infoframe_unpack(i32*, i8*) #1

declare dso_local i32 @hdmi_vendor_any_infoframe_unpack(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
