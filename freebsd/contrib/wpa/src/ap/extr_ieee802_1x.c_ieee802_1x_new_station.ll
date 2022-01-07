; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_new_station.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_1x.c_ieee802_1x_new_station.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i64 }
%struct.sta_info = type { i32, i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i8*, i64, i8*, i8*, i8*, i8*, %struct.TYPE_7__*, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.rsn_pmksa_cache_entry = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"IEEE 802.1X: Ignore STA - 802.1X not enabled or forced for WPS\00", align 1
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"IEEE 802.1X: Ignore STA - using PSK\00", align 1
@HOSTAPD_MODULE_IEEE8021X = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"start authentication\00", align 1
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to allocate state machine\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"PMK from PMKSA cache - skip IEEE 802.1X/EAP\00", align 1
@AUTH_PAE_AUTHENTICATING = common dso_local global i8* null, align 8
@BE_AUTH_SUCCESS = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@EAPOL_SM_WAIT_START = common dso_local global i32 0, align 4
@WLAN_AUTH_FILS_PK = common dso_local global i64 0, align 8
@WLAN_AUTH_FILS_SK = common dso_local global i64 0, align 8
@WLAN_AUTH_FILS_SK_PFS = common dso_local global i64 0, align 8
@WLAN_AUTH_FT = common dso_local global i64 0, align 8
@WLAN_STA_MAYBE_WPS = common dso_local global i32 0, align 4
@WLAN_STA_WPS = common dso_local global i32 0, align 4
@WLAN_STA_WPS2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802_1x_new_station(%struct.hostapd_data* %0, %struct.sta_info* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.sta_info*, align 8
  %5 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.sta_info* %1, %struct.sta_info** %4, align 8
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %11
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %29 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %30 = call i32 @ieee802_1x_free_station(%struct.hostapd_data* %28, %struct.sta_info* %29)
  br label %178

31:                                               ; preds = %18, %11, %2
  %32 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wpa_auth_sta_key_mgmt(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @wpa_key_mgmt_wpa_psk(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @WPA_KEY_MGMT_OWE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @WPA_KEY_MGMT_DPP, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %46, %42, %38
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %54 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %55 = call i32 @ieee802_1x_free_station(%struct.hostapd_data* %53, %struct.sta_info* %54)
  br label %178

56:                                               ; preds = %46, %31
  %57 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp eq %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %87

61:                                               ; preds = %56
  %62 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %63 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %64 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %67 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %68 = call i32 @hostapd_logger(%struct.hostapd_data* %62, i32 %65, i32 %66, i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %70 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %71 = call %struct.TYPE_8__* @ieee802_1x_alloc_eapol_sm(%struct.hostapd_data* %69, %struct.sta_info* %70)
  %72 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %73 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %72, i32 0, i32 2
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %73, align 8
  %74 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %75 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %74, i32 0, i32 2
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = icmp eq %struct.TYPE_8__* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %61
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %80 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %81 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %84 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %85 = call i32 @hostapd_logger(%struct.hostapd_data* %79, i32 %82, i32 %83, i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %178

86:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %86, %56
  %88 = load i8*, i8** @TRUE, align 8
  %89 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %90 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 6
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store i8* %88, i8** %94, align 8
  %95 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %96 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.rsn_pmksa_cache_entry* @wpa_auth_sta_get_pmksa(i32 %97)
  store %struct.rsn_pmksa_cache_entry* %98, %struct.rsn_pmksa_cache_entry** %5, align 8
  %99 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %100 = icmp ne %struct.rsn_pmksa_cache_entry* %99, null
  br i1 %100, label %101, label %164

101:                                              ; preds = %87
  %102 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %103 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %104 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @HOSTAPD_MODULE_IEEE8021X, align 4
  %107 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %108 = call i32 @hostapd_logger(%struct.hostapd_data* %102, i32 %105, i32 %106, i32 %107, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i8*, i8** @TRUE, align 8
  %110 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %111 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 7
  store i8* %109, i8** %113, align 8
  %114 = load i8*, i8** @TRUE, align 8
  %115 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %116 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %115, i32 0, i32 2
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 6
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  store i8* %114, i8** %120, align 8
  %121 = load i8*, i8** @AUTH_PAE_AUTHENTICATING, align 8
  %122 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %123 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 5
  store i8* %121, i8** %125, align 8
  %126 = load i8*, i8** @BE_AUTH_SUCCESS, align 8
  %127 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %128 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  store i8* %126, i8** %130, align 8
  %131 = load i8*, i8** @TRUE, align 8
  %132 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %133 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %132, i32 0, i32 2
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 3
  store i8* %131, i8** %135, align 8
  %136 = load i8*, i8** @FALSE, align 8
  %137 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %138 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %137, i32 0, i32 2
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i8* %136, i8** %140, align 8
  %141 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %142 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %141, i32 0, i32 2
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %101
  %148 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %149 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %148, i32 0, i32 2
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @eap_sm_notify_cached(i64 %152)
  br label %154

154:                                              ; preds = %147, %101
  %155 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %156 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %5, align 8
  %157 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %158 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %157, i32 0, i32 2
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %158, align 8
  %160 = call i32 @pmksa_cache_to_eapol_data(%struct.hostapd_data* %155, %struct.rsn_pmksa_cache_entry* %156, %struct.TYPE_8__* %159)
  %161 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %162 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %163 = call i32 @ap_sta_bind_vlan(%struct.hostapd_data* %161, %struct.sta_info* %162)
  br label %178

164:                                              ; preds = %87
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %164
  %168 = load i8*, i8** @TRUE, align 8
  %169 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %170 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %169, i32 0, i32 2
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  store i8* %168, i8** %172, align 8
  br label %173

173:                                              ; preds = %167, %164
  %174 = load %struct.sta_info*, %struct.sta_info** %4, align 8
  %175 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %174, i32 0, i32 2
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = call i32 @eapol_auth_step(%struct.TYPE_8__* %176)
  br label %178

178:                                              ; preds = %25, %50, %78, %173, %154
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee802_1x_free_station(%struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local i32 @wpa_auth_sta_key_mgmt(i32) #1

declare dso_local i64 @wpa_key_mgmt_wpa_psk(i32) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @ieee802_1x_alloc_eapol_sm(%struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local %struct.rsn_pmksa_cache_entry* @wpa_auth_sta_get_pmksa(i32) #1

declare dso_local i32 @eap_sm_notify_cached(i64) #1

declare dso_local i32 @pmksa_cache_to_eapol_data(%struct.hostapd_data*, %struct.rsn_pmksa_cache_entry*, %struct.TYPE_8__*) #1

declare dso_local i32 @ap_sta_bind_vlan(%struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local i32 @eapol_auth_step(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
