; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_verify_mic.c_verify_mic_des3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_verify_mic.c_verify_mic_des3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32* }

@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\04\00\00", align 1
@GSS_S_BAD_SIG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"\FF\FF\FF\FF\00", align 1
@GSS_S_BAD_MIC = common dso_local global i64 0, align 8
@ETYPE_DES3_CBC_NONE = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@KRB5_KU_USAGE_SEQ = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i64 0, align 8
@CKSUMTYPE_HMAC_SHA1_DES3 = common dso_local global i32 0, align 4
@ETYPE_DES3_CBC_SHA1 = common dso_local global i32 0, align 4
@KRB5_KU_USAGE_SIGN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, %struct.TYPE_15__*, i32*, i32*, i8*)* @verify_mic_des3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @verify_mic_des3(i64* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_15__* %3, %struct.TYPE_15__* %4, i32* %5, i32* %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_13__, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_16__, align 8
  %27 = alloca i8*, align 8
  %28 = alloca [8 x i8], align 1
  store i64* %0, i64** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %18, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i8*, i8** %17, align 8
  %36 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %37 = call i64 @_gsskrb5_verify_header(i32** %18, i32 %34, i8* %35, i32 %36)
  store i64 %37, i64* %21, align 8
  %38 = load i64, i64* %21, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %8
  %41 = load i64, i64* %21, align 8
  store i64 %41, i64* %9, align 8
  br label %254

42:                                               ; preds = %8
  %43 = load i32*, i32** %18, align 8
  %44 = call i64 @memcmp(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i64, i64* @GSS_S_BAD_SIG, align 8
  store i64 %47, i64* %9, align 8
  br label %254

48:                                               ; preds = %42
  %49 = load i32*, i32** %18, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32* %50, i32** %18, align 8
  %51 = load i32*, i32** %18, align 8
  %52 = call i64 @memcmp(i32* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %55, i64* %9, align 8
  br label %254

56:                                               ; preds = %48
  %57 = load i32*, i32** %18, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32* %58, i32** %18, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* @ETYPE_DES3_CBC_NONE, align 4
  %62 = call i64 @krb5_crypto_init(i32 %59, i32* %60, i32 %61, i32* %22)
  store i64 %62, i64* %21, align 8
  %63 = load i64, i64* %21, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i64, i64* %21, align 8
  %67 = load i64*, i64** %10, align 8
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %68, i64* %9, align 8
  br label %254

69:                                               ; preds = %56
  store i32 0, i32* %25, align 4
  br label %70

70:                                               ; preds = %116, %101, %69
  %71 = load i32, i32* %25, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 0
  %75 = call i32 @memset(i8* %74, i32 0, i32 8)
  br label %81

76:                                               ; preds = %70
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 0
  %78 = load i32*, i32** %18, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 8
  %80 = call i32 @memcpy(i8* %77, i32* %79, i32 8)
  br label %81

81:                                               ; preds = %76, %73
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* @KRB5_KU_USAGE_SEQ, align 4
  %85 = load i32*, i32** %18, align 8
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %28, i64 0, i64 0
  %87 = call i64 @krb5_decrypt_ivec(i32 %82, i32 %83, i32 %84, i32* %85, i32 8, %struct.TYPE_13__* %23, i8* %86)
  store i64 %87, i64* %21, align 8
  %88 = load i64, i64* %21, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %81
  %91 = load i32, i32* %25, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %25, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %22, align 4
  %97 = call i32 @krb5_crypto_destroy(i32 %95, i32 %96)
  %98 = load i64, i64* %21, align 8
  %99 = load i64*, i64** %10, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %100, i64* %9, align 8
  br label %254

101:                                              ; preds = %90
  br label %70

102:                                              ; preds = %81
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 8
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = call i32 @krb5_data_free(%struct.TYPE_13__* %23)
  %108 = load i32, i32* %25, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %25, align 4
  %110 = icmp ne i32 %108, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %22, align 4
  %114 = call i32 @krb5_crypto_destroy(i32 %112, i32 %113)
  %115 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %115, i64* %9, align 8
  br label %254

116:                                              ; preds = %106
  br label %70

117:                                              ; preds = %102
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 1
  %120 = call i32 @HEIMDAL_MUTEX_lock(i32* %119)
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %19, align 8
  %123 = load i32*, i32** %19, align 8
  %124 = call i32 @_gsskrb5_decode_om_uint32(i32* %123, i32* %20)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @LOCAL, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %117
  %132 = load i32*, i32** %19, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  %134 = call i32 @ct_memcmp(i32* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %134, i32* %24, align 4
  br label %139

135:                                              ; preds = %117
  %136 = load i32*, i32** %19, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 4
  %138 = call i32 @ct_memcmp(i32* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32 %138, i32* %24, align 4
  br label %139

139:                                              ; preds = %135, %131
  %140 = call i32 @krb5_data_free(%struct.TYPE_13__* %23)
  %141 = load i32, i32* %24, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %139
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %22, align 4
  %146 = call i32 @krb5_crypto_destroy(i32 %144, i32 %145)
  %147 = load i64*, i64** %10, align 8
  store i64 0, i64* %147, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = call i32 @HEIMDAL_MUTEX_unlock(i32* %149)
  %151 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %151, i64* %9, align 8
  br label %254

152:                                              ; preds = %139
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %20, align 4
  %157 = call i64 @_gssapi_msg_order_check(i32 %155, i32 %156)
  store i64 %157, i64* %21, align 8
  %158 = load i64, i64* %21, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %152
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %22, align 4
  %163 = call i32 @krb5_crypto_destroy(i32 %161, i32 %162)
  %164 = load i64*, i64** %10, align 8
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = call i32 @HEIMDAL_MUTEX_unlock(i32* %166)
  %168 = load i64, i64* %21, align 8
  store i64 %168, i64* %9, align 8
  br label %254

169:                                              ; preds = %152
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 8
  %174 = call i8* @malloc(i32 %173)
  store i8* %174, i8** %27, align 8
  %175 = load i8*, i8** %27, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %169
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %22, align 4
  %180 = call i32 @krb5_crypto_destroy(i32 %178, i32 %179)
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  %183 = call i32 @HEIMDAL_MUTEX_unlock(i32* %182)
  %184 = load i64, i64* @ENOMEM, align 8
  %185 = load i64*, i64** %10, align 8
  store i64 %184, i64* %185, align 8
  %186 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %186, i64* %9, align 8
  br label %254

187:                                              ; preds = %169
  %188 = load i8*, i8** %27, align 8
  %189 = load i32*, i32** %18, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 -8
  %191 = call i32 @memcpy(i8* %188, i32* %190, i32 8)
  %192 = load i8*, i8** %27, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @memcpy(i8* %193, i32* %196, i32 %199)
  %201 = load i32, i32* @CKSUMTYPE_HMAC_SHA1_DES3, align 4
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i32 %201, i32* %202, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  store i32 20, i32* %204, align 8
  %205 = load i32*, i32** %18, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  store i32* %206, i32** %208, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %22, align 4
  %211 = call i32 @krb5_crypto_destroy(i32 %209, i32 %210)
  %212 = load i32, i32* %12, align 4
  %213 = load i32*, i32** %16, align 8
  %214 = load i32, i32* @ETYPE_DES3_CBC_SHA1, align 4
  %215 = call i64 @krb5_crypto_init(i32 %212, i32* %213, i32 %214, i32* %22)
  store i64 %215, i64* %21, align 8
  %216 = load i64, i64* %21, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %187
  %219 = load i64, i64* %21, align 8
  %220 = load i64*, i64** %10, align 8
  store i64 %219, i64* %220, align 8
  %221 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %221, i64* %9, align 8
  br label %254

222:                                              ; preds = %187
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* %22, align 4
  %225 = load i32, i32* @KRB5_KU_USAGE_SIGN, align 4
  %226 = load i8*, i8** %27, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = add nsw i32 %229, 8
  %231 = call i64 @krb5_verify_checksum(i32 %223, i32 %224, i32 %225, i8* %226, i32 %230, %struct.TYPE_16__* %26)
  store i64 %231, i64* %21, align 8
  %232 = load i8*, i8** %27, align 8
  %233 = call i32 @free(i8* %232)
  %234 = load i64, i64* %21, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %222
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* %22, align 4
  %239 = call i32 @krb5_crypto_destroy(i32 %237, i32 %238)
  %240 = load i64, i64* %21, align 8
  %241 = load i64*, i64** %10, align 8
  store i64 %240, i64* %241, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = call i32 @HEIMDAL_MUTEX_unlock(i32* %243)
  %245 = load i64, i64* @GSS_S_BAD_MIC, align 8
  store i64 %245, i64* %9, align 8
  br label %254

246:                                              ; preds = %222
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = call i32 @HEIMDAL_MUTEX_unlock(i32* %248)
  %250 = load i32, i32* %12, align 4
  %251 = load i32, i32* %22, align 4
  %252 = call i32 @krb5_crypto_destroy(i32 %250, i32 %251)
  %253 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %253, i64* %9, align 8
  br label %254

254:                                              ; preds = %246, %236, %218, %177, %160, %143, %111, %94, %65, %54, %46, %40
  %255 = load i64, i64* %9, align 8
  ret i64 %255
}

declare dso_local i64 @_gsskrb5_verify_header(i32**, i32, i8*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i64 @krb5_decrypt_ivec(i32, i32, i32, i32*, i32, %struct.TYPE_13__*, i8*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_13__*) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @_gsskrb5_decode_om_uint32(i32*, i32*) #1

declare dso_local i32 @ct_memcmp(i32*, i8*, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i64 @_gssapi_msg_order_check(i32, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @krb5_verify_checksum(i32, i32, i32, i8*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
