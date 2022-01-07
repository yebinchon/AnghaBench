; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_decrypted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_decrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i64, i64, i64, i32* }
%struct.eap_method_ret = type { i32, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_fast_tlv_parse = type { i64, i64, i64, i64, i32, i32, i64, i32 }

@EAP_TLV_RESULT_FAILURE = common dso_local global i64 0, align 8
@EAP_TLV_RESULT_SUCCESS = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"EAP-FAST: PAC TLV without Result TLV acknowledging success\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"EAP-FAST: Request Tunnel PAC\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"EAP-FAST: Unauthenticated provisioning completed successfully.\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"EAP-FAST: Authentication completed successfully.\00", align 1
@METHOD_MAY_CONT = common dso_local global i8* null, align 8
@DECISION_UNCOND_SUCC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"EAP-FAST: No recognized TLVs - send empty response packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**)* @eap_fast_process_decrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_process_decrypted(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf* %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_fast_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca %struct.eap_fast_tlv_parse, align 8
  %17 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %12, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %19 = call i64 @eap_fast_parse_decrypted(%struct.wpabuf* %18, %struct.eap_fast_tlv_parse* %16, %struct.wpabuf** %14)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %279

22:                                               ; preds = %6
  %23 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %24 = icmp ne %struct.wpabuf* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %27 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %31 = call i32 @eap_fast_encrypt_response(%struct.eap_sm* %26, %struct.eap_fast_data* %27, %struct.wpabuf* %28, i32 %29, %struct.wpabuf** %30)
  store i32 %31, i32* %7, align 4
  br label %279

32:                                               ; preds = %22
  %33 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EAP_TLV_RESULT_FAILURE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i64, i64* @EAP_TLV_RESULT_FAILURE, align 8
  %39 = call %struct.wpabuf* @eap_fast_tlv_result(i64 %38, i32 0)
  store %struct.wpabuf* %39, %struct.wpabuf** %14, align 8
  %40 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %41 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %45 = call i32 @eap_fast_encrypt_response(%struct.eap_sm* %40, %struct.eap_fast_data* %41, %struct.wpabuf* %42, i32 %43, %struct.wpabuf** %44)
  store i32 %45, i32* %7, align 4
  br label %279

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EAP_TLV_RESULT_FAILURE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i64, i64* @EAP_TLV_RESULT_FAILURE, align 8
  %53 = call %struct.wpabuf* @eap_fast_tlv_result(i64 %52, i32 1)
  store %struct.wpabuf* %53, %struct.wpabuf** %14, align 8
  %54 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %55 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %56 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %59 = call i32 @eap_fast_encrypt_response(%struct.eap_sm* %54, %struct.eap_fast_data* %55, %struct.wpabuf* %56, i32 %57, %struct.wpabuf** %58)
  store i32 %59, i32* %7, align 4
  br label %279

60:                                               ; preds = %46
  %61 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %60
  %65 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %66 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %67 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %68 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.wpabuf* @eap_fast_process_crypto_binding(%struct.eap_sm* %65, %struct.eap_fast_data* %66, %struct.eap_method_ret* %67, i64 %69, i32 %71)
  store %struct.wpabuf* %72, %struct.wpabuf** %15, align 8
  %73 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %74 = icmp eq %struct.wpabuf* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 1, i32* %17, align 4
  br label %80

76:                                               ; preds = %64
  %77 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %79 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %77, %struct.wpabuf* %78)
  store %struct.wpabuf* %79, %struct.wpabuf** %14, align 8
  br label %80

80:                                               ; preds = %76, %75
  br label %81

81:                                               ; preds = %80, %60
  %82 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* @EAP_TLV_RESULT_FAILURE, align 8
  br label %93

91:                                               ; preds = %86
  %92 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  br label %93

93:                                               ; preds = %91, %89
  %94 = phi i64 [ %90, %89 ], [ %92, %91 ]
  %95 = call %struct.wpabuf* @eap_fast_tlv_result(i64 %94, i32 1)
  store %struct.wpabuf* %95, %struct.wpabuf** %15, align 8
  %96 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %98 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %96, %struct.wpabuf* %97)
  store %struct.wpabuf* %98, %struct.wpabuf** %14, align 8
  br label %99

99:                                               ; preds = %93, %81
  %100 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %99
  %104 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %105 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %106 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %107 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.wpabuf* @eap_fast_process_eap_payload_tlv(%struct.eap_sm* %104, %struct.eap_fast_data* %105, %struct.eap_method_ret* %106, i64 %108, i32 %110)
  store %struct.wpabuf* %111, %struct.wpabuf** %15, align 8
  %112 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %113 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %114 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %112, %struct.wpabuf* %113)
  store %struct.wpabuf* %114, %struct.wpabuf** %14, align 8
  br label %115

115:                                              ; preds = %103, %99
  %116 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = call i32 @wpa_printf(i32 %125, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  br label %149

127:                                              ; preds = %119, %115
  %128 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %131
  %137 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %138 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %139 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %140 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = call %struct.wpabuf* @eap_fast_process_pac(%struct.eap_sm* %137, %struct.eap_fast_data* %138, %struct.eap_method_ret* %139, i64 %141, i32 %143)
  store %struct.wpabuf* %144, %struct.wpabuf** %15, align 8
  %145 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %146 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %147 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %145, %struct.wpabuf* %146)
  store %struct.wpabuf* %147, %struct.wpabuf** %14, align 8
  br label %148

148:                                              ; preds = %136, %131, %127
  br label %149

149:                                              ; preds = %148, %124
  %150 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %151 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %185

154:                                              ; preds = %149
  %155 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %156 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %185

159:                                              ; preds = %154
  %160 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %161 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %185, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %185, label %168

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %173, %168
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = call i32 @wpa_printf(i32 %179, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %181 = call %struct.wpabuf* (...) @eap_fast_pac_request()
  store %struct.wpabuf* %181, %struct.wpabuf** %15, align 8
  %182 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %183 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %184 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %182, %struct.wpabuf* %183)
  store %struct.wpabuf* %184, %struct.wpabuf** %14, align 8
  br label %185

185:                                              ; preds = %178, %173, %164, %159, %154, %149
  %186 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load i32, i32* %17, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %190
  %194 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %195 = call %struct.wpabuf* @eap_fast_tlv_result(i64 %194, i32 0)
  store %struct.wpabuf* %195, %struct.wpabuf** %15, align 8
  %196 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %197 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %198 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %196, %struct.wpabuf* %197)
  store %struct.wpabuf* %198, %struct.wpabuf** %14, align 8
  br label %209

199:                                              ; preds = %190, %185
  %200 = load i32, i32* %17, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %199
  %203 = load i64, i64* @EAP_TLV_RESULT_FAILURE, align 8
  %204 = call %struct.wpabuf* @eap_fast_tlv_result(i64 %203, i32 0)
  store %struct.wpabuf* %204, %struct.wpabuf** %15, align 8
  %205 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %206 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %207 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %205, %struct.wpabuf* %206)
  store %struct.wpabuf* %207, %struct.wpabuf** %14, align 8
  br label %208

208:                                              ; preds = %202, %199
  br label %209

209:                                              ; preds = %208, %193
  %210 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %211 = icmp ne %struct.wpabuf* %210, null
  br i1 %211, label %212, label %265

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @EAP_TLV_RESULT_SUCCESS, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %265

217:                                              ; preds = %212
  %218 = load i32, i32* %17, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %265, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.eap_fast_tlv_parse, %struct.eap_fast_tlv_parse* %16, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %265

224:                                              ; preds = %220
  %225 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %226 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %265

229:                                              ; preds = %224
  %230 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %231 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %229
  %235 = load i32, i32* @MSG_DEBUG, align 4
  %236 = call i32 @wpa_printf(i32 %235, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %237 = load i8*, i8** @METHOD_DONE, align 8
  %238 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %239 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %238, i32 0, i32 1
  store i8* %237, i8** %239, align 8
  %240 = load i32, i32* @DECISION_FAIL, align 4
  %241 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %242 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  %243 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %244 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %243, i32 0, i32 0
  store i32 1, i32* %244, align 4
  br label %264

245:                                              ; preds = %229
  %246 = load i32, i32* @MSG_DEBUG, align 4
  %247 = call i32 @wpa_printf(i32 %246, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %248 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %249 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %245
  %253 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %254 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %255 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  br label %260

256:                                              ; preds = %245
  %257 = load i8*, i8** @METHOD_DONE, align 8
  %258 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %259 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %258, i32 0, i32 1
  store i8* %257, i8** %259, align 8
  br label %260

260:                                              ; preds = %256, %252
  %261 = load i32, i32* @DECISION_UNCOND_SUCC, align 4
  %262 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %263 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %262, i32 0, i32 0
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %260, %234
  br label %265

265:                                              ; preds = %264, %224, %220, %217, %212, %209
  %266 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %267 = icmp eq %struct.wpabuf* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %265
  %269 = load i32, i32* @MSG_DEBUG, align 4
  %270 = call i32 @wpa_printf(i32 %269, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %271 = call %struct.wpabuf* @wpabuf_alloc(i32 1)
  store %struct.wpabuf* %271, %struct.wpabuf** %14, align 8
  br label %272

272:                                              ; preds = %268, %265
  %273 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %274 = load %struct.eap_fast_data*, %struct.eap_fast_data** %9, align 8
  %275 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %278 = call i32 @eap_fast_encrypt_response(%struct.eap_sm* %273, %struct.eap_fast_data* %274, %struct.wpabuf* %275, i32 %276, %struct.wpabuf** %277)
  store i32 %278, i32* %7, align 4
  br label %279

279:                                              ; preds = %272, %51, %37, %25, %21
  %280 = load i32, i32* %7, align 4
  ret i32 %280
}

declare dso_local i64 @eap_fast_parse_decrypted(%struct.wpabuf*, %struct.eap_fast_tlv_parse*, %struct.wpabuf**) #1

declare dso_local i32 @eap_fast_encrypt_response(%struct.eap_sm*, %struct.eap_fast_data*, %struct.wpabuf*, i32, %struct.wpabuf**) #1

declare dso_local %struct.wpabuf* @eap_fast_tlv_result(i64, i32) #1

declare dso_local %struct.wpabuf* @eap_fast_process_crypto_binding(%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i64, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_concat(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_fast_process_eap_payload_tlv(%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i64, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_fast_process_pac(%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_fast_pac_request(...) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
