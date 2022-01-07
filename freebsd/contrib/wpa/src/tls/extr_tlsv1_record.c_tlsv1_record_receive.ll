; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_record.c_tlsv1_record_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_record.c_tlsv1_record_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_record_layer = type { i64, i64, i64, i64, i32*, i32, i32, i32 }
%struct.crypto_hash = type { i32 }

@TLS_RECORD_HEADER_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Too short record (in_len=%lu) - need more data\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"TLSv1: Record Layer - Received\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"TLSv1: Received content type %d version %d.%d length %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"TLSv1: Unexpected protocol version %u.%u\00", align 1
@TLS_ALERT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"TLSv1: Record overflow (len=%lu)\00", align 1
@TLS_ALERT_RECORD_OVERFLOW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [60 x i8] c"TLSv1: Not all record data included (rlen=%lu > in_len=%lu)\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_ALERT = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_APPLICATION_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"TLSv1: Ignore record with unknown content type 0x%x\00", align 1
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"TLSv1: Not enough output buffer for processing received record\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_NULL_WITH_NULL_NULL = common dso_local global i64 0, align 8
@TLS_ALERT_DECRYPTION_FAILED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"TLSv1: Record Layer - Decrypted data\00", align 1
@TLS_VERSION_1_1 = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"TLSv1.1: Not enough room for IV\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"TLSv1: Too short record (no pad)\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"TLSv1: Incorrect pad length (%u, plen=%lu) in received record\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"TLSv1: Invalid pad in received record\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"TLSv1: Record Layer - Decrypted data with IV and padding removed\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"TLSv1: Too short record; no hash value\00", align 1
@TLS_ALERT_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [48 x i8] c"TLSv1: Record Layer - Failed to initialize HMAC\00", align 1
@TLS_SEQ_NUM_LEN = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [47 x i8] c"TLSv1: Record Layer - Failed to calculate HMAC\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"TLSv1: Invalid HMAC value in received message (force_mac_error=%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_record_receive(%struct.tlsv1_record_layer* %0, i32* %1, i64 %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tlsv1_record_layer*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.crypto_hash*, align 8
  %19 = alloca [2 x i32], align 4
  %20 = alloca [100 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.tlsv1_record_layer* %0, %struct.tlsv1_record_layer** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %21, align 4
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %6
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = load i32, i32* @MSG_MSGDUMP, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %32, i32 %34)
  store i32 0, i32* %7, align 4
  br label %387

36:                                               ; preds = %6
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %22, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = call i64 @WPA_GET_BE16(i32* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i32, i32* %22, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %15, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %47, i32 %50, i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 3
  br i1 %57, label %58, label %69

58:                                               ; preds = %36
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* @TLS_ALERT_PROTOCOL_VERSION, align 4
  %68 = load i32*, i32** %13, align 8
  store i32 %67, i32* %68, align 4
  store i32 -1, i32* %7, align 4
  br label %387

69:                                               ; preds = %36
  %70 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %71 = load i64, i64* %15, align 8
  %72 = add i64 %70, %71
  %73 = icmp ugt i64 %72, 18432
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %77 = load i64, i64* %15, align 8
  %78 = add i64 %76, %77
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @TLS_ALERT_RECORD_OVERFLOW, align 4
  %81 = load i32*, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  store i32 -1, i32* %7, align 4
  br label %387

82:                                               ; preds = %69
  %83 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %9, align 8
  %86 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub i64 %87, %86
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %15, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32, i32* @MSG_DEBUG, align 4
  %94 = load i64, i64* %15, align 8
  %95 = load i64, i64* %10, align 8
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %93, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i64 0, i64 0), i64 %94, i64 %95)
  store i32 0, i32* %7, align 4
  br label %387

97:                                               ; preds = %82
  %98 = load i32, i32* @MSG_MSGDUMP, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %15, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @wpa_hexdump(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %99, i32 %101)
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %97
  %107 = load i32, i32* %22, align 4
  %108 = load i32, i32* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %106
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* @TLS_CONTENT_TYPE_ALERT, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* @TLS_CONTENT_TYPE_APPLICATION_DATA, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i32, i32* %22, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %123 = load i32*, i32** %13, align 8
  store i32 %122, i32* %123, align 4
  store i32 -1, i32* %7, align 4
  br label %387

124:                                              ; preds = %114, %110, %106, %97
  %125 = load i64, i64* %15, align 8
  store i64 %125, i64* %10, align 8
  %126 = load i64*, i64** %12, align 8
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %10, align 8
  %129 = icmp ult i64 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %124
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  %133 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %134 = load i32*, i32** %13, align 8
  store i32 %133, i32* %134, align 4
  store i32 -1, i32* %7, align 4
  br label %387

135:                                              ; preds = %124
  %136 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %137 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TLS_NULL_WITH_NULL_NULL, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %355

141:                                              ; preds = %135
  %142 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %143 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i64, i64* %10, align 8
  %148 = call i64 @crypto_cipher_decrypt(i32 %144, i32* %145, i32* %146, i64 %147)
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32, i32* @TLS_ALERT_DECRYPTION_FAILED, align 4
  %152 = load i32*, i32** %13, align 8
  store i32 %151, i32* %152, align 4
  store i32 -1, i32* %7, align 4
  br label %387

153:                                              ; preds = %141
  %154 = load i64, i64* %10, align 8
  store i64 %154, i64* %23, align 8
  %155 = load i32, i32* @MSG_MSGDUMP, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = load i64, i64* %23, align 8
  %158 = call i32 @wpa_hexdump_key(i32 %155, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32* %156, i64 %157)
  %159 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %160 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %262

163:                                              ; preds = %153
  %164 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %165 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @TLS_VERSION_1_1, align 8
  %168 = icmp sge i64 %166, %167
  br i1 %168, label %169, label %196

169:                                              ; preds = %163
  %170 = load i64, i64* %23, align 8
  %171 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %172 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ult i64 %170, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %169
  %176 = load i32, i32* @MSG_DEBUG, align 4
  %177 = call i32 (i32, i8*, ...) @wpa_printf(i32 %176, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %263

178:                                              ; preds = %169
  %179 = load i32*, i32** %11, align 8
  %180 = load i32*, i32** %11, align 8
  %181 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %182 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i64, i64* %23, align 8
  %186 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %187 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = sub i64 %185, %188
  %190 = call i32 @os_memmove(i32* %179, i32* %184, i64 %189)
  %191 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %192 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %23, align 8
  %195 = sub i64 %194, %193
  store i64 %195, i64* %23, align 8
  br label %196

196:                                              ; preds = %178, %163
  %197 = load i64, i64* %23, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  store i32 1, i32* %21, align 4
  br label %263

202:                                              ; preds = %196
  %203 = load i32*, i32** %11, align 8
  %204 = load i64, i64* %23, align 8
  %205 = sub i64 %204, 1
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %17, align 4
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* %23, align 8
  %211 = icmp uge i64 %209, %210
  br i1 %211, label %212, label %217

212:                                              ; preds = %202
  %213 = load i32, i32* @MSG_DEBUG, align 4
  %214 = load i32, i32* %17, align 4
  %215 = load i64, i64* %23, align 8
  %216 = call i32 (i32, i8*, ...) @wpa_printf(i32 %213, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %214, i64 %215)
  store i32 1, i32* %21, align 4
  br label %263

217:                                              ; preds = %202
  %218 = load i64, i64* %23, align 8
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = sub i64 %218, %220
  %222 = sub i64 %221, 1
  store i64 %222, i64* %14, align 8
  br label %223

223:                                              ; preds = %249, %217
  %224 = load i64, i64* %14, align 8
  %225 = load i64, i64* %23, align 8
  %226 = sub i64 %225, 1
  %227 = icmp ult i64 %224, %226
  br i1 %227, label %228, label %252

228:                                              ; preds = %223
  %229 = load i32*, i32** %11, align 8
  %230 = load i64, i64* %14, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* %17, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %248

235:                                              ; preds = %228
  %236 = load i32, i32* @MSG_DEBUG, align 4
  %237 = load i32*, i32** %11, align 8
  %238 = load i64, i64* %23, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  %240 = load i32, i32* %17, align 4
  %241 = sext i32 %240 to i64
  %242 = sub i64 0, %241
  %243 = getelementptr inbounds i32, i32* %239, i64 %242
  %244 = getelementptr inbounds i32, i32* %243, i64 -1
  %245 = load i32, i32* %17, align 4
  %246 = add nsw i32 %245, 1
  %247 = call i32 @wpa_hexdump(i32 %236, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i32* %244, i32 %246)
  store i32 1, i32* %21, align 4
  br label %263

248:                                              ; preds = %228
  br label %249

249:                                              ; preds = %248
  %250 = load i64, i64* %14, align 8
  %251 = add i64 %250, 1
  store i64 %251, i64* %14, align 8
  br label %223

252:                                              ; preds = %223
  %253 = load i32, i32* %17, align 4
  %254 = add nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = load i64, i64* %23, align 8
  %257 = sub i64 %256, %255
  store i64 %257, i64* %23, align 8
  %258 = load i32, i32* @MSG_MSGDUMP, align 4
  %259 = load i32*, i32** %11, align 8
  %260 = load i64, i64* %23, align 8
  %261 = call i32 @wpa_hexdump_key(i32 %258, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0), i32* %259, i64 %260)
  br label %262

262:                                              ; preds = %252, %153
  br label %263

263:                                              ; preds = %262, %235, %212, %199, %175
  %264 = load i64, i64* %23, align 8
  %265 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %266 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %265, i32 0, i32 3
  %267 = load i64, i64* %266, align 8
  %268 = icmp ult i64 %264, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %263
  %270 = load i32, i32* @MSG_DEBUG, align 4
  %271 = call i32 (i32, i8*, ...) @wpa_printf(i32 %270, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  %272 = load i32, i32* @TLS_ALERT_BAD_RECORD_MAC, align 4
  %273 = load i32*, i32** %13, align 8
  store i32 %272, i32* %273, align 4
  store i32 -1, i32* %7, align 4
  br label %387

274:                                              ; preds = %263
  %275 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %276 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* %23, align 8
  %279 = sub i64 %278, %277
  store i64 %279, i64* %23, align 8
  %280 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %281 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %284 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %287 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %286, i32 0, i32 3
  %288 = load i64, i64* %287, align 8
  %289 = call %struct.crypto_hash* @crypto_hash_init(i32 %282, i32 %285, i64 %288)
  store %struct.crypto_hash* %289, %struct.crypto_hash** %18, align 8
  %290 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %291 = icmp eq %struct.crypto_hash* %290, null
  br i1 %291, label %292, label %297

292:                                              ; preds = %274
  %293 = load i32, i32* @MSG_DEBUG, align 4
  %294 = call i32 (i32, i8*, ...) @wpa_printf(i32 %293, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0))
  %295 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %296 = load i32*, i32** %13, align 8
  store i32 %295, i32* %296, align 4
  store i32 -1, i32* %7, align 4
  br label %387

297:                                              ; preds = %274
  %298 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %299 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %300 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %299, i32 0, i32 4
  %301 = load i32*, i32** %300, align 8
  %302 = load i64, i64* @TLS_SEQ_NUM_LEN, align 8
  %303 = call i32 @crypto_hash_update(%struct.crypto_hash* %298, i32* %301, i64 %302)
  %304 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %305 = load i32*, i32** %9, align 8
  %306 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %307 = sub i64 0, %306
  %308 = getelementptr inbounds i32, i32* %305, i64 %307
  %309 = call i32 @crypto_hash_update(%struct.crypto_hash* %304, i32* %308, i64 3)
  %310 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %311 = load i64, i64* %23, align 8
  %312 = call i32 @WPA_PUT_BE16(i32* %310, i64 %311)
  %313 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %314 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %315 = call i32 @crypto_hash_update(%struct.crypto_hash* %313, i32* %314, i64 2)
  %316 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %317 = load i32*, i32** %11, align 8
  %318 = load i64, i64* %23, align 8
  %319 = call i32 @crypto_hash_update(%struct.crypto_hash* %316, i32* %317, i64 %318)
  store i64 400, i64* %16, align 8
  %320 = load %struct.crypto_hash*, %struct.crypto_hash** %18, align 8
  %321 = getelementptr inbounds [100 x i32], [100 x i32]* %20, i64 0, i64 0
  %322 = call i64 @crypto_hash_finish(%struct.crypto_hash* %320, i32* %321, i64* %16)
  %323 = icmp slt i64 %322, 0
  br i1 %323, label %324, label %329

324:                                              ; preds = %297
  %325 = load i32, i32* @MSG_DEBUG, align 4
  %326 = call i32 (i32, i8*, ...) @wpa_printf(i32 %325, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.16, i64 0, i64 0))
  %327 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %328 = load i32*, i32** %13, align 8
  store i32 %327, i32* %328, align 4
  store i32 -1, i32* %7, align 4
  br label %387

329:                                              ; preds = %297
  %330 = load i64, i64* %16, align 8
  %331 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %332 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %331, i32 0, i32 3
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %330, %333
  br i1 %334, label %346, label %335

335:                                              ; preds = %329
  %336 = getelementptr inbounds [100 x i32], [100 x i32]* %20, i64 0, i64 0
  %337 = load i32*, i32** %11, align 8
  %338 = load i64, i64* %23, align 8
  %339 = getelementptr inbounds i32, i32* %337, i64 %338
  %340 = load i64, i64* %16, align 8
  %341 = call i64 @os_memcmp_const(i32* %336, i32* %339, i64 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %346, label %343

343:                                              ; preds = %335
  %344 = load i32, i32* %21, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %343, %335, %329
  %347 = load i32, i32* @MSG_DEBUG, align 4
  %348 = load i32, i32* %21, align 4
  %349 = call i32 (i32, i8*, ...) @wpa_printf(i32 %347, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i64 0, i64 0), i32 %348)
  %350 = load i32, i32* @TLS_ALERT_BAD_RECORD_MAC, align 4
  %351 = load i32*, i32** %13, align 8
  store i32 %350, i32* %351, align 4
  store i32 -1, i32* %7, align 4
  br label %387

352:                                              ; preds = %343
  %353 = load i64, i64* %23, align 8
  %354 = load i64*, i64** %12, align 8
  store i64 %353, i64* %354, align 8
  br label %362

355:                                              ; preds = %135
  %356 = load i32*, i32** %11, align 8
  %357 = load i32*, i32** %9, align 8
  %358 = load i64, i64* %10, align 8
  %359 = call i32 @os_memcpy(i32* %356, i32* %357, i64 %358)
  %360 = load i64, i64* %10, align 8
  %361 = load i64*, i64** %12, align 8
  store i64 %360, i64* %361, align 8
  br label %362

362:                                              ; preds = %355, %352
  %363 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %364 = load i64*, i64** %12, align 8
  %365 = load i64, i64* %364, align 8
  %366 = add i64 %363, %365
  %367 = icmp ugt i64 %366, 17408
  br i1 %367, label %368, label %377

368:                                              ; preds = %362
  %369 = load i32, i32* @MSG_DEBUG, align 4
  %370 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %371 = load i64*, i64** %12, align 8
  %372 = load i64, i64* %371, align 8
  %373 = add i64 %370, %372
  %374 = call i32 (i32, i8*, ...) @wpa_printf(i32 %369, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %373)
  %375 = load i32, i32* @TLS_ALERT_RECORD_OVERFLOW, align 4
  %376 = load i32*, i32** %13, align 8
  store i32 %375, i32* %376, align 4
  store i32 -1, i32* %7, align 4
  br label %387

377:                                              ; preds = %362
  %378 = load %struct.tlsv1_record_layer*, %struct.tlsv1_record_layer** %8, align 8
  %379 = getelementptr inbounds %struct.tlsv1_record_layer, %struct.tlsv1_record_layer* %378, i32 0, i32 4
  %380 = load i32*, i32** %379, align 8
  %381 = load i64, i64* @TLS_SEQ_NUM_LEN, align 8
  %382 = call i32 @inc_byte_array(i32* %380, i64 %381)
  %383 = load i64, i64* @TLS_RECORD_HEADER_LEN, align 8
  %384 = load i64, i64* %15, align 8
  %385 = add i64 %383, %384
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %7, align 4
  br label %387

387:                                              ; preds = %377, %368, %346, %324, %292, %269, %150, %130, %118, %92, %74, %58, %27
  %388 = load i32, i32* %7, align 4
  ret i32 %388
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i64 @crypto_cipher_decrypt(i32, i32*, i32*, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memmove(i32*, i32*, i64) #1

declare dso_local %struct.crypto_hash* @crypto_hash_init(i32, i32, i64) #1

declare dso_local i32 @crypto_hash_update(%struct.crypto_hash*, i32*, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i64 @crypto_hash_finish(%struct.crypto_hash*, i32*, i64*) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @inc_byte_array(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
