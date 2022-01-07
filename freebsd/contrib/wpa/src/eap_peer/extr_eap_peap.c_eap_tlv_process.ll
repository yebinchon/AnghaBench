; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_tlv_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_tlv_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i64 }
%struct.eap_method_ret = type { i32, i8* }
%struct.wpabuf = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TLV = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-TLV: Received TLVs\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"EAP-TLV: TLV underrun (tlv_len=%lu left=%lu)\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"EAP-TLV: Unsupported TLV Type %d%s\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c" (mandatory)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"EAP-TLV: Last TLV too short in Request (left=%lu)\00", align 1
@NO_BINDING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"EAP-PEAP: Cryptobinding TLV\00", align 1
@REQUIRE_BINDING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"EAP-PEAP: No cryptobinding TLV\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"EAP-TLV: Result TLV\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"EAP-TLV: Too short Result TLV (len=%lu)\00", align 1
@EAP_TLV_RESULT_SUCCESS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [57 x i8] c"EAP-TLV: TLV Result - Success - EAP-TLV/Phase2 Completed\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"EAP-TLV: Earlier failure - force failed Phase 2\00", align 1
@EAP_TLV_RESULT_FAILURE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i8* null, align 8
@DECISION_UNCOND_SUCC = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [30 x i8] c"EAP-TLV: TLV Result - Failure\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"EAP-TLV: Unknown TLV Result Status %d\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_peap_data*, %struct.eap_method_ret*, %struct.wpabuf*, %struct.wpabuf**, i32)* @eap_tlv_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tlv_process(%struct.eap_sm* %0, %struct.eap_peap_data* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3, %struct.wpabuf** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_peap_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.wpabuf**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %11, align 8
  store %struct.wpabuf** %4, %struct.wpabuf*** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %25 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %26 = load i32, i32* @EAP_TYPE_TLV, align 4
  %27 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %28 = call i32* @eap_hdr_validate(i32 %25, i32 %26, %struct.wpabuf* %27, i64* %14)
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %227

32:                                               ; preds = %6
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32*, i32** %16, align 8
  %35 = load i64, i64* %14, align 8
  %36 = call i32 @wpa_hexdump(i32 %33, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %99, %32
  %38 = load i64, i64* %14, align 8
  %39 = icmp uge i64 %38, 4
  br i1 %39, label %40, label %106

40:                                               ; preds = %37
  %41 = load i32*, i32** %16, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 128
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %22, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = call i32 @WPA_GET_BE16(i32* %49)
  %51 = and i32 %50, 16383
  store i32 %51, i32* %21, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32* %53, i32** %16, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = call i32 @WPA_GET_BE16(i32* %54)
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %15, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32* %58, i32** %16, align 8
  %59 = load i64, i64* %14, align 8
  %60 = sub i64 %59, 4
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = icmp ugt i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %40
  %65 = load i32, i32* @MSG_DEBUG, align 4
  %66 = load i64, i64* %15, align 8
  %67 = load i64, i64* %14, align 8
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %67)
  store i32 -1, i32* %7, align 4
  br label %227

69:                                               ; preds = %40
  %70 = load i32, i32* %21, align 4
  switch i32 %70, label %77 [
    i32 128, label %71
    i32 129, label %74
  ]

71:                                               ; preds = %69
  %72 = load i32*, i32** %16, align 8
  store i32* %72, i32** %17, align 8
  %73 = load i64, i64* %15, align 8
  store i64 %73, i64* %19, align 8
  br label %99

74:                                               ; preds = %69
  %75 = load i32*, i32** %16, align 8
  store i32* %75, i32** %18, align 8
  %76 = load i64, i64* %15, align 8
  store i64 %76, i64* %20, align 8
  br label %99

77:                                               ; preds = %69
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = load i32, i32* %21, align 4
  %80 = load i32, i32* %22, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %84 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %79, i8* %83)
  %85 = load i32, i32* %22, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %77
  %88 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %89 = call i32 @eap_get_id(%struct.wpabuf* %88)
  %90 = load i32, i32* %21, align 4
  %91 = call %struct.wpabuf* @eap_tlv_build_nak(i32 %89, i32 %90)
  %92 = load %struct.wpabuf**, %struct.wpabuf*** %12, align 8
  store %struct.wpabuf* %91, %struct.wpabuf** %92, align 8
  %93 = load %struct.wpabuf**, %struct.wpabuf*** %12, align 8
  %94 = load %struct.wpabuf*, %struct.wpabuf** %93, align 8
  %95 = icmp eq %struct.wpabuf* %94, null
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i32 -1, i32 0
  store i32 %97, i32* %7, align 4
  br label %227

98:                                               ; preds = %77
  br label %99

99:                                               ; preds = %98, %74, %71
  %100 = load i64, i64* %15, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 %100
  store i32* %102, i32** %16, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %14, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %14, align 8
  br label %37

106:                                              ; preds = %37
  %107 = load i64, i64* %14, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* @MSG_DEBUG, align 4
  %111 = load i64, i64* %14, align 8
  %112 = call i32 (i32, i8*, ...) @wpa_printf(i32 %110, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i64 %111)
  store i32 -1, i32* %7, align 4
  br label %227

113:                                              ; preds = %106
  %114 = load i32*, i32** %18, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load %struct.eap_peap_data*, %struct.eap_peap_data** %9, align 8
  %118 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NO_BINDING, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load i32*, i32** %18, align 8
  %125 = load i64, i64* %20, align 8
  %126 = call i32 @wpa_hexdump(i32 %123, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32* %124, i64 %125)
  %127 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %128 = load %struct.eap_peap_data*, %struct.eap_peap_data** %9, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 -4
  %131 = load i64, i64* %20, align 8
  %132 = add i64 %131, 4
  %133 = call i64 @eap_tlv_validate_cryptobinding(%struct.eap_sm* %127, %struct.eap_peap_data* %128, i32* %130, i64 %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %122
  %136 = load i32*, i32** %17, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  store i32 -1, i32* %7, align 4
  br label %227

139:                                              ; preds = %135
  store i32 1, i32* %13, align 4
  store i32* null, i32** %18, align 8
  br label %140

140:                                              ; preds = %139, %122
  br label %154

141:                                              ; preds = %116, %113
  %142 = load i32*, i32** %18, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %153, label %144

144:                                              ; preds = %141
  %145 = load %struct.eap_peap_data*, %struct.eap_peap_data** %9, align 8
  %146 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @REQUIRE_BINDING, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* @MSG_DEBUG, align 4
  %152 = call i32 (i32, i8*, ...) @wpa_printf(i32 %151, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %227

153:                                              ; preds = %144, %141
  br label %154

154:                                              ; preds = %153, %140
  %155 = load i32*, i32** %17, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %226

157:                                              ; preds = %154
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load i32*, i32** %17, align 8
  %160 = load i64, i64* %19, align 8
  %161 = call i32 @wpa_hexdump(i32 %158, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32* %159, i64 %160)
  %162 = load i64, i64* %19, align 8
  %163 = icmp ult i64 %162, 2
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i32, i32* @MSG_INFO, align 4
  %166 = load i64, i64* %19, align 8
  %167 = call i32 (i32, i8*, ...) @wpa_printf(i32 %165, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i64 %166)
  store i32 -1, i32* %7, align 4
  br label %227

168:                                              ; preds = %157
  %169 = load i32*, i32** %17, align 8
  %170 = call i32 @WPA_GET_BE16(i32* %169)
  store i32 %170, i32* %23, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* @EAP_TLV_RESULT_SUCCESS, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %168
  %175 = load i32, i32* @MSG_INFO, align 4
  %176 = call i32 (i32, i8*, ...) @wpa_printf(i32 %175, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load i32, i32* @MSG_INFO, align 4
  %181 = call i32 (i32, i8*, ...) @wpa_printf(i32 %180, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0))
  %182 = load i32, i32* @EAP_TLV_RESULT_FAILURE, align 4
  store i32 %182, i32* %24, align 4
  %183 = load i8*, i8** @DECISION_FAIL, align 8
  %184 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %185 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %184, i32 0, i32 1
  store i8* %183, i8** %185, align 8
  br label %191

186:                                              ; preds = %174
  %187 = load i32, i32* @EAP_TLV_RESULT_SUCCESS, align 4
  store i32 %187, i32* %24, align 4
  %188 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  %189 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %190 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %189, i32 0, i32 1
  store i8* %188, i8** %190, align 8
  br label %191

191:                                              ; preds = %186, %179
  br label %212

192:                                              ; preds = %168
  %193 = load i32, i32* %23, align 4
  %194 = load i32, i32* @EAP_TLV_RESULT_FAILURE, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %203

196:                                              ; preds = %192
  %197 = load i32, i32* @MSG_INFO, align 4
  %198 = call i32 (i32, i8*, ...) @wpa_printf(i32 %197, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %199 = load i32, i32* @EAP_TLV_RESULT_FAILURE, align 4
  store i32 %199, i32* %24, align 4
  %200 = load i8*, i8** @DECISION_FAIL, align 8
  %201 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %202 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  br label %211

203:                                              ; preds = %192
  %204 = load i32, i32* @MSG_INFO, align 4
  %205 = load i32, i32* %23, align 4
  %206 = call i32 (i32, i8*, ...) @wpa_printf(i32 %204, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @EAP_TLV_RESULT_FAILURE, align 4
  store i32 %207, i32* %24, align 4
  %208 = load i8*, i8** @DECISION_FAIL, align 8
  %209 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %210 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %209, i32 0, i32 1
  store i8* %208, i8** %210, align 8
  br label %211

211:                                              ; preds = %203, %196
  br label %212

212:                                              ; preds = %211, %191
  %213 = load i32, i32* @METHOD_DONE, align 4
  %214 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %215 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 8
  %216 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %217 = load %struct.eap_peap_data*, %struct.eap_peap_data** %9, align 8
  %218 = load i32*, i32** %18, align 8
  %219 = icmp ne i32* %218, null
  %220 = zext i1 %219 to i32
  %221 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %222 = call i32 @eap_get_id(%struct.wpabuf* %221)
  %223 = load i32, i32* %24, align 4
  %224 = call %struct.wpabuf* @eap_tlv_build_result(%struct.eap_sm* %216, %struct.eap_peap_data* %217, i32 %220, i32 %222, i32 %223)
  %225 = load %struct.wpabuf**, %struct.wpabuf*** %12, align 8
  store %struct.wpabuf* %224, %struct.wpabuf** %225, align 8
  br label %226

226:                                              ; preds = %212, %154
  store i32 0, i32* %7, align 4
  br label %227

227:                                              ; preds = %226, %164, %150, %138, %109, %87, %64, %31
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_tlv_build_nak(i32, i32) #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #1

declare dso_local i64 @eap_tlv_validate_cryptobinding(%struct.eap_sm*, %struct.eap_peap_data*, i32*, i64) #1

declare dso_local %struct.wpabuf* @eap_tlv_build_result(%struct.eap_sm*, %struct.eap_peap_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
