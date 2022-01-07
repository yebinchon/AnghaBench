; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_add_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_dpp_supplicant.c_wpas_dpp_add_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i32, i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i8* }
%struct.wpa_supplicant = type { i32, i32 }
%struct.dpp_authentication = type { i64, i8*, i32, i32, i64*, i64, i32, i64, i64, i32 }

@WPA_KEY_MGMT_DPP = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_REQUIRED = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK_SHA256 = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_OPTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@PMK_LEN = common dso_local global i8* null, align 8
@DPP_AKM_SAE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SAE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_ssid* (%struct.wpa_supplicant*, %struct.dpp_authentication*)* @wpas_dpp_add_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_ssid* @wpas_dpp_add_network(%struct.wpa_supplicant* %0, %struct.dpp_authentication* %1) #0 {
  %3 = alloca %struct.wpa_ssid*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.dpp_authentication* %1, %struct.dpp_authentication** %5, align 8
  %7 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %8 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.wpa_ssid* @wpa_config_add_network(i32 %9)
  store %struct.wpa_ssid* %10, %struct.wpa_ssid** %6, align 8
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %12 = icmp ne %struct.wpa_ssid* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %3, align 8
  br label %257

14:                                               ; preds = %2
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %17 = call i32 @wpas_notify_network_added(%struct.wpa_supplicant* %15, %struct.wpa_ssid* %16)
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %19 = call i32 @wpa_config_set_network_defaults(%struct.wpa_ssid* %18)
  %20 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %21 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %23 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @os_malloc(i8* %24)
  %26 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %26, i32 0, i32 14
  store i8* %25, i8** %27, align 8
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 14
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %14
  br label %246

33:                                               ; preds = %14
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %35 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %34, i32 0, i32 14
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %38 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %41 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @os_memcpy(i8* %36, i32 %39, i8* %42)
  %44 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %45 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %48 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %50 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %33
  %54 = load i32, i32* @WPA_KEY_MGMT_DPP, align 4
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %56 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @MGMT_FRAME_PROTECTION_REQUIRED, align 4
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %59 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %61 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @os_strdup(i64 %62)
  %64 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %65 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %64, i32 0, i32 13
  store i32 %63, i32* %65, align 8
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %66, i32 0, i32 13
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %53
  br label %246

71:                                               ; preds = %53
  br label %72

72:                                               ; preds = %71, %33
  %73 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %74 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %73, i32 0, i32 8
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %72
  %78 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %79 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @wpabuf_len(i64 %80)
  %82 = call i8* @os_malloc(i8* %81)
  %83 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %84 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %83, i32 0, i32 12
  store i8* %82, i8** %84, align 8
  %85 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %86 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %85, i32 0, i32 12
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %77
  br label %246

90:                                               ; preds = %77
  %91 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %92 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %91, i32 0, i32 12
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %95 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %94, i32 0, i32 8
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @wpabuf_head(i64 %96)
  %98 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %99 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @wpabuf_len(i64 %100)
  %102 = call i32 @os_memcpy(i8* %93, i32 %97, i8* %101)
  %103 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %104 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %103, i32 0, i32 8
  %105 = load i64, i64* %104, align 8
  %106 = call i8* @wpabuf_len(i64 %105)
  %107 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %108 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %107, i32 0, i32 11
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %90, %72
  %110 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %111 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %110, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %151

114:                                              ; preds = %109
  %115 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %116 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = call i8* @wpabuf_len(i64 %117)
  %119 = call i8* @os_malloc(i8* %118)
  %120 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %121 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %120, i32 0, i32 10
  store i8* %119, i8** %121, align 8
  %122 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %123 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %122, i32 0, i32 10
  %124 = load i8*, i8** %123, align 8
  %125 = icmp ne i8* %124, null
  br i1 %125, label %127, label %126

126:                                              ; preds = %114
  br label %246

127:                                              ; preds = %114
  %128 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %129 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %128, i32 0, i32 10
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %132 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %131, i32 0, i32 7
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @wpabuf_head(i64 %133)
  %135 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %136 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @wpabuf_len(i64 %137)
  %139 = call i32 @os_memcpy(i8* %130, i32 %134, i8* %138)
  %140 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %141 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %140, i32 0, i32 7
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @wpabuf_len(i64 %142)
  %144 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %145 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %144, i32 0, i32 9
  store i8* %143, i8** %145, align 8
  %146 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %147 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %150 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %127, %109
  %152 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %153 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %151
  %157 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %158 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @dpp_akm_psk(i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %164 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @dpp_akm_sae(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %244

168:                                              ; preds = %162, %156, %151
  %169 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %170 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %168
  %174 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %175 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %174, i32 0, i32 2
  store i32 0, i32* %175, align 8
  br label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %178 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @dpp_akm_psk(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %176
  %183 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %184 = load i32, i32* @WPA_KEY_MGMT_PSK_SHA256, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @WPA_KEY_MGMT_FT_PSK, align 4
  %187 = or i32 %185, %186
  %188 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %189 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %182, %176
  %193 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %194 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i64 @dpp_akm_sae(i64 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %192
  %199 = load i32, i32* @WPA_KEY_MGMT_SAE, align 4
  %200 = load i32, i32* @WPA_KEY_MGMT_FT_SAE, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %203 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %198, %192
  %207 = load i32, i32* @MGMT_FRAME_PROTECTION_OPTIONAL, align 4
  %208 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %209 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %208, i32 0, i32 7
  store i32 %207, i32* %209, align 4
  %210 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %211 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %210, i32 0, i32 4
  %212 = load i64*, i64** %211, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %206
  %217 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %218 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %219 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %218, i32 0, i32 4
  %220 = load i64*, i64** %219, align 8
  %221 = call i64 @wpa_config_set_quoted(%struct.wpa_ssid* %217, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %220)
  %222 = icmp slt i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %246

224:                                              ; preds = %216
  %225 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %226 = call i32 @wpa_config_update_psk(%struct.wpa_ssid* %225)
  %227 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %228 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %227, i32 0, i32 3
  store i32 1, i32* %228, align 4
  br label %243

229:                                              ; preds = %206
  %230 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %231 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %234 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %233, i32 0, i32 6
  store i32 %232, i32* %234, align 8
  %235 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %236 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %235, i32 0, i32 5
  %237 = load i8*, i8** %236, align 8
  %238 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %239 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = load i8*, i8** @PMK_LEN, align 8
  %242 = call i32 @os_memcpy(i8* %237, i32 %240, i8* %241)
  br label %243

243:                                              ; preds = %229, %224
  br label %244

244:                                              ; preds = %243, %162
  %245 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  store %struct.wpa_ssid* %245, %struct.wpa_ssid** %3, align 8
  br label %257

246:                                              ; preds = %223, %126, %89, %70, %32
  %247 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %248 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %249 = call i32 @wpas_notify_network_removed(%struct.wpa_supplicant* %247, %struct.wpa_ssid* %248)
  %250 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %251 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %254 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @wpa_config_remove_network(i32 %252, i32 %255)
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %3, align 8
  br label %257

257:                                              ; preds = %246, %244, %13
  %258 = load %struct.wpa_ssid*, %struct.wpa_ssid** %3, align 8
  ret %struct.wpa_ssid* %258
}

declare dso_local %struct.wpa_ssid* @wpa_config_add_network(i32) #1

declare dso_local i32 @wpas_notify_network_added(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_set_network_defaults(%struct.wpa_ssid*) #1

declare dso_local i8* @os_malloc(i8*) #1

declare dso_local i32 @os_memcpy(i8*, i32, i8*) #1

declare dso_local i32 @os_strdup(i64) #1

declare dso_local i8* @wpabuf_len(i64) #1

declare dso_local i32 @wpabuf_head(i64) #1

declare dso_local i64 @dpp_akm_psk(i64) #1

declare dso_local i64 @dpp_akm_sae(i64) #1

declare dso_local i64 @wpa_config_set_quoted(%struct.wpa_ssid*, i8*, i64*) #1

declare dso_local i32 @wpa_config_update_psk(%struct.wpa_ssid*) #1

declare dso_local i32 @wpas_notify_network_removed(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_remove_network(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
