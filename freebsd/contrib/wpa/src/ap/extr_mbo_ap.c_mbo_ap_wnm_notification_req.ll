; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_mbo_ap.c_mbo_ap_wnm_notification_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_mbo_ap.c_mbo_ap_wnm_notification_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sta_info = type { i32 }

@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@OUI_WFA = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"MBO: Ignore unknown WNM Notification element %u (len=%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbo_ap_wnm_notification_req(%struct.hostapd_data* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sta_info*, align 8
  %13 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 1, i32* %13, align 4
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  br label %98

21:                                               ; preds = %4
  %22 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %22, i32* %23)
  store %struct.sta_info* %24, %struct.sta_info** %12, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %26 = icmp ne %struct.sta_info* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %98

28:                                               ; preds = %21
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %10, align 8
  br label %33

33:                                               ; preds = %90, %28
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = icmp sgt i64 %39, 1
  br i1 %40, label %41, label %98

41:                                               ; preds = %33
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 2, %45
  %47 = sext i32 %46 to i64
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = icmp sgt i64 %47, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %98

56:                                               ; preds = %41
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = icmp sge i32 %63, 4
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = call i64 @WPA_GET_BE24(i32* %67)
  %69 = load i64, i64* @OUI_WFA, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  %78 = load i32, i32* %11, align 4
  %79 = sub nsw i32 %78, 4
  %80 = call i32 @mbo_ap_wnm_notif_req_elem(%struct.sta_info* %72, i32 %75, i32* %77, i32 %79, i32* %13)
  br label %90

81:                                               ; preds = %65, %62, %56
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %71
  %91 = load i32*, i32** %9, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 2, %93
  %95 = load i32*, i32** %9, align 8
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32* %97, i32** %9, align 8
  br label %33

98:                                               ; preds = %20, %27, %55, %33
  ret void
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i64 @WPA_GET_BE24(i32*) #1

declare dso_local i32 @mbo_ap_wnm_notif_req_elem(%struct.sta_info*, i32, i32*, i32, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
