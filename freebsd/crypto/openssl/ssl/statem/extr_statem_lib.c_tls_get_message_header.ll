; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_tls_get_message_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_15__*, i64, %struct.TYPE_14__*, i32, i32, i32, i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)*, %struct.TYPE_12__, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_16__*, i32, i32*, i8*, i64, i32, i64*)* }

@SSL3_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_READING = common dso_local global i32 0, align 4
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL3_MT_CCS = common dso_local global i8 0, align 1
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_F_TLS_GET_MESSAGE_HEADER = common dso_local global i32 0, align 4
@SSL_R_BAD_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@TLS_ST_BEFORE = common dso_local global i64 0, align 8
@TLS1_FLAGS_STATELESS = common dso_local global i32 0, align 4
@SSL3_MT_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@SSL_R_CCS_RECEIVED_EARLY = common dso_local global i32 0, align 4
@TLS_ST_OK = common dso_local global i64 0, align 8
@SSL3_MT_HELLO_REQUEST = common dso_local global i8 0, align 1
@INT_MAX = common dso_local global i64 0, align 8
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_EXCESSIVE_MESSAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_get_message_header(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %9, align 8
  br label %18

18:                                               ; preds = %199, %2
  br label %19

19:                                               ; preds = %129, %18
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %135

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 11
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_16__*, i32, i32*, i8*, i64, i32, i64*)*, i32 (%struct.TYPE_16__*, i32, i32*, i8*, i64, i32, i64*)** %29, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = call i32 %30(%struct.TYPE_16__* %31, i32 %32, i32* %8, i8* %37, i64 %42, i32 0, i64* %11)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %25
  %47 = load i32, i32* @SSL_READING, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 10
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %3, align 4
  br label %276

50:                                               ; preds = %25
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @SSL3_RT_CHANGE_CIPHER_SPEC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %118

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 1
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8, i8* @SSL3_MT_CCS, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62, %59, %54
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %73 = load i32, i32* @SSL_F_TLS_GET_MESSAGE_HEADER, align 4
  %74 = load i32, i32* @SSL_R_BAD_CHANGE_CIPHER_SPEC, align 4
  %75 = call i32 @SSLfatal(%struct.TYPE_16__* %71, i32 %72, i32 %73, i32 %74)
  store i32 0, i32* %3, align 4
  br label %276

76:                                               ; preds = %62
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TLS_ST_BEFORE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TLS1_FLAGS_STATELESS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %276

93:                                               ; preds = %83, %76
  %94 = load i32, i32* @SSL3_MT_CHANGE_CIPHER_SPEC, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 0
  store i32 %94, i32* %100, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub i64 %101, 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  store i64 %112, i64* %117, align 8
  store i32 1, i32* %3, align 4
  br label %276

118:                                              ; preds = %50
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %125 = load i32, i32* @SSL_F_TLS_GET_MESSAGE_HEADER, align 4
  %126 = load i32, i32* @SSL_R_CCS_RECEIVED_EARLY, align 4
  %127 = call i32 @SSLfatal(%struct.TYPE_16__* %123, i32 %124, i32 %125, i32 %126)
  store i32 0, i32* %3, align 4
  br label %276

128:                                              ; preds = %118
  br label %129

129:                                              ; preds = %128
  %130 = load i64, i64* %11, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, %130
  store i64 %134, i64* %132, align 8
  br label %19

135:                                              ; preds = %19
  store i32 0, i32* %6, align 4
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %198, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @TLS_ST_OK, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %197

147:                                              ; preds = %140
  %148 = load i8*, i8** %9, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i8, i8* @SSL3_MT_HELLO_REQUEST, align 1
  %153 = zext i8 %152 to i32
  %154 = icmp eq i32 %151, %153
  br i1 %154, label %155, label %197

155:                                              ; preds = %147
  %156 = load i8*, i8** %9, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %196

161:                                              ; preds = %155
  %162 = load i8*, i8** %9, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 2
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %196

167:                                              ; preds = %161
  %168 = load i8*, i8** %9, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 3
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %196

173:                                              ; preds = %167
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  store i32 1, i32* %6, align 4
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 7
  %178 = load i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)** %177, align 8
  %179 = icmp ne i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)* %178, null
  br i1 %179, label %180, label %195

180:                                              ; preds = %173
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 7
  %183 = load i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i32, i32, i8*, i64, %struct.TYPE_16__*, i32)** %182, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %188 = load i8*, i8** %9, align 8
  %189 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = call i32 %183(i32 0, i32 %186, i32 %187, i8* %188, i64 %189, %struct.TYPE_16__* %190, i32 %193)
  br label %195

195:                                              ; preds = %180, %173
  br label %196

196:                                              ; preds = %195, %167, %161, %155
  br label %197

197:                                              ; preds = %196, %147, %140
  br label %198

198:                                              ; preds = %197, %135
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %18, label %202

202:                                              ; preds = %199
  %203 = load i8*, i8** %9, align 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32*, i32** %5, align 8
  store i32 %205, i32* %206, align 4
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %9, align 8
  %209 = load i8, i8* %207, align 1
  %210 = zext i8 %209 to i32
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 3
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i32 %210, i32* %215, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 4
  %218 = call i64 @RECORD_LAYER_is_sslv2_record(i32* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %242

220:                                              ; preds = %202
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 4
  %223 = call i64 @RECORD_LAYER_get_rrec_length(i32* %222)
  %224 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %225 = add i64 %223, %224
  store i64 %225, i64* %10, align 8
  %226 = load i64, i64* %10, align 8
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_14__*, %struct.TYPE_14__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  store i64 %226, i64* %231, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  store i64 %236, i64* %238, align 8
  %239 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %240 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  br label %275

242:                                              ; preds = %202
  %243 = load i8*, i8** %9, align 8
  %244 = load i64, i64* %10, align 8
  %245 = call i32 @n2l3(i8* %243, i64 %244)
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* @INT_MAX, align 8
  %248 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %249 = sub i64 %247, %248
  %250 = icmp ugt i64 %246, %249
  br i1 %250, label %251, label %257

251:                                              ; preds = %242
  %252 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %253 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %254 = load i32, i32* @SSL_F_TLS_GET_MESSAGE_HEADER, align 4
  %255 = load i32, i32* @SSL_R_EXCESSIVE_MESSAGE_SIZE, align 4
  %256 = call i32 @SSLfatal(%struct.TYPE_16__* %252, i32 %253, i32 %254, i32 %255)
  store i32 0, i32* %3, align 4
  br label %276

257:                                              ; preds = %242
  %258 = load i64, i64* %10, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  store i64 %258, i64* %263, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @SSL3_HM_HEADER_LENGTH, align 8
  %270 = add i64 %268, %269
  %271 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %271, i32 0, i32 2
  store i64 %270, i64* %272, align 8
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 0
  store i64 0, i64* %274, align 8
  br label %275

275:                                              ; preds = %257, %220
  store i32 1, i32* %3, align 4
  br label %276

276:                                              ; preds = %275, %251, %122, %93, %92, %70, %46
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i64 @RECORD_LAYER_is_sslv2_record(i32*) #1

declare dso_local i64 @RECORD_LAYER_get_rrec_length(i32*) #1

declare dso_local i32 @n2l3(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
