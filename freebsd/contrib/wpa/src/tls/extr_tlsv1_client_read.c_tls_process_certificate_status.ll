; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_certificate_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_certificate_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, i32, %struct.x509_certificate* }
%struct.x509_certificate = type { i64, i32, %struct.x509_certificate*, i64 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"TLSv1: Too short CertificateStatus (left=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"TLSv1: Mismatch in CertificateStatus length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [77 x i8] c"TLSv1: Received unexpected handshake message %d (expected CertificateStatus)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"TLSv1: Received CertificateStatus\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"TLSv1: Too short CertificateStatus\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"TLSv1: CertificateStatus status_type %u\00", align 1
@TLS_OCSP_NO_RESPONSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"TLSv1: Truncated OCSPResponseList\00", align 1
@TLS_OCSP_INVALID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"TLSv1: Truncated OCSPResponseList(len=%u)\00", align 1
@.str.9 = private unnamed_addr constant [61 x i8] c"TLSv1: Truncated OCSPResponse(len=%u; left=%d) in ocsp_multi\00", align 1
@TLS_OCSP_REVOKED = common dso_local global i32 0, align 4
@TLS_OCSP_GOOD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [44 x i8] c"TLSv1: Ignore unsupported CertificateStatus\00", align 1
@TLS_ALERT_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@TLS_FAIL_REVOKED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"certificate revoked\00", align 1
@TLS_CONN_REQUIRE_OCSP_ALL = common dso_local global i32 0, align 4
@TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE = common dso_local global i32 0, align 4
@TLS_FAIL_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"bad certificate status response\00", align 1
@TLS_CONN_REQUIRE_OCSP = common dso_local global i32 0, align 4
@SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_certificate_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_certificate_status(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.x509_certificate*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %30 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %31 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %32 = call i32 @tls_alert(%struct.tlsv1_client* %29, i32 %30, i32 %31)
  store i32 -1, i32* %5, align 4
  br label %372

33:                                               ; preds = %4
  %34 = load i64*, i64** %8, align 8
  store i64* %34, i64** %10, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ult i64 %37, 4
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = load i64, i64* %12, align 8
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %44 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %45 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %46 = call i32 @tls_alert(%struct.tlsv1_client* %43, i32 %44, i32 %45)
  store i32 -1, i32* %5, align 4
  br label %372

47:                                               ; preds = %33
  %48 = load i64*, i64** %10, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %10, align 8
  %50 = load i64, i64* %48, align 8
  store i64 %50, i64* %14, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = call i8* @WPA_GET_BE24(i64* %51)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %13, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  store i64* %55, i64** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %56, 4
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %67 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %68 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %69 = call i32 @tls_alert(%struct.tlsv1_client* %66, i32 %67, i32 %68)
  store i32 -1, i32* %5, align 4
  br label %372

70:                                               ; preds = %47
  %71 = load i64*, i64** %10, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64* %73, i64** %11, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = load i64, i64* %14, align 8
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i64 %79)
  %81 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %82 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %83 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %84 = call i32 @tls_alert(%struct.tlsv1_client* %81, i32 %82, i32 %83)
  store i32 -1, i32* %5, align 4
  br label %372

85:                                               ; preds = %70
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %86, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i64*, i64** %11, align 8
  %89 = load i64*, i64** %10, align 8
  %90 = ptrtoint i64* %88 to i64
  %91 = ptrtoint i64* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 8
  %94 = icmp slt i64 %93, 1
  br i1 %94, label %95, label %102

95:                                               ; preds = %85
  %96 = load i32, i32* @MSG_INFO, align 4
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %98 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %99 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %100 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %101 = call i32 @tls_alert(%struct.tlsv1_client* %98, i32 %99, i32 %100)
  store i32 -1, i32* %5, align 4
  br label %372

102:                                              ; preds = %85
  %103 = load i64*, i64** %10, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %10, align 8
  %105 = load i64, i64* %103, align 8
  store i64 %105, i64* %15, align 8
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i64, i64* %15, align 8
  %108 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %107)
  %109 = load i64, i64* %15, align 8
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %113 = load i64*, i64** %10, align 8
  %114 = load i64*, i64** %11, align 8
  %115 = load i64*, i64** %10, align 8
  %116 = ptrtoint i64* %114 to i64
  %117 = ptrtoint i64* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @tls_process_certificate_status_ocsp_response(%struct.tlsv1_client* %112, i64* %113, i32 %120)
  store i32 %121, i32* %16, align 4
  br label %244

122:                                              ; preds = %102
  %123 = load i64, i64* %15, align 8
  %124 = icmp eq i64 %123, 2
  br i1 %124, label %125, label %240

125:                                              ; preds = %122
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %126 = load i32, i32* @TLS_OCSP_NO_RESPONSE, align 4
  store i32 %126, i32* %16, align 4
  %127 = load i64*, i64** %11, align 8
  %128 = load i64*, i64** %10, align 8
  %129 = ptrtoint i64* %127 to i64
  %130 = ptrtoint i64* %128 to i64
  %131 = sub i64 %129, %130
  %132 = sdiv exact i64 %131, 8
  %133 = icmp slt i64 %132, 3
  br i1 %133, label %134, label %138

134:                                              ; preds = %125
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %137, i32* %16, align 4
  br label %245

138:                                              ; preds = %125
  %139 = load i64*, i64** %10, align 8
  %140 = call i8* @WPA_GET_BE24(i64* %139)
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %21, align 4
  %142 = load i64*, i64** %10, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 3
  store i64* %143, i64** %10, align 8
  %144 = load i64*, i64** %11, align 8
  %145 = load i64*, i64** %10, align 8
  %146 = ptrtoint i64* %144 to i64
  %147 = ptrtoint i64* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 8
  %150 = load i32, i32* %21, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp slt i64 %149, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %138
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = load i32, i32* %21, align 4
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %154, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %157, i32* %16, align 4
  br label %245

158:                                              ; preds = %138
  %159 = load i64*, i64** %10, align 8
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64* %162, i64** %11, align 8
  br label %163

163:                                              ; preds = %223, %201, %158
  %164 = load i64*, i64** %11, align 8
  %165 = load i64*, i64** %10, align 8
  %166 = ptrtoint i64* %164 to i64
  %167 = ptrtoint i64* %165 to i64
  %168 = sub i64 %166, %167
  %169 = sdiv exact i64 %168, 8
  %170 = icmp sge i64 %169, 3
  br i1 %170, label %171, label %228

171:                                              ; preds = %163
  %172 = load i64*, i64** %10, align 8
  %173 = call i8* @WPA_GET_BE24(i64* %172)
  %174 = ptrtoint i8* %173 to i32
  store i32 %174, i32* %21, align 4
  %175 = load i64*, i64** %10, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 3
  store i64* %176, i64** %10, align 8
  %177 = load i32, i32* %21, align 4
  %178 = sext i32 %177 to i64
  %179 = load i64*, i64** %11, align 8
  %180 = load i64*, i64** %10, align 8
  %181 = ptrtoint i64* %179 to i64
  %182 = ptrtoint i64* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 8
  %185 = icmp sgt i64 %178, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %171
  %187 = load i32, i32* @MSG_DEBUG, align 4
  %188 = load i32, i32* %21, align 4
  %189 = load i64*, i64** %11, align 8
  %190 = load i64*, i64** %10, align 8
  %191 = ptrtoint i64* %189 to i64
  %192 = ptrtoint i64* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 8
  %195 = trunc i64 %194 to i32
  %196 = call i32 (i32, i8*, ...) @wpa_printf(i32 %187, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.9, i64 0, i64 0), i32 %188, i32 %195)
  %197 = load i32, i32* @TLS_OCSP_INVALID, align 4
  store i32 %197, i32* %16, align 4
  br label %228

198:                                              ; preds = %171
  %199 = load i32, i32* %21, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  br label %163

202:                                              ; preds = %198
  %203 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %204 = load i64*, i64** %10, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 -3
  %206 = load i32, i32* %21, align 4
  %207 = add nsw i32 %206, 3
  %208 = call i32 @tls_process_certificate_status_ocsp_response(%struct.tlsv1_client* %203, i64* %205, i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* @TLS_OCSP_REVOKED, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %202
  %213 = load i32, i32* %20, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %20, align 4
  br label %223

215:                                              ; preds = %202
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* @TLS_OCSP_GOOD, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, i32* %19, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %19, align 4
  br label %222

222:                                              ; preds = %219, %215
  br label %223

223:                                              ; preds = %222, %212
  %224 = load i32, i32* %21, align 4
  %225 = load i64*, i64** %10, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i64, i64* %225, i64 %226
  store i64* %227, i64** %10, align 8
  br label %163

228:                                              ; preds = %186, %163
  %229 = load i32, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* @TLS_OCSP_REVOKED, align 4
  store i32 %232, i32* %16, align 4
  br label %239

233:                                              ; preds = %228
  %234 = load i32, i32* %19, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i32, i32* @TLS_OCSP_GOOD, align 4
  store i32 %237, i32* %16, align 4
  br label %238

238:                                              ; preds = %236, %233
  br label %239

239:                                              ; preds = %238, %231
  br label %243

240:                                              ; preds = %122
  %241 = load i32, i32* @MSG_DEBUG, align 4
  %242 = call i32 (i32, i8*, ...) @wpa_printf(i32 %241, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0))
  br label %361

243:                                              ; preds = %239
  br label %244

244:                                              ; preds = %243, %111
  br label %245

245:                                              ; preds = %244, %153, %134
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* @TLS_OCSP_REVOKED, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %279

249:                                              ; preds = %245
  %250 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %251 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %252 = load i32, i32* @TLS_ALERT_CERTIFICATE_REVOKED, align 4
  %253 = call i32 @tls_alert(%struct.tlsv1_client* %250, i32 %251, i32 %252)
  %254 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %255 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %254, i32 0, i32 3
  %256 = load %struct.x509_certificate*, %struct.x509_certificate** %255, align 8
  store %struct.x509_certificate* %256, %struct.x509_certificate** %17, align 8
  store i32 0, i32* %18, align 4
  br label %257

257:                                              ; preds = %272, %249
  %258 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %259 = icmp ne %struct.x509_certificate* %258, null
  br i1 %259, label %260, label %278

260:                                              ; preds = %257
  %261 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %262 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %261, i32 0, i32 3
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %267 = load i32, i32* %18, align 4
  %268 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %269 = load i32, i32* @TLS_FAIL_REVOKED, align 4
  %270 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %266, i32 %267, %struct.x509_certificate* %268, i32 %269, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  br label %271

271:                                              ; preds = %265, %260
  br label %272

272:                                              ; preds = %271
  %273 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %274 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %273, i32 0, i32 2
  %275 = load %struct.x509_certificate*, %struct.x509_certificate** %274, align 8
  store %struct.x509_certificate* %275, %struct.x509_certificate** %17, align 8
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %18, align 4
  br label %257

278:                                              ; preds = %257
  store i32 -1, i32* %5, align 4
  br label %372

279:                                              ; preds = %245
  %280 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %281 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @TLS_CONN_REQUIRE_OCSP_ALL, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %322

286:                                              ; preds = %279
  %287 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %288 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %287, i32 0, i32 3
  %289 = load %struct.x509_certificate*, %struct.x509_certificate** %288, align 8
  store %struct.x509_certificate* %289, %struct.x509_certificate** %17, align 8
  store i32 0, i32* %18, align 4
  br label %290

290:                                              ; preds = %315, %286
  %291 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %292 = icmp ne %struct.x509_certificate* %291, null
  br i1 %292, label %293, label %321

293:                                              ; preds = %290
  %294 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %295 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %308, label %298

298:                                              ; preds = %293
  %299 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %300 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %301 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE, align 4
  %302 = call i32 @tls_alert(%struct.tlsv1_client* %299, i32 %300, i32 %301)
  %303 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %304 = load i32, i32* %18, align 4
  %305 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %306 = load i32, i32* @TLS_FAIL_UNSPECIFIED, align 4
  %307 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %303, i32 %304, %struct.x509_certificate* %305, i32 %306, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %372

308:                                              ; preds = %293
  %309 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %310 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %309, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %321

314:                                              ; preds = %308
  br label %315

315:                                              ; preds = %314
  %316 = load %struct.x509_certificate*, %struct.x509_certificate** %17, align 8
  %317 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %316, i32 0, i32 2
  %318 = load %struct.x509_certificate*, %struct.x509_certificate** %317, align 8
  store %struct.x509_certificate* %318, %struct.x509_certificate** %17, align 8
  %319 = load i32, i32* %18, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %18, align 4
  br label %290

321:                                              ; preds = %313, %290
  br label %322

322:                                              ; preds = %321, %279
  %323 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %324 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @TLS_CONN_REQUIRE_OCSP, align 4
  %327 = and i32 %325, %326
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %358

329:                                              ; preds = %322
  %330 = load i32, i32* %16, align 4
  %331 = load i32, i32* @TLS_OCSP_GOOD, align 4
  %332 = icmp ne i32 %330, %331
  br i1 %332, label %333, label %358

333:                                              ; preds = %329
  %334 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %335 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %336 = load i32, i32* %16, align 4
  %337 = load i32, i32* @TLS_OCSP_INVALID, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  br label %343

341:                                              ; preds = %333
  %342 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE, align 4
  br label %343

343:                                              ; preds = %341, %339
  %344 = phi i32 [ %340, %339 ], [ %342, %341 ]
  %345 = call i32 @tls_alert(%struct.tlsv1_client* %334, i32 %335, i32 %344)
  %346 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %347 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %346, i32 0, i32 3
  %348 = load %struct.x509_certificate*, %struct.x509_certificate** %347, align 8
  %349 = icmp ne %struct.x509_certificate* %348, null
  br i1 %349, label %350, label %357

350:                                              ; preds = %343
  %351 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %352 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %353 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %352, i32 0, i32 3
  %354 = load %struct.x509_certificate*, %struct.x509_certificate** %353, align 8
  %355 = load i32, i32* @TLS_FAIL_UNSPECIFIED, align 4
  %356 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %351, i32 0, %struct.x509_certificate* %354, i32 %355, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0))
  br label %357

357:                                              ; preds = %350, %343
  store i32 -1, i32* %5, align 4
  br label %372

358:                                              ; preds = %329, %322
  %359 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %360 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %359, i32 0, i32 1
  store i32 1, i32* %360, align 4
  br label %361

361:                                              ; preds = %358, %240
  %362 = load i64*, i64** %11, align 8
  %363 = load i64*, i64** %8, align 8
  %364 = ptrtoint i64* %362 to i64
  %365 = ptrtoint i64* %363 to i64
  %366 = sub i64 %364, %365
  %367 = sdiv exact i64 %366, 8
  %368 = load i64*, i64** %9, align 8
  store i64 %367, i64* %368, align 8
  %369 = load i32, i32* @SERVER_KEY_EXCHANGE, align 4
  %370 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %371 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %370, i32 0, i32 2
  store i32 %369, i32* %371, align 8
  store i32 0, i32* %5, align 4
  br label %372

372:                                              ; preds = %361, %357, %298, %278, %95, %77, %61, %39, %25
  %373 = load i32, i32* %5, align 4
  ret i32 %373
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i8* @WPA_GET_BE24(i64*) #1

declare dso_local i32 @tls_process_certificate_status_ocsp_response(%struct.tlsv1_client*, i64*, i32) #1

declare dso_local i32 @tls_cert_chain_failure_event(%struct.tlsv1_client*, i32, %struct.x509_certificate*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
