; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_process_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i64, %struct.TYPE_17__*, i32, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { i32, i32, i64, i64, %struct.TYPE_17__*, i32, i32, i64, i32, i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32 }

@tls_process_client_hello.null_compression = internal constant i8 0, align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_CLIENT_HELLO = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_OP_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION = common dso_local global i32 0, align 4
@SSL3_AL_WARNING = common dso_local global i32 0, align 4
@SSL_AD_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL2_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@SSL_R_RECORD_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL_MAX_SSL_SESSION_ID_LENGTH = common dso_local global i32 0, align 4
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@DTLS1_COOKIE_LENGTH = common dso_local global i32 0, align 4
@SSL_OP_COOKIE_EXCHANGE = common dso_local global i32 0, align 4
@MAX_COMPRESSIONS_SIZE = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_PROCESSING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_client_hello(%struct.TYPE_16__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %70

20:                                               ; preds = %2
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_16__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %70, label %24

24:                                               ; preds = %20
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = call i32 @SSL_IS_TLS13(%struct.TYPE_16__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @ossl_assert(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %35 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %36 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %37 = call i32 @SSLfatal(%struct.TYPE_16__* %33, i32 %34, i32 %35, i32 %36)
  br label %395

38:                                               ; preds = %24
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SSL_OP_NO_RENEGOTIATION, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %38
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 6
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %45
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SSL_OP_ALLOW_UNSAFE_LEGACY_RENEGOTIATION, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52, %38
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = load i32, i32* @SSL3_AL_WARNING, align 4
  %62 = load i32, i32* @SSL_AD_NO_RENEGOTIATION, align 4
  %63 = call i32 @ssl3_send_alert(%struct.TYPE_16__* %60, i32 %61, i32 %62)
  %64 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %64, i32* %3, align 4
  br label %407

65:                                               ; preds = %52, %45
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %65, %20, %2
  %71 = call %struct.TYPE_17__* @OPENSSL_zalloc(i32 88)
  store %struct.TYPE_17__* %71, %struct.TYPE_17__** %10, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %73 = icmp eq %struct.TYPE_17__* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %77 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %78 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %79 = call i32 @SSLfatal(%struct.TYPE_16__* %75, i32 %76, i32 %77, i32 %78)
  br label %395

80:                                               ; preds = %70
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 5
  %83 = call i64 @RECORD_LAYER_is_sslv2_record(i32* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 12
  store i64 %83, i64* %85, align 8
  %86 = call i32 @PACKET_null_init(i32* %9)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 12
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %122

91:                                               ; preds = %80
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = call i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_16__* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SSL_HRR_NONE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %95, %91
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %103 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %104 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %105 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %106 = call i32 @SSLfatal(%struct.TYPE_16__* %102, i32 %103, i32 %104, i32 %105)
  br label %395

107:                                              ; preds = %95
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @PACKET_get_1(i32* %108, i32* %11)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @SSL2_MT_CLIENT_HELLO, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111, %107
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %117 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %118 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %119 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %120 = call i32 @SSLfatal(%struct.TYPE_16__* %116, i32 %117, i32 %118, i32 %119)
  br label %395

121:                                              ; preds = %111
  br label %122

122:                                              ; preds = %121, %80
  %123 = load i32*, i32** %5, align 8
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = call i32 @PACKET_get_net_2(i32* %123, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %134, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %131 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %132 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %133 = call i32 @SSLfatal(%struct.TYPE_16__* %129, i32 %130, i32 %131, i32 %132)
  br label %395

134:                                              ; preds = %122
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 12
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %240

139:                                              ; preds = %134
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @PACKET_get_net_2(i32* %140, i32* %12)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load i32*, i32** %5, align 8
  %145 = call i32 @PACKET_get_net_2(i32* %144, i32* %13)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @PACKET_get_net_2(i32* %148, i32* %14)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %147, %143, %139
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %153 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %154 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %155 = load i32, i32* @SSL_R_RECORD_LENGTH_MISMATCH, align 4
  %156 = call i32 @SSLfatal(%struct.TYPE_16__* %152, i32 %153, i32 %154, i32 %155)
  br label %395

157:                                              ; preds = %147
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* @SSL_MAX_SSL_SESSION_ID_LENGTH, align 4
  %160 = icmp ugt i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %163 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %164 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %165 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %166 = call i32 @SSLfatal(%struct.TYPE_16__* %162, i32 %163, i32 %164, i32 %165)
  br label %395

167:                                              ; preds = %157
  %168 = load i32*, i32** %5, align 8
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @PACKET_get_sub_packet(i32* %168, i32* %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %191

174:                                              ; preds = %167
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 10
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @PACKET_copy_bytes(i32* %175, i64 %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %174
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 @PACKET_get_sub_packet(i32* %183, i32* %15, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32*, i32** %5, align 8
  %189 = call i64 @PACKET_remaining(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %187, %182, %174, %167
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %193 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %194 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %195 = load i32, i32* @SSL_R_RECORD_LENGTH_MISMATCH, align 4
  %196 = call i32 @SSLfatal(%struct.TYPE_16__* %192, i32 %193, i32 %194, i32 %195)
  br label %395

197:                                              ; preds = %187
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  %201 = load i32, i32* %14, align 4
  %202 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %203 = icmp ugt i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  br label %208

206:                                              ; preds = %197
  %207 = load i32, i32* %14, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  store i32 %209, i32* %14, align 4
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 11
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %214 = call i32 @memset(i64 %212, i32 0, i32 %213)
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 11
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %219 = zext i32 %218 to i64
  %220 = add nsw i64 %217, %219
  %221 = load i32, i32* %14, align 4
  %222 = zext i32 %221 to i64
  %223 = sub nsw i64 %220, %222
  %224 = load i32, i32* %14, align 4
  %225 = call i32 @PACKET_copy_bytes(i32* %15, i64 %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %208
  %228 = call i32 @PACKET_buf_init(i32* %7, i8* @tls_process_client_hello.null_compression, i32 1)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %236, label %230

230:                                              ; preds = %227, %208
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %232 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %233 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %234 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %235 = call i32 @SSLfatal(%struct.TYPE_16__* %231, i32 %232, i32 %233, i32 %234)
  br label %395

236:                                              ; preds = %227
  %237 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %238 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %237, i32 0, i32 6
  %239 = call i32 @PACKET_null_init(i32* %238)
  br label %362

240:                                              ; preds = %134
  %241 = load i32*, i32** %5, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 11
  %244 = load i64, i64* %243, align 8
  %245 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %246 = call i32 @PACKET_copy_bytes(i32* %241, i64 %244, i32 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %240
  %249 = load i32*, i32** %5, align 8
  %250 = call i32 @PACKET_get_length_prefixed_1(i32* %249, i32* %6)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %248
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 10
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* @SSL_MAX_SSL_SESSION_ID_LENGTH, align 4
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 1
  %259 = bitcast i32* %258 to i64*
  %260 = call i32 @PACKET_copy_all(i32* %6, i64 %255, i32 %256, i64* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %252, %248, %240
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %264 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %265 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %266 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %267 = call i32 @SSLfatal(%struct.TYPE_16__* %263, i32 %264, i32 %265, i32 %266)
  br label %395

268:                                              ; preds = %252
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %270 = call i64 @SSL_IS_DTLS(%struct.TYPE_16__* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %314

272:                                              ; preds = %268
  %273 = load i32*, i32** %5, align 8
  %274 = call i32 @PACKET_get_length_prefixed_1(i32* %273, i32* %9)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %272
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %278 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %279 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %280 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %281 = call i32 @SSLfatal(%struct.TYPE_16__* %277, i32 %278, i32 %279, i32 %280)
  br label %395

282:                                              ; preds = %272
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 9
  %285 = load i64, i64* %284, align 8
  %286 = load i32, i32* @DTLS1_COOKIE_LENGTH, align 4
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %287, i32 0, i32 2
  %289 = call i32 @PACKET_copy_all(i32* %9, i64 %285, i32 %286, i64* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %297, label %291

291:                                              ; preds = %282
  %292 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %293 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %294 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %295 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %296 = call i32 @SSLfatal(%struct.TYPE_16__* %292, i32 %293, i32 %294, i32 %295)
  br label %395

297:                                              ; preds = %282
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = call i32 @SSL_get_options(%struct.TYPE_16__* %298)
  %300 = load i32, i32* @SSL_OP_COOKIE_EXCHANGE, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %297
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %303
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %310 = call i32 @OPENSSL_free(%struct.TYPE_17__* %309)
  %311 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %311, i32* %3, align 4
  br label %407

312:                                              ; preds = %303
  br label %313

313:                                              ; preds = %312, %297
  br label %314

314:                                              ; preds = %313, %268
  %315 = load i32*, i32** %5, align 8
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %317 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %316, i32 0, i32 8
  %318 = call i32 @PACKET_get_length_prefixed_2(i32* %315, i32* %317)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %326, label %320

320:                                              ; preds = %314
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %322 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %323 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %324 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %325 = call i32 @SSLfatal(%struct.TYPE_16__* %321, i32 %322, i32 %323, i32 %324)
  br label %395

326:                                              ; preds = %314
  %327 = load i32*, i32** %5, align 8
  %328 = call i32 @PACKET_get_length_prefixed_1(i32* %327, i32* %7)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %326
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %332 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %333 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %334 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %335 = call i32 @SSLfatal(%struct.TYPE_16__* %331, i32 %332, i32 %333, i32 %334)
  br label %395

336:                                              ; preds = %326
  %337 = load i32*, i32** %5, align 8
  %338 = call i64 @PACKET_remaining(i32* %337)
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 6
  %343 = call i32 @PACKET_null_init(i32* %342)
  br label %361

344:                                              ; preds = %336
  %345 = load i32*, i32** %5, align 8
  %346 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 6
  %348 = call i32 @PACKET_get_length_prefixed_2(i32* %345, i32* %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %344
  %351 = load i32*, i32** %5, align 8
  %352 = call i64 @PACKET_remaining(i32* %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %360

354:                                              ; preds = %350, %344
  %355 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %356 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %357 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %358 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %359 = call i32 @SSLfatal(%struct.TYPE_16__* %355, i32 %356, i32 %357, i32 %358)
  br label %395

360:                                              ; preds = %350
  br label %361

361:                                              ; preds = %360, %340
  br label %362

362:                                              ; preds = %361, %236
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 7
  %365 = load i64, i64* %364, align 8
  %366 = load i32, i32* @MAX_COMPRESSIONS_SIZE, align 4
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 3
  %369 = call i32 @PACKET_copy_all(i32* %7, i64 %365, i32 %366, i64* %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %377, label %371

371:                                              ; preds = %362
  %372 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %373 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %374 = load i32, i32* @SSL_F_TLS_PROCESS_CLIENT_HELLO, align 4
  %375 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %376 = call i32 @SSLfatal(%struct.TYPE_16__* %372, i32 %373, i32 %374, i32 %375)
  br label %395

377:                                              ; preds = %362
  %378 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %378, i32 0, i32 6
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %8, align 4
  %381 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %382 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %383 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %383, i32 0, i32 4
  %385 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %386 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %385, i32 0, i32 5
  %387 = call i32 @tls_collect_extensions(%struct.TYPE_16__* %381, i32* %8, i32 %382, %struct.TYPE_17__** %384, i32* %386, i32 1)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %377
  br label %395

390:                                              ; preds = %377
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %392 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %392, i32 0, i32 4
  store %struct.TYPE_17__* %391, %struct.TYPE_17__** %393, align 8
  %394 = load i32, i32* @MSG_PROCESS_CONTINUE_PROCESSING, align 4
  store i32 %394, i32* %3, align 4
  br label %407

395:                                              ; preds = %389, %371, %354, %330, %320, %291, %276, %262, %230, %191, %161, %151, %128, %115, %101, %74, %32
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %397 = icmp ne %struct.TYPE_17__* %396, null
  br i1 %397, label %398, label %403

398:                                              ; preds = %395
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 4
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %400, align 8
  %402 = call i32 @OPENSSL_free(%struct.TYPE_17__* %401)
  br label %403

403:                                              ; preds = %398, %395
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %405 = call i32 @OPENSSL_free(%struct.TYPE_17__* %404)
  %406 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %406, i32* %3, align 4
  br label %407

407:                                              ; preds = %403, %390, %308, %59
  %408 = load i32, i32* %3, align 4
  ret i32 %408
}

declare dso_local i32 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_16__*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_16__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local i32 @ssl3_send_alert(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_17__* @OPENSSL_zalloc(i32) #1

declare dso_local i64 @RECORD_LAYER_is_sslv2_record(i32*) #1

declare dso_local i32 @PACKET_null_init(i32*) #1

declare dso_local i32 @PACKET_get_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_get_sub_packet(i32*, i32*, i32) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i64, i32) #1

declare dso_local i64 @PACKET_remaining(i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i32) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_copy_all(i32*, i64, i32, i64*) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_16__*) #1

declare dso_local i32 @SSL_get_options(%struct.TYPE_16__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_17__*) #1

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @tls_collect_extensions(%struct.TYPE_16__*, i32*, i32, %struct.TYPE_17__**, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
