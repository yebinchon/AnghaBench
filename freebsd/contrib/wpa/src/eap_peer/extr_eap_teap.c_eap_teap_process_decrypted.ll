; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_decrypted.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_decrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, i32, i32, i64, i8*, i64, %struct.TYPE_2__*, i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.eap_method_ret = type { i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_teap_tlv_parse = type { i64, i64, i64, i64, i32, i32, i32, i64, i32, i64 }

@TEAP_STATUS_FAILURE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"EAP-TEAP: Server rejected authentication\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@TEAP_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [94 x i8] c"EAP-TEAP: Result TLV or Intermediate-Result TLV indicating success, but no Crypto-Binding TLV\00", align 1
@TEAP_ERROR_TUNNEL_COMPROMISE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"EAP-TEAP: Inner EAP method exchange completed, but no Intermediate-Result TLV included\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"EAP-TEAP: Unexpected Crypto-Binding TLV without Result TLV or Intermediate-Result TLV indicating success\00", align 1
@TEAP_ERROR_UNEXPECTED_TLVS_EXCHANGED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [68 x i8] c"EAP-TEAP: PAC used - server may decide to skip inner authentication\00", align 1
@METHOD_MAY_CONT = common dso_local global i8* null, align 8
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [59 x i8] c"EAP-TEAP: PAC TLV without Result TLV acknowledging success\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"EAP-TEAP: Request Tunnel PAC\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Authentication completed successfully\00", align 1
@DECISION_UNCOND_SUCC = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [58 x i8] c"EAP-TEAP: No recognized TLVs - send empty response packet\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"EAP-TEAP: Encrypting Phase 2 data\00", align 1
@EAP_TYPE_TEAP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"EAP-TEAP: Failed to encrypt a Phase 2 frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**)* @eap_teap_process_decrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_process_decrypted(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.eap_method_ret* %2, i32 %3, %struct.wpabuf* %4, %struct.wpabuf** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_teap_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca %struct.wpabuf**, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca %struct.eap_teap_tlv_parse, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.wpabuf* %4, %struct.wpabuf** %12, align 8
  store %struct.wpabuf** %5, %struct.wpabuf*** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %19 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %20 = call i64 @eap_teap_parse_decrypted(%struct.wpabuf* %19, %struct.eap_teap_tlv_parse* %16, %struct.wpabuf** %14)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %447

23:                                               ; preds = %6
  %24 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %25 = icmp ne %struct.wpabuf* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %421

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  %36 = call %struct.wpabuf* @eap_teap_tlv_result(i64 %35, i32 0)
  store %struct.wpabuf* %36, %struct.wpabuf** %14, align 8
  %37 = load i8*, i8** @METHOD_DONE, align 8
  %38 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %39 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @DECISION_FAIL, align 8
  %41 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %42 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %421

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %50 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %53, %43
  %59 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = call i32 @wpa_printf(i32 %63, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  %65 = load i32, i32* @TEAP_ERROR_TUNNEL_COMPROMISE_ERROR, align 4
  store i32 %65, i32* %18, align 4
  br label %336

66:                                               ; preds = %58, %53, %48
  %67 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %78 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %77, i32 0, i32 11
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 @wpa_printf(i32 %82, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  %84 = load i32, i32* @TEAP_ERROR_TUNNEL_COMPROMISE_ERROR, align 4
  store i32 %84, i32* %18, align 4
  br label %336

85:                                               ; preds = %76, %71, %66
  %86 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %91 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %92 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 9
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.wpabuf* @eap_teap_process_basic_auth_req(%struct.eap_sm* %90, %struct.eap_teap_data* %91, i64 %93, i32 %95)
  store %struct.wpabuf* %96, %struct.wpabuf** %15, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %98 = icmp ne %struct.wpabuf* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %89
  store i32 1, i32* %17, align 4
  br label %100

100:                                              ; preds = %99, %89
  %101 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %102 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %103 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %101, %struct.wpabuf* %102)
  store %struct.wpabuf* %103, %struct.wpabuf** %14, align 8
  br label %154

104:                                              ; preds = %85
  %105 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %153

108:                                              ; preds = %104
  %109 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %110 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %111 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %112 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 7
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call %struct.wpabuf* @eap_teap_process_eap_payload_tlv(%struct.eap_sm* %109, %struct.eap_teap_data* %110, %struct.eap_method_ret* %111, i64 %113, i32 %115)
  store %struct.wpabuf* %116, %struct.wpabuf** %15, align 8
  %117 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %118 = icmp ne %struct.wpabuf* %117, null
  br i1 %118, label %120, label %119

119:                                              ; preds = %108
  store i32 1, i32* %17, align 4
  br label %120

120:                                              ; preds = %119, %108
  %121 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %122 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %123 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %121, %struct.wpabuf* %122)
  store %struct.wpabuf* %123, %struct.wpabuf** %14, align 8
  %124 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %120
  %129 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %128, %120
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  br label %140

138:                                              ; preds = %133
  %139 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i64 [ %137, %136 ], [ %139, %138 ]
  %142 = call %struct.wpabuf* @eap_teap_tlv_result(i64 %141, i32 1)
  store %struct.wpabuf* %142, %struct.wpabuf** %15, align 8
  %143 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %144 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %145 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %143, %struct.wpabuf* %144)
  store %struct.wpabuf* %145, %struct.wpabuf** %14, align 8
  %146 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  store i32 1, i32* %17, align 4
  br label %151

151:                                              ; preds = %150, %140
  br label %152

152:                                              ; preds = %151, %128
  br label %153

153:                                              ; preds = %152, %104
  br label %154

154:                                              ; preds = %153, %100
  %155 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %212

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = call i32 @wpa_printf(i32 %169, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  %171 = load i32, i32* @TEAP_ERROR_UNEXPECTED_TLVS_EXCHANGED, align 4
  store i32 %171, i32* %18, align 4
  br label %336

172:                                              ; preds = %163, %158
  %173 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %174 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %175 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %176 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = call %struct.wpabuf* @eap_teap_process_crypto_binding(%struct.eap_sm* %173, %struct.eap_teap_data* %174, %struct.eap_method_ret* %175, i64 %177, i32 %179)
  store %struct.wpabuf* %180, %struct.wpabuf** %15, align 8
  %181 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %182 = icmp ne %struct.wpabuf* %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %172
  store i32 1, i32* %17, align 4
  %184 = load i32, i32* @TEAP_ERROR_TUNNEL_COMPROMISE_ERROR, align 4
  store i32 %184, i32* %18, align 4
  br label %211

185:                                              ; preds = %172
  %186 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %187 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %188 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %186, %struct.wpabuf* %187)
  store %struct.wpabuf* %188, %struct.wpabuf** %14, align 8
  %189 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  %197 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %198 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  br label %199

199:                                              ; preds = %196, %193, %185
  %200 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %199
  %205 = load i32, i32* %17, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %210, label %207

207:                                              ; preds = %204
  %208 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %209 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %208, i32 0, i32 11
  store i64 0, i64* %209, align 8
  br label %210

210:                                              ; preds = %207, %204, %199
  br label %211

211:                                              ; preds = %210, %183
  br label %212

212:                                              ; preds = %211, %154
  %213 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %214 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %212
  %218 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %219 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %218, i32 0, i32 10
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %217
  %223 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %224 = call i64 @eap_teap_derive_msk(%struct.eap_teap_data* %223)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %222
  %227 = load i32, i32* @MSG_DEBUG, align 4
  %228 = call i32 @wpa_printf(i32 %227, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i64 0, i64 0))
  %229 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %230 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %231 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %230, i32 0, i32 1
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** @DECISION_COND_SUCC, align 8
  %233 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %234 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %233, i32 0, i32 0
  store i8* %232, i8** %234, align 8
  br label %235

235:                                              ; preds = %226, %222, %217, %212
  %236 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %261

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %256

244:                                              ; preds = %239
  %245 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %246 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %247 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %248 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = call %struct.wpabuf* @eap_teap_process_pac(%struct.eap_sm* %245, %struct.eap_teap_data* %246, %struct.eap_method_ret* %247, i64 %249, i32 %251)
  store %struct.wpabuf* %252, %struct.wpabuf** %15, align 8
  %253 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %254 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %255 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %253, %struct.wpabuf* %254)
  store %struct.wpabuf* %255, %struct.wpabuf** %14, align 8
  br label %260

256:                                              ; preds = %239
  %257 = load i32, i32* @MSG_DEBUG, align 4
  %258 = call i32 @wpa_printf(i32 %257, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %17, align 4
  %259 = load i32, i32* @TEAP_ERROR_UNEXPECTED_TLVS_EXCHANGED, align 4
  store i32 %259, i32* %18, align 4
  br label %260

260:                                              ; preds = %256, %244
  br label %261

261:                                              ; preds = %260, %235
  %262 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %263 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %262, i32 0, i32 9
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %335, label %266

266:                                              ; preds = %261
  %267 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %268 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %335

271:                                              ; preds = %266
  %272 = load i32, i32* %17, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %335, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 3
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %335, label %278

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %335

282:                                              ; preds = %278
  %283 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %284 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %283, i32 0, i32 8
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %318

287:                                              ; preds = %282
  %288 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %289 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %288, i32 0, i32 5
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %335

292:                                              ; preds = %287
  %293 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %294 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %293, i32 0, i32 6
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = icmp ne %struct.TYPE_2__* %295, null
  br i1 %296, label %297, label %335

297:                                              ; preds = %292
  %298 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %299 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %298, i32 0, i32 6
  %300 = load %struct.TYPE_2__*, %struct.TYPE_2__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %335

304:                                              ; preds = %297
  %305 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %306 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %305, i32 0, i32 7
  %307 = load i32, i32* %306, align 8
  %308 = call i64 @eap_teap_allowed_anon_prov_cipher_suite(i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %335

310:                                              ; preds = %304
  %311 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %312 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %311, i32 0, i32 6
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 8
  %316 = call i64 @eap_teap_allowed_anon_prov_phase2_method(i32 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %335

318:                                              ; preds = %310, %282
  %319 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 1
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %328, label %323

323:                                              ; preds = %318
  %324 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %327 = icmp eq i64 %325, %326
  br i1 %327, label %328, label %335

328:                                              ; preds = %323, %318
  %329 = load i32, i32* @MSG_DEBUG, align 4
  %330 = call i32 @wpa_printf(i32 %329, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %331 = call %struct.wpabuf* (...) @eap_teap_pac_request()
  store %struct.wpabuf* %331, %struct.wpabuf** %15, align 8
  %332 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %333 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %334 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %332, %struct.wpabuf* %333)
  store %struct.wpabuf* %334, %struct.wpabuf** %14, align 8
  br label %335

335:                                              ; preds = %328, %323, %310, %304, %297, %292, %287, %278, %274, %271, %266, %261
  br label %336

336:                                              ; preds = %335, %168, %81, %62
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %360

339:                                              ; preds = %336
  %340 = load i64, i64* @TEAP_STATUS_FAILURE, align 8
  %341 = call %struct.wpabuf* @eap_teap_tlv_result(i64 %340, i32 0)
  store %struct.wpabuf* %341, %struct.wpabuf** %15, align 8
  %342 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %343 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %344 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %342, %struct.wpabuf* %343)
  store %struct.wpabuf* %344, %struct.wpabuf** %14, align 8
  %345 = load i32, i32* %18, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %353

347:                                              ; preds = %339
  %348 = load i32, i32* %18, align 4
  %349 = call %struct.wpabuf* @eap_teap_tlv_error(i32 %348)
  store %struct.wpabuf* %349, %struct.wpabuf** %15, align 8
  %350 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %351 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %352 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %350, %struct.wpabuf* %351)
  store %struct.wpabuf* %352, %struct.wpabuf** %14, align 8
  br label %353

353:                                              ; preds = %347, %339
  %354 = load i8*, i8** @METHOD_DONE, align 8
  %355 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %356 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %355, i32 0, i32 1
  store i8* %354, i8** %356, align 8
  %357 = load i8*, i8** @DECISION_FAIL, align 8
  %358 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %359 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %358, i32 0, i32 0
  store i8* %357, i8** %359, align 8
  br label %372

360:                                              ; preds = %336
  %361 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %371

365:                                              ; preds = %360
  %366 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %367 = call %struct.wpabuf* @eap_teap_tlv_result(i64 %366, i32 0)
  store %struct.wpabuf* %367, %struct.wpabuf** %15, align 8
  %368 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %369 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %370 = call %struct.wpabuf* @wpabuf_concat(%struct.wpabuf* %368, %struct.wpabuf* %369)
  store %struct.wpabuf* %370, %struct.wpabuf** %14, align 8
  br label %371

371:                                              ; preds = %365, %360
  br label %372

372:                                              ; preds = %371, %353
  %373 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %374 = icmp ne %struct.wpabuf* %373, null
  br i1 %374, label %375, label %413

375:                                              ; preds = %372
  %376 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i64, i64* @TEAP_STATUS_SUCCESS, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %413

380:                                              ; preds = %375
  %381 = load i32, i32* %17, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %413, label %383

383:                                              ; preds = %380
  %384 = getelementptr inbounds %struct.eap_teap_tlv_parse, %struct.eap_teap_tlv_parse* %16, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %413

387:                                              ; preds = %383
  %388 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %389 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %388, i32 0, i32 5
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %413

392:                                              ; preds = %387
  %393 = load i32, i32* @MSG_DEBUG, align 4
  %394 = call i32 @wpa_printf(i32 %393, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %395 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %396 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %397 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %396, i32 0, i32 1
  store i8* %395, i8** %397, align 8
  %398 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %399 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %398, i32 0, i32 3
  %400 = load i64, i64* %399, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %392
  %403 = load i8*, i8** @METHOD_MAY_CONT, align 8
  br label %406

404:                                              ; preds = %392
  %405 = load i8*, i8** @METHOD_DONE, align 8
  br label %406

406:                                              ; preds = %404, %402
  %407 = phi i8* [ %403, %402 ], [ %405, %404 ]
  %408 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %409 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %408, i32 0, i32 4
  store i8* %407, i8** %409, align 8
  %410 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  %411 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %412 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %411, i32 0, i32 0
  store i8* %410, i8** %412, align 8
  br label %413

413:                                              ; preds = %406, %387, %383, %380, %375, %372
  %414 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %415 = icmp ne %struct.wpabuf* %414, null
  br i1 %415, label %420, label %416

416:                                              ; preds = %413
  %417 = load i32, i32* @MSG_DEBUG, align 4
  %418 = call i32 @wpa_printf(i32 %417, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  %419 = call %struct.wpabuf* @wpabuf_alloc(i32 1)
  store %struct.wpabuf* %419, %struct.wpabuf** %14, align 8
  br label %420

420:                                              ; preds = %416, %413
  br label %421

421:                                              ; preds = %420, %32, %26
  %422 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %423 = icmp ne %struct.wpabuf* %422, null
  br i1 %423, label %425, label %424

424:                                              ; preds = %421
  store i32 0, i32* %7, align 4
  br label %447

425:                                              ; preds = %421
  %426 = load i32, i32* @MSG_DEBUG, align 4
  %427 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %428 = call i32 @wpa_hexdump_buf(i32 %426, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), %struct.wpabuf* %427)
  %429 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %430 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %431 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %430, i32 0, i32 2
  %432 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %433 = load %struct.eap_teap_data*, %struct.eap_teap_data** %9, align 8
  %434 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* %11, align 4
  %437 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %438 = load %struct.wpabuf**, %struct.wpabuf*** %13, align 8
  %439 = call i64 @eap_peer_tls_encrypt(%struct.eap_sm* %429, i32* %431, i32 %432, i32 %435, i32 %436, %struct.wpabuf* %437, %struct.wpabuf** %438)
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %444

441:                                              ; preds = %425
  %442 = load i32, i32* @MSG_INFO, align 4
  %443 = call i32 @wpa_printf(i32 %442, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %444

444:                                              ; preds = %441, %425
  %445 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %446 = call i32 @wpabuf_free(%struct.wpabuf* %445)
  store i32 0, i32* %7, align 4
  br label %447

447:                                              ; preds = %444, %424, %22
  %448 = load i32, i32* %7, align 4
  ret i32 %448
}

declare dso_local i64 @eap_teap_parse_decrypted(%struct.wpabuf*, %struct.eap_teap_tlv_parse*, %struct.wpabuf**) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpabuf* @eap_teap_tlv_result(i64, i32) #1

declare dso_local %struct.wpabuf* @eap_teap_process_basic_auth_req(%struct.eap_sm*, %struct.eap_teap_data*, i64, i32) #1

declare dso_local %struct.wpabuf* @wpabuf_concat(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @eap_teap_process_eap_payload_tlv(%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_teap_process_crypto_binding(%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i64, i32) #1

declare dso_local i64 @eap_teap_derive_msk(%struct.eap_teap_data*) #1

declare dso_local %struct.wpabuf* @eap_teap_process_pac(%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i64, i32) #1

declare dso_local i64 @eap_teap_allowed_anon_prov_cipher_suite(i32) #1

declare dso_local i64 @eap_teap_allowed_anon_prov_phase2_method(i32) #1

declare dso_local %struct.wpabuf* @eap_teap_pac_request(...) #1

declare dso_local %struct.wpabuf* @eap_teap_tlv_error(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @eap_peer_tls_encrypt(%struct.eap_sm*, i32*, i32, i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
