; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_construct_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i64, i32, i64, i8*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_25__*, i64, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_25__ = type { i64, i8*, i32 }
%struct.TYPE_26__ = type { i32 }

@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@DOWNGRADE_NONE = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL3_RANDOM_SIZE = common dso_local global i64 0, align 8
@TLS1_3_VERSION = common dso_local global i64 0, align 8
@SSL_OP_ENABLE_MIDDLEBOX_COMPAT = common dso_local global i32 0, align 4
@SSL_EXT_CLIENT_HELLO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_client_hello(%struct.TYPE_27__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %15, i32 0, i32 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %11, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %19 = call i32 @ssl_set_client_hello_version(%struct.TYPE_27__* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %24 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %25 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @SSLfatal(%struct.TYPE_27__* %23, i32 %24, i32 %25, i32 %26)
  store i32 0, i32* %3, align 4
  br label %395

28:                                               ; preds = %2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %30 = icmp eq %struct.TYPE_25__* %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ssl_version_supported(%struct.TYPE_27__* %32, i64 %35, i32* null)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %40 = call i32 @SSL_SESSION_is_resumable(%struct.TYPE_25__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %38, %31, %28
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SSL_HRR_NONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %50 = call i32 @ssl_get_new_session(%struct.TYPE_27__* %49, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %395

53:                                               ; preds = %48, %42
  br label %54

54:                                               ; preds = %53, %38
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 6
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %61 = call i64 @SSL_IS_DTLS(%struct.TYPE_27__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %54
  store i32 1, i32* %8, align 4
  store i64 0, i64* %13, align 8
  br label %64

64:                                               ; preds = %75, %63
  %65 = load i64, i64* %13, align 8
  %66 = icmp ult i64 %65, 8
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %78

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  br label %64

78:                                               ; preds = %73, %64
  br label %86

79:                                               ; preds = %54
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SSL_HRR_NONE, align 8
  %84 = icmp eq i64 %82, %83
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %79, %78
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i32, i32* @DOWNGRADE_NONE, align 4
  %93 = call i64 @ssl_fill_hello_random(%struct.TYPE_27__* %90, i32 0, i8* %91, i32 8, i32 %92)
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %97 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %98 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %99 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %100 = call i32 @SSLfatal(%struct.TYPE_27__* %96, i32 %97, i32 %98, i32 %99)
  store i32 0, i32* %3, align 4
  br label %395

101:                                              ; preds = %89, %86
  %102 = load i32*, i32** %5, align 8
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @WPACKET_put_bytes_u16(i32* %102, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i64, i64* @SSL3_RANDOM_SIZE, align 8
  %116 = call i32 @WPACKET_memcpy(i32* %109, i8* %114, i64 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %108, %101
  %119 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %120 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %121 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %122 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %123 = call i32 @SSLfatal(%struct.TYPE_27__* %119, i32 %120, i32 %121, i32 %122)
  store i32 0, i32* %3, align 4
  br label %395

124:                                              ; preds = %108
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 8
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %12, align 8
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 9
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %124
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TLS1_3_VERSION, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %183

142:                                              ; preds = %134, %124
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TLS1_3_VERSION, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %181

148:                                              ; preds = %142
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SSL_OP_ENABLE_MIDDLEBOX_COMPAT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %148
  store i64 8, i64* %7, align 8
  %156 = load i64, i64* %7, align 8
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %157, i32 0, i32 3
  store i64 %156, i64* %158, align 8
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %12, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SSL_HRR_NONE, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %180

167:                                              ; preds = %155
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 4
  %170 = load i8*, i8** %169, align 8
  %171 = load i64, i64* %7, align 8
  %172 = call i64 @RAND_bytes(i8* %170, i64 %171)
  %173 = icmp sle i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %176 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %177 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %178 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %179 = call i32 @SSLfatal(%struct.TYPE_27__* %175, i32 %176, i32 %177, i32 %178)
  store i32 0, i32* %3, align 4
  br label %395

180:                                              ; preds = %167, %155
  br label %182

181:                                              ; preds = %148, %142
  store i64 0, i64* %7, align 8
  br label %182

182:                                              ; preds = %181, %180
  br label %219

183:                                              ; preds = %134
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %184, i32 0, i32 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = icmp ule i64 %189, 8
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %7, align 8
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @TLS1_3_VERSION, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %183
  %205 = load i64, i64* %7, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 3
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 4
  %210 = load i8*, i8** %209, align 8
  %211 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %211, i32 0, i32 8
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = load i64, i64* %7, align 8
  %217 = call i32 @memcpy(i8* %210, i8* %215, i64 %216)
  br label %218

218:                                              ; preds = %204, %183
  br label %219

219:                                              ; preds = %218, %182
  %220 = load i32*, i32** %5, align 8
  %221 = call i32 @WPACKET_start_sub_packet_u8(i32* %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %236

223:                                              ; preds = %219
  %224 = load i64, i64* %7, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %223
  %227 = load i32*, i32** %5, align 8
  %228 = load i8*, i8** %12, align 8
  %229 = load i64, i64* %7, align 8
  %230 = call i32 @WPACKET_memcpy(i32* %227, i8* %228, i64 %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %226, %223
  %233 = load i32*, i32** %5, align 8
  %234 = call i32 @WPACKET_close(i32* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %242, label %236

236:                                              ; preds = %232, %226, %219
  %237 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %238 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %239 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %240 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %241 = call i32 @SSLfatal(%struct.TYPE_27__* %237, i32 %238, i32 %239, i32 %240)
  store i32 0, i32* %3, align 4
  br label %395

242:                                              ; preds = %232
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %244 = call i64 @SSL_IS_DTLS(%struct.TYPE_27__* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %275

246:                                              ; preds = %242
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 7
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp ugt i64 %252, 4
  br i1 %253, label %268, label %254

254:                                              ; preds = %246
  %255 = load i32*, i32** %5, align 8
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 7
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %261, i32 0, i32 7
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @WPACKET_sub_memcpy_u8(i32* %255, i32 %260, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %254, %246
  %269 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %270 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %271 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %272 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %273 = call i32 @SSLfatal(%struct.TYPE_27__* %269, i32 %270, i32 %271, i32 %272)
  store i32 0, i32* %3, align 4
  br label %395

274:                                              ; preds = %254
  br label %275

275:                                              ; preds = %274, %242
  %276 = load i32*, i32** %5, align 8
  %277 = call i32 @WPACKET_start_sub_packet_u16(i32* %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  %280 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %281 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %282 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %283 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %284 = call i32 @SSLfatal(%struct.TYPE_27__* %280, i32 %281, i32 %282, i32 %283)
  store i32 0, i32* %3, align 4
  br label %395

285:                                              ; preds = %275
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %288 = call i32 @SSL_get_ciphers(%struct.TYPE_27__* %287)
  %289 = load i32*, i32** %5, align 8
  %290 = call i32 @ssl_cipher_list_to_bytes(%struct.TYPE_27__* %286, i32 %288, i32* %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %293, label %292

292:                                              ; preds = %285
  store i32 0, i32* %3, align 4
  br label %395

293:                                              ; preds = %285
  %294 = load i32*, i32** %5, align 8
  %295 = call i32 @WPACKET_close(i32* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %293
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %299 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %300 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %301 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %302 = call i32 @SSLfatal(%struct.TYPE_27__* %298, i32 %299, i32 %300, i32 %301)
  store i32 0, i32* %3, align 4
  br label %395

303:                                              ; preds = %293
  %304 = load i32*, i32** %5, align 8
  %305 = call i32 @WPACKET_start_sub_packet_u8(i32* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %313, label %307

307:                                              ; preds = %303
  %308 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %309 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %310 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %311 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %312 = call i32 @SSLfatal(%struct.TYPE_27__* %308, i32 %309, i32 %310, i32 %311)
  store i32 0, i32* %3, align 4
  br label %395

313:                                              ; preds = %303
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %315 = call i64 @ssl_allow_compression(%struct.TYPE_27__* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %373

317:                                              ; preds = %313
  %318 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %318, i32 0, i32 5
  %320 = load %struct.TYPE_24__*, %struct.TYPE_24__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %373

324:                                              ; preds = %317
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %326 = call i64 @SSL_IS_DTLS(%struct.TYPE_27__* %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %337, label %328

328:                                              ; preds = %324
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %329, i32 0, i32 6
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 1
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @TLS1_3_VERSION, align 8
  %336 = icmp slt i64 %334, %335
  br i1 %336, label %337, label %373

337:                                              ; preds = %328, %324
  %338 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %338, i32 0, i32 5
  %340 = load %struct.TYPE_24__*, %struct.TYPE_24__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = call i32 @sk_SSL_COMP_num(i64 %342)
  store i32 %343, i32* %14, align 4
  store i32 0, i32* %8, align 4
  br label %344

344:                                              ; preds = %369, %337
  %345 = load i32, i32* %8, align 4
  %346 = load i32, i32* %14, align 4
  %347 = icmp slt i32 %345, %346
  br i1 %347, label %348, label %372

348:                                              ; preds = %344
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 5
  %351 = load %struct.TYPE_24__*, %struct.TYPE_24__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load i32, i32* %8, align 4
  %355 = call %struct.TYPE_26__* @sk_SSL_COMP_value(i64 %353, i32 %354)
  store %struct.TYPE_26__* %355, %struct.TYPE_26__** %10, align 8
  %356 = load i32*, i32** %5, align 8
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @WPACKET_put_bytes_u8(i32* %356, i32 %359)
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %368, label %362

362:                                              ; preds = %348
  %363 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %364 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %365 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %366 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %367 = call i32 @SSLfatal(%struct.TYPE_27__* %363, i32 %364, i32 %365, i32 %366)
  store i32 0, i32* %3, align 4
  br label %395

368:                                              ; preds = %348
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %8, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %8, align 4
  br label %344

372:                                              ; preds = %344
  br label %373

373:                                              ; preds = %372, %328, %317, %313
  %374 = load i32*, i32** %5, align 8
  %375 = call i32 @WPACKET_put_bytes_u8(i32* %374, i32 0)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = load i32*, i32** %5, align 8
  %379 = call i32 @WPACKET_close(i32* %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %377, %373
  %382 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %383 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %384 = load i32, i32* @SSL_F_TLS_CONSTRUCT_CLIENT_HELLO, align 4
  %385 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %386 = call i32 @SSLfatal(%struct.TYPE_27__* %382, i32 %383, i32 %384, i32 %385)
  store i32 0, i32* %3, align 4
  br label %395

387:                                              ; preds = %377
  %388 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %389 = load i32*, i32** %5, align 8
  %390 = load i32, i32* @SSL_EXT_CLIENT_HELLO, align 4
  %391 = call i32 @tls_construct_extensions(%struct.TYPE_27__* %388, i32* %389, i32 %390, i32* null, i32 0)
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %387
  store i32 0, i32* %3, align 4
  br label %395

394:                                              ; preds = %387
  store i32 1, i32* %3, align 4
  br label %395

395:                                              ; preds = %394, %393, %381, %362, %307, %297, %292, %279, %268, %236, %174, %118, %95, %52, %22
  %396 = load i32, i32* %3, align 4
  ret i32 %396
}

declare dso_local i32 @ssl_set_client_hello_version(%struct.TYPE_27__*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @ssl_version_supported(%struct.TYPE_27__*, i64, i32*) #1

declare dso_local i32 @SSL_SESSION_is_resumable(%struct.TYPE_25__*) #1

declare dso_local i32 @ssl_get_new_session(%struct.TYPE_27__*, i32) #1

declare dso_local i64 @SSL_IS_DTLS(%struct.TYPE_27__*) #1

declare dso_local i64 @ssl_fill_hello_random(%struct.TYPE_27__*, i32, i8*, i32, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u16(i32*, i32) #1

declare dso_local i32 @WPACKET_memcpy(i32*, i8*, i64) #1

declare dso_local i64 @RAND_bytes(i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @WPACKET_start_sub_packet_u8(i32*) #1

declare dso_local i32 @WPACKET_close(i32*) #1

declare dso_local i32 @WPACKET_sub_memcpy_u8(i32*, i32, i32) #1

declare dso_local i32 @WPACKET_start_sub_packet_u16(i32*) #1

declare dso_local i32 @ssl_cipher_list_to_bytes(%struct.TYPE_27__*, i32, i32*) #1

declare dso_local i32 @SSL_get_ciphers(%struct.TYPE_27__*) #1

declare dso_local i64 @ssl_allow_compression(%struct.TYPE_27__*) #1

declare dso_local i32 @sk_SSL_COMP_num(i64) #1

declare dso_local %struct.TYPE_26__* @sk_SSL_COMP_value(i64, i32) #1

declare dso_local i32 @WPACKET_put_bytes_u8(i32*, i32) #1

declare dso_local i32 @tls_construct_extensions(%struct.TYPE_27__*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
