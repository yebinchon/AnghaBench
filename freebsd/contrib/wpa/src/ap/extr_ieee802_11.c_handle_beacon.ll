; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_handle_beacon.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_handle_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hostapd_frame_info = type { i32 }
%struct.ieee802_11_elems = type { i32 }

@IEEE80211_HDRLEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"handle_beacon - too short payload (len=%lu)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*, %struct.ieee80211_mgmt*, i64, %struct.hostapd_frame_info*)* @handle_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_beacon(%struct.hostapd_data* %0, %struct.ieee80211_mgmt* %1, i64 %2, %struct.hostapd_frame_info* %3) #0 {
  %5 = alloca %struct.hostapd_data*, align 8
  %6 = alloca %struct.ieee80211_mgmt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.hostapd_frame_info*, align 8
  %9 = alloca %struct.ieee802_11_elems, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %5, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.hostapd_frame_info* %3, %struct.hostapd_frame_info** %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i32, i32* @IEEE80211_HDRLEN, align 4
  %12 = sext i32 %11 to i64
  %13 = add i64 %12, 4
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* @MSG_INFO, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %37

19:                                               ; preds = %4
  %20 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* @IEEE80211_HDRLEN, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = sub i64 %25, %28
  %30 = call i32 @ieee802_11_parse_elems(i32 %24, i64 %29, %struct.ieee802_11_elems* %9, i32 0)
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %5, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %6, align 8
  %35 = load %struct.hostapd_frame_info*, %struct.hostapd_frame_info** %8, align 8
  %36 = call i32 @ap_list_process_beacon(i32 %33, %struct.ieee80211_mgmt* %34, %struct.ieee802_11_elems* %9, %struct.hostapd_frame_info* %35)
  br label %37

37:                                               ; preds = %19, %15
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @ieee802_11_parse_elems(i32, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @ap_list_process_beacon(i32, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.hostapd_frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
