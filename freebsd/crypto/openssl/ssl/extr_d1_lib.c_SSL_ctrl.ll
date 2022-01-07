; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_SSL_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/extr_d1_lib.c_SSL_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_26__*, i32, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)*, %struct.TYPE_25__*, %struct.TYPE_23__*, i32* }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_23__ = type { i64 (%struct.TYPE_27__*, i8*, i32)*, i64 (%struct.TYPE_27__*, i8*, i32*)* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_22__ = type { i8* }

@DTLS1_COOKIE_LENGTH = common dso_local global i32 0, align 4
@SEQ_NUM_SIZE = common dso_local global i32 0, align 4
@SSL_F_DTLSV1_LISTEN = common dso_local global i32 0, align 4
@SSL_R_BIO_NOT_SET = common dso_local global i32 0, align 4
@DTLS1_VERSION = common dso_local global i32 0, align 4
@SSL_R_UNSUPPORTED_SSL_VERSION = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@DTLS1_RT_HEADER_LENGTH = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_R_RECORD_TOO_SMALL = common dso_local global i32 0, align 4
@SSL3_RT_HEADER = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@SSL_R_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@DTLS1_VERSION_MAJOR = common dso_local global i32 0, align 4
@SSL_R_BAD_PROTOCOL_VERSION_NUMBER = common dso_local global i32 0, align 4
@SSL3_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_R_INVALID_SEQUENCE_NUMBER = common dso_local global i32 0, align 4
@SSL_R_FRAGMENTED_CLIENT_HELLO = common dso_local global i32 0, align 4
@DTLS1_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@DTLS_ANY_VERSION = common dso_local global i64 0, align 8
@SSL_R_WRONG_VERSION_NUMBER = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i32 0, align 4
@LISTEN_SEND_VERIFY_REQUEST = common dso_local global i32 0, align 4
@SSL_R_NO_VERIFY_COOKIE_CALLBACK = common dso_local global i32 0, align 4
@LISTEN_SUCCESS = common dso_local global i32 0, align 4
@SSL_R_COOKIE_GEN_CALLBACK_FAILURE = common dso_local global i32 0, align 4
@DTLS1_MT_HELLO_VERIFY_REQUEST = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_OP_COOKIE_EXCHANGE = common dso_local global i32 0, align 4
@SSL3_ALIGN_PAYLOAD = common dso_local global i32 0, align 4
@SSL3_RT_HEADER_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DTLSv1_listen(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %38 = load i32, i32* @DTLS1_COOKIE_LENGTH, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %9, align 8
  %41 = alloca i8, i64 %39, align 16
  store i64 %39, i64* %10, align 8
  %42 = load i32, i32* @SEQ_NUM_SIZE, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i8, i64 %43, align 16
  store i64 %43, i64* %11, align 8
  store i64 0, i64* %19, align 8
  store i32* null, i32** %28, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %2
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %51 = call i32 @SSL_set_accept_state(%struct.TYPE_27__* %50)
  br label %52

52:                                               ; preds = %49, %2
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %54 = call i32 @SSL_clear(%struct.TYPE_27__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

57:                                               ; preds = %52
  %58 = call i32 (...) @ERR_clear_error()
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %60 = call i32* @SSL_get_rbio(%struct.TYPE_27__* %59)
  store i32* %60, i32** %26, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %62 = call i32* @SSL_get_wbio(%struct.TYPE_27__* %61)
  store i32* %62, i32** %27, align 8
  %63 = load i32*, i32** %26, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32*, i32** %27, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65, %57
  %69 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %70 = load i32, i32* @SSL_R_BIO_NOT_SET, align 4
  %71 = call i32 @SSLerr(i32 %69, i32 %70)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

72:                                               ; preds = %65
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = and i32 %75, 65280
  %77 = load i32, i32* @DTLS1_VERSION, align 4
  %78 = and i32 %77, 65280
  %79 = icmp ne i32 %76, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %72
  %81 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %82 = load i32, i32* @SSL_R_UNSUPPORTED_SSL_VERSION, align 4
  %83 = call i32 @SSLerr(i32 %81, i32 %82)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

84:                                               ; preds = %72
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %86 = call i32 @ssl3_setup_buffers(%struct.TYPE_27__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

89:                                               ; preds = %84
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 1
  %92 = call %struct.TYPE_24__* @RECORD_LAYER_get_rbuf(i32* %91)
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %13, align 8
  %95 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %95, i32 0, i32 1
  %97 = call %struct.TYPE_22__* @RECORD_LAYER_get_wbuf(i32* %96)
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %14, align 8
  %101 = load i64, i64* %19, align 8
  %102 = load i8*, i8** %13, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 %101
  store i8* %103, i8** %13, align 8
  br label %104

104:                                              ; preds = %539, %89
  %105 = call i32 (...) @clear_sys_error()
  %106 = load i32*, i32** %26, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %109 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %108, %110
  %112 = call i32 @BIO_read(i32* %106, i8* %107, i64 %111)
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %104
  %116 = load i32*, i32** %26, align 8
  %117 = call i64 @BIO_should_retry(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %579

120:                                              ; preds = %115
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

121:                                              ; preds = %104
  %122 = load i8*, i8** %13, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @PACKET_buf_init(i32* %29, i8* %122, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %128 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %129 = call i32 @SSLerr(i32 %127, i32 %128)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %136 = load i32, i32* @SSL_R_RECORD_TOO_SMALL, align 4
  %137 = call i32 @SSLerr(i32 %135, i32 %136)
  br label %579

138:                                              ; preds = %130
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 4
  %141 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)** %140, align 8
  %142 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %138
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 4
  %146 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)** %145, align 8
  %147 = load i32, i32* @SSL3_RT_HEADER, align 4
  %148 = load i8*, i8** %13, align 8
  %149 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %146(i32 0, i32 0, i32 %147, i8* %148, i32 %149, %struct.TYPE_27__* %150, i32 %153)
  br label %155

155:                                              ; preds = %143, %138
  %156 = call i32 @PACKET_get_1(i32* %29, i32* %20)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = call i32 @PACKET_get_1(i32* %29, i32* %21)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %158, %155
  %162 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %163 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %164 = call i32 @SSLerr(i32 %162, i32 %163)
  br label %579

165:                                              ; preds = %158
  %166 = load i32, i32* %20, align 4
  %167 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %171 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %172 = call i32 @SSLerr(i32 %170, i32 %171)
  br label %579

173:                                              ; preds = %165
  %174 = load i32, i32* %21, align 4
  %175 = load i32, i32* @DTLS1_VERSION_MAJOR, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %179 = load i32, i32* @SSL_R_BAD_PROTOCOL_VERSION_NUMBER, align 4
  %180 = call i32 @SSLerr(i32 %178, i32 %179)
  br label %579

181:                                              ; preds = %173
  %182 = call i32 @PACKET_forward(i32* %29, i32 1)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i32, i32* @SEQ_NUM_SIZE, align 4
  %186 = call i32 @PACKET_copy_bytes(i32* %29, i8* %44, i32 %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %184
  %189 = call i32 @PACKET_get_length_prefixed_2(i32* %29, i32* %30)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %188, %184, %181
  %192 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %193 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %194 = call i32 @SSLerr(i32 %192, i32 %193)
  br label %579

195:                                              ; preds = %188
  %196 = call i64 @PACKET_remaining(i32* %30)
  store i64 %196, i64* %18, align 8
  %197 = getelementptr inbounds i8, i8* %44, i64 0
  %198 = load i8, i8* %197, align 16
  %199 = zext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds i8, i8* %44, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201, %195
  %207 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %208 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %209 = call i32 @SSLerr(i32 %207, i32 %208)
  br label %579

210:                                              ; preds = %201
  %211 = call i8* @PACKET_data(i32* %30)
  store i8* %211, i8** %12, align 8
  %212 = call i32 @PACKET_get_1(i32* %30, i32* %23)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %210
  %215 = call i32 @PACKET_get_net_3_len(i32* %30, i64* %17)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %214
  %218 = call i32 @PACKET_get_net_2(i32* %30, i32* %22)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %217
  %221 = call i32 @PACKET_get_net_3_len(i32* %30, i64* %15)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = call i32 @PACKET_get_net_3_len(i32* %30, i64* %16)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %233

226:                                              ; preds = %223
  %227 = load i64, i64* %16, align 8
  %228 = call i32 @PACKET_get_sub_packet(i32* %30, i32* %31, i64 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %226
  %231 = call i64 @PACKET_remaining(i32* %30)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %230, %226, %223, %220, %217, %214, %210
  %234 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %235 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %236 = call i32 @SSLerr(i32 %234, i32 %235)
  br label %579

237:                                              ; preds = %230
  %238 = load i32, i32* %23, align 4
  %239 = load i32, i32* @SSL3_MT_CLIENT_HELLO, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %237
  %242 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %243 = load i32, i32* @SSL_R_UNEXPECTED_MESSAGE, align 4
  %244 = call i32 @SSLerr(i32 %242, i32 %243)
  br label %579

245:                                              ; preds = %237
  %246 = load i32, i32* %22, align 4
  %247 = icmp ugt i32 %246, 2
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %250 = load i32, i32* @SSL_R_INVALID_SEQUENCE_NUMBER, align 4
  %251 = call i32 @SSLerr(i32 %249, i32 %250)
  br label %579

252:                                              ; preds = %245
  %253 = load i64, i64* %15, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %259, label %255

255:                                              ; preds = %252
  %256 = load i64, i64* %16, align 8
  %257 = load i64, i64* %17, align 8
  %258 = icmp ugt i64 %256, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %255, %252
  %260 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %261 = load i32, i32* @SSL_R_FRAGMENTED_CLIENT_HELLO, align 4
  %262 = call i32 @SSLerr(i32 %260, i32 %261)
  br label %579

263:                                              ; preds = %255
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %264, i32 0, i32 4
  %266 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)** %265, align 8
  %267 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)* %266, null
  br i1 %267, label %268, label %286

268:                                              ; preds = %263
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %269, i32 0, i32 4
  %271 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)** %270, align 8
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %276 = load i8*, i8** %12, align 8
  %277 = load i64, i64* %16, align 8
  %278 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %279 = add i64 %277, %278
  %280 = trunc i64 %279 to i32
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = call i32 %271(i32 0, i32 %274, i32 %275, i8* %276, i32 %280, %struct.TYPE_27__* %281, i32 %284)
  br label %286

286:                                              ; preds = %268, %263
  %287 = call i32 @PACKET_get_net_2(i32* %31, i32* %24)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %293, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %291 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %292 = call i32 @SSLerr(i32 %290, i32 %291)
  br label %579

293:                                              ; preds = %286
  %294 = load i32, i32* %24, align 4
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 5
  %297 = load %struct.TYPE_25__*, %struct.TYPE_25__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = call i64 @DTLS_VERSION_LT(i32 %294, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %315

303:                                              ; preds = %293
  %304 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %304, i32 0, i32 5
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 0
  %308 = load i64, i64* %307, align 8
  %309 = load i64, i64* @DTLS_ANY_VERSION, align 8
  %310 = icmp ne i64 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %303
  %312 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %313 = load i32, i32* @SSL_R_WRONG_VERSION_NUMBER, align 4
  %314 = call i32 @SSLerr(i32 %312, i32 %313)
  br label %579

315:                                              ; preds = %303, %293
  %316 = load i32, i32* @SSL3_RANDOM_SIZE, align 4
  %317 = call i32 @PACKET_forward(i32* %31, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %325

319:                                              ; preds = %315
  %320 = call i32 @PACKET_get_length_prefixed_1(i32* %31, i32* %32)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = call i32 @PACKET_get_length_prefixed_1(i32* %31, i32* %33)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %322, %319, %315
  %326 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %327 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %328 = call i32 @SSLerr(i32 %326, i32 %327)
  br label %579

329:                                              ; preds = %322
  %330 = call i64 @PACKET_remaining(i32* %33)
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = load i32, i32* @LISTEN_SEND_VERIFY_REQUEST, align 4
  store i32 %333, i32* %6, align 4
  br label %362

334:                                              ; preds = %329
  %335 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %336 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %335, i32 0, i32 6
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = load i64 (%struct.TYPE_27__*, i8*, i32)*, i64 (%struct.TYPE_27__*, i8*, i32)** %338, align 8
  %340 = icmp eq i64 (%struct.TYPE_27__*, i8*, i32)* %339, null
  br i1 %340, label %341, label %345

341:                                              ; preds = %334
  %342 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %343 = load i32, i32* @SSL_R_NO_VERIFY_COOKIE_CALLBACK, align 4
  %344 = call i32 @SSLerr(i32 %342, i32 %343)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

345:                                              ; preds = %334
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 6
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %347, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 0
  %350 = load i64 (%struct.TYPE_27__*, i8*, i32)*, i64 (%struct.TYPE_27__*, i8*, i32)** %349, align 8
  %351 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %352 = call i8* @PACKET_data(i32* %33)
  %353 = call i64 @PACKET_remaining(i32* %33)
  %354 = trunc i64 %353 to i32
  %355 = call i64 %350(%struct.TYPE_27__* %351, i8* %352, i32 %354)
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %359

357:                                              ; preds = %345
  %358 = load i32, i32* @LISTEN_SEND_VERIFY_REQUEST, align 4
  store i32 %358, i32* %6, align 4
  br label %361

359:                                              ; preds = %345
  %360 = load i32, i32* @LISTEN_SUCCESS, align 4
  store i32 %360, i32* %6, align 4
  br label %361

361:                                              ; preds = %359, %357
  br label %362

362:                                              ; preds = %361, %332
  %363 = load i32, i32* %6, align 4
  %364 = load i32, i32* @LISTEN_SEND_VERIFY_REQUEST, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %538

366:                                              ; preds = %362
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 6
  %369 = load %struct.TYPE_23__*, %struct.TYPE_23__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %369, i32 0, i32 1
  %371 = load i64 (%struct.TYPE_27__*, i8*, i32*)*, i64 (%struct.TYPE_27__*, i8*, i32*)** %370, align 8
  %372 = icmp eq i64 (%struct.TYPE_27__*, i8*, i32*)* %371, null
  br i1 %372, label %385, label %373

373:                                              ; preds = %366
  %374 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %374, i32 0, i32 6
  %376 = load %struct.TYPE_23__*, %struct.TYPE_23__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %376, i32 0, i32 1
  %378 = load i64 (%struct.TYPE_27__*, i8*, i32*)*, i64 (%struct.TYPE_27__*, i8*, i32*)** %377, align 8
  %379 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %380 = call i64 %378(%struct.TYPE_27__* %379, i8* %41, i32* %25)
  %381 = icmp eq i64 %380, 0
  br i1 %381, label %385, label %382

382:                                              ; preds = %373
  %383 = load i32, i32* %25, align 4
  %384 = icmp ugt i32 %383, 255
  br i1 %384, label %385, label %389

385:                                              ; preds = %382, %373, %366
  %386 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %387 = load i32, i32* @SSL_R_COOKIE_GEN_CALLBACK_FAILURE, align 4
  %388 = call i32 @SSLerr(i32 %386, i32 %387)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

389:                                              ; preds = %382
  %390 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %391 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %390, i32 0, i32 5
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @DTLS_ANY_VERSION, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %399

397:                                              ; preds = %389
  %398 = load i32, i32* @DTLS1_VERSION, align 4
  br label %403

399:                                              ; preds = %389
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  br label %403

403:                                              ; preds = %399, %397
  %404 = phi i32 [ %398, %397 ], [ %402, %399 ]
  store i32 %404, i32* %36, align 4
  %405 = load i8*, i8** %14, align 8
  %406 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %407 = call i64 @ssl_get_max_send_fragment(%struct.TYPE_27__* %406)
  %408 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %409 = sext i32 %408 to i64
  %410 = add nsw i64 %407, %409
  %411 = call i32 @WPACKET_init_static_len(i32* %35, i8* %405, i64 %410, i32 0)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %460

413:                                              ; preds = %403
  %414 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %415 = call i32 @WPACKET_put_bytes_u8(i32* %35, i32 %414)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %460

417:                                              ; preds = %413
  %418 = load i32, i32* %36, align 4
  %419 = call i32 @WPACKET_put_bytes_u16(i32* %35, i32 %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %460

421:                                              ; preds = %417
  %422 = load i32, i32* @SEQ_NUM_SIZE, align 4
  %423 = call i32 @WPACKET_memcpy(i32* %35, i8* %44, i32 %422)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %460

425:                                              ; preds = %421
  %426 = call i32 @WPACKET_start_sub_packet_u16(i32* %35)
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %460

428:                                              ; preds = %425
  %429 = load i32, i32* @DTLS1_MT_HELLO_VERIFY_REQUEST, align 4
  %430 = call i32 @WPACKET_put_bytes_u8(i32* %35, i32 %429)
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %460

432:                                              ; preds = %428
  %433 = call i32 @WPACKET_put_bytes_u24(i32* %35, i32 0)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %460

435:                                              ; preds = %432
  %436 = call i32 @WPACKET_put_bytes_u16(i32* %35, i32 0)
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %460

438:                                              ; preds = %435
  %439 = call i32 @WPACKET_put_bytes_u24(i32* %35, i32 0)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %460

441:                                              ; preds = %438
  %442 = call i32 @WPACKET_start_sub_packet_u24(i32* %35)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %460

444:                                              ; preds = %441
  %445 = load i32, i32* %25, align 4
  %446 = call i32 @dtls_raw_hello_verify_request(i32* %35, i8* %41, i32 %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %460

448:                                              ; preds = %444
  %449 = call i32 @WPACKET_close(i32* %35)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %460

451:                                              ; preds = %448
  %452 = call i32 @WPACKET_close(i32* %35)
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %460

454:                                              ; preds = %451
  %455 = call i32 @WPACKET_get_total_written(i32* %35, i64* %37)
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = call i32 @WPACKET_finish(i32* %35)
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %465, label %460

460:                                              ; preds = %457, %454, %451, %448, %444, %441, %438, %435, %432, %428, %425, %421, %417, %413, %403
  %461 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %462 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %463 = call i32 @SSLerr(i32 %461, i32 %462)
  %464 = call i32 @WPACKET_cleanup(i32* %35)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

465:                                              ; preds = %457
  %466 = load i8*, i8** %14, align 8
  %467 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %468 = add nsw i32 %467, 1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i8, i8* %466, i64 %469
  %471 = load i8*, i8** %14, align 8
  %472 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %473 = sext i32 %472 to i64
  %474 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %475 = add i64 %473, %474
  %476 = sub i64 %475, 3
  %477 = getelementptr inbounds i8, i8* %471, i64 %476
  %478 = call i32 @memcpy(i8* %470, i8* %477, i32 3)
  %479 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %480 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %479, i32 0, i32 4
  %481 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)** %480, align 8
  %482 = icmp ne i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)* %481, null
  br i1 %482, label %483, label %495

483:                                              ; preds = %465
  %484 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %485 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %484, i32 0, i32 4
  %486 = load i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)*, i32 (i32, i32, i32, i8*, i32, %struct.TYPE_27__*, i32)** %485, align 8
  %487 = load i32, i32* @SSL3_RT_HEADER, align 4
  %488 = load i8*, i8** %13, align 8
  %489 = load i32, i32* @DTLS1_RT_HEADER_LENGTH, align 4
  %490 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %491 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 8
  %494 = call i32 %486(i32 1, i32 0, i32 %487, i8* %488, i32 %489, %struct.TYPE_27__* %490, i32 %493)
  br label %495

495:                                              ; preds = %483, %465
  %496 = call i32* (...) @BIO_ADDR_new()
  store i32* %496, i32** %28, align 8
  %497 = icmp eq i32* %496, null
  br i1 %497, label %498, label %502

498:                                              ; preds = %495
  %499 = load i32, i32* @SSL_F_DTLSV1_LISTEN, align 4
  %500 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %501 = call i32 @SSLerr(i32 %499, i32 %500)
  br label %579

502:                                              ; preds = %495
  %503 = load i32*, i32** %26, align 8
  %504 = load i32*, i32** %28, align 8
  %505 = call i64 @BIO_dgram_get_peer(i32* %503, i32* %504)
  %506 = icmp sgt i64 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %502
  %508 = load i32*, i32** %27, align 8
  %509 = load i32*, i32** %28, align 8
  %510 = call i32 @BIO_dgram_set_peer(i32* %508, i32* %509)
  br label %511

511:                                              ; preds = %507, %502
  %512 = load i32*, i32** %28, align 8
  %513 = call i32 @BIO_ADDR_free(i32* %512)
  store i32* null, i32** %28, align 8
  %514 = load i32*, i32** %27, align 8
  %515 = load i8*, i8** %14, align 8
  %516 = load i64, i64* %37, align 8
  %517 = call i32 @BIO_write(i32* %514, i8* %515, i64 %516)
  %518 = load i64, i64* %37, align 8
  %519 = trunc i64 %518 to i32
  %520 = icmp slt i32 %517, %519
  br i1 %520, label %521, label %527

521:                                              ; preds = %511
  %522 = load i32*, i32** %27, align 8
  %523 = call i64 @BIO_should_retry(i32* %522)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %521
  br label %579

526:                                              ; preds = %521
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

527:                                              ; preds = %511
  %528 = load i32*, i32** %27, align 8
  %529 = call i64 @BIO_flush(i32* %528)
  %530 = icmp sle i64 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %527
  %532 = load i32*, i32** %27, align 8
  %533 = call i64 @BIO_should_retry(i32* %532)
  %534 = icmp ne i64 %533, 0
  br i1 %534, label %535, label %536

535:                                              ; preds = %531
  br label %579

536:                                              ; preds = %531
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

537:                                              ; preds = %527
  br label %538

538:                                              ; preds = %537, %362
  br label %539

539:                                              ; preds = %538
  %540 = load i32, i32* %6, align 4
  %541 = load i32, i32* @LISTEN_SUCCESS, align 4
  %542 = icmp ne i32 %540, %541
  br i1 %542, label %104, label %543

543:                                              ; preds = %539
  %544 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %545 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %544, i32 0, i32 2
  %546 = load %struct.TYPE_26__*, %struct.TYPE_26__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %546, i32 0, i32 0
  store i32 1, i32* %547, align 4
  %548 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %548, i32 0, i32 2
  %550 = load %struct.TYPE_26__*, %struct.TYPE_26__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %550, i32 0, i32 1
  store i32 1, i32* %551, align 4
  %552 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %553 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %552, i32 0, i32 2
  %554 = load %struct.TYPE_26__*, %struct.TYPE_26__** %553, align 8
  %555 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %554, i32 0, i32 2
  store i32 1, i32* %555, align 4
  %556 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %556, i32 0, i32 1
  %558 = call i32 @DTLS_RECORD_LAYER_set_write_sequence(i32* %557, i8* %44)
  %559 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %560 = load i32, i32* @SSL_OP_COOKIE_EXCHANGE, align 4
  %561 = call i32 @SSL_set_options(%struct.TYPE_27__* %559, i32 %560)
  %562 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %563 = call i32 @ossl_statem_set_hello_verify_done(%struct.TYPE_27__* %562)
  %564 = load i32*, i32** %26, align 8
  %565 = load i32*, i32** %5, align 8
  %566 = call i64 @BIO_dgram_get_peer(i32* %564, i32* %565)
  %567 = icmp sle i64 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %543
  %569 = load i32*, i32** %5, align 8
  %570 = call i32 @BIO_ADDR_clear(i32* %569)
  br label %571

571:                                              ; preds = %568, %543
  %572 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %573 = load i64, i64* %18, align 8
  %574 = load i64, i64* %19, align 8
  %575 = call i32 @dtls_buffer_listen_record(%struct.TYPE_27__* %572, i64 %573, i8* %44, i64 %574)
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %578, label %577

577:                                              ; preds = %571
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

578:                                              ; preds = %571
  store i32 1, i32* %8, align 4
  br label %579

579:                                              ; preds = %578, %535, %525, %498, %325, %311, %289, %259, %248, %241, %233, %206, %191, %177, %169, %161, %134, %119
  %580 = load i32*, i32** %28, align 8
  %581 = call i32 @BIO_ADDR_free(i32* %580)
  %582 = load i32, i32* %8, align 4
  store i32 %582, i32* %3, align 4
  store i32 1, i32* %34, align 4
  br label %583

583:                                              ; preds = %579, %577, %536, %526, %460, %385, %341, %126, %120, %88, %80, %68, %56
  %584 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %584)
  %585 = load i32, i32* %3, align 4
  ret i32 %585
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SSL_set_accept_state(%struct.TYPE_27__*) #2

declare dso_local i32 @SSL_clear(%struct.TYPE_27__*) #2

declare dso_local i32 @ERR_clear_error(...) #2

declare dso_local i32* @SSL_get_rbio(%struct.TYPE_27__*) #2

declare dso_local i32* @SSL_get_wbio(%struct.TYPE_27__*) #2

declare dso_local i32 @SSLerr(i32, i32) #2

declare dso_local i32 @ssl3_setup_buffers(%struct.TYPE_27__*) #2

declare dso_local %struct.TYPE_24__* @RECORD_LAYER_get_rbuf(i32*) #2

declare dso_local %struct.TYPE_22__* @RECORD_LAYER_get_wbuf(i32*) #2

declare dso_local i32 @clear_sys_error(...) #2

declare dso_local i32 @BIO_read(i32*, i8*, i64) #2

declare dso_local i64 @BIO_should_retry(i32*) #2

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i32) #2

declare dso_local i32 @PACKET_get_1(i32*, i32*) #2

declare dso_local i32 @PACKET_forward(i32*, i32) #2

declare dso_local i32 @PACKET_copy_bytes(i32*, i8*, i32) #2

declare dso_local i32 @PACKET_get_length_prefixed_2(i32*, i32*) #2

declare dso_local i64 @PACKET_remaining(i32*) #2

declare dso_local i8* @PACKET_data(i32*) #2

declare dso_local i32 @PACKET_get_net_3_len(i32*, i64*) #2

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #2

declare dso_local i32 @PACKET_get_sub_packet(i32*, i32*, i64) #2

declare dso_local i64 @DTLS_VERSION_LT(i32, i32) #2

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #2

declare dso_local i32 @WPACKET_init_static_len(i32*, i8*, i64, i32) #2

declare dso_local i64 @ssl_get_max_send_fragment(%struct.TYPE_27__*) #2

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #2

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #2

declare dso_local i32 @WPACKET_memcpy(i32*, i8*, i32) #2

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #2

declare dso_local i32 @WPACKET_put_bytes_u24(i32*, i32) #2

declare dso_local i32 @WPACKET_start_sub_packet_u24(i32*) #2

declare dso_local i32 @dtls_raw_hello_verify_request(i32*, i8*, i32) #2

declare dso_local i32 @WPACKET_close(i32*) #2

declare dso_local i32 @WPACKET_get_total_written(i32*, i64*) #2

declare dso_local i32 @WPACKET_finish(i32*) #2

declare dso_local i32 @WPACKET_cleanup(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32* @BIO_ADDR_new(...) #2

declare dso_local i64 @BIO_dgram_get_peer(i32*, i32*) #2

declare dso_local i32 @BIO_dgram_set_peer(i32*, i32*) #2

declare dso_local i32 @BIO_ADDR_free(i32*) #2

declare dso_local i32 @BIO_write(i32*, i8*, i64) #2

declare dso_local i64 @BIO_flush(i32*) #2

declare dso_local i32 @DTLS_RECORD_LAYER_set_write_sequence(i32*, i8*) #2

declare dso_local i32 @SSL_set_options(%struct.TYPE_27__*, i32) #2

declare dso_local i32 @ossl_statem_set_hello_verify_done(%struct.TYPE_27__*) #2

declare dso_local i32 @BIO_ADDR_clear(i32*) #2

declare dso_local i32 @dtls_buffer_listen_record(%struct.TYPE_27__*, i64, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
