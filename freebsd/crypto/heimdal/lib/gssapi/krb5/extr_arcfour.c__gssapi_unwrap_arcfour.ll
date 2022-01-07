; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_unwrap_arcfour.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_arcfour.c__gssapi_unwrap_arcfour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { i32*, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32*, i32 }

@GSS_ARCFOUR_WRAP_TOKEN_SIZE = common dso_local global i32 0, align 4
@GSS_ARCFOUR_WRAP_TOKEN_DCE_DER_HEADER_SIZE = common dso_local global i32 0, align 4
@GSS_S_BAD_MECH = common dso_local global i64 0, align 8
@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\02\01\00", align 1
@GSS_S_BAD_SIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"\11\00\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\10\00\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\FF\FF\00", align 1
@GSS_S_BAD_MIC = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@LOCAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"\FF\FF\FF\FF\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@KRB5_KU_USAGE_SEAL = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_gssapi_unwrap_arcfour(i64* %0, %struct.TYPE_16__* %1, i32 %2, %struct.TYPE_17__* %3, %struct.TYPE_17__* %4, i32* %5, i64* %6, %struct.TYPE_15__* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca [16 x i32], align 16
  %19 = alloca %struct.TYPE_15__, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca [16 x i32], align 16
  %25 = alloca [8 x i32], align 16
  %26 = alloca [8 x i32], align 16
  %27 = alloca [8 x i32], align 16
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  store i64* %0, i64** %10, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store %struct.TYPE_15__* %7, %struct.TYPE_15__** %17, align 8
  store i64 0, i64* %32, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %8
  %40 = load i32*, i32** %15, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %8
  %42 = load i64*, i64** %16, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i64*, i64** %16, align 8
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %29, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %51 = call i64 @IS_DCE_STYLE(%struct.TYPE_16__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load i32, i32* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 4
  %55 = load i32, i32* @GSS_ARCFOUR_WRAP_TOKEN_DCE_DER_HEADER_SIZE, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %33, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %33, align 8
  %62 = icmp ult i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %64, i64* %9, align 8
  br label %390

65:                                               ; preds = %53
  br label %70

66:                                               ; preds = %46
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %33, align 8
  br label %70

70:                                               ; preds = %66, %65
  %71 = load i64, i64* %33, align 8
  %72 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %73 = call i64 @_gssapi_verify_mech_header(i32** %29, i64 %71, i32 %72)
  store i64 %73, i64* %23, align 8
  %74 = load i64, i64* %23, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i64, i64* %23, align 8
  store i64 %77, i64* %9, align 8
  br label %390

78:                                               ; preds = %70
  %79 = load i32*, i32** %29, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = ptrtoint i32* %79 to i64
  %84 = ptrtoint i32* %82 to i64
  %85 = sub i64 %83, %84
  %86 = sdiv exact i64 %85, 4
  %87 = load i32, i32* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  store i64 %89, i64* %33, align 8
  %90 = load i64, i64* %33, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ugt i64 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %78
  %96 = load i64, i64* @GSS_S_BAD_MECH, align 8
  store i64 %96, i64* %9, align 8
  br label %390

97:                                               ; preds = %78
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %33, align 8
  %102 = sub i64 %100, %101
  store i64 %102, i64* %22, align 8
  %103 = load i32*, i32** %29, align 8
  store i32* %103, i32** %28, align 8
  %104 = load i32*, i32** %28, align 8
  %105 = call i32 @memcmp(i32* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %108, i64* %9, align 8
  br label %390

109:                                              ; preds = %97
  %110 = load i32*, i32** %28, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32* %111, i32** %28, align 8
  %112 = load i32*, i32** %28, align 8
  %113 = call i32 @memcmp(i32* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %116, i64* %9, align 8
  br label %390

117:                                              ; preds = %109
  %118 = load i32*, i32** %28, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32* %119, i32** %28, align 8
  %120 = load i32*, i32** %28, align 8
  %121 = call i32 @memcmp(i32* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 1, i32* %31, align 4
  br label %132

124:                                              ; preds = %117
  %125 = load i32*, i32** %28, align 8
  %126 = call i32 @memcmp(i32* %125, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  store i32 0, i32* %31, align 4
  br label %131

129:                                              ; preds = %124
  %130 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %130, i64* %9, align 8
  br label %390

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %131, %123
  %133 = load i32*, i32** %28, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32* %134, i32** %28, align 8
  %135 = load i32*, i32** %28, align 8
  %136 = call i32 @memcmp(i32* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %139, i64* %9, align 8
  br label %390

140:                                              ; preds = %132
  store i32* null, i32** %28, align 8
  %141 = load i32, i32* %12, align 4
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %143 = load i32*, i32** %29, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 16
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %146 = call i64 @arcfour_mic_key(i32 %141, %struct.TYPE_15__* %142, i32* %144, i32 8, i32* %145, i32 64)
  store i64 %146, i64* %20, align 8
  %147 = load i64, i64* %20, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %140
  %150 = load i64, i64* %20, align 8
  %151 = load i64*, i64** %10, align 8
  store i64 %150, i64* %151, align 8
  %152 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %152, i64* %9, align 8
  br label %390

153:                                              ; preds = %140
  %154 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %154, i32** %34, align 8
  %155 = load i32*, i32** %34, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %153
  %158 = load i64, i64* @ENOMEM, align 8
  %159 = load i64*, i64** %10, align 8
  store i64 %158, i64* %159, align 8
  %160 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %160, i64* %9, align 8
  br label %390

161:                                              ; preds = %153
  %162 = load i32*, i32** %34, align 8
  %163 = call i32 (...) @EVP_rc4()
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %165 = call i32 @EVP_CipherInit_ex(i32* %162, i32 %163, i32* null, i32* %164, i32* null, i32 1)
  %166 = load i32*, i32** %34, align 8
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  %168 = load i32*, i32** %29, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 8
  %170 = call i32 @EVP_Cipher(i32* %166, i32* %167, i32* %169, i64 8)
  %171 = load i32*, i32** %34, align 8
  %172 = call i32 @EVP_CIPHER_CTX_free(i32* %171)
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %174 = call i32 @memset(i32* %173, i32 0, i32 64)
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  %176 = call i32 @_gsskrb5_decode_be_om_uint32(i32* %175, i32* %21)
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @LOCAL, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %161
  %184 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 4
  %185 = call i32 @memcmp(i32* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  store i32 %185, i32* %30, align 4
  br label %189

186:                                              ; preds = %161
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 4
  %188 = call i32 @memcmp(i32* %187, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  store i32 %188, i32* %30, align 4
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* %30, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i64*, i64** %10, align 8
  store i64 0, i64* %193, align 8
  %194 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %194, i64* %9, align 8
  br label %390

195:                                              ; preds = %189
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 1
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  store i32* %200, i32** %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  store i32 64, i32* %204, align 8
  store i32 0, i32* %35, align 4
  br label %205

205:                                              ; preds = %221, %195
  %206 = load i32, i32* %35, align 4
  %207 = icmp slt i32 %206, 16
  br i1 %207, label %208, label %224

208:                                              ; preds = %205
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %35, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = xor i32 %216, 240
  %218 = load i32, i32* %35, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 %219
  store i32 %217, i32* %220, align 4
  br label %221

221:                                              ; preds = %208
  %222 = load i32, i32* %35, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %35, align 4
  br label %205

224:                                              ; preds = %205
  %225 = load i32, i32* %12, align 4
  %226 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 0
  %227 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %228 = call i64 @arcfour_mic_key(i32 %225, %struct.TYPE_15__* %19, i32* %226, i32 4, i32* %227, i32 64)
  store i64 %228, i64* %20, align 8
  %229 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %230 = call i32 @memset(i32* %229, i32 0, i32 64)
  %231 = load i64, i64* %20, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %224
  %234 = load i64, i64* %20, align 8
  %235 = load i64*, i64** %10, align 8
  store i64 %234, i64* %235, align 8
  %236 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %236, i64* %9, align 8
  br label %390

237:                                              ; preds = %224
  %238 = load i64, i64* %22, align 8
  %239 = call i32* @malloc(i64 %238)
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 0
  store i32* %239, i32** %241, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %250

246:                                              ; preds = %237
  %247 = load i64, i64* @ENOMEM, align 8
  %248 = load i64*, i64** %10, align 8
  store i64 %247, i64* %248, align 8
  %249 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %249, i64* %9, align 8
  br label %390

250:                                              ; preds = %237
  %251 = load i64, i64* %22, align 8
  %252 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 1
  store i64 %251, i64* %253, align 8
  %254 = load i32, i32* %31, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %250
  %257 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %257, i32** %36, align 8
  %258 = load i32*, i32** %36, align 8
  %259 = icmp eq i32* %258, null
  br i1 %259, label %260, label %267

260:                                              ; preds = %256
  %261 = load i64*, i64** %10, align 8
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %263 = call i32 @_gsskrb5_release_buffer(i64* %261, %struct.TYPE_17__* %262)
  %264 = load i64, i64* @ENOMEM, align 8
  %265 = load i64*, i64** %10, align 8
  store i64 %264, i64* %265, align 8
  %266 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %266, i64* %9, align 8
  br label %390

267:                                              ; preds = %256
  %268 = load i32*, i32** %36, align 8
  %269 = call i32 (...) @EVP_rc4()
  %270 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %271 = call i32 @EVP_CipherInit_ex(i32* %268, i32 %269, i32* null, i32* %270, i32* null, i32 1)
  %272 = load i32*, i32** %36, align 8
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 0
  %274 = load i32*, i32** %29, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 24
  %276 = call i32 @EVP_Cipher(i32* %272, i32* %273, i32* %275, i64 8)
  %277 = load i32*, i32** %36, align 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load i32*, i32** %279, align 8
  %281 = load i32*, i32** %29, align 8
  %282 = load i32, i32* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i64, i64* %22, align 8
  %286 = call i32 @EVP_Cipher(i32* %277, i32* %280, i32* %284, i64 %285)
  %287 = load i32*, i32** %36, align 8
  %288 = call i32 @EVP_CIPHER_CTX_free(i32* %287)
  br label %303

289:                                              ; preds = %250
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 0
  %291 = load i32*, i32** %29, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 24
  %293 = call i32 @memcpy(i32* %290, i32* %292, i64 8)
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i32*, i32** %29, align 8
  %298 = load i32, i32* @GSS_ARCFOUR_WRAP_TOKEN_SIZE, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  %301 = load i64, i64* %22, align 8
  %302 = call i32 @memcpy(i32* %296, i32* %300, i64 %301)
  br label %303

303:                                              ; preds = %289, %267
  %304 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %305 = call i32 @memset(i32* %304, i32 0, i32 64)
  %306 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %307 = call i64 @IS_DCE_STYLE(%struct.TYPE_16__* %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %327, label %309

309:                                              ; preds = %303
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %311 = load i64, i64* %22, align 8
  %312 = call i64 @_gssapi_verify_pad(%struct.TYPE_17__* %310, i64 %311, i64* %32)
  store i64 %312, i64* %20, align 8
  %313 = load i64, i64* %20, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %309
  %316 = load i64*, i64** %10, align 8
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %318 = call i32 @_gsskrb5_release_buffer(i64* %316, %struct.TYPE_17__* %317)
  %319 = load i64*, i64** %10, align 8
  store i64 0, i64* %319, align 8
  %320 = load i64, i64* %20, align 8
  store i64 %320, i64* %9, align 8
  br label %390

321:                                              ; preds = %309
  %322 = load i64, i64* %32, align 8
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = sub i64 %325, %322
  store i64 %326, i64* %324, align 8
  br label %327

327:                                              ; preds = %321, %303
  %328 = load i32, i32* %12, align 4
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %330 = load i32, i32* @KRB5_KU_USAGE_SEAL, align 4
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i64 0, i64 0
  %332 = load i32*, i32** %29, align 8
  %333 = getelementptr inbounds [8 x i32], [8 x i32]* %26, i64 0, i64 0
  %334 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %335 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 1
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* %32, align 8
  %341 = add i64 %339, %340
  %342 = call i64 @arcfour_mic_cksum(i32 %328, %struct.TYPE_15__* %329, i32 %330, i32* %331, i32 32, i32* %332, i32 8, i32* %333, i32 32, i32* %336, i64 %341)
  store i64 %342, i64* %20, align 8
  %343 = load i64, i64* %20, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %352

345:                                              ; preds = %327
  %346 = load i64*, i64** %10, align 8
  %347 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %348 = call i32 @_gsskrb5_release_buffer(i64* %346, %struct.TYPE_17__* %347)
  %349 = load i64, i64* %20, align 8
  %350 = load i64*, i64** %10, align 8
  store i64 %349, i64* %350, align 8
  %351 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %351, i64* %9, align 8
  br label %390

352:                                              ; preds = %327
  %353 = getelementptr inbounds [8 x i32], [8 x i32]* %27, i64 0, i64 0
  %354 = load i32*, i32** %29, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 16
  %356 = call i32 @ct_memcmp(i32* %353, i32* %355, i32 8)
  store i32 %356, i32* %30, align 4
  %357 = load i32, i32* %30, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %352
  %360 = load i64*, i64** %10, align 8
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %362 = call i32 @_gsskrb5_release_buffer(i64* %360, %struct.TYPE_17__* %361)
  %363 = load i64*, i64** %10, align 8
  store i64 0, i64* %363, align 8
  %364 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %364, i64* %9, align 8
  br label %390

365:                                              ; preds = %352
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %367 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %366, i32 0, i32 1
  %368 = call i32 @HEIMDAL_MUTEX_lock(i32* %367)
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %21, align 4
  %373 = call i64 @_gssapi_msg_order_check(i32 %371, i32 %372)
  store i64 %373, i64* %23, align 8
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 1
  %376 = call i32 @HEIMDAL_MUTEX_unlock(i32* %375)
  %377 = load i64, i64* %23, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %381

379:                                              ; preds = %365
  %380 = load i64, i64* %23, align 8
  store i64 %380, i64* %9, align 8
  br label %390

381:                                              ; preds = %365
  %382 = load i32*, i32** %15, align 8
  %383 = icmp ne i32* %382, null
  br i1 %383, label %384, label %387

384:                                              ; preds = %381
  %385 = load i32, i32* %31, align 4
  %386 = load i32*, i32** %15, align 8
  store i32 %385, i32* %386, align 4
  br label %387

387:                                              ; preds = %384, %381
  %388 = load i64*, i64** %10, align 8
  store i64 0, i64* %388, align 8
  %389 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %389, i64* %9, align 8
  br label %390

390:                                              ; preds = %387, %379, %359, %345, %315, %260, %246, %233, %192, %157, %149, %138, %129, %115, %107, %95, %76, %63
  %391 = load i64, i64* %9, align 8
  ret i64 %391
}

declare dso_local i64 @IS_DCE_STYLE(%struct.TYPE_16__*) #1

declare dso_local i64 @_gssapi_verify_mech_header(i32**, i64, i32) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @arcfour_mic_key(i32, %struct.TYPE_15__*, i32*, i32, i32*, i32) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @EVP_rc4(...) #1

declare dso_local i32 @EVP_Cipher(i32*, i32*, i32*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @_gsskrb5_decode_be_om_uint32(i32*, i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @_gsskrb5_release_buffer(i64*, %struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @_gssapi_verify_pad(%struct.TYPE_17__*, i64, i64*) #1

declare dso_local i64 @arcfour_mic_cksum(i32, %struct.TYPE_15__*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i64) #1

declare dso_local i32 @ct_memcmp(i32*, i32*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i64 @_gssapi_msg_order_check(i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
