; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_wrap_arcfour.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_wrap_arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32*, i32 }

@GSS_ARCFOUR_WRAP_TOKEN_SIZE = common dso_local global i64 0, align 8
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i32 0, align 4
@KRB5_KU_USAGE_SEAL = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_wrap_arcfour(i64* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_16__* %5, i32* %6, %struct.TYPE_16__* %7, %struct.TYPE_14__* %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca [16 x i32], align 16
  %21 = alloca [16 x i32], align 16
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_14__, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  store i64* %0, i64** %11, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %16, align 8
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_16__* %7, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %19, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %9
  %36 = load i32*, i32** %17, align 8
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %9
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %26, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %42 = call i64 @IS_DCE_STYLE(%struct.TYPE_15__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i64, i64* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 8
  store i64 %45, i64* %24, align 8
  %46 = load i64, i64* %24, align 8
  %47 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %48 = call i32 @_gssapi_encap_length(i64 %46, i64* %24, i64* %25, i32 %47)
  %49 = load i64, i64* %26, align 8
  %50 = load i64, i64* %25, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %25, align 8
  br label %61

52:                                               ; preds = %37
  %53 = load i64, i64* %26, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %26, align 8
  %55 = load i64, i64* %26, align 8
  %56 = load i64, i64* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 8
  %57 = add i64 %55, %56
  store i64 %57, i64* %24, align 8
  %58 = load i64, i64* %24, align 8
  %59 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %60 = call i32 @_gssapi_encap_length(i64 %58, i64* %24, i64* %25, i32 %59)
  br label %61

61:                                               ; preds = %52, %44
  %62 = load i64, i64* %25, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %25, align 8
  %66 = call i32* @malloc(i64 %65)
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i64, i64* @ENOMEM, align 8
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %76, i64* %10, align 8
  br label %318

77:                                               ; preds = %61
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %24, align 8
  %82 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %83 = call i32* @_gssapi_make_mech_header(i32* %80, i64 %81, i32 %82)
  store i32* %83, i32** %23, align 8
  %84 = load i32*, i32** %23, align 8
  store i32* %84, i32** %22, align 8
  %85 = load i32*, i32** %22, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %22, align 8
  store i32 2, i32* %85, align 4
  %87 = load i32*, i32** %22, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %22, align 8
  store i32 1, i32* %87, align 4
  %89 = load i32*, i32** %22, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %22, align 8
  store i32 17, i32* %89, align 4
  %91 = load i32*, i32** %22, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %22, align 8
  store i32 0, i32* %91, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %77
  %96 = load i32*, i32** %22, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %22, align 8
  store i32 16, i32* %96, align 4
  %98 = load i32*, i32** %22, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %22, align 8
  store i32 0, i32* %98, align 4
  br label %105

100:                                              ; preds = %77
  %101 = load i32*, i32** %22, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %22, align 8
  store i32 255, i32* %101, align 4
  %103 = load i32*, i32** %22, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %22, align 8
  store i32 255, i32* %103, align 4
  br label %105

105:                                              ; preds = %100, %95
  %106 = load i32*, i32** %22, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %22, align 8
  store i32 255, i32* %106, align 4
  %108 = load i32*, i32** %22, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %22, align 8
  store i32 255, i32* %108, align 4
  store i32* null, i32** %22, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = call i32 @HEIMDAL_MUTEX_lock(i32* %111)
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @krb5_auth_con_getlocalseqnumber(i32 %113, i32 %116, i32* %29)
  %118 = load i32, i32* %29, align 4
  %119 = load i32*, i32** %23, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 8
  %121 = call i32 @_gsskrb5_encode_be_om_uint32(i32 %118, i32* %120)
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %29, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %29, align 4
  %128 = call i32 @krb5_auth_con_setlocalseqnumber(i32 %122, i32 %125, i32 %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 1
  %131 = call i32 @HEIMDAL_MUTEX_unlock(i32* %130)
  %132 = load i32*, i32** %23, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @LOCAL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 0, i32 255
  %143 = call i32 @memset(i32* %134, i32 %142, i32 4)
  %144 = load i32*, i32** %23, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 24
  %146 = call i32 @krb5_generate_random_block(i32* %145, i32 8)
  %147 = load i32*, i32** %23, align 8
  %148 = load i64, i64* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32* %149, i32** %22, align 8
  %150 = load i32*, i32** %22, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @memcpy(i32* %150, i32* %153, i64 %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %159 = call i64 @IS_DCE_STYLE(%struct.TYPE_15__* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %105
  %162 = load i32*, i32** %22, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %161, %105
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %170 = load i32, i32* @KRB5_KU_USAGE_SEAL, align 4
  %171 = load i32*, i32** %23, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 16
  %173 = load i32*, i32** %23, align 8
  %174 = load i32*, i32** %23, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 24
  %176 = load i32*, i32** %23, align 8
  %177 = load i64, i64* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i64, i64* %26, align 8
  %180 = call i64 @arcfour_mic_cksum(i32 %168, %struct.TYPE_14__* %169, i32 %170, i32* %172, i32 8, i32* %173, i32 8, i32* %175, i32 8, i32* %178, i64 %179)
  store i64 %180, i64* %28, align 8
  %181 = load i64, i64* %28, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %167
  %184 = load i64, i64* %28, align 8
  %185 = load i64*, i64** %11, align 8
  store i64 %184, i64* %185, align 8
  %186 = load i64*, i64** %11, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %188 = call i32 @_gsskrb5_release_buffer(i64* %186, %struct.TYPE_16__* %187)
  %189 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %189, i64* %10, align 8
  br label %318

190:                                              ; preds = %167
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  store i32 %193, i32* %194, align 8
  %195 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  store i32* %195, i32** %197, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 1
  store i32 64, i32* %199, align 8
  store i32 0, i32* %30, align 4
  br label %200

200:                                              ; preds = %216, %190
  %201 = load i32, i32* %30, align 4
  %202 = icmp slt i32 %201, 16
  br i1 %202, label %203, label %219

203:                                              ; preds = %200
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %30, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = xor i32 %211, 240
  %213 = load i32, i32* %30, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 %214
  store i32 %212, i32* %215, align 4
  br label %216

216:                                              ; preds = %203
  %217 = load i32, i32* %30, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %30, align 4
  br label %200

219:                                              ; preds = %200
  %220 = load i32, i32* %13, align 4
  %221 = load i32*, i32** %23, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 8
  %223 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %224 = call i64 @arcfour_mic_key(i32 %220, %struct.TYPE_14__* %27, i32* %222, i32 4, i32* %223, i32 64)
  store i64 %224, i64* %28, align 8
  %225 = getelementptr inbounds [16 x i32], [16 x i32]* %20, i64 0, i64 0
  %226 = call i32 @memset(i32* %225, i32 0, i32 64)
  %227 = load i64, i64* %28, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %219
  %230 = load i64*, i64** %11, align 8
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %232 = call i32 @_gsskrb5_release_buffer(i64* %230, %struct.TYPE_16__* %231)
  %233 = load i64, i64* %28, align 8
  %234 = load i64*, i64** %11, align 8
  store i64 %233, i64* %234, align 8
  %235 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %235, i64* %10, align 8
  br label %318

236:                                              ; preds = %219
  %237 = load i32, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %266

239:                                              ; preds = %236
  %240 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %240, i32** %31, align 8
  %241 = load i32*, i32** %31, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %250

243:                                              ; preds = %239
  %244 = load i64*, i64** %11, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %246 = call i32 @_gsskrb5_release_buffer(i64* %244, %struct.TYPE_16__* %245)
  %247 = load i64, i64* @ENOMEM, align 8
  %248 = load i64*, i64** %11, align 8
  store i64 %247, i64* %248, align 8
  %249 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %249, i64* %10, align 8
  br label %318

250:                                              ; preds = %239
  %251 = load i32*, i32** %31, align 8
  %252 = call i32 (...) @EVP_rc4()
  %253 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %254 = call i32 @EVP_CipherInit_ex(i32* %251, i32 %252, i32* null, i32* %253, i32* null, i32 1)
  %255 = load i32*, i32** %31, align 8
  %256 = load i32*, i32** %23, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 24
  %258 = load i32*, i32** %23, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 24
  %260 = load i64, i64* %26, align 8
  %261 = add i64 8, %260
  %262 = trunc i64 %261 to i32
  %263 = call i32 @EVP_Cipher(i32* %255, i32* %257, i32* %259, i32 %262)
  %264 = load i32*, i32** %31, align 8
  %265 = call i32 @EVP_CIPHER_CTX_free(i32* %264)
  br label %266

266:                                              ; preds = %250, %236
  %267 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %268 = call i32 @memset(i32* %267, i32 0, i32 64)
  %269 = load i32, i32* %13, align 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %271 = load i32*, i32** %23, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 16
  %273 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %274 = call i64 @arcfour_mic_key(i32 %269, %struct.TYPE_14__* %270, i32* %272, i32 8, i32* %273, i32 64)
  store i64 %274, i64* %28, align 8
  %275 = load i64, i64* %28, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %284

277:                                              ; preds = %266
  %278 = load i64*, i64** %11, align 8
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %280 = call i32 @_gsskrb5_release_buffer(i64* %278, %struct.TYPE_16__* %279)
  %281 = load i64, i64* %28, align 8
  %282 = load i64*, i64** %11, align 8
  store i64 %281, i64* %282, align 8
  %283 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %283, i64* %10, align 8
  br label %318

284:                                              ; preds = %266
  %285 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %285, i32** %32, align 8
  %286 = load i32*, i32** %32, align 8
  %287 = icmp eq i32* %286, null
  br i1 %287, label %288, label %295

288:                                              ; preds = %284
  %289 = load i64*, i64** %11, align 8
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %291 = call i32 @_gsskrb5_release_buffer(i64* %289, %struct.TYPE_16__* %290)
  %292 = load i64, i64* @ENOMEM, align 8
  %293 = load i64*, i64** %11, align 8
  store i64 %292, i64* %293, align 8
  %294 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %294, i64* %10, align 8
  br label %318

295:                                              ; preds = %284
  %296 = load i32*, i32** %32, align 8
  %297 = call i32 (...) @EVP_rc4()
  %298 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %299 = call i32 @EVP_CipherInit_ex(i32* %296, i32 %297, i32* null, i32* %298, i32* null, i32 1)
  %300 = load i32*, i32** %32, align 8
  %301 = load i32*, i32** %23, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 8
  %303 = load i32*, i32** %23, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 8
  %305 = call i32 @EVP_Cipher(i32* %300, i32* %302, i32* %304, i32 8)
  %306 = load i32*, i32** %32, align 8
  %307 = call i32 @EVP_CIPHER_CTX_free(i32* %306)
  %308 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %309 = call i32 @memset(i32* %308, i32 0, i32 64)
  %310 = load i32*, i32** %17, align 8
  %311 = icmp ne i32* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %295
  %313 = load i32, i32* %14, align 4
  %314 = load i32*, i32** %17, align 8
  store i32 %313, i32* %314, align 4
  br label %315

315:                                              ; preds = %312, %295
  %316 = load i64*, i64** %11, align 8
  store i64 0, i64* %316, align 8
  %317 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %317, i64* %10, align 8
  br label %318

318:                                              ; preds = %315, %288, %277, %243, %229, %183, %73
  %319 = load i64, i64* %10, align 8
  ret i64 %319
}

declare dso_local i64 @IS_DCE_STYLE(%struct.TYPE_15__*) #1

declare dso_local i32 @_gssapi_encap_length(i64, i64*, i64*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @_gssapi_make_mech_header(i32*, i64, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @krb5_auth_con_getlocalseqnumber(i32, i32, i32*) #1

declare dso_local i32 @_gsskrb5_encode_be_om_uint32(i32, i32*) #1

declare dso_local i32 @krb5_auth_con_setlocalseqnumber(i32, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @krb5_generate_random_block(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @arcfour_mic_cksum(i32, %struct.TYPE_14__*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i64) #1

declare dso_local i32 @_gsskrb5_release_buffer(i64*, %struct.TYPE_16__*) #1

declare dso_local i64 @arcfour_mic_key(i32, %struct.TYPE_14__*, i32*, i32, i32*, i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_rc4(...) #1

declare dso_local i32 @EVP_Cipher(i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
