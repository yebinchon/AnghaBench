; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_poll_sta.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ctrl_iface_ap.c_hostapd_ctrl_iface_poll_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32 }
%struct.sta_info = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"CTRL_IFACE POLL_STA %s\00", align 1
@WLAN_STA_WMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_ctrl_iface_poll_sta(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @ETH_ALEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @wpa_dbg(i32 %16, i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @hwaddr_aton(i8* %20, i32* %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %41

24:                                               ; preds = %2
  %25 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %26 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %25, i32* %13)
  store %struct.sta_info* %26, %struct.sta_info** %8, align 8
  %27 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %28 = icmp ne %struct.sta_info* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %41

30:                                               ; preds = %24
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %32 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %33 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WLAN_STA_WMM, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @hostapd_drv_poll_client(%struct.hostapd_data* %31, i32 %34, i32* %13, i32 %39)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %30, %29, %23
  %42 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*, i8*) #2

declare dso_local i64 @hwaddr_aton(i8*, i32*) #2

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #2

declare dso_local i32 @hostapd_drv_poll_client(%struct.hostapd_data*, i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
