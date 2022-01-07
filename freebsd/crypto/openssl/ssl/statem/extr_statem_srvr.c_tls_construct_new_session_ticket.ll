; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_new_session_ticket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_srvr.c_tls_construct_new_session_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, i64, i32, %struct.TYPE_23__*, %struct.TYPE_21__*, i32, i64, %struct.TYPE_24__* }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i64, i32, i32*, i64 }
%struct.TYPE_21__ = type { i32, i32* }
%struct.TYPE_24__ = type { i64 (%struct.TYPE_25__*, i32)*, i32 }
%union.anon = type { i64 }

@TICKET_NONCE_SIZE = common dso_local global i32 0, align 4
@tls_construct_new_session_ticket.nonce_label = internal constant [11 x i8] c"resumption\00", align 1
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_OP_NO_TICKET = common dso_local global i32 0, align 4
@SSL_OP_NO_ANTI_REPLAY = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_SERVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_construct_new_session_ticket(%struct.TYPE_25__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %union.anon, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_23__*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 8
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %18, align 8
  store %struct.TYPE_24__* %19, %struct.TYPE_24__** %6, align 8
  %20 = load i32, i32* @TICKET_NONCE_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = bitcast %union.anon* %9 to i64*
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %26 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %209

28:                                               ; preds = %2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %30 = call i32* @ssl_handshake_md(%struct.TYPE_25__* %29)
  store i32* %30, i32** %13, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @EVP_MD_size(i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp sge i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ossl_assert(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %28
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %40 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %41 = load i32, i32* @SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET, align 4
  %42 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %43 = call i32 @SSLfatal(%struct.TYPE_25__* %39, i32 %40, i32 %41, i32 %42)
  br label %290

44:                                               ; preds = %28
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %11, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %44
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51, %44
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = call %struct.TYPE_23__* @ssl_session_dup(%struct.TYPE_23__* %59, i32 0)
  store %struct.TYPE_23__* %60, %struct.TYPE_23__** %15, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %62 = icmp eq %struct.TYPE_23__* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %290

64:                                               ; preds = %56
  %65 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %66, align 8
  %68 = call i32 @SSL_SESSION_free(%struct.TYPE_23__* %67)
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 4
  store %struct.TYPE_23__* %69, %struct.TYPE_23__** %71, align 8
  br label %72

72:                                               ; preds = %64, %51
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %75, align 8
  %77 = call i32 @ssl_generate_session_id(%struct.TYPE_25__* %73, %struct.TYPE_23__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  br label %290

80:                                               ; preds = %72
  %81 = bitcast %union.anon* %9 to [8 x i8]*
  %82 = getelementptr inbounds [8 x i8], [8 x i8]* %81, i64 0, i64 0
  %83 = call i64 @RAND_bytes(i8* %82, i32 8)
  %84 = icmp sle i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %88 = load i32, i32* @SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET, align 4
  %89 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %90 = call i32 @SSLfatal(%struct.TYPE_25__* %86, i32 %87, i32 %88, i32 %89)
  br label %290

91:                                               ; preds = %80
  %92 = bitcast %union.anon* %9 to i64*
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 3
  store i64 %93, i64* %98, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @TICKET_NONCE_SIZE, align 4
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %10, align 8
  br label %104

104:                                              ; preds = %116, %91
  %105 = load i64, i64* %10, align 8
  %106 = icmp ugt i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = and i32 %108, 255
  %110 = trunc i32 %109 to i8
  %111 = load i64, i64* %10, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i8, i8* %23, i64 %112
  store i8 %110, i8* %113, align 1
  %114 = load i32, i32* %12, align 4
  %115 = ashr i32 %114, 8
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %107
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %117, -1
  store i64 %118, i64* %10, align 8
  br label %104

119:                                              ; preds = %104
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TICKET_NONCE_SIZE, align 4
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %126, i32 0, i32 4
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i32 @tls13_hkdf_expand(%struct.TYPE_25__* %120, i32* %121, i32 %124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls_construct_new_session_ticket.nonce_label, i64 0, i64 0), i32 10, i8* %23, i32 %125, i32 %130, i64 %131, i32 1)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %119
  br label %290

135:                                              ; preds = %119
  %136 = load i64, i64* %11, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 0
  store i64 %136, i64* %140, align 8
  %141 = call i64 @time(i32* null)
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  store i64 %141, i64* %145, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %200

152:                                              ; preds = %135
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @OPENSSL_free(i32* %158)
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32* @OPENSSL_memdup(i32* %164, i32 %169)
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 2
  store i32* %170, i32** %175, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %152
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %185 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %186 = load i32, i32* @SSL_F_TLS_CONSTRUCT_NEW_SESSION_TICKET, align 4
  %187 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %188 = call i32 @SSLfatal(%struct.TYPE_25__* %184, i32 %185, i32 %186, i32 %187)
  br label %290

189:                                              ; preds = %152
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 5
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 1
  store i32 %194, i32* %199, align 8
  br label %200

200:                                              ; preds = %189, %135
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %204, i32 0, i32 4
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 0
  store i64 %203, i64* %208, align 8
  br label %209

209:                                              ; preds = %200, %2
  %210 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %210, i32 0, i32 0
  %212 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %211, align 8
  %213 = icmp ne i64 (%struct.TYPE_25__*, i32)* %212, null
  br i1 %213, label %214, label %225

214:                                              ; preds = %209
  %215 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %215, i32 0, i32 0
  %217 = load i64 (%struct.TYPE_25__*, i32)*, i64 (%struct.TYPE_25__*, i32)** %216, align 8
  %218 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %219 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i64 %217(%struct.TYPE_25__* %218, i32 %221)
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  br label %290

225:                                              ; preds = %214, %209
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %227 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %226)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %257

229:                                              ; preds = %225
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @SSL_OP_NO_TICKET, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %248, label %236

236:                                              ; preds = %229
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = icmp sgt i64 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %236
  %242 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @SSL_OP_NO_ANTI_REPLAY, align 4
  %246 = and i32 %244, %245
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %241, %229
  %249 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %250 = load i32*, i32** %5, align 8
  %251 = bitcast %union.anon* %9 to i64*
  %252 = load i64, i64* %251, align 8
  %253 = call i32 @construct_stateful_ticket(%struct.TYPE_25__* %249, i32* %250, i64 %252, i8* %23)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %248
  br label %290

256:                                              ; preds = %248
  br label %266

257:                                              ; preds = %241, %236, %225
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %259 = load i32*, i32** %5, align 8
  %260 = bitcast %union.anon* %9 to i64*
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @construct_stateless_ticket(%struct.TYPE_25__* %258, i32* %259, i64 %261, i8* %23)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %257
  br label %290

265:                                              ; preds = %257
  br label %266

266:                                              ; preds = %265, %256
  %267 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %268 = call i64 @SSL_IS_TLS13(%struct.TYPE_25__* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %289

270:                                              ; preds = %266
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %272 = load i32*, i32** %5, align 8
  %273 = load i32, i32* @SSL_EXT_TLS1_3_NEW_SESSION_TICKET, align 4
  %274 = call i32 @tls_construct_extensions(%struct.TYPE_25__* %271, i32* %272, i32 %273, i32* null, i32 0)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %270
  br label %290

277:                                              ; preds = %270
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %279, align 8
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 8
  %286 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %287 = load i32, i32* @SSL_SESS_CACHE_SERVER, align 4
  %288 = call i32 @ssl_update_cache(%struct.TYPE_25__* %286, i32 %287)
  br label %289

289:                                              ; preds = %277, %266
  store i32 1, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %291

290:                                              ; preds = %276, %264, %255, %224, %183, %134, %85, %79, %63, %38
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %291

291:                                              ; preds = %290, %289
  %292 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %292)
  %293 = load i32, i32* %3, align 4
  ret i32 %293
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_25__*) #2

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_25__*) #2

declare dso_local i32 @EVP_MD_size(i32*) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_25__*, i32, i32, i32) #2

declare dso_local %struct.TYPE_23__* @ssl_session_dup(%struct.TYPE_23__*, i32) #2

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_23__*) #2

declare dso_local i32 @ssl_generate_session_id(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

declare dso_local i64 @RAND_bytes(i8*, i32) #2

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_25__*, i32*, i32, i8*, i32, i8*, i32, i32, i64, i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i32 @OPENSSL_free(i32*) #2

declare dso_local i32* @OPENSSL_memdup(i32*, i32) #2

declare dso_local i32 @construct_stateful_ticket(%struct.TYPE_25__*, i32*, i64, i8*) #2

declare dso_local i32 @construct_stateless_ticket(%struct.TYPE_25__*, i32*, i64, i8*) #2

declare dso_local i32 @tls_construct_extensions(%struct.TYPE_25__*, i32*, i32, i32*, i32) #2

declare dso_local i32 @ssl_update_cache(%struct.TYPE_25__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
