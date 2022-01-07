; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_move_go_csa.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_move_go_csa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_5__*, %struct.wpa_ssid* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.wpa_ssid = type { i32 }
%struct.hostapd_config = type { i64, i32, i64, i32, i32, i64, i32 }
%struct.p2p_go_neg_results = type { i32 }
%struct.csa_settings = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i64, i32, i64 }

@WPA_DRIVER_FLAGS_AP_CSA = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"CSA is not enabled\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"P2P CSA: Failed to select new frequency for GO\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"P2P CSA: Selected same frequency - not moving GO\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"P2P CSA: Failed to allocate default config\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"P2P CSA: Failed to create new GO config\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"P2P CSA: CSA to a different band is not supported\00", align 1
@P2P_GO_CSA_COUNT = common dso_local global i32 0, align 4
@P2P_GO_CSA_BLOCK_TX = common dso_local global i32 0, align 4
@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"P2P CSA: Bad freq\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"P2P CSA: Selected invalid VHT center freqs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*)* @wpas_p2p_move_go_csa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_p2p_move_go_csa(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.hostapd_config*, align 8
  %5 = alloca %struct.p2p_go_neg_results, align 4
  %6 = alloca %struct.csa_settings, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %14, i32 0, i32 2
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %15, align 8
  store %struct.wpa_ssid* %16, %struct.wpa_ssid** %7, align 8
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %18 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @WPA_DRIVER_FLAGS_AP_CSA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %1
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_dbg(%struct.wpa_supplicant* %27, i32 %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %198

30:                                               ; preds = %1
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %32 = call i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant* %31, %struct.p2p_go_neg_results* %5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 @wpa_dbg(%struct.wpa_supplicant* %35, i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %198

38:                                               ; preds = %30
  %39 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %40 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %5, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = call i32 @wpa_dbg(%struct.wpa_supplicant* %46, i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %198

49:                                               ; preds = %38
  %50 = call %struct.hostapd_config* (...) @hostapd_config_defaults()
  store %struct.hostapd_config* %50, %struct.hostapd_config** %4, align 8
  %51 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %52 = icmp ne %struct.hostapd_config* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = call i32 @wpa_dbg(%struct.wpa_supplicant* %54, i32 %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %198

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %64 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %65 = call i64 @wpa_supplicant_conf_ap_ht(%struct.wpa_supplicant* %62, %struct.wpa_ssid* %63, %struct.hostapd_config* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 @wpa_dbg(%struct.wpa_supplicant* %68, i32 %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %191

71:                                               ; preds = %57
  %72 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %73 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %76 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %74, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %71
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = call i32 @wpa_dbg(%struct.wpa_supplicant* %84, i32 %85, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %191

87:                                               ; preds = %71
  %88 = call i32 @os_memset(%struct.csa_settings* %6, i32 0, i32 48)
  %89 = load i32, i32* @P2P_GO_CSA_COUNT, align 4
  %90 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @P2P_GO_CSA_BLOCK_TX, align 4
  %92 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 1
  store i32 %91, i32* %92, align 8
  %93 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %98 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  store i64 %99, i64* %101, align 8
  %102 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %103 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 8
  %107 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %108 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 40, i32 20
  %113 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %116 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %188

119:                                              ; preds = %87
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %120 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %5, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %123 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %126 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @ieee80211_freq_to_channel_ext(i32 %121, i64 %124, i32 %127, i32* %13, i32* %12)
  %129 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %119
  %132 = load i32, i32* @MSG_ERROR, align 4
  %133 = call i32 @wpa_printf(i32 %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %191

134:                                              ; preds = %119
  %135 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %136 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %142 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @ieee80211_chan_to_freq(i32* null, i32 %140, i32 %143)
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %139, %134
  %146 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %147 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %153 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ieee80211_chan_to_freq(i32* null, i32 %151, i32 %154)
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %150, %145
  %157 = load i32, i32* %10, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %11, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159, %156
  %163 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %164 = load i32, i32* @MSG_DEBUG, align 4
  %165 = call i32 @wpa_dbg(%struct.wpa_supplicant* %163, i32 %164, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %191

166:                                              ; preds = %159
  %167 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %168 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 4
  store i64 %169, i64* %171, align 8
  %172 = load i32, i32* %10, align 4
  %173 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load i32, i32* %11, align 4
  %176 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 4
  %178 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %179 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  switch i32 %180, label %187 [
    i32 129, label %181
    i32 128, label %181
    i32 130, label %184
  ]

181:                                              ; preds = %166, %166
  %182 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i32 80, i32* %183, align 4
  br label %187

184:                                              ; preds = %166
  %185 = getelementptr inbounds %struct.csa_settings, %struct.csa_settings* %6, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  store i32 160, i32* %186, align 4
  br label %187

187:                                              ; preds = %166, %184, %181
  br label %188

188:                                              ; preds = %187, %87
  %189 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %190 = call i32 @ap_switch_channel(%struct.wpa_supplicant* %189, %struct.csa_settings* %6)
  store i32 %190, i32* %9, align 4
  br label %191

191:                                              ; preds = %188, %162, %131, %83, %67
  %192 = load i32, i32* %8, align 4
  %193 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %194 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %193, i32 0, i32 0
  store i32 %192, i32* %194, align 4
  %195 = load %struct.hostapd_config*, %struct.hostapd_config** %4, align 8
  %196 = call i32 @hostapd_config_free(%struct.hostapd_config* %195)
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %191, %53, %45, %34, %26
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i64 @wpas_p2p_init_go_params(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.hostapd_config* @hostapd_config_defaults(...) #1

declare dso_local i64 @wpa_supplicant_conf_ap_ht(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.hostapd_config*) #1

declare dso_local i32 @os_memset(%struct.csa_settings*, i32, i32) #1

declare dso_local i64 @ieee80211_freq_to_channel_ext(i32, i64, i32, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ieee80211_chan_to_freq(i32*, i32, i32) #1

declare dso_local i32 @ap_switch_channel(%struct.wpa_supplicant*, %struct.csa_settings*) #1

declare dso_local i32 @hostapd_config_free(%struct.hostapd_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
