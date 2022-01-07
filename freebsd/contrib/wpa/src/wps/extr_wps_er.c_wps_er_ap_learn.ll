; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_learn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_learn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32 (%struct.wps_er_ap*, %struct.wpabuf*)* }
%struct.wpabuf = type opaque
%struct.wpabuf.0 = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"WPS ER: Received GetDeviceInfo response (M1) from the AP\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"NewDeviceInfo\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"WPS ER: Could not extract NewDeviceInfo from GetDeviceInfo response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, i8*)* @wps_er_ap_learn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_learn(%struct.wps_er_ap* %0, i8* %1) #0 {
  %3 = alloca %struct.wps_er_ap*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wpabuf.0*, align 8
  %6 = alloca i32, align 4
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.wpabuf.0* @xml_get_base64_item(i8* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store %struct.wpabuf.0* %10, %struct.wpabuf.0** %5, align 8
  %11 = load %struct.wpabuf.0*, %struct.wpabuf.0** %5, align 8
  %12 = icmp eq %struct.wpabuf.0* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 @wpa_printf(i32 %14, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %18 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %17, i32 0, i32 0
  %19 = load i32 (%struct.wps_er_ap*, %struct.wpabuf*)*, i32 (%struct.wps_er_ap*, %struct.wpabuf*)** %18, align 8
  %20 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %21 = load %struct.wpabuf.0*, %struct.wpabuf.0** %5, align 8
  %22 = bitcast %struct.wpabuf.0* %21 to %struct.wpabuf*
  %23 = call i32 %19(%struct.wps_er_ap* %20, %struct.wpabuf* %22)
  %24 = load %struct.wpabuf.0*, %struct.wpabuf.0** %5, align 8
  %25 = call i32 @wpabuf_free(%struct.wpabuf.0* %24)
  br label %26

26:                                               ; preds = %16, %13
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf.0* @xml_get_base64_item(i8*, i8*, i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
