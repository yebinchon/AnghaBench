; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_unwrap.c_unwrap_des3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_unwrap.c_unwrap_des3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_16__ = type { i64, i32* }
%struct.TYPE_19__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@.str = private unnamed_addr constant [3 x i8] c"\02\01\00", align 1
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"\04\00\00", align 1
@GSS_S_BAD_SIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\02\00\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\FF\FF\00", align 1
@GSS_S_BAD_MIC = common dso_local global i64 0, align 8
@GSS_S_DEFECTIVE_TOKEN = common dso_local global i64 0, align 8
@ETYPE_DES3_CBC_NONE = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@KRB5_KU_USAGE_SEAL = common dso_local global i32 0, align 4
@KRB5_KU_USAGE_SEQ = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\FF\FF\FF\FF\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@CKSUMTYPE_HMAC_SHA1_DES3 = common dso_local global i32 0, align 4
@KRB5_KU_USAGE_SIGN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*, %struct.TYPE_18__*, i32*, i32*, i32*)* @unwrap_des3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unwrap_des3(i64* %0, %struct.TYPE_17__* %1, i32 %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_16__, align 8
  %22 = alloca [20 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_19__, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_16__, align 8
  %32 = alloca i32, align 4
  store i64* %0, i64** %10, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = call i64 @IS_DCE_STYLE(%struct.TYPE_17__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %8
  store i32 57, i32* %30, align 4
  br label %41

37:                                               ; preds = %8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %30, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %18, align 8
  %45 = load i32, i32* %30, align 4
  %46 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %47 = call i64 @_gsskrb5_verify_header(i32** %18, i32 %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i64 %47, i64* %25, align 8
  %48 = load i64, i64* %25, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i64, i64* %25, align 8
  store i64 %51, i64* %9, align 8
  br label %361

52:                                               ; preds = %41
  %53 = load i32*, i32** %18, align 8
  %54 = call i64 @memcmp(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %57, i64* %9, align 8
  br label %361

58:                                               ; preds = %52
  %59 = load i32*, i32** %18, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32* %60, i32** %18, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = call i32 @ct_memcmp(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %26, align 4
  br label %73

65:                                               ; preds = %58
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @ct_memcmp(i32* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 0, i32* %26, align 4
  br label %72

70:                                               ; preds = %65
  %71 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %71, i64* %9, align 8
  br label %361

72:                                               ; preds = %69
  br label %73

73:                                               ; preds = %72, %64
  %74 = load i32*, i32** %18, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32* %75, i32** %18, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %26, align 4
  %80 = load i32*, i32** %15, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32*, i32** %18, align 8
  %83 = call i32 @ct_memcmp(i32* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @GSS_S_DEFECTIVE_TOKEN, align 8
  store i64 %86, i64* %9, align 8
  br label %361

87:                                               ; preds = %81
  %88 = load i32*, i32** %18, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  store i32* %89, i32** %18, align 8
  %90 = load i32*, i32** %18, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 28
  store i32* %91, i32** %18, align 8
  %92 = load i32*, i32** %18, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = ptrtoint i32* %92 to i64
  %97 = ptrtoint i32* %95 to i64
  %98 = sub i64 %96, %97
  %99 = sdiv exact i64 %98, 4
  store i64 %99, i64* %19, align 8
  %100 = load i32, i32* %26, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %154

102:                                              ; preds = %87
  %103 = load i32, i32* %12, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* @ETYPE_DES3_CBC_NONE, align 4
  %106 = call i64 @krb5_crypto_init(i32 %103, i32* %104, i32 %105, i32* %27)
  store i64 %106, i64* %25, align 8
  %107 = load i64, i64* %25, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i64, i64* %25, align 8
  %111 = load i64*, i64** %10, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %112, i64* %9, align 8
  br label %361

113:                                              ; preds = %102
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %27, align 4
  %116 = load i32, i32* @KRB5_KU_USAGE_SEAL, align 4
  %117 = load i32*, i32** %18, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %19, align 8
  %123 = sub i64 %121, %122
  %124 = call i64 @krb5_decrypt(i32 %114, i32 %115, i32 %116, i32* %117, i64 %123, %struct.TYPE_16__* %31)
  store i64 %124, i64* %25, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %27, align 4
  %127 = call i32 @krb5_crypto_destroy(i32 %125, i32 %126)
  %128 = load i64, i64* %25, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %113
  %131 = load i64, i64* %25, align 8
  %132 = load i64*, i64** %10, align 8
  store i64 %131, i64* %132, align 8
  %133 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %133, i64* %9, align 8
  br label %361

134:                                              ; preds = %113
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %19, align 8
  %142 = sub i64 %140, %141
  %143 = icmp eq i64 %136, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load i32*, i32** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(i32* %146, i32* %148, i32 %151)
  %153 = call i32 @krb5_data_free(%struct.TYPE_16__* %31)
  br label %154

154:                                              ; preds = %134, %87
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %156 = call i64 @IS_DCE_STYLE(%struct.TYPE_17__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i64 0, i64* %24, align 8
  br label %173

159:                                              ; preds = %154
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = load i64, i64* %19, align 8
  %166 = sub i64 %164, %165
  %167 = call i64 @_gssapi_verify_pad(%struct.TYPE_18__* %160, i64 %166, i64* %24)
  store i64 %167, i64* %25, align 8
  %168 = load i64, i64* %25, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %159
  %171 = load i64, i64* %25, align 8
  store i64 %171, i64* %9, align 8
  br label %361

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %158
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = call i32 @HEIMDAL_MUTEX_lock(i32* %175)
  %177 = load i32*, i32** %18, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 -28
  store i32* %178, i32** %18, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32*, i32** %17, align 8
  %181 = load i32, i32* @ETYPE_DES3_CBC_NONE, align 4
  %182 = call i64 @krb5_crypto_init(i32 %179, i32* %180, i32 %181, i32* %27)
  store i64 %182, i64* %25, align 8
  %183 = load i64, i64* %25, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %173
  %186 = load i64, i64* %25, align 8
  %187 = load i64*, i64** %10, align 8
  store i64 %186, i64* %187, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = call i32 @HEIMDAL_MUTEX_unlock(i32* %189)
  %191 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %191, i64* %9, align 8
  br label %361

192:                                              ; preds = %173
  %193 = load i32*, i32** %18, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 8
  %195 = call i32 @memcpy(i32* %32, i32* %194, i32 8)
  %196 = load i32, i32* %12, align 4
  %197 = load i32, i32* %27, align 4
  %198 = load i32, i32* @KRB5_KU_USAGE_SEQ, align 4
  %199 = load i32*, i32** %18, align 8
  %200 = call i64 @krb5_decrypt_ivec(i32 %196, i32 %197, i32 %198, i32* %199, i32 8, %struct.TYPE_16__* %21, i32* %32)
  store i64 %200, i64* %25, align 8
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %27, align 4
  %203 = call i32 @krb5_crypto_destroy(i32 %201, i32 %202)
  %204 = load i64, i64* %25, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %192
  %207 = load i64, i64* %25, align 8
  %208 = load i64*, i64** %10, align 8
  store i64 %207, i64* %208, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = call i32 @HEIMDAL_MUTEX_unlock(i32* %210)
  %212 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %212, i64* %9, align 8
  br label %361

213:                                              ; preds = %192
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 8
  br i1 %216, label %217, label %224

217:                                              ; preds = %213
  %218 = call i32 @krb5_data_free(%struct.TYPE_16__* %21)
  %219 = load i64*, i64** %10, align 8
  store i64 0, i64* %219, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = call i32 @HEIMDAL_MUTEX_unlock(i32* %221)
  %223 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %223, i64* %9, align 8
  br label %361

224:                                              ; preds = %213
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** %20, align 8
  %227 = load i32*, i32** %20, align 8
  %228 = call i32 @_gsskrb5_decode_om_uint32(i32* %227, i32* %23)
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @LOCAL, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %224
  %236 = load i32*, i32** %20, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  %238 = call i32 @ct_memcmp(i32* %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32 %238, i32* %29, align 4
  br label %243

239:                                              ; preds = %224
  %240 = load i32*, i32** %20, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 4
  %242 = call i32 @ct_memcmp(i32* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  store i32 %242, i32* %29, align 4
  br label %243

243:                                              ; preds = %239, %235
  %244 = call i32 @krb5_data_free(%struct.TYPE_16__* %21)
  %245 = load i32, i32* %29, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %243
  %248 = load i64*, i64** %10, align 8
  store i64 0, i64* %248, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 1
  %251 = call i32 @HEIMDAL_MUTEX_unlock(i32* %250)
  %252 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %252, i64* %9, align 8
  br label %361

253:                                              ; preds = %243
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %23, align 4
  %258 = call i64 @_gssapi_msg_order_check(i32 %256, i32 %257)
  store i64 %258, i64* %25, align 8
  %259 = load i64, i64* %25, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %253
  %262 = load i64*, i64** %10, align 8
  store i64 0, i64* %262, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 1
  %265 = call i32 @HEIMDAL_MUTEX_unlock(i32* %264)
  %266 = load i64, i64* %25, align 8
  store i64 %266, i64* %9, align 8
  br label %361

267:                                              ; preds = %253
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 1
  %270 = call i32 @HEIMDAL_MUTEX_unlock(i32* %269)
  %271 = getelementptr inbounds [20 x i32], [20 x i32]* %22, i64 0, i64 0
  %272 = load i32*, i32** %18, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 8
  %274 = call i32 @memcpy(i32* %271, i32* %273, i32 20)
  %275 = load i32*, i32** %18, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 20
  %277 = load i32*, i32** %18, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 -8
  %279 = call i32 @memcpy(i32* %276, i32* %278, i32 8)
  %280 = load i32, i32* @CKSUMTYPE_HMAC_SHA1_DES3, align 4
  %281 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  store i32 %280, i32* %281, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %282, i32 0, i32 0
  store i32 20, i32* %283, align 8
  %284 = getelementptr inbounds [20 x i32], [20 x i32]* %22, i64 0, i64 0
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 1
  store i32* %284, i32** %286, align 8
  %287 = load i32, i32* %12, align 4
  %288 = load i32*, i32** %17, align 8
  %289 = call i64 @krb5_crypto_init(i32 %287, i32* %288, i32 0, i32* %27)
  store i64 %289, i64* %25, align 8
  %290 = load i64, i64* %25, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %267
  %293 = load i64, i64* %25, align 8
  %294 = load i64*, i64** %10, align 8
  store i64 %293, i64* %294, align 8
  %295 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %295, i64* %9, align 8
  br label %361

296:                                              ; preds = %267
  %297 = load i32, i32* %12, align 4
  %298 = load i32, i32* %27, align 4
  %299 = load i32, i32* @KRB5_KU_USAGE_SIGN, align 4
  %300 = load i32*, i32** %18, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 20
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* %19, align 8
  %307 = sub i64 %305, %306
  %308 = add i64 %307, 8
  %309 = call i64 @krb5_verify_checksum(i32 %297, i32 %298, i32 %299, i32* %301, i64 %308, %struct.TYPE_19__* %28)
  store i64 %309, i64* %25, align 8
  %310 = load i32, i32* %12, align 4
  %311 = load i32, i32* %27, align 4
  %312 = call i32 @krb5_crypto_destroy(i32 %310, i32 %311)
  %313 = load i64, i64* %25, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %296
  %316 = load i64, i64* %25, align 8
  %317 = load i64*, i64** %10, align 8
  store i64 %316, i64* %317, align 8
  %318 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %318, i64* %9, align 8
  br label %361

319:                                              ; preds = %296
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* %19, align 8
  %325 = sub i64 %323, %324
  %326 = load i64, i64* %24, align 8
  %327 = sub i64 %325, %326
  %328 = sub i64 %327, 8
  %329 = trunc i64 %328 to i32
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %333 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = sext i32 %334 to i64
  %336 = call i32* @malloc(i64 %335)
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 1
  store i32* %336, i32** %338, align 8
  %339 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %340 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %350

343:                                              ; preds = %319
  %344 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %345 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = icmp eq i32* %346, null
  br i1 %347, label %348, label %350

348:                                              ; preds = %343
  %349 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %349, i64* %9, align 8
  br label %361

350:                                              ; preds = %343, %319
  %351 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = load i32*, i32** %18, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 36
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @memcpy(i32* %353, i32* %355, i32 %358)
  %360 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %360, i64* %9, align 8
  br label %361

361:                                              ; preds = %350, %348, %315, %292, %261, %247, %217, %206, %185, %170, %130, %109, %85, %70, %56, %50
  %362 = load i64, i64* %9, align 8
  ret i64 %362
}

declare dso_local i64 @IS_DCE_STYLE(%struct.TYPE_17__*) #1

declare dso_local i64 @_gsskrb5_verify_header(i32**, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @ct_memcmp(i32*, i8*, i32) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_decrypt(i32, i32, i32, i32*, i64, %struct.TYPE_16__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_16__*) #1

declare dso_local i64 @_gssapi_verify_pad(%struct.TYPE_18__*, i64, i64*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i64 @krb5_decrypt_ivec(i32, i32, i32, i32*, i32, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @_gsskrb5_decode_om_uint32(i32*, i32*) #1

declare dso_local i64 @_gssapi_msg_order_check(i32, i32) #1

declare dso_local i64 @krb5_verify_checksum(i32, i32, i32, i32*, i64, %struct.TYPE_19__*) #1

declare dso_local i32* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
