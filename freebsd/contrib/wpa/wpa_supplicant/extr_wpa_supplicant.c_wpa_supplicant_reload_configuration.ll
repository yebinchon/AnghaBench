; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_reload_configuration.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_reload_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i64, i32, i32*, %struct.wpa_config*, i32, i32, i64, i32*, i32* }
%struct.wpa_config = type { i32, i32, i32, i64 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Failed to parse the configuration file '%s' - exiting\00", align 1
@WPA_AUTHENTICATING = common dso_local global i64 0, align 8
@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_DPP = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Reconfiguration completed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_reload_configuration(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca %struct.wpa_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 10
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %226

12:                                               ; preds = %1
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 10
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.wpa_config* @wpa_config_read(i32* %15, %struct.wpa_config* null)
  store %struct.wpa_config* %16, %struct.wpa_config** %4, align 8
  %17 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %18 = icmp eq %struct.wpa_config* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %21 = load i32, i32* @MSG_ERROR, align 4
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 10
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @wpa_msg(%struct.wpa_supplicant* %20, i32 %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32* %24)
  store i32 -1, i32* %2, align 4
  br label %226

26:                                               ; preds = %12
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %28 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %27, i32 0, i32 9
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %33 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %32, i32 0, i32 9
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %36 = call %struct.wpa_config* @wpa_config_read(i32* %34, %struct.wpa_config* %35)
  %37 = icmp ne %struct.wpa_config* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %40 = load i32, i32* @MSG_ERROR, align 4
  %41 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %42 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %41, i32 0, i32 9
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @wpa_msg(%struct.wpa_supplicant* %39, i32 %40, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32* %43)
  store i32 -1, i32* %2, align 4
  br label %226

45:                                               ; preds = %31, %26
  %46 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %47 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %46, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %49 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %55, i32 0, i32 5
  %57 = load %struct.wpa_config*, %struct.wpa_config** %56, align 8
  %58 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = icmp ne i32 %54, %63
  br i1 %64, label %90, label %65

65:                                               ; preds = %45
  %66 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %67 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %72 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %71, i32 0, i32 5
  %73 = load %struct.wpa_config*, %struct.wpa_config** %72, align 8
  %74 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %79 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 5
  %83 = load %struct.wpa_config*, %struct.wpa_config** %82, align 8
  %84 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @os_strcmp(i64 %80, i64 %85)
  %87 = icmp ne i64 %86, 0
  br label %88

88:                                               ; preds = %77, %70, %65
  %89 = phi i1 [ false, %70 ], [ false, %65 ], [ %87, %77 ]
  br label %90

90:                                               ; preds = %88, %45
  %91 = phi i1 [ true, %45 ], [ %89, %88 ]
  %92 = zext i1 %91 to i32
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %97 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %95
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @wpa_supplicant_ctrl_iface_deinit(i32* %103)
  %105 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %106 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %105, i32 0, i32 4
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %100, %95, %90
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @eapol_sm_invalidate_cached_session(i32 %110)
  %112 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %113 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %107
  %117 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %118 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @WPA_AUTHENTICATING, align 8
  %121 = icmp sge i64 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %124 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %123, i32 0, i32 1
  store i32 1, i32* %124, align 8
  br label %125

125:                                              ; preds = %122, %116
  %126 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %127 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %128 = call i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %107
  %130 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %131 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @wpa_key_mgmt_wpa_psk(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %129
  %136 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %137 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @WPA_KEY_MGMT_OWE, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %143 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @WPA_KEY_MGMT_DPP, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %141, %135, %129
  %148 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %149 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %148, i32 0, i32 7
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @FALSE, align 4
  %152 = call i32 @eapol_sm_notify_eap_success(i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %147, %141
  %154 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %155 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @eapol_sm_notify_config(i32 %156, i32* null, i32* null)
  %158 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %159 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @wpa_sm_set_config(i32 %160, i32* null)
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %163 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @wpa_sm_pmksa_cache_flush(i32 %164, i32* null)
  %166 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %167 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %170 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %169, i32 0, i32 5
  %171 = load %struct.wpa_config*, %struct.wpa_config** %170, align 8
  %172 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @wpa_sm_set_fast_reauth(i32 %168, i32 %173)
  %175 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %176 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @rsn_preauth_deinit(i32 %177)
  %179 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %180 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %179, i32 0, i32 5
  %181 = load %struct.wpa_config*, %struct.wpa_config** %180, align 8
  %182 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %6, align 4
  %184 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %185 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %184, i32 0, i32 5
  %186 = load %struct.wpa_config*, %struct.wpa_config** %185, align 8
  %187 = call i32 @wpa_config_free(%struct.wpa_config* %186)
  %188 = load %struct.wpa_config*, %struct.wpa_config** %4, align 8
  %189 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %190 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %189, i32 0, i32 5
  store %struct.wpa_config* %188, %struct.wpa_config** %190, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %193 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %192, i32 0, i32 5
  %194 = load %struct.wpa_config*, %struct.wpa_config** %193, align 8
  %195 = getelementptr inbounds %struct.wpa_config, %struct.wpa_config* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %191, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %153
  %199 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %200 = call i32 @wpas_notify_ap_scan_changed(%struct.wpa_supplicant* %199)
  br label %201

201:                                              ; preds = %198, %153
  %202 = load i32, i32* %5, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %201
  %205 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %206 = call i32* @wpa_supplicant_ctrl_iface_init(%struct.wpa_supplicant* %205)
  %207 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %208 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %207, i32 0, i32 4
  store i32* %206, i32** %208, align 8
  br label %209

209:                                              ; preds = %204, %201
  %210 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %211 = call i32 @wpa_supplicant_update_config(%struct.wpa_supplicant* %210)
  %212 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %213 = call i32 @wpa_supplicant_clear_status(%struct.wpa_supplicant* %212)
  %214 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %215 = call i64 @wpa_supplicant_enabled_networks(%struct.wpa_supplicant* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %209
  %218 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %219 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %218, i32 0, i32 3
  store i32 1, i32* %219, align 8
  %220 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %221 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %220, i32 0, i32 0)
  br label %222

222:                                              ; preds = %217, %209
  %223 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %224 = load i32, i32* @MSG_DEBUG, align 4
  %225 = call i32 @wpa_dbg(%struct.wpa_supplicant* %223, i32 %224, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %226

226:                                              ; preds = %222, %38, %19, %11
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.wpa_config* @wpa_config_read(i32*, %struct.wpa_config*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, i32*) #1

declare dso_local i64 @os_strcmp(i64, i64) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_deinit(i32*) #1

declare dso_local i32 @eapol_sm_invalidate_cached_session(i32) #1

declare dso_local i32 @wpa_supplicant_deauthenticate(%struct.wpa_supplicant*, i32) #1

declare dso_local i64 @wpa_key_mgmt_wpa_psk(i64) #1

declare dso_local i32 @eapol_sm_notify_eap_success(i32, i32) #1

declare dso_local i32 @eapol_sm_notify_config(i32, i32*, i32*) #1

declare dso_local i32 @wpa_sm_set_config(i32, i32*) #1

declare dso_local i32 @wpa_sm_pmksa_cache_flush(i32, i32*) #1

declare dso_local i32 @wpa_sm_set_fast_reauth(i32, i32) #1

declare dso_local i32 @rsn_preauth_deinit(i32) #1

declare dso_local i32 @wpa_config_free(%struct.wpa_config*) #1

declare dso_local i32 @wpas_notify_ap_scan_changed(%struct.wpa_supplicant*) #1

declare dso_local i32* @wpa_supplicant_ctrl_iface_init(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_update_config(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_clear_status(%struct.wpa_supplicant*) #1

declare dso_local i64 @wpa_supplicant_enabled_networks(%struct.wpa_supplicant*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
