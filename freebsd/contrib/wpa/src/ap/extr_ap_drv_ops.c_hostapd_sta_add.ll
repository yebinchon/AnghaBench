; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_sta_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.hostapd_sta_add_params*)* }
%struct.hostapd_sta_add_params = type { i8**, i8**, i64, i64, i32, i32, i32, i8*, i32, i8*, %struct.ieee80211_he_capabilities*, %struct.ieee80211_vht_capabilities*, %struct.ieee80211_ht_capabilities*, i8*, i8*, i8* }
%struct.ieee80211_ht_capabilities = type { i32 }
%struct.ieee80211_vht_capabilities = type { i32 }
%struct.ieee80211_he_capabilities = type { i32 }

@WLAN_STA_VHT_OPMODE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_sta_add(%struct.hostapd_data* %0, i8** %1, i8* %2, i8* %3, i8** %4, i64 %5, i8* %6, %struct.ieee80211_ht_capabilities* %7, %struct.ieee80211_vht_capabilities* %8, %struct.ieee80211_he_capabilities* %9, i64 %10, i32 %11, i8* %12, i8* %13, i32 %14, i32 %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca %struct.hostapd_data*, align 8
  %19 = alloca i8**, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.ieee80211_ht_capabilities*, align 8
  %26 = alloca %struct.ieee80211_vht_capabilities*, align 8
  %27 = alloca %struct.ieee80211_he_capabilities*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.hostapd_sta_add_params, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %18, align 8
  store i8** %1, i8*** %19, align 8
  store i8* %2, i8** %20, align 8
  store i8* %3, i8** %21, align 8
  store i8** %4, i8*** %22, align 8
  store i64 %5, i64* %23, align 8
  store i8* %6, i8** %24, align 8
  store %struct.ieee80211_ht_capabilities* %7, %struct.ieee80211_ht_capabilities** %25, align 8
  store %struct.ieee80211_vht_capabilities* %8, %struct.ieee80211_vht_capabilities** %26, align 8
  store %struct.ieee80211_he_capabilities* %9, %struct.ieee80211_he_capabilities** %27, align 8
  store i64 %10, i64* %28, align 8
  store i32 %11, i32* %29, align 4
  store i8* %12, i8** %30, align 8
  store i8* %13, i8** %31, align 8
  store i32 %14, i32* %32, align 4
  store i32 %15, i32* %33, align 4
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %18, align 8
  %36 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp eq %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  store i32 0, i32* %17, align 4
  br label %98

40:                                               ; preds = %16
  %41 = load %struct.hostapd_data*, %struct.hostapd_data** %18, align 8
  %42 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32 (i32, %struct.hostapd_sta_add_params*)*, i32 (i32, %struct.hostapd_sta_add_params*)** %44, align 8
  %46 = icmp eq i32 (i32, %struct.hostapd_sta_add_params*)* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %17, align 4
  br label %98

48:                                               ; preds = %40
  %49 = call i32 @os_memset(%struct.hostapd_sta_add_params* %34, i32 0, i32 120)
  %50 = load i8**, i8*** %19, align 8
  %51 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 0
  store i8** %50, i8*** %51, align 8
  %52 = load i8*, i8** %20, align 8
  %53 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 15
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %21, align 8
  %55 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 14
  store i8* %54, i8** %55, align 8
  %56 = load i8**, i8*** %22, align 8
  %57 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 1
  store i8** %56, i8*** %57, align 8
  %58 = load i64, i64* %23, align 8
  %59 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 2
  store i64 %58, i64* %59, align 8
  %60 = load i8*, i8** %24, align 8
  %61 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 13
  store i8* %60, i8** %61, align 8
  %62 = load %struct.ieee80211_ht_capabilities*, %struct.ieee80211_ht_capabilities** %25, align 8
  %63 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 12
  store %struct.ieee80211_ht_capabilities* %62, %struct.ieee80211_ht_capabilities** %63, align 8
  %64 = load %struct.ieee80211_vht_capabilities*, %struct.ieee80211_vht_capabilities** %26, align 8
  %65 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 11
  store %struct.ieee80211_vht_capabilities* %64, %struct.ieee80211_vht_capabilities** %65, align 8
  %66 = load %struct.ieee80211_he_capabilities*, %struct.ieee80211_he_capabilities** %27, align 8
  %67 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 10
  store %struct.ieee80211_he_capabilities* %66, %struct.ieee80211_he_capabilities** %67, align 8
  %68 = load i64, i64* %28, align 8
  %69 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 3
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* %29, align 4
  %71 = load i32, i32* @WLAN_STA_VHT_OPMODE_ENABLED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 4
  store i32 %76, i32* %77, align 8
  %78 = load i8*, i8** %31, align 8
  %79 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 9
  store i8* %78, i8** %79, align 8
  %80 = load i32, i32* %29, align 4
  %81 = call i32 @hostapd_sta_flags_to_drv(i32 %80)
  %82 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 8
  store i32 %81, i32* %82, align 8
  %83 = load i8*, i8** %30, align 8
  %84 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 7
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %32, align 4
  %86 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 5
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %33, align 4
  %88 = getelementptr inbounds %struct.hostapd_sta_add_params, %struct.hostapd_sta_add_params* %34, i32 0, i32 6
  store i32 %87, i32* %88, align 8
  %89 = load %struct.hostapd_data*, %struct.hostapd_data** %18, align 8
  %90 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32 (i32, %struct.hostapd_sta_add_params*)*, i32 (i32, %struct.hostapd_sta_add_params*)** %92, align 8
  %94 = load %struct.hostapd_data*, %struct.hostapd_data** %18, align 8
  %95 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 %93(i32 %96, %struct.hostapd_sta_add_params* %34)
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %48, %47, %39
  %99 = load i32, i32* %17, align 4
  ret i32 %99
}

declare dso_local i32 @os_memset(%struct.hostapd_sta_add_params*, i32, i32) #1

declare dso_local i32 @hostapd_sta_flags_to_drv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
