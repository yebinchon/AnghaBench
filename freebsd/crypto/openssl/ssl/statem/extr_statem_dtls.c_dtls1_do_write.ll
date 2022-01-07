; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_do_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_dtls.c_dtls1_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i64, i32, %struct.TYPE_14__*, i32 (i32, i64, i32, i32*, i64, %struct.TYPE_16__*, i32)*, %struct.TYPE_15__*, i32, i32, i64, i64 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i64, %struct.hm_header_st, i32 }
%struct.hm_header_st = type { i64, i64, i32, i32 }

@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@DTLS1_HM_HEADER_LENGTH = common dso_local global i64 0, align 8
@EVP_CIPH_FLAG_AEAD_CIPHER = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8
@SSL_NOTHING = common dso_local global i32 0, align 4
@DTLS1_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL_WRITING = common dso_local global i32 0, align 4
@BIO_CTRL_DGRAM_MTU_EXCEEDED = common dso_local global i32 0, align 4
@SSL_OP_NO_QUERY_MTU = common dso_local global i32 0, align 4
@DTLS1_BAD_VER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtls1_do_write(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.hm_header_st*, align 8
  %17 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %19 = call i32 @dtls1_query_mtu(%struct.TYPE_16__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %463

22:                                               ; preds = %2
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = call i64 @dtls1_min_mtu(%struct.TYPE_16__* %28)
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  store i32 -1, i32* %3, align 4
  br label %463

32:                                               ; preds = %22
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %52 = add i64 %50, %51
  %53 = icmp eq i64 %44, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ossl_assert(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %463

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %37, %32
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %85

64:                                               ; preds = %59
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 10
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @EVP_CIPHER_CTX_cipher(i64 %72)
  %74 = call i32 @EVP_CIPHER_flags(i32 %73)
  %75 = load i32, i32* @EVP_CIPH_FLAG_AEAD_CIPHER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i64 0, i64* %12, align 8
  br label %84

79:                                               ; preds = %69, %64
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 11
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @EVP_MD_CTX_size(i64 %82)
  store i64 %83, i64* %12, align 8
  br label %84

84:                                               ; preds = %79, %78
  br label %86

85:                                               ; preds = %59
  store i64 0, i64* %12, align 8
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 10
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 10
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @EVP_CIPHER_CTX_mode(i64 %94)
  %96 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 10
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @EVP_CIPHER_CTX_block_size(i64 %101)
  %103 = mul nsw i32 2, %102
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %13, align 8
  br label %106

105:                                              ; preds = %91, %86
  store i64 0, i64* %13, align 8
  br label %106

106:                                              ; preds = %105, %98
  store i64 0, i64* %11, align 8
  %107 = load i32, i32* @SSL_NOTHING, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 8
  br label %110

110:                                              ; preds = %461, %106
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %462

115:                                              ; preds = %110
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %153

119:                                              ; preds = %115
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %153

124:                                              ; preds = %119
  %125 = load i64, i64* %11, align 8
  %126 = icmp ugt i64 %125, 0
  br i1 %126, label %127, label %145

127:                                              ; preds = %124
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %132 = icmp ule i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 -1, i32* %3, align 4
  br label %463

134:                                              ; preds = %127
  %135 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = sub i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = add i64 %143, %140
  store i64 %144, i64* %142, align 8
  br label %152

145:                                              ; preds = %124
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 7
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %11, align 8
  br label %152

152:                                              ; preds = %145, %134
  br label %153

153:                                              ; preds = %152, %119, %115
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = call i64 @BIO_wpending(i32 %156)
  %158 = load i64, i64* @DTLS1_RT_HEADER_LENGTH, align 8
  %159 = add i64 %157, %158
  %160 = load i64, i64* %12, align 8
  %161 = add i64 %159, %160
  %162 = load i64, i64* %13, align 8
  %163 = add i64 %161, %162
  store i64 %163, i64* %14, align 8
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 7
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* %14, align 8
  %170 = icmp ugt i64 %168, %169
  br i1 %170, label %171, label %179

171:                                              ; preds = %153
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 7
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %14, align 8
  %178 = sub i64 %176, %177
  store i64 %178, i64* %8, align 8
  br label %180

179:                                              ; preds = %153
  store i64 0, i64* %8, align 8
  br label %180

180:                                              ; preds = %179, %171
  %181 = load i64, i64* %8, align 8
  %182 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %183 = icmp ule i64 %181, %182
  br i1 %183, label %184, label %221

184:                                              ; preds = %180
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %185, i32 0, i32 9
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @BIO_flush(i32 %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp sle i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %184
  %192 = load i32, i32* @SSL_WRITING, align 4
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 8
  store i32 %192, i32* %194, align 8
  %195 = load i32, i32* %6, align 4
  store i32 %195, i32* %3, align 4
  br label %463

196:                                              ; preds = %184
  %197 = load i64, i64* @DTLS1_RT_HEADER_LENGTH, align 8
  %198 = load i64, i64* %12, align 8
  %199 = add i64 %197, %198
  %200 = load i64, i64* %13, align 8
  %201 = add i64 %199, %200
  store i64 %201, i64* %14, align 8
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 7
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %209 = add i64 %207, %208
  %210 = icmp ugt i64 %206, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %196
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 7
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %14, align 8
  %218 = sub i64 %216, %217
  store i64 %218, i64* %8, align 8
  br label %220

219:                                              ; preds = %196
  store i32 -1, i32* %3, align 4
  br label %463

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220, %180
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = zext i32 %225 to i64
  %227 = load i64, i64* %8, align 8
  %228 = icmp ugt i64 %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = load i64, i64* %8, align 8
  store i64 %230, i64* %10, align 8
  br label %235

231:                                              ; preds = %221
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %10, align 8
  br label %235

235:                                              ; preds = %231, %229
  %236 = load i64, i64* %10, align 8
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp ugt i64 %236, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %235
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %10, align 8
  br label %245

245:                                              ; preds = %241, %235
  %246 = load i32, i32* %5, align 4
  %247 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %273

249:                                              ; preds = %245
  %250 = load i64, i64* %10, align 8
  %251 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %252 = icmp ult i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i32 -1, i32* %3, align 4
  br label %463

254:                                              ; preds = %249
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %256 = load i64, i64* %11, align 8
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %259 = sub i64 %257, %258
  %260 = call i32 @dtls1_fix_message_header(%struct.TYPE_16__* %255, i64 %256, i64 %259)
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32, i32* %266, i64 %269
  %271 = bitcast i32* %270 to i8*
  %272 = call i32 @dtls1_write_message_header(%struct.TYPE_16__* %261, i8* %271)
  br label %273

273:                                              ; preds = %254, %245
  %274 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %275 = load i32, i32* %5, align 4
  %276 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %276, i32 0, i32 5
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i64, i64* %10, align 8
  %286 = call i32 @dtls1_write_bytes(%struct.TYPE_16__* %274, i32 %275, i32* %284, i64 %285, i64* %7)
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %6, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %289, label %314

289:                                              ; preds = %273
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %312

292:                                              ; preds = %289
  %293 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %294 = call i32 @SSL_get_wbio(%struct.TYPE_16__* %293)
  %295 = load i32, i32* @BIO_CTRL_DGRAM_MTU_EXCEEDED, align 4
  %296 = call i64 @BIO_ctrl(i32 %294, i32 %295, i32 0, i32* null)
  %297 = icmp sgt i64 %296, 0
  br i1 %297, label %298, label %312

298:                                              ; preds = %292
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %300 = call i32 @SSL_get_options(%struct.TYPE_16__* %299)
  %301 = load i32, i32* @SSL_OP_NO_QUERY_MTU, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %310, label %304

304:                                              ; preds = %298
  %305 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %306 = call i32 @dtls1_query_mtu(%struct.TYPE_16__* %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %304
  store i32 -1, i32* %3, align 4
  br label %463

309:                                              ; preds = %304
  store i32 0, i32* %9, align 4
  br label %311

310:                                              ; preds = %298
  store i32 -1, i32* %3, align 4
  br label %463

311:                                              ; preds = %309
  br label %313

312:                                              ; preds = %292, %289
  store i32 -1, i32* %3, align 4
  br label %463

313:                                              ; preds = %311
  br label %461

314:                                              ; preds = %273
  %315 = load i64, i64* %10, align 8
  %316 = load i64, i64* %7, align 8
  %317 = icmp eq i64 %315, %316
  %318 = zext i1 %317 to i32
  %319 = call i32 @ossl_assert(i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %314
  store i32 -1, i32* %3, align 4
  br label %463

322:                                              ; preds = %314
  %323 = load i32, i32* %5, align 4
  %324 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %400

326:                                              ; preds = %322
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 7
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %400, label %333

333:                                              ; preds = %326
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 5
  %336 = load %struct.TYPE_14__*, %struct.TYPE_14__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 0
  %338 = load i32*, i32** %337, align 8
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  %343 = bitcast i32* %342 to i8*
  store i8* %343, i8** %15, align 8
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 7
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 1
  store %struct.hm_header_st* %347, %struct.hm_header_st** %16, align 8
  %348 = load i64, i64* %11, align 8
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %350, label %385

350:                                              ; preds = %333
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i32 0, i32 3
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @DTLS1_BAD_VER, align 8
  %355 = icmp ne i64 %353, %354
  br i1 %355, label %356, label %385

356:                                              ; preds = %350
  %357 = load %struct.hm_header_st*, %struct.hm_header_st** %16, align 8
  %358 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = trunc i32 %359 to i8
  %361 = load i8*, i8** %15, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %362, i8** %15, align 8
  store i8 %360, i8* %361, align 1
  %363 = load %struct.hm_header_st*, %struct.hm_header_st** %16, align 8
  %364 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i8*, i8** %15, align 8
  %367 = call i32 @l2n3(i64 %365, i8* %366)
  %368 = load %struct.hm_header_st*, %struct.hm_header_st** %16, align 8
  %369 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load i8*, i8** %15, align 8
  %372 = call i32 @s2n(i32 %370, i8* %371)
  %373 = load i8*, i8** %15, align 8
  %374 = call i32 @l2n3(i64 0, i8* %373)
  %375 = load %struct.hm_header_st*, %struct.hm_header_st** %16, align 8
  %376 = getelementptr inbounds %struct.hm_header_st, %struct.hm_header_st* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = load i8*, i8** %15, align 8
  %379 = call i32 @l2n3(i64 %377, i8* %378)
  %380 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %381 = load i8*, i8** %15, align 8
  %382 = sub i64 0, %380
  %383 = getelementptr inbounds i8, i8* %381, i64 %382
  store i8* %383, i8** %15, align 8
  %384 = load i64, i64* %7, align 8
  store i64 %384, i64* %17, align 8
  br label %392

385:                                              ; preds = %350, %333
  %386 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %387 = load i8*, i8** %15, align 8
  %388 = getelementptr inbounds i8, i8* %387, i64 %386
  store i8* %388, i8** %15, align 8
  %389 = load i64, i64* %7, align 8
  %390 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %391 = sub i64 %389, %390
  store i64 %391, i64* %17, align 8
  br label %392

392:                                              ; preds = %385, %356
  %393 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %394 = load i8*, i8** %15, align 8
  %395 = load i64, i64* %17, align 8
  %396 = call i32 @ssl3_finish_mac(%struct.TYPE_16__* %393, i8* %394, i64 %395)
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %392
  store i32 -1, i32* %3, align 4
  br label %463

399:                                              ; preds = %392
  br label %400

400:                                              ; preds = %399, %326, %322
  %401 = load i64, i64* %7, align 8
  %402 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = icmp eq i64 %401, %404
  br i1 %405, label %406, label %441

406:                                              ; preds = %400
  %407 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %407, i32 0, i32 6
  %409 = load i32 (i32, i64, i32, i32*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i32*, i64, %struct.TYPE_16__*, i32)** %408, align 8
  %410 = icmp ne i32 (i32, i64, i32, i32*, i64, %struct.TYPE_16__*, i32)* %409, null
  br i1 %410, label %411, label %436

411:                                              ; preds = %406
  %412 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %412, i32 0, i32 6
  %414 = load i32 (i32, i64, i32, i32*, i64, %struct.TYPE_16__*, i32)*, i32 (i32, i64, i32, i32*, i64, %struct.TYPE_16__*, i32)** %413, align 8
  %415 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %416 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %415, i32 0, i32 3
  %417 = load i64, i64* %416, align 8
  %418 = load i32, i32* %5, align 4
  %419 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %419, i32 0, i32 5
  %421 = load %struct.TYPE_14__*, %struct.TYPE_14__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %421, i32 0, i32 0
  %423 = load i32*, i32** %422, align 8
  %424 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %424, i32 0, i32 0
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %428 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = add i64 %426, %429
  %431 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 8
  %435 = call i32 %414(i32 1, i64 %417, i32 %418, i32* %423, i64 %430, %struct.TYPE_16__* %431, i32 %434)
  br label %436

436:                                              ; preds = %411, %406
  %437 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %437, i32 0, i32 0
  store i64 0, i64* %438, align 8
  %439 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %440 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %439, i32 0, i32 1
  store i64 0, i64* %440, align 8
  store i32 1, i32* %3, align 4
  br label %463

441:                                              ; preds = %400
  %442 = load i64, i64* %7, align 8
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 0
  %445 = load i64, i64* %444, align 8
  %446 = add i64 %445, %442
  store i64 %446, i64* %444, align 8
  %447 = load i64, i64* %7, align 8
  %448 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = sub i64 %450, %447
  store i64 %451, i64* %449, align 8
  %452 = load i64, i64* @DTLS1_HM_HEADER_LENGTH, align 8
  %453 = load i64, i64* %7, align 8
  %454 = sub i64 %453, %452
  store i64 %454, i64* %7, align 8
  %455 = load i64, i64* %7, align 8
  %456 = load i64, i64* %11, align 8
  %457 = add i64 %456, %455
  store i64 %457, i64* %11, align 8
  %458 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %459 = load i64, i64* %11, align 8
  %460 = call i32 @dtls1_fix_message_header(%struct.TYPE_16__* %458, i64 %459, i64 0)
  br label %461

461:                                              ; preds = %441, %313
  br label %110

462:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %463

463:                                              ; preds = %462, %436, %398, %321, %312, %310, %308, %253, %219, %191, %133, %57, %31, %21
  %464 = load i32, i32* %3, align 4
  ret i32 %464
}

declare dso_local i32 @dtls1_query_mtu(%struct.TYPE_16__*) #1

declare dso_local i64 @dtls1_min_mtu(%struct.TYPE_16__*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @EVP_CIPHER_flags(i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_cipher(i64) #1

declare dso_local i64 @EVP_MD_CTX_size(i64) #1

declare dso_local i64 @EVP_CIPHER_CTX_mode(i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_block_size(i64) #1

declare dso_local i64 @BIO_wpending(i32) #1

declare dso_local i32 @BIO_flush(i32) #1

declare dso_local i32 @dtls1_fix_message_header(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @dtls1_write_message_header(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @dtls1_write_bytes(%struct.TYPE_16__*, i32, i32*, i64, i64*) #1

declare dso_local i64 @BIO_ctrl(i32, i32, i32, i32*) #1

declare dso_local i32 @SSL_get_wbio(%struct.TYPE_16__*) #1

declare dso_local i32 @SSL_get_options(%struct.TYPE_16__*) #1

declare dso_local i32 @l2n3(i64, i8*) #1

declare dso_local i32 @s2n(i32, i8*) #1

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_16__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
