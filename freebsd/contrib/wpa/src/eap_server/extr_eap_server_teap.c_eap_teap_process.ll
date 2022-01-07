; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.eap_teap_data = type { i64, i32, %struct.wpabuf* }

@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_TEAP = common dso_local global i32 0, align 4
@EAP_TEAP_FLAGS_OUTER_TLV_LEN = common dso_local global i32 0, align 4
@PHASE1 = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"EAP-TEAP: Unexpected Outer TLVs in a message that is not the first message from the peer\00", align 1
@EAP_TLS_FLAGS_LENGTH_INCLUDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"EAP-TEAP: Too short message to include Message Length field\00", align 1
@.str.2 = private unnamed_addr constant [85 x i8] c"EAP-TEAP: Message Length field has too msall value to include Outer TLV Length field\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"EAP-TEAP: Too short message to include Outer TLVs Length field\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Message Length %u Outer TLV Length %u\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"EAP-TEAP: Too short message to include Outer TLVs field\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"EAP-TEAP: Message Length field has too small value to include Outer TLVs\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"EAP-TEAP: Outer TLVs\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"EAP-TEAP: TLS Data message after Outer TLV removal\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"EAP-TEAP: Invalid frame after Outer TLV removal\00", align 1
@PHASE1B = common dso_local global i32 0, align 4
@eap_teap_process_version = common dso_local global i32 0, align 4
@eap_teap_process_msg = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, i8*, %struct.wpabuf*)* @eap_teap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_teap_process(%struct.eap_sm* %0, i8* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_teap_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.eap_teap_data*
  store %struct.eap_teap_data* %16, %struct.eap_teap_data** %7, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %17, %struct.wpabuf** %10, align 8
  %18 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %19 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %20 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %21 = call i32* @eap_hdr_validate(i32 %18, i32 %19, %struct.wpabuf* %20, i64* %9)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i64, i64* %9, align 8
  %26 = icmp ult i64 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %3
  br label %258

28:                                               ; preds = %24
  %29 = load i32*, i32** %8, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %8, align 8
  %31 = load i32, i32* %29, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i64, i64* %9, align 8
  %33 = add i64 %32, -1
  store i64 %33, i64* %9, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @EAP_TEAP_FLAGS_OUTER_TLV_LEN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %226

38:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  %39 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %40 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PHASE1, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  br label %258

47:                                               ; preds = %38
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @EAP_TLS_FLAGS_LENGTH_INCLUDED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %47
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @MSG_INFO, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  br label %258

58:                                               ; preds = %52
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @WPA_GET_BE32(i32* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32* %62, i32** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = sub i64 %63, 4
  store i64 %64, i64* %9, align 8
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  br label %258

70:                                               ; preds = %58
  br label %71

71:                                               ; preds = %70, %47
  %72 = load i64, i64* %9, align 8
  %73 = icmp ult i64 %72, 4
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* @MSG_INFO, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  br label %258

77:                                               ; preds = %71
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @WPA_GET_BE32(i32* %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  store i32* %81, i32** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %82, 4
  store i64 %83, i64* %9, align 8
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i64, i64* %9, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %77
  %93 = load i32, i32* @MSG_INFO, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %258

95:                                               ; preds = %77
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 4, %104
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102, %98
  %108 = load i32, i32* @MSG_INFO, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0))
  br label %258

110:                                              ; preds = %102, %95
  %111 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %112 = call i32 @wpabuf_len(%struct.wpabuf* %111)
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 4, %113
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i64, i64* %9, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = icmp ult i64 %117, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %116, %110
  br label %258

122:                                              ; preds = %116
  %123 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %124 = call i32 @wpabuf_len(%struct.wpabuf* %123)
  %125 = sub nsw i32 %124, 4
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %125, %126
  %128 = call %struct.wpabuf* @wpabuf_alloc(i32 %127)
  store %struct.wpabuf* %128, %struct.wpabuf** %10, align 8
  %129 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %130 = icmp ne %struct.wpabuf* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %122
  br label %258

132:                                              ; preds = %122
  %133 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %134 = call i32* @wpabuf_head(%struct.wpabuf* %133)
  store i32* %134, i32** %14, align 8
  %135 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %14, align 8
  %138 = load i32, i32* %136, align 4
  %139 = call i32 @wpabuf_put_u8(%struct.wpabuf* %135, i32 %138)
  %140 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %141 = load i32*, i32** %14, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %14, align 8
  %143 = load i32, i32* %141, align 4
  %144 = call i32 @wpabuf_put_u8(%struct.wpabuf* %140, i32 %143)
  %145 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %146 = load i32*, i32** %14, align 8
  %147 = call i32 @WPA_GET_BE16(i32* %146)
  %148 = sub nsw i32 %147, 4
  %149 = load i32, i32* %13, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 @wpabuf_put_be16(%struct.wpabuf* %145, i32 %150)
  %152 = load i32*, i32** %14, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32* %153, i32** %14, align 8
  %154 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %155 = load i32*, i32** %14, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %14, align 8
  %157 = load i32, i32* %155, align 4
  %158 = call i32 @wpabuf_put_u8(%struct.wpabuf* %154, i32 %157)
  %159 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @EAP_TEAP_FLAGS_OUTER_TLV_LEN, align 4
  %162 = xor i32 %161, -1
  %163 = and i32 %160, %162
  %164 = call i32 @wpabuf_put_u8(%struct.wpabuf* %159, i32 %163)
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @EAP_TLS_FLAGS_LENGTH_INCLUDED, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %132
  %170 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %172, %173
  %175 = call i32 @wpabuf_put_be32(%struct.wpabuf* %170, i32 %174)
  br label %176

176:                                              ; preds = %169, %132
  %177 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = load i64, i64* %9, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = sub i64 %179, %181
  %183 = call i32 @wpabuf_put_data(%struct.wpabuf* %177, i32* %178, i64 %182)
  %184 = load i64, i64* %9, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = sub i64 %184, %186
  %188 = load i32*, i32** %8, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 %187
  store i32* %189, i32** %8, align 8
  %190 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %191 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %190, i32 0, i32 2
  %192 = load %struct.wpabuf*, %struct.wpabuf** %191, align 8
  %193 = call i32 @wpabuf_free(%struct.wpabuf* %192)
  %194 = load i32*, i32** %8, align 8
  %195 = load i32, i32* %13, align 4
  %196 = call %struct.wpabuf* @wpabuf_alloc_copy(i32* %194, i32 %195)
  %197 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %198 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %197, i32 0, i32 2
  store %struct.wpabuf* %196, %struct.wpabuf** %198, align 8
  %199 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %200 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %199, i32 0, i32 2
  %201 = load %struct.wpabuf*, %struct.wpabuf** %200, align 8
  %202 = icmp ne %struct.wpabuf* %201, null
  br i1 %202, label %204, label %203

203:                                              ; preds = %176
  br label %258

204:                                              ; preds = %176
  %205 = load i32, i32* @MSG_DEBUG, align 4
  %206 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %207 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %206, i32 0, i32 2
  %208 = load %struct.wpabuf*, %struct.wpabuf** %207, align 8
  %209 = call i32 @wpa_hexdump_buf(i32 %205, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), %struct.wpabuf* %208)
  %210 = load i32, i32* @MSG_DEBUG, align 4
  %211 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %212 = call i32 @wpa_hexdump_buf(i32 %210, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), %struct.wpabuf* %211)
  %213 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %214 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %215 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %216 = call i32* @eap_hdr_validate(i32 %213, i32 %214, %struct.wpabuf* %215, i64* %9)
  store i32* %216, i32** %8, align 8
  %217 = load i32*, i32** %8, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %222

219:                                              ; preds = %204
  %220 = load i64, i64* %9, align 8
  %221 = icmp ult i64 %220, 1
  br i1 %221, label %222, label %225

222:                                              ; preds = %219, %204
  %223 = load i32, i32* @MSG_INFO, align 4
  %224 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  br label %258

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %225, %28
  %227 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %228 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @PHASE1, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  %233 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %234 = load i32, i32* @PHASE1B, align 4
  %235 = call i32 @eap_teap_state(%struct.eap_teap_data* %233, i32 %234)
  br label %236

236:                                              ; preds = %232, %226
  %237 = load %struct.eap_sm*, %struct.eap_sm** %4, align 8
  %238 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %239 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %238, i32 0, i32 1
  %240 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %241 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %242 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %243 = load i32, i32* @eap_teap_process_version, align 4
  %244 = load i32, i32* @eap_teap_process_msg, align 4
  %245 = call i64 @eap_server_tls_process(%struct.eap_sm* %237, i32* %239, %struct.wpabuf* %240, %struct.eap_teap_data* %241, i32 %242, i32 %243, i32 %244)
  %246 = icmp slt i64 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %236
  %248 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %249 = load i32, i32* @FAILURE, align 4
  %250 = call i32 @eap_teap_state(%struct.eap_teap_data* %248, i32 %249)
  br label %251

251:                                              ; preds = %247, %236
  %252 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %253 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %254 = icmp ne %struct.wpabuf* %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %257 = call i32 @wpabuf_free(%struct.wpabuf* %256)
  br label %258

258:                                              ; preds = %27, %44, %55, %67, %74, %92, %107, %121, %131, %203, %222, %255, %251
  ret void
}

declare dso_local i32* @eap_hdr_validate(i32, i32, %struct.wpabuf*, i64*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpabuf_put_be32(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32*, i64) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(i32*, i32) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @eap_teap_state(%struct.eap_teap_data*, i32) #1

declare dso_local i64 @eap_server_tls_process(%struct.eap_sm*, i32*, %struct.wpabuf*, %struct.eap_teap_data*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
