; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_get_pmk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_supplicant_get_pmk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, %struct.rsn_pmksa_cache_entry*, i64, i32, i32, i32, i32*, i32*, i64, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.rsn_pmksa_cache_entry = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RSN: found matching PMKID from PMKSA cache\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"RSN: no matching PMKID found\00", align 1
@PMKID_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"RSN: matched PMKID\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"RSN: PMK from PMKSA cache\00", align 1
@PMK_LEN_SUITE_B_192 = common dso_local global i32 0, align 4
@PMK_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"WPA: PMK from EAPOL state machines\00", align 1
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"RSN: the new PMK matches with the PMKID\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [77 x i8] c"RSN: PMKID mismatch - authentication server may have derived different MSK?!\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [88 x i8] c"WPA: Failed to get master session key from EAPOL state machines - key handshake aborted\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"RSN: Cancelled PMKSA caching attempt\00", align 1
@WPA_KEY_MGMT_OSEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [60 x i8] c"RSN: no PMKSA entry found - trigger full EAP authentication\00", align 1
@IEEE802_1X_TYPE_EAPOL_START = common dso_local global i32 0, align 4
@ETH_P_EAPOL = common dso_local global i32 0, align 4
@SHA384_MAC_LEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_FT_SAE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, i8*, i32*)* @wpa_supplicant_get_pmk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_get_pmk(%struct.wpa_sm* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_sm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rsn_pmksa_cache_entry*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %18, i32 0, i32 6
  %20 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %19, align 8
  %21 = icmp ne %struct.rsn_pmksa_cache_entry* %20, null
  br i1 %21, label %52, label %22

22:                                               ; preds = %17
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_get(i32 %25, i8* %26, i32* %27, i32* null, i32 0)
  %29 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %30 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %29, i32 0, i32 6
  store %struct.rsn_pmksa_cache_entry* %28, %struct.rsn_pmksa_cache_entry** %30, align 8
  %31 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %32 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %31, i32 0, i32 6
  %33 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %32, align 8
  %34 = icmp ne %struct.rsn_pmksa_cache_entry* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 @wpa_dbg(i32 %40, i32 %41, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %51

43:                                               ; preds = %22
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %45 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %44, i32 0, i32 5
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MSG_DEBUG, align 4
  %50 = call i32 @wpa_dbg(i32 %48, i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %51

51:                                               ; preds = %43, %35
  br label %52

52:                                               ; preds = %51, %17, %3
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %89

55:                                               ; preds = %52
  %56 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %56, i32 0, i32 6
  %58 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %57, align 8
  %59 = icmp ne %struct.rsn_pmksa_cache_entry* %58, null
  br i1 %59, label %60, label %89

60:                                               ; preds = %55
  %61 = load i32*, i32** %7, align 8
  %62 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %63 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %62, i32 0, i32 6
  %64 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %63, align 8
  %65 = getelementptr inbounds %struct.rsn_pmksa_cache_entry, %struct.rsn_pmksa_cache_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PMKID_LEN, align 4
  %68 = call i64 @os_memcmp_const(i32* %61, i32 %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %60
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* @PMKID_LEN, align 4
  %74 = call i32 @wpa_hexdump(i32 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32* %72, i32 %73)
  %75 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %76 = call i32 @wpa_sm_set_pmk_from_pmksa(%struct.wpa_sm* %75)
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %79 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %78, i32 0, i32 11
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %82 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @wpa_hexdump_key(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %80, i32 %83)
  %85 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %86 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %85, i32 0, i32 15
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @eapol_sm_notify_cached(i64 %87)
  br label %270

89:                                               ; preds = %60, %55, %52
  %90 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %91 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @wpa_key_mgmt_wpa_ieee8021x(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %269

95:                                               ; preds = %89
  %96 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %97 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %96, i32 0, i32 15
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %269

100:                                              ; preds = %95
  %101 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %102 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @wpa_key_mgmt_sha384(i64 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @PMK_LEN_SUITE_B_192, align 4
  store i32 %107, i32* %10, align 4
  br label %110

108:                                              ; preds = %100
  %109 = load i32, i32* @PMK_LEN, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %112 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %111, i32 0, i32 15
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %115 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %114, i32 0, i32 11
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @eapol_sm_get_key(i64 %113, i32* %116, i32 %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %110
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @PMK_LEN, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %127 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %126, i32 0, i32 15
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %130 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %129, i32 0, i32 11
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @eapol_sm_get_key(i64 %128, i32* %131, i32 16)
  store i32 %132, i32* %9, align 4
  store i32 16, i32* %10, align 4
  br label %133

133:                                              ; preds = %125, %121
  br label %134

134:                                              ; preds = %133, %110
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %240

137:                                              ; preds = %134
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %11, align 8
  store i32* null, i32** %12, align 8
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %140 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %139, i32 0, i32 11
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @wpa_hexdump_key(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32* %141, i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %146 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %148 = call i32 @wpa_supplicant_key_mgmt_set_pmk(%struct.wpa_sm* %147)
  %149 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %150 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @WPA_PROTO_RSN, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %186

154:                                              ; preds = %137
  %155 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %156 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @wpa_key_mgmt_suite_b(i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %186, label %160

160:                                              ; preds = %154
  %161 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %162 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call i64 @wpa_key_mgmt_ft(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %186, label %166

166:                                              ; preds = %160
  %167 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %168 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %167, i32 0, i32 8
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %171 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %170, i32 0, i32 11
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %10, align 4
  %174 = load i8*, i8** %6, align 8
  %175 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %176 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %175, i32 0, i32 10
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %179 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %182 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_add(i32 %169, i32* %172, i32 %173, i32* null, i32* null, i32 0, i8* %174, i32 %177, i32 %180, i64 %183, i32* %184)
  store %struct.rsn_pmksa_cache_entry* %185, %struct.rsn_pmksa_cache_entry** %11, align 8
  br label %186

186:                                              ; preds = %166, %160, %154, %137
  %187 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %188 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %187, i32 0, i32 6
  %189 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %188, align 8
  %190 = icmp ne %struct.rsn_pmksa_cache_entry* %189, null
  br i1 %190, label %210, label %191

191:                                              ; preds = %186
  %192 = load i32*, i32** %7, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %210

194:                                              ; preds = %191
  %195 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %196 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = load i32*, i32** %7, align 8
  %200 = call %struct.rsn_pmksa_cache_entry* @pmksa_cache_get(i32 %197, i8* %198, i32* %199, i32* null, i32 0)
  %201 = icmp ne %struct.rsn_pmksa_cache_entry* %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %194
  %203 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %204 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %203, i32 0, i32 5
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = call i32 @wpa_dbg(i32 %207, i32 %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %230

210:                                              ; preds = %194, %191, %186
  %211 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %11, align 8
  %212 = icmp ne %struct.rsn_pmksa_cache_entry* %211, null
  br i1 %212, label %213, label %229

213:                                              ; preds = %210
  %214 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %215 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %214, i32 0, i32 6
  %216 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %215, align 8
  %217 = icmp ne %struct.rsn_pmksa_cache_entry* %216, null
  br i1 %217, label %229, label %218

218:                                              ; preds = %213
  %219 = load i32*, i32** %7, align 8
  %220 = icmp ne i32* %219, null
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %223 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %222, i32 0, i32 5
  %224 = load %struct.TYPE_2__*, %struct.TYPE_2__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @MSG_INFO, align 4
  %228 = call i32 @wpa_msg(i32 %226, i32 %227, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.6, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %323

229:                                              ; preds = %218, %213, %210
  br label %230

230:                                              ; preds = %229, %202
  %231 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %232 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %231, i32 0, i32 6
  %233 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %232, align 8
  %234 = icmp ne %struct.rsn_pmksa_cache_entry* %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %230
  %236 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %11, align 8
  %237 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %238 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %237, i32 0, i32 6
  store %struct.rsn_pmksa_cache_entry* %236, %struct.rsn_pmksa_cache_entry** %238, align 8
  br label %239

239:                                              ; preds = %235, %230
  br label %268

240:                                              ; preds = %134
  %241 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %242 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %241, i32 0, i32 5
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @MSG_WARNING, align 4
  %247 = call i32 @wpa_msg(i32 %245, i32 %246, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.7, i64 0, i64 0))
  %248 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %249 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %248, i32 0, i32 6
  %250 = load %struct.rsn_pmksa_cache_entry*, %struct.rsn_pmksa_cache_entry** %249, align 8
  %251 = icmp ne %struct.rsn_pmksa_cache_entry* %250, null
  br i1 %251, label %252, label %262

252:                                              ; preds = %240
  %253 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %254 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %253, i32 0, i32 5
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @MSG_DEBUG, align 4
  %259 = call i32 @wpa_dbg(i32 %257, i32 %258, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  %260 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %261 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %260, i32 0, i32 6
  store %struct.rsn_pmksa_cache_entry* null, %struct.rsn_pmksa_cache_entry** %261, align 8
  store i32 1, i32* %8, align 4
  br label %267

262:                                              ; preds = %240
  %263 = load i32, i32* %8, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %262
  store i32 -1, i32* %4, align 4
  br label %323

266:                                              ; preds = %262
  br label %267

267:                                              ; preds = %266, %252
  br label %268

268:                                              ; preds = %267, %239
  br label %269

269:                                              ; preds = %268, %95, %89
  br label %270

270:                                              ; preds = %269, %70
  %271 = load i32, i32* %8, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %322

273:                                              ; preds = %270
  %274 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %275 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = call i64 @wpa_key_mgmt_wpa_ieee8021x(i64 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %322

279:                                              ; preds = %273
  %280 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %281 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %280, i32 0, i32 2
  %282 = load i64, i64* %281, align 8
  %283 = call i32 @wpa_key_mgmt_suite_b(i64 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %322, label %285

285:                                              ; preds = %279
  %286 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %287 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %286, i32 0, i32 2
  %288 = load i64, i64* %287, align 8
  %289 = call i64 @wpa_key_mgmt_ft(i64 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %322, label %291

291:                                              ; preds = %285
  %292 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %293 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @WPA_KEY_MGMT_OSEN, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %322

297:                                              ; preds = %291
  %298 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %299 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %298, i32 0, i32 5
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @MSG_DEBUG, align 4
  %304 = call i32 @wpa_dbg(i32 %302, i32 %303, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0))
  %305 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %306 = load i32, i32* @IEEE802_1X_TYPE_EAPOL_START, align 4
  %307 = call i32* @wpa_sm_alloc_eapol(%struct.wpa_sm* %305, i32 %306, i32* null, i32 0, i64* %14, i32* null)
  store i32* %307, i32** %13, align 8
  %308 = load i32*, i32** %13, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %321

310:                                              ; preds = %297
  %311 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %312 = load %struct.wpa_sm*, %struct.wpa_sm** %5, align 8
  %313 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @ETH_P_EAPOL, align 4
  %316 = load i32*, i32** %13, align 8
  %317 = load i64, i64* %14, align 8
  %318 = call i32 @wpa_sm_ether_send(%struct.wpa_sm* %311, i32 %314, i32 %315, i32* %316, i64 %317)
  %319 = load i32*, i32** %13, align 8
  %320 = call i32 @os_free(i32* %319)
  store i32 -2, i32* %4, align 4
  br label %323

321:                                              ; preds = %297
  store i32 -1, i32* %4, align 4
  br label %323

322:                                              ; preds = %291, %285, %279, %273, %270
  store i32 0, i32* %4, align 4
  br label %323

323:                                              ; preds = %322, %321, %310, %265, %221
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_get(i32, i8*, i32*, i32*, i32) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i64 @os_memcmp_const(i32*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_sm_set_pmk_from_pmksa(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @eapol_sm_notify_cached(i64) #1

declare dso_local i64 @wpa_key_mgmt_wpa_ieee8021x(i64) #1

declare dso_local i64 @wpa_key_mgmt_sha384(i64) #1

declare dso_local i32 @eapol_sm_get_key(i64, i32*, i32) #1

declare dso_local i32 @wpa_supplicant_key_mgmt_set_pmk(%struct.wpa_sm*) #1

declare dso_local i32 @wpa_key_mgmt_suite_b(i64) #1

declare dso_local i64 @wpa_key_mgmt_ft(i64) #1

declare dso_local %struct.rsn_pmksa_cache_entry* @pmksa_cache_add(i32, i32*, i32, i32*, i32*, i32, i8*, i32, i32, i64, i32*) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*) #1

declare dso_local i32* @wpa_sm_alloc_eapol(%struct.wpa_sm*, i32, i32*, i32, i64*, i32*) #1

declare dso_local i32 @wpa_sm_ether_send(%struct.wpa_sm*, i32, i32, i32*, i64) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
