; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_aka.c_eap_aka_process_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_aka_data = type { i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i64, i64, i64, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i64, i64*, i64, i32, i32, i64, i32, i32, i32, i64, i32, i32, i64 }
%struct.eap_peer_config = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-AKA: subtype Challenge\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-AKA: Invalid AT_CHECKCODE in the message\00", align 1
@EAP_AKA_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"EAP-AKA: Challenge message did not include%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" AT_MAC\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" AT_RAND\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" AT_AUTN\00", align 1
@EAP_AKA_RAND_LEN = common dso_local global i32 0, align 4
@EAP_AKA_AUTN_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"EAP-AKA: UMTS authentication failed (AUTN)\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"EAP-AKA: UMTS authentication failed (AUTN seq# -> AUTS)\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"EAP-AKA: Wait for external USIM processing\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"EAP-AKA: UMTS authentication failed\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"EAP-AKA: Selected identity for MK derivation\00", align 1
@EAP_TYPE_AKA_PRIME = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [47 x i8] c"EAP-AKA: Challenge message used invalid AT_MAC\00", align 1
@CLEAR_REAUTH_ID = common dso_local global i32 0, align 4
@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@RESULT_SUCCESS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@EAP_AKA_BIDDING_FLAG_D = common dso_local global i32 0, align 4
@EAP_AKA_PRIME_KDF = common dso_local global i64 0, align 8
@EAP_TYPE_AKA = common dso_local global i64 0, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_aka_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_aka_process_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_aka_process_challenge(%struct.eap_sm* %0, %struct.eap_aka_data* %1, i32 %2, %struct.wpabuf* %3, %struct.eap_sim_attrs* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_aka_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.eap_sim_attrs*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.eap_sim_attrs, align 8
  %16 = alloca %struct.eap_peer_config*, align 8
  %17 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_aka_data* %1, %struct.eap_aka_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store %struct.eap_sim_attrs* %4, %struct.eap_sim_attrs** %11, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %21 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %20, i32 0, i32 12
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %5
  %25 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %26 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %27 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %30 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @eap_aka_verify_checkcode(%struct.eap_aka_data* %25, i64 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load i32, i32* @MSG_WARNING, align 4
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %40 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %37, i32 %38, i32 %39)
  store %struct.wpabuf* %40, %struct.wpabuf** %6, align 8
  br label %357

41:                                               ; preds = %24, %5
  %42 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %43 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %42, i32 0, i32 23
  store i64 0, i64* %43, align 8
  %44 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %45 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %50 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %55 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %86, label %58

58:                                               ; preds = %53, %48, %41
  %59 = load i32, i32* @MSG_WARNING, align 4
  %60 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %61 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %67 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %68 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %74 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %75 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %66, i8* %73, i8* %80)
  %82 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %85 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %82, i32 %83, i32 %84)
  store %struct.wpabuf* %85, %struct.wpabuf** %6, align 8
  br label %357

86:                                               ; preds = %53
  %87 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %88 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %87, i32 0, i32 22
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %91 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @EAP_AKA_RAND_LEN, align 4
  %94 = call i32 @os_memcpy(i64 %89, i32 %92, i32 %93)
  %95 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %96 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %95, i32 0, i32 21
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %99 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @EAP_AKA_AUTN_LEN, align 4
  %102 = call i32 @os_memcpy(i64 %97, i32 %100, i32 %101)
  %103 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %104 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %105 = call i32 @eap_aka_umts_auth(%struct.eap_sm* %103, %struct.eap_aka_data* %104)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %114

108:                                              ; preds = %86
  %109 = load i32, i32* @MSG_WARNING, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %111 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call %struct.wpabuf* @eap_aka_authentication_reject(%struct.eap_aka_data* %111, i32 %112)
  store %struct.wpabuf* %113, %struct.wpabuf** %6, align 8
  br label %357

114:                                              ; preds = %86
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, -2
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i32, i32* @MSG_WARNING, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0))
  %120 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %123 = call %struct.wpabuf* @eap_aka_synchronization_failure(%struct.eap_aka_data* %120, i32 %121, %struct.eap_sim_attrs* %122)
  store %struct.wpabuf* %123, %struct.wpabuf** %6, align 8
  br label %357

124:                                              ; preds = %114
  %125 = load i32, i32* %14, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %357

130:                                              ; preds = %124
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = load i32, i32* @MSG_WARNING, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %136 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %139 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %136, i32 %137, i32 %138)
  store %struct.wpabuf* %139, %struct.wpabuf** %6, align 8
  br label %357

140:                                              ; preds = %130
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %145 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %144, i32 0, i32 19
  %146 = load i32*, i32** %145, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %150 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %149, i32 0, i32 19
  %151 = load i32*, i32** %150, align 8
  store i32* %151, i32** %12, align 8
  %152 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %153 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %13, align 8
  br label %198

155:                                              ; preds = %143
  %156 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %157 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %156, i32 0, i32 18
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %176

160:                                              ; preds = %155
  %161 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %162 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %161, i32 0, i32 18
  %163 = load i32*, i32** %162, align 8
  %164 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %165 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @eap_sim_anonymous_username(i32* %163, i64 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %176, label %169

169:                                              ; preds = %160
  %170 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %171 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %170, i32 0, i32 18
  %172 = load i32*, i32** %171, align 8
  store i32* %172, i32** %12, align 8
  %173 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %174 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %13, align 8
  br label %197

176:                                              ; preds = %160, %155
  %177 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %178 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %177)
  store %struct.eap_peer_config* %178, %struct.eap_peer_config** %16, align 8
  %179 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %180 = icmp ne %struct.eap_peer_config* %179, null
  br i1 %180, label %181, label %193

181:                                              ; preds = %176
  %182 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %183 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %188 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  store i32* %189, i32** %12, align 8
  %190 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %191 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  store i64 %192, i64* %13, align 8
  br label %196

193:                                              ; preds = %181, %176
  %194 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %195 = call i32* @eap_get_config_identity(%struct.eap_sm* %194, i64* %13)
  store i32* %195, i32** %12, align 8
  br label %196

196:                                              ; preds = %193, %186
  br label %197

197:                                              ; preds = %196, %169
  br label %198

198:                                              ; preds = %197, %148
  %199 = load i32, i32* @MSG_DEBUG, align 4
  %200 = load i32*, i32** %12, align 8
  %201 = load i64, i64* %13, align 8
  %202 = call i32 @wpa_hexdump_ascii(i32 %199, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32* %200, i64 %201)
  %203 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %204 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @EAP_TYPE_AKA_PRIME, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %233

208:                                              ; preds = %198
  %209 = load i32*, i32** %12, align 8
  %210 = load i64, i64* %13, align 8
  %211 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %212 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %211, i32 0, i32 16
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %215 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %214, i32 0, i32 15
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %218 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %217, i32 0, i32 10
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %221 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %220, i32 0, i32 13
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %224 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %223, i32 0, i32 17
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %227 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %226, i32 0, i32 12
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %230 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %229, i32 0, i32 11
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @eap_aka_prime_derive_keys(i32* %209, i64 %210, i32 %213, i32 %216, i32 %219, i32 %222, i32 %225, i32 %228, i32 %231)
  br label %262

233:                                              ; preds = %198
  %234 = load i32*, i32** %12, align 8
  %235 = load i64, i64* %13, align 8
  %236 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %237 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %236, i32 0, i32 16
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %240 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %239, i32 0, i32 15
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %243 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %242, i32 0, i32 14
  %244 = load i32, i32* %243, align 8
  %245 = call i32 @eap_aka_derive_mk(i32* %234, i64 %235, i32 %238, i32 %241, i32 %244)
  %246 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %247 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %246, i32 0, i32 14
  %248 = load i32, i32* %247, align 8
  %249 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %250 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %253 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %252, i32 0, i32 13
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %256 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %255, i32 0, i32 12
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %259 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %258, i32 0, i32 11
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @eap_sim_derive_keys(i32 %248, i32 %251, i32 %254, i32 %257, i32 %260)
  br label %262

262:                                              ; preds = %233, %208
  %263 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %264 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %265 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %266 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @eap_aka_verify_mac(%struct.eap_aka_data* %263, %struct.wpabuf* %264, i32 %267, i32* bitcast ([1 x i8]* @.str.4 to i32*), i32 0)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %262
  %271 = load i32, i32* @MSG_WARNING, align 4
  %272 = call i32 (i32, i8*, ...) @wpa_printf(i32 %271, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %273 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %276 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %273, i32 %274, i32 %275)
  store %struct.wpabuf* %276, %struct.wpabuf** %6, align 8
  br label %357

277:                                              ; preds = %262
  %278 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %279 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %280 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %281 = load i32, i32* @CLEAR_EAP_ID, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @eap_aka_clear_identities(%struct.eap_sm* %278, %struct.eap_aka_data* %279, i32 %282)
  %284 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %285 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %284, i32 0, i32 5
  %286 = load i64, i64* %285, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %315

288:                                              ; preds = %277
  %289 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %290 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %289, i32 0, i32 10
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %293 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %292, i32 0, i32 5
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %296 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %299 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = call i32* @eap_sim_parse_encr(i32 %291, i64 %294, i32 %297, i32 %300, %struct.eap_sim_attrs* %15, i32 0)
  store i32* %301, i32** %17, align 8
  %302 = load i32*, i32** %17, align 8
  %303 = icmp eq i32* %302, null
  br i1 %303, label %304, label %309

304:                                              ; preds = %288
  %305 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %306 = load i32, i32* %9, align 4
  %307 = load i32, i32* @EAP_AKA_UNABLE_TO_PROCESS_PACKET, align 4
  %308 = call %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data* %305, i32 %306, i32 %307)
  store %struct.wpabuf* %308, %struct.wpabuf** %6, align 8
  br label %357

309:                                              ; preds = %288
  %310 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %311 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %312 = call i32 @eap_aka_learn_ids(%struct.eap_sm* %310, %struct.eap_aka_data* %311, %struct.eap_sim_attrs* %15)
  %313 = load i32*, i32** %17, align 8
  %314 = call i32 @os_free(i32* %313)
  br label %315

315:                                              ; preds = %309, %277
  %316 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %317 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %316, i32 0, i32 9
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %315
  %321 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %322 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %320
  %326 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %327 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %326, i32 0, i32 4
  store i32 1, i32* %327, align 8
  br label %328

328:                                              ; preds = %325, %320, %315
  %329 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %330 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %329, i32 0, i32 5
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @FAILURE, align 8
  %333 = icmp ne i64 %331, %332
  br i1 %333, label %334, label %347

334:                                              ; preds = %328
  %335 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %336 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %337 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %334
  %341 = load i32, i32* @RESULT_SUCCESS, align 4
  br label %344

342:                                              ; preds = %334
  %343 = load i32, i32* @SUCCESS, align 4
  br label %344

344:                                              ; preds = %342, %340
  %345 = phi i32 [ %341, %340 ], [ %343, %342 ]
  %346 = call i32 @eap_aka_state(%struct.eap_aka_data* %335, i32 %345)
  br label %347

347:                                              ; preds = %344, %328
  %348 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %349 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %348, i32 0, i32 8
  store i64 0, i64* %349, align 8
  %350 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %351 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %350, i32 0, i32 7
  store i64 0, i64* %351, align 8
  %352 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %353 = getelementptr inbounds %struct.eap_aka_data, %struct.eap_aka_data* %352, i32 0, i32 6
  store i64 0, i64* %353, align 8
  %354 = load %struct.eap_aka_data*, %struct.eap_aka_data** %8, align 8
  %355 = load i32, i32* %9, align 4
  %356 = call %struct.wpabuf* @eap_aka_response_challenge(%struct.eap_aka_data* %354, i32 %355)
  store %struct.wpabuf* %356, %struct.wpabuf** %6, align 8
  br label %357

357:                                              ; preds = %347, %304, %270, %133, %127, %117, %108, %58, %34
  %358 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %358
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @eap_aka_verify_checkcode(%struct.eap_aka_data*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_client_error(%struct.eap_aka_data*, i32, i32) #1

declare dso_local i32 @os_memcpy(i64, i32, i32) #1

declare dso_local i32 @eap_aka_umts_auth(%struct.eap_sm*, %struct.eap_aka_data*) #1

declare dso_local %struct.wpabuf* @eap_aka_authentication_reject(%struct.eap_aka_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_synchronization_failure(%struct.eap_aka_data*, i32, %struct.eap_sim_attrs*) #1

declare dso_local i32 @eap_sim_anonymous_username(i32*, i64) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_aka_prime_derive_keys(i32*, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @eap_aka_derive_mk(i32*, i64, i32, i32, i32) #1

declare dso_local i32 @eap_sim_derive_keys(i32, i32, i32, i32, i32) #1

declare dso_local i64 @eap_aka_verify_mac(%struct.eap_aka_data*, %struct.wpabuf*, i32, i32*, i32) #1

declare dso_local i32 @eap_aka_clear_identities(%struct.eap_sm*, %struct.eap_aka_data*, i32) #1

declare dso_local i32* @eap_sim_parse_encr(i32, i64, i32, i32, %struct.eap_sim_attrs*, i32) #1

declare dso_local i32 @eap_aka_learn_ids(%struct.eap_sm*, %struct.eap_aka_data*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_aka_state(%struct.eap_aka_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_aka_response_challenge(%struct.eap_aka_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
