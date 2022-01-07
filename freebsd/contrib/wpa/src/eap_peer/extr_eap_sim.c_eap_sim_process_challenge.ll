; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_challenge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_sim.c_eap_sim_process_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_sim_data = type { i32, i32, i64, i64, i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32*, i32*, i32, i64 }
%struct.wpabuf = type { i32 }
%struct.eap_sim_attrs = type { i32, i64, i32, i32, i64, i32, i64 }
%struct.eap_peer_config = type { i64, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-SIM: subtype Challenge\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"EAP-SIM: Challenge message did not include%s%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" AT_MAC\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" AT_RAND\00", align 1
@EAP_SIM_UNABLE_TO_PROCESS_PACKET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"EAP-SIM: %lu challenges\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [49 x i8] c"EAP-SIM: Insufficient number of challenges (%lu)\00", align 1
@EAP_SIM_INSUFFICIENT_NUM_OF_CHAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"EAP-SIM: Too many challenges (%lu)\00", align 1
@GSM_RAND_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"EAP-SIM: Same RAND used multiple times\00", align 1
@EAP_SIM_RAND_NOT_FRESH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"EAP-SIM: Wait for external SIM processing\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"EAP-SIM: GSM authentication failed\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"EAP-SIM: Selected identity for MK derivation\00", align 1
@EAP_SIM_NONCE_MT_LEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [47 x i8] c"EAP-SIM: Challenge message used invalid AT_MAC\00", align 1
@CLEAR_REAUTH_ID = common dso_local global i32 0, align 4
@CLEAR_EAP_ID = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i64 0, align 8
@RESULT_SUCCESS = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_sim_data*, i32, %struct.wpabuf*, %struct.eap_sim_attrs*)* @eap_sim_process_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_sim_process_challenge(%struct.eap_sm* %0, %struct.eap_sim_data* %1, i32 %2, %struct.wpabuf* %3, %struct.eap_sim_attrs* %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_sim_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.eap_sim_attrs*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.eap_sim_attrs, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.eap_peer_config*, align 8
  %17 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_sim_data* %1, %struct.eap_sim_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store %struct.eap_sim_attrs* %4, %struct.eap_sim_attrs** %11, align 8
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %21 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %20, i32 0, i32 23
  store i64 0, i64* %21, align 8
  %22 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %23 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %28 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %27, i32 0, i32 6
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %26, %5
  %32 = load i32, i32* @MSG_WARNING, align 4
  %33 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %34 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %40 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %41 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %40, i32 0, i32 6
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %39, i8* %46)
  %48 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %51 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %48, i32 %49, i32 %50)
  store %struct.wpabuf* %51, %struct.wpabuf** %6, align 8
  br label %386

52:                                               ; preds = %26
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %55 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  %59 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %60 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %63 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %52
  %67 = load i32, i32* @MSG_INFO, align 4
  %68 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %69 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i64 %71)
  %73 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @EAP_SIM_INSUFFICIENT_NUM_OF_CHAL, align 4
  %76 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %73, i32 %74, i32 %75)
  store %struct.wpabuf* %76, %struct.wpabuf** %6, align 8
  br label %386

77:                                               ; preds = %52
  %78 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %79 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 3
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load i32, i32* @MSG_INFO, align 4
  %84 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %85 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i64 %87)
  %89 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %92 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %89, i32 %90, i32 %91)
  store %struct.wpabuf* %92, %struct.wpabuf** %6, align 8
  br label %386

93:                                               ; preds = %77
  %94 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %95 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %98 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @GSM_RAND_LEN, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load i32, i32* @GSM_RAND_LEN, align 4
  %104 = call i64 @os_memcmp(i64 %96, i64 %102, i32 %103)
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %142, label %106

106:                                              ; preds = %93
  %107 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %108 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 2
  br i1 %110, label %111, label %149

111:                                              ; preds = %106
  %112 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %113 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %116 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* @GSM_RAND_LEN, align 4
  %119 = mul nsw i32 2, %118
  %120 = sext i32 %119 to i64
  %121 = add nsw i64 %117, %120
  %122 = load i32, i32* @GSM_RAND_LEN, align 4
  %123 = call i64 @os_memcmp(i64 %114, i64 %121, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %111
  %126 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %127 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* @GSM_RAND_LEN, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %133 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %132, i32 0, i32 6
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* @GSM_RAND_LEN, align 4
  %136 = mul nsw i32 2, %135
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %134, %137
  %139 = load i32, i32* @GSM_RAND_LEN, align 4
  %140 = call i64 @os_memcmp(i64 %131, i64 %138, i32 %139)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %125, %111, %93
  %143 = load i32, i32* @MSG_INFO, align 4
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %145 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @EAP_SIM_RAND_NOT_FRESH, align 4
  %148 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %145, i32 %146, i32 %147)
  store %struct.wpabuf* %148, %struct.wpabuf** %6, align 8
  br label %386

149:                                              ; preds = %125, %106
  %150 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %151 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %150, i32 0, i32 22
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %154 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %157 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @GSM_RAND_LEN, align 4
  %160 = mul nsw i32 %158, %159
  %161 = call i32 @os_memcpy(i32 %152, i64 %155, i32 %160)
  %162 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %163 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %166 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 4
  %167 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %168 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %169 = call i32 @eap_sim_gsm_auth(%struct.eap_sm* %167, %struct.eap_sim_data* %168)
  store i32 %169, i32* %15, align 4
  %170 = load i32, i32* %15, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %149
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %386

175:                                              ; preds = %149
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32, i32* @MSG_WARNING, align 4
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %181 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %184 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %181, i32 %182, i32 %183)
  store %struct.wpabuf* %184, %struct.wpabuf** %6, align 8
  br label %386

185:                                              ; preds = %175
  %186 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %187 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %186, i32 0, i32 21
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %192 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %191, i32 0, i32 21
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %12, align 8
  %194 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %195 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %13, align 8
  br label %240

197:                                              ; preds = %185
  %198 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %199 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %198, i32 0, i32 20
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %218

202:                                              ; preds = %197
  %203 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %204 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %203, i32 0, i32 20
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %207 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @eap_sim_anonymous_username(i32* %205, i64 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %202
  %212 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %213 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %212, i32 0, i32 20
  %214 = load i32*, i32** %213, align 8
  store i32* %214, i32** %12, align 8
  %215 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %216 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %215, i32 0, i32 3
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %13, align 8
  br label %239

218:                                              ; preds = %202, %197
  %219 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %220 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %219)
  store %struct.eap_peer_config* %220, %struct.eap_peer_config** %16, align 8
  %221 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %222 = icmp ne %struct.eap_peer_config* %221, null
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %225 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %230 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  store i32* %231, i32** %12, align 8
  %232 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %233 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %13, align 8
  br label %238

235:                                              ; preds = %223, %218
  %236 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %237 = call i32* @eap_get_config_identity(%struct.eap_sm* %236, i64* %13)
  store i32* %237, i32** %12, align 8
  br label %238

238:                                              ; preds = %235, %228
  br label %239

239:                                              ; preds = %238, %211
  br label %240

240:                                              ; preds = %239, %190
  %241 = load i32, i32* @MSG_DEBUG, align 4
  %242 = load i32*, i32** %12, align 8
  %243 = load i64, i64* %13, align 8
  %244 = call i32 @wpa_hexdump_ascii(i32 %241, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32* %242, i64 %243)
  %245 = load i32*, i32** %12, align 8
  %246 = load i64, i64* %13, align 8
  %247 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %248 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %247, i32 0, i32 11
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %251 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %250, i32 0, i32 19
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %254 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %253, i32 0, i32 18
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %257 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %256, i32 0, i32 17
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %260 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %263 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %262, i32 0, i32 16
  %264 = load i64, i64* %263, align 8
  %265 = inttoptr i64 %264 to i32*
  %266 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %267 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %266, i32 0, i32 15
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @eap_sim_derive_mk(i32* %245, i64 %246, i32 %249, i32 %252, i32 %255, i32 %258, i32 %261, i32* %265, i32 %268)
  %270 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %271 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %270, i32 0, i32 15
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %274 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %273, i32 0, i32 10
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %277 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %276, i32 0, i32 12
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %280 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %279, i32 0, i32 14
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %283 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %282, i32 0, i32 13
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @eap_sim_derive_keys(i32 %272, i32 %275, i32 %278, i32 %281, i32 %284)
  %286 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %287 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %286, i32 0, i32 12
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %290 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %291 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %290, i32 0, i32 5
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %294 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %293, i32 0, i32 11
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @EAP_SIM_NONCE_MT_LEN, align 4
  %297 = call i64 @eap_sim_verify_mac(i32 %288, %struct.wpabuf* %289, i32 %292, i32 %295, i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %240
  %300 = load i32, i32* @MSG_WARNING, align 4
  %301 = call i32 (i32, i8*, ...) @wpa_printf(i32 %300, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0))
  %302 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %305 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %302, i32 %303, i32 %304)
  store %struct.wpabuf* %305, %struct.wpabuf** %6, align 8
  br label %386

306:                                              ; preds = %240
  %307 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %308 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %309 = load i32, i32* @CLEAR_REAUTH_ID, align 4
  %310 = load i32, i32* @CLEAR_EAP_ID, align 4
  %311 = or i32 %309, %310
  %312 = call i32 @eap_sim_clear_identities(%struct.eap_sm* %307, %struct.eap_sim_data* %308, i32 %311)
  %313 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %314 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %344

317:                                              ; preds = %306
  %318 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %319 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %318, i32 0, i32 10
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %322 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %325 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %324, i32 0, i32 3
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %328 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = call i32* @eap_sim_parse_encr(i32 %320, i64 %323, i32 %326, i32 %329, %struct.eap_sim_attrs* %14, i32 0)
  store i32* %330, i32** %17, align 8
  %331 = load i32*, i32** %17, align 8
  %332 = icmp eq i32* %331, null
  br i1 %332, label %333, label %338

333:                                              ; preds = %317
  %334 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* @EAP_SIM_UNABLE_TO_PROCESS_PACKET, align 4
  %337 = call %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data* %334, i32 %335, i32 %336)
  store %struct.wpabuf* %337, %struct.wpabuf** %6, align 8
  br label %386

338:                                              ; preds = %317
  %339 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %340 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %341 = call i32 @eap_sim_learn_ids(%struct.eap_sm* %339, %struct.eap_sim_data* %340, %struct.eap_sim_attrs* %14)
  %342 = load i32*, i32** %17, align 8
  %343 = call i32 @os_free(i32* %342)
  br label %344

344:                                              ; preds = %338, %306
  %345 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %346 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %345, i32 0, i32 9
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %344
  %350 = load %struct.eap_sim_attrs*, %struct.eap_sim_attrs** %11, align 8
  %351 = getelementptr inbounds %struct.eap_sim_attrs, %struct.eap_sim_attrs* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %356 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %355, i32 0, i32 4
  store i32 1, i32* %356, align 8
  br label %357

357:                                              ; preds = %354, %349, %344
  %358 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %359 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %358, i32 0, i32 5
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @FAILURE, align 8
  %362 = icmp ne i64 %360, %361
  br i1 %362, label %363, label %376

363:                                              ; preds = %357
  %364 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %365 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %366 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 8
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %363
  %370 = load i32, i32* @RESULT_SUCCESS, align 4
  br label %373

371:                                              ; preds = %363
  %372 = load i32, i32* @SUCCESS, align 4
  br label %373

373:                                              ; preds = %371, %369
  %374 = phi i32 [ %370, %369 ], [ %372, %371 ]
  %375 = call i32 @eap_sim_state(%struct.eap_sim_data* %364, i32 %374)
  br label %376

376:                                              ; preds = %373, %357
  %377 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %378 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %377, i32 0, i32 8
  store i64 0, i64* %378, align 8
  %379 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %380 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %379, i32 0, i32 7
  store i64 0, i64* %380, align 8
  %381 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %382 = getelementptr inbounds %struct.eap_sim_data, %struct.eap_sim_data* %381, i32 0, i32 6
  store i64 0, i64* %382, align 8
  %383 = load %struct.eap_sim_data*, %struct.eap_sim_data** %8, align 8
  %384 = load i32, i32* %9, align 4
  %385 = call %struct.wpabuf* @eap_sim_response_challenge(%struct.eap_sim_data* %383, i32 %384)
  store %struct.wpabuf* %385, %struct.wpabuf** %6, align 8
  br label %386

386:                                              ; preds = %376, %333, %299, %178, %172, %142, %82, %66, %31
  %387 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %387
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_sim_client_error(%struct.eap_sim_data*, i32, i32) #1

declare dso_local i64 @os_memcmp(i64, i64, i32) #1

declare dso_local i32 @os_memcpy(i32, i64, i32) #1

declare dso_local i32 @eap_sim_gsm_auth(%struct.eap_sm*, %struct.eap_sim_data*) #1

declare dso_local i32 @eap_sim_anonymous_username(i32*, i64) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32* @eap_get_config_identity(%struct.eap_sm*, i64*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_sim_derive_mk(i32*, i64, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @eap_sim_derive_keys(i32, i32, i32, i32, i32) #1

declare dso_local i64 @eap_sim_verify_mac(i32, %struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @eap_sim_clear_identities(%struct.eap_sm*, %struct.eap_sim_data*, i32) #1

declare dso_local i32* @eap_sim_parse_encr(i32, i64, i32, i32, %struct.eap_sim_attrs*, i32) #1

declare dso_local i32 @eap_sim_learn_ids(%struct.eap_sm*, %struct.eap_sim_data*, %struct.eap_sim_attrs*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @eap_sim_state(%struct.eap_sim_data*, i32) #1

declare dso_local %struct.wpabuf* @eap_sim_response_challenge(%struct.eap_sim_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
