; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process_phase2_tlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_peap.c_eap_peap_process_phase2_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i64, i64, i64 }
%struct.wpabuf = type { i32 }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TLV = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"EAP-PEAP: Invalid EAP-TLV header\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EAP-PEAP: Received TLVs\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"EAP-PEAP: TLV underrun (tlv_len=%d left=%lu)\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"EAP-PEAP: Unsupported TLV Type %d%s\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c" (mandatory)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"EAP-PEAP: Last TLV too short in Request (left=%lu)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"EAP-PEAP: Cryptobinding TLV\00", align 1
@REQUIRE_BINDING = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"EAP-PEAP: No cryptobinding TLV\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"EAP-PEAP: Result TLV\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [41 x i8] c"EAP-PEAP: Too short Result TLV (len=%lu)\00", align 1
@TLV_REQ_SUCCESS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"Failure\00", align 1
@EAP_TLV_RESULT_SUCCESS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [46 x i8] c"EAP-PEAP: TLV Result - Success - requested %s\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@EAP_TLV_RESULT_FAILURE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [46 x i8] c"EAP-PEAP: TLV Result - Failure - requested %s\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"EAP-PEAP: Unknown TLV Result Status %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_peap_data*, %struct.wpabuf*)* @eap_peap_process_phase2_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_peap_process_phase2_tlv(%struct.eap_sm* %0, %struct.eap_peap_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_peap_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %19 = load i32, i32* @EAP_TYPE_TLV, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %21 = call i32* @eap_hdr_validate(i32 %18, i32 %19, %struct.wpabuf* %20, i64* %8)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %242

27:                                               ; preds = %3
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @wpa_hexdump(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32* %29, i64 %30)
  br label %32

32:                                               ; preds = %103, %27
  %33 = load i64, i64* %8, align 8
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %35, label %112

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %14, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 63
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = shl i32 %48, 8
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %49, %52
  store i32 %53, i32* %13, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 8
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  store i32 %61, i32* %15, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32* %63, i32** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub i64 %64, 4
  store i64 %65, i64* %8, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %35
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %72, i64 %73)
  %75 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %76 = load i32, i32* @FAILURE, align 4
  %77 = call i32 @eap_peap_state(%struct.eap_peap_data* %75, i32 %76)
  br label %242

78:                                               ; preds = %35
  %79 = load i32, i32* %13, align 4
  switch i32 %79, label %88 [
    i32 128, label %80
    i32 129, label %84
  ]

80:                                               ; preds = %78
  %81 = load i32*, i32** %7, align 8
  store i32* %81, i32** %9, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %11, align 8
  br label %103

84:                                               ; preds = %78
  %85 = load i32*, i32** %7, align 8
  store i32* %85, i32** %10, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  store i64 %87, i64* %12, align 8
  br label %103

88:                                               ; preds = %78
  %89 = load i32, i32* @MSG_DEBUG, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %90, i8* %94)
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %88
  %99 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %100 = load i32, i32* @FAILURE, align 4
  %101 = call i32 @eap_peap_state(%struct.eap_peap_data* %99, i32 %100)
  br label %242

102:                                              ; preds = %88
  br label %103

103:                                              ; preds = %102, %84, %80
  %104 = load i32, i32* %15, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %7, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %8, align 8
  %111 = sub i64 %110, %109
  store i64 %111, i64* %8, align 8
  br label %32

112:                                              ; preds = %32
  %113 = load i64, i64* %8, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i32, i32* @MSG_DEBUG, align 4
  %117 = load i64, i64* %8, align 8
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %116, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %117)
  %119 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %120 = load i32, i32* @FAILURE, align 4
  %121 = call i32 @eap_peap_state(%struct.eap_peap_data* %119, i32 %120)
  br label %242

122:                                              ; preds = %112
  %123 = load i32*, i32** %10, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %150

125:                                              ; preds = %122
  %126 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %127 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %150

130:                                              ; preds = %125
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = load i32*, i32** %10, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call i32 @wpa_hexdump(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32* %132, i64 %133)
  %135 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %136 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 -4
  %139 = load i64, i64* %12, align 8
  %140 = add i64 %139, 4
  %141 = call i64 @eap_tlv_validate_cryptobinding(%struct.eap_sm* %135, %struct.eap_peap_data* %136, i32* %138, i64 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %130
  %144 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %145 = load i32, i32* @FAILURE, align 4
  %146 = call i32 @eap_peap_state(%struct.eap_peap_data* %144, i32 %145)
  br label %242

147:                                              ; preds = %130
  %148 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %149 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  br label %171

150:                                              ; preds = %125, %122
  %151 = load i32*, i32** %10, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %170, label %153

153:                                              ; preds = %150
  %154 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %155 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %170

158:                                              ; preds = %153
  %159 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %160 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @REQUIRE_BINDING, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load i32, i32* @MSG_DEBUG, align 4
  %166 = call i32 (i32, i8*, ...) @wpa_printf(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %167 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %168 = load i32, i32* @FAILURE, align 4
  %169 = call i32 @eap_peap_state(%struct.eap_peap_data* %167, i32 %168)
  br label %242

170:                                              ; preds = %158, %153, %150
  br label %171

171:                                              ; preds = %170, %147
  %172 = load i32*, i32** %9, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %242

174:                                              ; preds = %171
  %175 = load i32, i32* @MSG_DEBUG, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @wpa_hexdump(i32 %175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32* %176, i64 %177)
  %179 = load i64, i64* %11, align 8
  %180 = icmp ult i64 %179, 2
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load i32, i32* @MSG_INFO, align 4
  %183 = load i64, i64* %11, align 8
  %184 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i64 %183)
  %185 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %186 = load i32, i32* @FAILURE, align 4
  %187 = call i32 @eap_peap_state(%struct.eap_peap_data* %185, i32 %186)
  br label %242

188:                                              ; preds = %174
  %189 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %190 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @TLV_REQ_SUCCESS, align 8
  %193 = icmp eq i64 %191, %192
  %194 = zext i1 %193 to i64
  %195 = select i1 %193, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)
  store i8* %195, i8** %17, align 8
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @WPA_GET_BE16(i32* %196)
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* @EAP_TLV_RESULT_SUCCESS, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %222

201:                                              ; preds = %188
  %202 = load i32, i32* @MSG_INFO, align 4
  %203 = load i8*, i8** %17, align 8
  %204 = call i32 (i32, i8*, ...) @wpa_printf(i32 %202, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.13, i64 0, i64 0), i8* %203)
  %205 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %206 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @TLV_REQ_SUCCESS, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %217

210:                                              ; preds = %201
  %211 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %212 = load i32, i32* @SUCCESS, align 4
  %213 = call i32 @eap_peap_state(%struct.eap_peap_data* %211, i32 %212)
  %214 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %215 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %216 = call i32 @eap_peap_valid_session(%struct.eap_sm* %214, %struct.eap_peap_data* %215)
  br label %221

217:                                              ; preds = %201
  %218 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %219 = load i32, i32* @FAILURE, align 4
  %220 = call i32 @eap_peap_state(%struct.eap_peap_data* %218, i32 %219)
  br label %221

221:                                              ; preds = %217, %210
  br label %241

222:                                              ; preds = %188
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* @EAP_TLV_RESULT_FAILURE, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %233

226:                                              ; preds = %222
  %227 = load i32, i32* @MSG_INFO, align 4
  %228 = load i8*, i8** %17, align 8
  %229 = call i32 (i32, i8*, ...) @wpa_printf(i32 %227, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.14, i64 0, i64 0), i8* %228)
  %230 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %231 = load i32, i32* @FAILURE, align 4
  %232 = call i32 @eap_peap_state(%struct.eap_peap_data* %230, i32 %231)
  br label %240

233:                                              ; preds = %222
  %234 = load i32, i32* @MSG_INFO, align 4
  %235 = load i32, i32* %16, align 4
  %236 = call i32 (i32, i8*, ...) @wpa_printf(i32 %234, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %235)
  %237 = load %struct.eap_peap_data*, %struct.eap_peap_data** %5, align 8
  %238 = load i32, i32* @FAILURE, align 4
  %239 = call i32 @eap_peap_state(%struct.eap_peap_data* %237, i32 %238)
  br label %240

240:                                              ; preds = %233, %226
  br label %241

241:                                              ; preds = %240, %221
  br label %242

242:                                              ; preds = %24, %70, %98, %115, %143, %164, %181, %241, %171
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_peap_state(%struct.eap_peap_data*, i32) #1

declare dso_local i64 @eap_tlv_validate_cryptobinding(%struct.eap_sm*, %struct.eap_peap_data*, i32*, i64) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @eap_peap_valid_session(%struct.eap_sm*, %struct.eap_peap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
