; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_ieee802_11_mgmt_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_ieee802_11_mgmt_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i64 }
%struct.ieee80211_mgmt = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mgmt::auth cb\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"mgmt::assoc_resp cb\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"mgmt::reassoc_resp cb\00", align 1
@MSG_EXCESSIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"mgmt::proberesp cb ok=%d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"mgmt::deauth cb\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"mgmt::disassoc cb\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"mgmt::action cb ok=%d\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"unknown mgmt cb frame subtype %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802_11_mgmt_cb(%struct.hostapd_data* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_mgmt*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %7, align 8
  %13 = bitcast i32* %12 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %13, %struct.ieee80211_mgmt** %11, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %68 [
    i32 132, label %15
    i32 133, label %23
    i32 128, label %31
    i32 129, label %39
    i32 131, label %43
    i32 130, label %51
    i32 134, label %59
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %19 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @handle_auth_cb(%struct.hostapd_data* %18, %struct.ieee80211_mgmt* %19, i64 %20, i32 %21)
  br label %72

23:                                               ; preds = %5
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @handle_assoc_cb(%struct.hostapd_data* %26, %struct.ieee80211_mgmt* %27, i64 %28, i32 0, i32 %29)
  br label %72

31:                                               ; preds = %5
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @handle_assoc_cb(%struct.hostapd_data* %34, %struct.ieee80211_mgmt* %35, i64 %36, i32 1, i32 %37)
  br label %72

39:                                               ; preds = %5
  %40 = load i32, i32* @MSG_EXCESSIVE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  br label %72

43:                                               ; preds = %5
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %47 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @handle_deauth_cb(%struct.hostapd_data* %46, %struct.ieee80211_mgmt* %47, i64 %48, i32 %49)
  br label %72

51:                                               ; preds = %5
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %52, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %54 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %55 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @handle_disassoc_cb(%struct.hostapd_data* %54, %struct.ieee80211_mgmt* %55, i64 %56, i32 %57)
  br label %72

59:                                               ; preds = %5
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  %63 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %64 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %11, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @handle_action_cb(%struct.hostapd_data* %63, %struct.ieee80211_mgmt* %64, i64 %65, i32 %66)
  br label %72

68:                                               ; preds = %5
  %69 = load i32, i32* @MSG_INFO, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %68, %59, %51, %43, %39, %31, %23, %15
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @handle_auth_cb(%struct.hostapd_data*, %struct.ieee80211_mgmt*, i64, i32) #1

declare dso_local i32 @handle_assoc_cb(%struct.hostapd_data*, %struct.ieee80211_mgmt*, i64, i32, i32) #1

declare dso_local i32 @handle_deauth_cb(%struct.hostapd_data*, %struct.ieee80211_mgmt*, i64, i32) #1

declare dso_local i32 @handle_disassoc_cb(%struct.hostapd_data*, %struct.ieee80211_mgmt*, i64, i32) #1

declare dso_local i32 @handle_action_cb(%struct.hostapd_data*, %struct.ieee80211_mgmt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
