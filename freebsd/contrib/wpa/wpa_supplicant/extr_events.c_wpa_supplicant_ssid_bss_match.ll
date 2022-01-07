; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_ssid_bss_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_ssid_bss_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64 }
%struct.wpa_ssid = type { i32, i64*, i64, i32, i32, i32, i32, i64, i64 }
%struct.wpa_bss = type { i32 }
%struct.wpa_ie_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@WPA_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_IEEE8021X_NO_WPA = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_PROTO_OSEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"   skip RSN IE - parse failed\00", align 1
@WPA_CIPHER_WEP40 = common dso_local global i32 0, align 4
@WPA_CIPHER_WEP104 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"   selected based on TSN in RSN IE\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"   skip RSN IE - proto mismatch\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"   skip RSN IE - PTK cipher mismatch\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"   skip RSN IE - GTK cipher mismatch\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"   skip RSN IE - group mgmt cipher mismatch\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"   skip RSN IE - key mgmt mismatch\00", align 1
@WPA_CAPABILITY_MFPR = common dso_local global i32 0, align 4
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [69 x i8] c"   skip RSN IE - no mgmt frame protection enabled but AP requires it\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"   selected based on RSN IE\00", align 1
@WPA_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WPA_PROTO_WPA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"   skip WPA IE - parse failed\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"   selected based on TSN in WPA IE\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"   skip WPA IE - proto mismatch\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"   skip WPA IE - PTK cipher mismatch\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"   skip WPA IE - GTK cipher mismatch\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"   skip WPA IE - key mgmt mismatch\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"   selected based on WPA IE\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"   allow for non-WPA IEEE 802.1X\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"   skip - no WPA/RSN proto match\00", align 1
@WPA_KEY_MGMT_OSEN = common dso_local global i32 0, align 4
@OSEN_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"   allow in OSEN\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"   allow in non-WPA/WPA2\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"   reject due to mismatch with WPA/WPA2\00", align 1
@MAX_OWE_TRANSITION_BSS_SELECT_COUNT = common dso_local global i64 0, align 8
@MBO_ATTR_ID_AP_CAPA_IND = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_REQUIRED = common dso_local global i64 0, align 8
@OWE_IE_VENDOR_TYPE = common dso_local global i32 0, align 4
@WPA_CAPABILITY_MFPC = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.wpa_bss*, i32)* @wpa_supplicant_ssid_bss_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ssid_bss_match(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.wpa_bss* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca %struct.wpa_bss*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_ie_data, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %7, align 8
  store %struct.wpa_bss* %2, %struct.wpa_bss** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %18 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %19 = call i32 @wpas_wps_ssid_bss_match(%struct.wpa_supplicant* %16, %struct.wpa_ssid* %17, %struct.wpa_bss* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %14, align 4
  store i32 %23, i32* %5, align 4
  br label %469

24:                                               ; preds = %4
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %26 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @wpa_key_mgmt_wpa(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %56, label %30

30:                                               ; preds = %24
  %31 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %32 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WPA_KEY_MGMT_NONE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %39 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %42 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %37, %30
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %47, %37
  %55 = phi i1 [ true, %37 ], [ %53, %47 ]
  br label %56

56:                                               ; preds = %54, %24
  %57 = phi i1 [ false, %24 ], [ %55, %54 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %60 = load i32, i32* @WLAN_EID_RSN, align 4
  %61 = call i64* @wpa_bss_get_ie(%struct.wpa_bss* %59, i32 %60)
  store i64* %61, i64** %12, align 8
  br label %62

62:                                               ; preds = %56
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %64 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @WPA_PROTO_RSN, align 4
  %67 = load i32, i32* @WPA_PROTO_OSEN, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i64*, i64** %12, align 8
  %73 = icmp ne i64* %72, null
  br label %74

74:                                               ; preds = %71, %62
  %75 = phi i1 [ false, %62 ], [ %73, %71 ]
  br i1 %75, label %76, label %255

76:                                               ; preds = %74
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load i64*, i64** %12, align 8
  %80 = load i64*, i64** %12, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 2, %82
  %84 = call i64 @wpa_parse_wpa_ie(i64* %79, i64 %83, %struct.wpa_ie_data* %10)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %90, i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %86
  br label %255

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %100 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @wpa_default_rsn_cipher(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %94
  %106 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %105
  %110 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %111 = getelementptr inbounds %struct.wpa_bss, %struct.wpa_bss* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @wpa_default_rsn_cipher(i32 %112)
  %114 = ptrtoint i8* %113 to i32
  %115 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %105
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  %123 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %119
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %131, i32 %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %130, %127
  store i32 1, i32* %5, align 4
  br label %469

135:                                              ; preds = %119, %116
  %136 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %139 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = and i32 %137, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %158, label %143

143:                                              ; preds = %135
  %144 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %145 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @WPA_PROTO_OSEN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %154, i32 %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %153, %150
  br label %255

158:                                              ; preds = %143, %135
  %159 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %162 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %171 = load i32, i32* @MSG_DEBUG, align 4
  %172 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %170, i32 %171, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %173

173:                                              ; preds = %169, %166
  br label %255

174:                                              ; preds = %158
  %175 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %178 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %176, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %174
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %187 = load i32, i32* @MSG_DEBUG, align 4
  %188 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %186, i32 %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %189

189:                                              ; preds = %185, %182
  br label %255

190:                                              ; preds = %174
  %191 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %192 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %211

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %199 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %198, i32 0, i32 6
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %197, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %9, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %207, i32 %208, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %203
  br label %255

211:                                              ; preds = %195, %190
  %212 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %215 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %213, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %211
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %219
  %223 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %224 = load i32, i32* @MSG_DEBUG, align 4
  %225 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %223, i32 %224, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %226

226:                                              ; preds = %222, %219
  br label %255

227:                                              ; preds = %211
  %228 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @WPA_CAPABILITY_MFPR, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %247

233:                                              ; preds = %227
  %234 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %235 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %236 = call i64 @wpas_get_ssid_pmf(%struct.wpa_supplicant* %234, %struct.wpa_ssid* %235)
  %237 = load i64, i64* @NO_MGMT_FRAME_PROTECTION, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %247

239:                                              ; preds = %233
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %239
  %243 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %244 = load i32, i32* @MSG_DEBUG, align 4
  %245 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %243, i32 %244, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.7, i64 0, i64 0))
  br label %246

246:                                              ; preds = %242, %239
  br label %255

247:                                              ; preds = %233, %227
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %252 = load i32, i32* @MSG_DEBUG, align 4
  %253 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %251, i32 %252, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %254

254:                                              ; preds = %250, %247
  store i32 1, i32* %5, align 4
  br label %469

255:                                              ; preds = %246, %226, %210, %189, %173, %157, %93, %74
  %256 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %257 = load i32, i32* @WPA_IE_VENDOR_TYPE, align 4
  %258 = call i64* @wpa_bss_get_vendor_ie(%struct.wpa_bss* %256, i32 %257)
  store i64* %258, i64** %13, align 8
  br label %259

259:                                              ; preds = %255
  %260 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %261 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @WPA_PROTO_WPA, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %259
  %267 = load i64*, i64** %13, align 8
  %268 = icmp ne i64* %267, null
  br label %269

269:                                              ; preds = %266, %259
  %270 = phi i1 [ false, %259 ], [ %268, %266 ]
  br i1 %270, label %271, label %380

271:                                              ; preds = %269
  %272 = load i32, i32* %11, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %11, align 4
  %274 = load i64*, i64** %13, align 8
  %275 = load i64*, i64** %13, align 8
  %276 = getelementptr inbounds i64, i64* %275, i64 1
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 2, %277
  %279 = call i64 @wpa_parse_wpa_ie(i64* %274, i64 %278, %struct.wpa_ie_data* %10)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %271
  %282 = load i32, i32* %9, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %286 = load i32, i32* @MSG_DEBUG, align 4
  %287 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %285, i32 %286, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %288

288:                                              ; preds = %284, %281
  br label %380

289:                                              ; preds = %271
  %290 = load i32, i32* %15, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %308

292:                                              ; preds = %289
  %293 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @WPA_CIPHER_WEP40, align 4
  %296 = load i32, i32* @WPA_CIPHER_WEP104, align 4
  %297 = or i32 %295, %296
  %298 = and i32 %294, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %292
  %301 = load i32, i32* %9, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %307

303:                                              ; preds = %300
  %304 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %305 = load i32, i32* @MSG_DEBUG, align 4
  %306 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %304, i32 %305, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %307

307:                                              ; preds = %303, %300
  store i32 1, i32* %5, align 4
  br label %469

308:                                              ; preds = %292, %289
  %309 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %312 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = and i32 %310, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %324, label %316

316:                                              ; preds = %308
  %317 = load i32, i32* %9, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %321 = load i32, i32* @MSG_DEBUG, align 4
  %322 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %320, i32 %321, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  br label %323

323:                                              ; preds = %319, %316
  br label %380

324:                                              ; preds = %308
  %325 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %328 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 4
  %330 = and i32 %326, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %340, label %332

332:                                              ; preds = %324
  %333 = load i32, i32* %9, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %332
  %336 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %337 = load i32, i32* @MSG_DEBUG, align 4
  %338 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %336, i32 %337, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %339

339:                                              ; preds = %335, %332
  br label %380

340:                                              ; preds = %324
  %341 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %344 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = and i32 %342, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %340
  %349 = load i32, i32* %9, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %348
  %352 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %353 = load i32, i32* @MSG_DEBUG, align 4
  %354 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %352, i32 %353, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  br label %355

355:                                              ; preds = %351, %348
  br label %380

356:                                              ; preds = %340
  %357 = getelementptr inbounds %struct.wpa_ie_data, %struct.wpa_ie_data* %10, i32 0, i32 4
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %360 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = and i32 %358, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %372, label %364

364:                                              ; preds = %356
  %365 = load i32, i32* %9, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %364
  %368 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %369 = load i32, i32* @MSG_DEBUG, align 4
  %370 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %368, i32 %369, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  br label %371

371:                                              ; preds = %367, %364
  br label %380

372:                                              ; preds = %356
  %373 = load i32, i32* %9, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %377 = load i32, i32* @MSG_DEBUG, align 4
  %378 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %376, i32 %377, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0))
  br label %379

379:                                              ; preds = %375, %372
  store i32 1, i32* %5, align 4
  br label %469

380:                                              ; preds = %371, %355, %339, %323, %288, %269
  %381 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %382 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @WPA_KEY_MGMT_IEEE8021X_NO_WPA, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %401

387:                                              ; preds = %380
  %388 = load i64*, i64** %13, align 8
  %389 = icmp ne i64* %388, null
  br i1 %389, label %401, label %390

390:                                              ; preds = %387
  %391 = load i64*, i64** %12, align 8
  %392 = icmp ne i64* %391, null
  br i1 %392, label %401, label %393

393:                                              ; preds = %390
  %394 = load i32, i32* %9, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %398 = load i32, i32* @MSG_DEBUG, align 4
  %399 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %397, i32 %398, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  br label %400

400:                                              ; preds = %396, %393
  store i32 1, i32* %5, align 4
  br label %469

401:                                              ; preds = %390, %387, %380
  %402 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %403 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %402, i32 0, i32 3
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @WPA_PROTO_WPA, align 4
  %406 = load i32, i32* @WPA_PROTO_RSN, align 4
  %407 = or i32 %405, %406
  %408 = and i32 %404, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %427

410:                                              ; preds = %401
  %411 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %412 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = call i64 @wpa_key_mgmt_wpa(i32 %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %427

416:                                              ; preds = %410
  %417 = load i32, i32* %11, align 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %416
  %420 = load i32, i32* %9, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %419
  %423 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %424 = load i32, i32* @MSG_DEBUG, align 4
  %425 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %423, i32 %424, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  br label %426

426:                                              ; preds = %422, %419
  store i32 0, i32* %5, align 4
  br label %469

427:                                              ; preds = %416, %410, %401
  %428 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %429 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 8
  %431 = load i32, i32* @WPA_KEY_MGMT_OSEN, align 4
  %432 = and i32 %430, %431
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %447

434:                                              ; preds = %427
  %435 = load %struct.wpa_bss*, %struct.wpa_bss** %8, align 8
  %436 = load i32, i32* @OSEN_IE_VENDOR_TYPE, align 4
  %437 = call i64* @wpa_bss_get_vendor_ie(%struct.wpa_bss* %435, i32 %436)
  %438 = icmp ne i64* %437, null
  br i1 %438, label %439, label %447

439:                                              ; preds = %434
  %440 = load i32, i32* %9, align 4
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %446

442:                                              ; preds = %439
  %443 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %444 = load i32, i32* @MSG_DEBUG, align 4
  %445 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %443, i32 %444, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  br label %446

446:                                              ; preds = %442, %439
  store i32 1, i32* %5, align 4
  br label %469

447:                                              ; preds = %434, %427
  %448 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %449 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = call i64 @wpa_key_mgmt_wpa(i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %461, label %453

453:                                              ; preds = %447
  %454 = load i32, i32* %9, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %453
  %457 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %458 = load i32, i32* @MSG_DEBUG, align 4
  %459 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %457, i32 %458, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  br label %460

460:                                              ; preds = %456, %453
  store i32 1, i32* %5, align 4
  br label %469

461:                                              ; preds = %447
  %462 = load i32, i32* %9, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %468

464:                                              ; preds = %461
  %465 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %466 = load i32, i32* @MSG_DEBUG, align 4
  %467 = call i32 (%struct.wpa_supplicant*, i32, i8*, ...) @wpa_dbg(%struct.wpa_supplicant* %465, i32 %466, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0))
  br label %468

468:                                              ; preds = %464, %461
  store i32 0, i32* %5, align 4
  br label %469

469:                                              ; preds = %468, %460, %446, %426, %400, %379, %307, %254, %134, %22
  %470 = load i32, i32* %5, align 4
  ret i32 %470
}

declare dso_local i32 @wpas_wps_ssid_bss_match(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.wpa_bss*) #1

declare dso_local i64 @wpa_key_mgmt_wpa(i32) #1

declare dso_local i64* @wpa_bss_get_ie(%struct.wpa_bss*, i32) #1

declare dso_local i64 @wpa_parse_wpa_ie(i64*, i64, %struct.wpa_ie_data*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, ...) #1

declare dso_local i8* @wpa_default_rsn_cipher(i32) #1

declare dso_local i64 @wpas_get_ssid_pmf(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i64* @wpa_bss_get_vendor_ie(%struct.wpa_bss*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
