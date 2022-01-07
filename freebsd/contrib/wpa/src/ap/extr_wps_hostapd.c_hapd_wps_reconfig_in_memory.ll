; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hapd_wps_reconfig_in_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hapd_wps_reconfig_in_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.hostapd_bss_config*, %struct.TYPE_4__* }
%struct.hostapd_bss_config = type { i32, i32, i64, i32, i32, %struct.TYPE_5__, i32, i64, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32*, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.wps_credential = type { i32, i32, i32, i32, i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"WPS: Updating in-memory configuration\00", align 1
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2 = common dso_local global i32 0, align 4
@WPS_AUTH_WPA2PSK = common dso_local global i32 0, align 4
@WPS_AUTH_WPA = common dso_local global i32 0, align 4
@WPS_AUTH_WPAPSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPS_ENCR_AES = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211AD = common dso_local global i64 0, align 8
@WPA_CIPHER_GCMP = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@WPS_ENCR_TKIP = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@PMK_LEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@wps_reload_config = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_OPTIONAL = common dso_local global i64 0, align 8
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.wps_credential*)* @hapd_wps_reconfig_in_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hapd_wps_reconfig_in_memory(%struct.hostapd_data* %0, %struct.wps_credential* %1) #0 {
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.wps_credential*, align 8
  %5 = alloca %struct.hostapd_bss_config*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store %struct.wps_credential* %1, %struct.wps_credential** %4, align 8
  %6 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %7 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %6, i32 0, i32 1
  %8 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %7, align 8
  store %struct.hostapd_bss_config* %8, %struct.hostapd_bss_config** %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %12 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %11, i32 0, i32 0
  store i32 2, i32* %12, align 8
  %13 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %14 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SSID_MAX_LEN, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %20 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %24 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %27 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @os_memcpy(i32* %22, i64 %25, i32 %28)
  %30 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %31 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %34 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %37 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %18, %2
  %40 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %41 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @WPS_AUTH_WPA2, align 4
  %44 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %50 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @WPS_AUTH_WPA, align 4
  %53 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %59 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %58, i32 0, i32 1
  store i32 3, i32* %59, align 4
  br label %89

60:                                               ; preds = %48, %39
  %61 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %62 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @WPS_AUTH_WPA2, align 4
  %65 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %71 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %70, i32 0, i32 1
  store i32 2, i32* %71, align 4
  br label %88

72:                                               ; preds = %60
  %73 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %74 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @WPS_AUTH_WPA, align 4
  %77 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %83 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %87

84:                                               ; preds = %72
  %85 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %86 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %81
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %57
  %90 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %91 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %307

94:                                               ; preds = %89
  %95 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %96 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WPS_AUTH_WPA2, align 4
  %99 = load i32, i32* @WPS_AUTH_WPA, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %94
  %104 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X, align 4
  %105 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %106 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %103, %94
  %108 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %109 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %112 = load i32, i32* @WPS_AUTH_WPAPSK, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %118 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %119 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %107
  %121 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %122 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %121, i32 0, i32 9
  store i32 0, i32* %122, align 4
  %123 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %124 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @WPS_ENCR_AES, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %120
  %130 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %131 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @HOSTAPD_MODE_IEEE80211AD, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load i32, i32* @WPA_CIPHER_GCMP, align 4
  %139 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %140 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  br label %149

143:                                              ; preds = %129
  %144 = load i32, i32* @WPA_CIPHER_CCMP, align 4
  %145 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %146 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %143, %137
  br label %150

150:                                              ; preds = %149, %120
  %151 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %152 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @WPS_ENCR_TKIP, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %159 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %160 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %159, i32 0, i32 9
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %150
  %164 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %165 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %164, i32 0, i32 9
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %168 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %167, i32 0, i32 8
  store i32 %166, i32* %168, align 8
  %169 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %170 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %173 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %176 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @wpa_select_ap_group_cipher(i32 %171, i32 %174, i32 %177)
  %179 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %180 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %179, i32 0, i32 10
  store i32 %178, i32* %180, align 8
  %181 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %182 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %181, i32 0, i32 1
  %183 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %182, align 8
  %184 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %207

187:                                              ; preds = %163
  %188 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %189 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @WPS_AUTH_WPA2PSK, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %187
  %195 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %196 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @PMK_LEN, align 4
  %199 = mul nsw i32 2, %198
  %200 = icmp ne i32 %197, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %194
  %202 = load i32, i32* @WPA_KEY_MGMT_SAE, align 4
  %203 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %204 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %202
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %201, %194, %187, %163
  %208 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %209 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp sge i32 %210, 8
  br i1 %211, label %212, label %254

212:                                              ; preds = %207
  %213 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %214 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = icmp slt i32 %215, 64
  br i1 %216, label %217, label %254

217:                                              ; preds = %212
  %218 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %219 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @os_free(i32* %221)
  %223 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %224 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 1
  %227 = call i8* @os_zalloc(i32 %226)
  %228 = bitcast i8* %227 to i32*
  %229 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %230 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 2
  store i32* %228, i32** %231, align 8
  %232 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %233 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %232, i32 0, i32 5
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %249

237:                                              ; preds = %217
  %238 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %239 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %243 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %242, i32 0, i32 4
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %246 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @os_memcpy(i32* %241, i64 %244, i32 %247)
  br label %249

249:                                              ; preds = %237, %217
  %250 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %251 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 3
  %253 = call i32 @hostapd_config_clear_wpa_psk(%struct.TYPE_6__** %252)
  br label %304

254:                                              ; preds = %212, %207
  %255 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %256 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 64
  br i1 %258, label %259, label %303

259:                                              ; preds = %254
  %260 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %261 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 3
  %263 = call i32 @hostapd_config_clear_wpa_psk(%struct.TYPE_6__** %262)
  %264 = call i8* @os_zalloc(i32 4)
  %265 = bitcast i8* %264 to %struct.TYPE_6__*
  %266 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %267 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 3
  store %struct.TYPE_6__* %265, %struct.TYPE_6__** %268, align 8
  %269 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %270 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 3
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %271, align 8
  %273 = icmp ne %struct.TYPE_6__* %272, null
  br i1 %273, label %274, label %302

274:                                              ; preds = %259
  %275 = load %struct.wps_credential*, %struct.wps_credential** %4, align 8
  %276 = getelementptr inbounds %struct.wps_credential, %struct.wps_credential* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %280 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @PMK_LEN, align 4
  %286 = call i64 @hexstr2bin(i8* %278, i32 %284, i32 %285)
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %302

288:                                              ; preds = %274
  %289 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %290 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i32 0, i32 3
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  store i32 1, i32* %293, align 4
  %294 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %295 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 2
  %297 = load i32*, i32** %296, align 8
  %298 = call i32 @os_free(i32* %297)
  %299 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %300 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 2
  store i32* null, i32** %301, align 8
  br label %302

302:                                              ; preds = %288, %274, %259
  br label %303

303:                                              ; preds = %302, %254
  br label %304

304:                                              ; preds = %303, %249
  %305 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %306 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %305, i32 0, i32 4
  store i32 1, i32* %306, align 4
  br label %310

307:                                              ; preds = %89
  %308 = load %struct.hostapd_bss_config*, %struct.hostapd_bss_config** %5, align 8
  %309 = getelementptr inbounds %struct.hostapd_bss_config, %struct.hostapd_bss_config* %308, i32 0, i32 4
  store i32 1, i32* %309, align 4
  br label %310

310:                                              ; preds = %307, %304
  %311 = load i32, i32* @wps_reload_config, align 4
  %312 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %313 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = call i32 @eloop_register_timeout(i32 0, i32 100000, i32 %311, i32 %314, i32* null)
  ret i32 0
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_memcpy(i32*, i64, i32) #1

declare dso_local i32 @wpa_select_ap_group_cipher(i32, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i8* @os_zalloc(i32) #1

declare dso_local i32 @hostapd_config_clear_wpa_psk(%struct.TYPE_6__**) #1

declare dso_local i64 @hexstr2bin(i8*, i32, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
