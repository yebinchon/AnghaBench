; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_tkip_countermeasures.c_ieee80211_tkip_countermeasures_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_tkip_countermeasures.c_ieee80211_tkip_countermeasures_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.sta_info*, i32 }
%struct.sta_info = type { i32, i32, i32 }

@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TKIP countermeasures initiated\00", align 1
@ieee80211_tkip_countermeasures_stop = common dso_local global i32 0, align 4
@RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_RESET = common dso_local global i32 0, align 4
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@WLAN_REASON_MICHAEL_MIC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_data*)* @ieee80211_tkip_countermeasures_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tkip_countermeasures_start(%struct.hostapd_data* %0) #0 {
  %2 = alloca %struct.hostapd_data*, align 8
  %3 = alloca %struct.sta_info*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %2, align 8
  %4 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %5 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %6 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %7 = call i32 @hostapd_logger(%struct.hostapd_data* %4, i32* null, i32 %5, i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %9 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @wpa_auth_countermeasures_start(i32 %10)
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %15 = call i32 @hostapd_drv_set_countermeasures(%struct.hostapd_data* %14, i32 1)
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @wpa_gtk_rekey(i32 %18)
  %20 = load i32, i32* @ieee80211_tkip_countermeasures_stop, align 4
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %22 = call i32 @eloop_cancel_timeout(i32 %20, %struct.hostapd_data* %21, i32* null)
  %23 = load i32, i32* @ieee80211_tkip_countermeasures_stop, align 4
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %25 = call i32 @eloop_register_timeout(i32 60, i32 0, i32 %23, %struct.hostapd_data* %24, i32* null)
  br label %26

26:                                               ; preds = %46, %1
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 1
  %29 = load %struct.sta_info*, %struct.sta_info** %28, align 8
  store %struct.sta_info* %29, %struct.sta_info** %3, align 8
  %30 = icmp ne %struct.sta_info* %29, null
  br i1 %30, label %31, label %56

31:                                               ; preds = %26
  %32 = load i32, i32* @RADIUS_ACCT_TERMINATE_CAUSE_ADMIN_RESET, align 4
  %33 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %36 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WLAN_STA_AUTH, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %43 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %44 = load i32, i32* @WLAN_REASON_MICHAEL_MIC_FAILURE, align 4
  %45 = call i32 @mlme_deauthenticate_indication(%struct.hostapd_data* %42, %struct.sta_info* %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %31
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %48 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @WLAN_REASON_MICHAEL_MIC_FAILURE, align 4
  %52 = call i32 @hostapd_drv_sta_deauth(%struct.hostapd_data* %47, i32 %50, i32 %51)
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %2, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %3, align 8
  %55 = call i32 @ap_free_sta(%struct.hostapd_data* %53, %struct.sta_info* %54)
  br label %26

56:                                               ; preds = %26
  ret void
}

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32*, i32, i32, i8*) #1

declare dso_local i32 @wpa_auth_countermeasures_start(i32) #1

declare dso_local i32 @hostapd_drv_set_countermeasures(%struct.hostapd_data*, i32) #1

declare dso_local i32 @wpa_gtk_rekey(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_data*, i32*) #1

declare dso_local i32 @mlme_deauthenticate_indication(%struct.hostapd_data*, %struct.sta_info*, i32) #1

declare dso_local i32 @hostapd_drv_sta_deauth(%struct.hostapd_data*, i32, i32) #1

declare dso_local i32 @ap_free_sta(%struct.hostapd_data*, %struct.sta_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
