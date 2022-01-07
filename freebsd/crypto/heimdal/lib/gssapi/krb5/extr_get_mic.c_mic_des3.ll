; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_get_mic.c_mic_des3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_get_mic.c_mic_des3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i8* }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_14__ = type { i32, i8* }

@GSS_KRB5_MECHANISM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@GSS_S_FAILURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\04\00\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"\FF\FF\FF\FF\00", align 1
@KRB5_KU_USAGE_SIGN = common dso_local global i32 0, align 4
@LOCAL = common dso_local global i32 0, align 4
@ETYPE_DES3_CBC_NONE = common dso_local global i32 0, align 4
@COMPAT_OLD_DES3 = common dso_local global i32 0, align 4
@KRB5_KU_USAGE_SEQ = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, %struct.TYPE_15__*, i32, i32, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*)* @mic_des3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mic_des3(i64* %0, %struct.TYPE_15__* %1, i32 %2, i32 %3, %struct.TYPE_16__* %4, %struct.TYPE_16__* %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_17__, align 8
  %18 = alloca [8 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_14__, align 8
  %25 = alloca i8*, align 8
  %26 = alloca [8 x i8], align 1
  store i64* %0, i64** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %5, %struct.TYPE_16__** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %28 = call i32 @_gsskrb5_encap_length(i32 36, i64* %20, i64* %21, i32 %27)
  %29 = load i64, i64* %21, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64, i64* %21, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i8* @malloc(i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %7
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = load i64*, i64** %9, align 8
  store i64 %44, i64* %45, align 8
  %46 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %46, i64* %8, align 8
  br label %278

47:                                               ; preds = %7
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i64, i64* %20, align 8
  %52 = load i32, i32* @GSS_KRB5_MECHANISM, align 4
  %53 = call i8* @_gsskrb5_make_header(i8* %50, i64 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i8* %53, i8** %16, align 8
  %54 = load i8*, i8** %16, align 8
  %55 = call i32 @memcpy(i8* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %56 = load i8*, i8** %16, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  store i8* %57, i8** %16, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @memcpy(i8* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %60 = load i8*, i8** %16, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %16, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i8* @malloc(i32 %66)
  store i8* %67, i8** %25, align 8
  %68 = load i8*, i8** %25, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %47
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  store i8* null, i8** %76, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load i64, i64* @ENOMEM, align 8
  %80 = load i64*, i64** %9, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %81, i64* %8, align 8
  br label %278

82:                                               ; preds = %47
  %83 = load i8*, i8** %25, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 -8
  %86 = call i32 @memcpy(i8* %83, i8* %85, i32 8)
  %87 = load i8*, i8** %25, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 8
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @memcpy(i8* %88, i8* %91, i32 %95)
  %97 = load i32, i32* %11, align 4
  %98 = load i32*, i32** %15, align 8
  %99 = call i64 @krb5_crypto_init(i32 %97, i32* %98, i32 0, i32* %22)
  store i64 %99, i64* %23, align 8
  %100 = load i64, i64* %23, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %82
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 1
  store i8* null, i8** %108, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load i8*, i8** %25, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i64, i64* %23, align 8
  %114 = load i64*, i64** %9, align 8
  store i64 %113, i64* %114, align 8
  %115 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %115, i64* %8, align 8
  br label %278

116:                                              ; preds = %82
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %22, align 4
  %119 = load i32, i32* @KRB5_KU_USAGE_SIGN, align 4
  %120 = load i8*, i8** %25, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %123, 8
  %125 = trunc i64 %124 to i32
  %126 = call i64 @krb5_create_checksum(i32 %117, i32 %118, i32 %119, i32 0, i8* %120, i32 %125, %struct.TYPE_17__* %17)
  store i64 %126, i64* %23, align 8
  %127 = load i8*, i8** %25, align 8
  %128 = call i32 @free(i8* %127)
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %22, align 4
  %131 = call i32 @krb5_crypto_destroy(i32 %129, i32 %130)
  %132 = load i64, i64* %23, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %116
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 @free(i8* %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i8* null, i8** %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load i64, i64* %23, align 8
  %144 = load i64*, i64** %9, align 8
  store i64 %143, i64* %144, align 8
  %145 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %145, i64* %8, align 8
  br label %278

146:                                              ; preds = %116
  %147 = load i8*, i8** %16, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @memcpy(i8* %148, i8* %151, i32 %154)
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = call i32 @HEIMDAL_MUTEX_lock(i32* %157)
  %159 = load i32, i32* %11, align 4
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @krb5_auth_con_getlocalseqnumber(i32 %159, i32 %162, i32* %19)
  %164 = load i32, i32* %19, align 4
  %165 = ashr i32 %164, 0
  %166 = and i32 %165, 255
  %167 = trunc i32 %166 to i8
  %168 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  store i8 %167, i8* %168, align 1
  %169 = load i32, i32* %19, align 4
  %170 = ashr i32 %169, 8
  %171 = and i32 %170, 255
  %172 = trunc i32 %171 to i8
  %173 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 1
  store i8 %172, i8* %173, align 1
  %174 = load i32, i32* %19, align 4
  %175 = ashr i32 %174, 16
  %176 = and i32 %175, 255
  %177 = trunc i32 %176 to i8
  %178 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 2
  store i8 %177, i8* %178, align 1
  %179 = load i32, i32* %19, align 4
  %180 = ashr i32 %179, 24
  %181 = and i32 %180, 255
  %182 = trunc i32 %181 to i8
  %183 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 3
  store i8 %182, i8* %183, align 1
  %184 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %185 = getelementptr inbounds i8, i8* %184, i64 4
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @LOCAL, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 0, i32 255
  %194 = call i32 @memset(i8* %185, i32 %193, i32 4)
  %195 = load i32, i32* %11, align 4
  %196 = load i32*, i32** %15, align 8
  %197 = load i32, i32* @ETYPE_DES3_CBC_NONE, align 4
  %198 = call i64 @krb5_crypto_init(i32 %195, i32* %196, i32 %197, i32* %22)
  store i64 %198, i64* %23, align 8
  %199 = load i64, i64* %23, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %146
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 1
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @free(i8* %204)
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  store i8* null, i8** %207, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  store i64 0, i64* %209, align 8
  %210 = load i64, i64* %23, align 8
  %211 = load i64*, i64** %9, align 8
  store i64 %210, i64* %211, align 8
  %212 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %212, i64* %8, align 8
  br label %278

213:                                              ; preds = %146
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @COMPAT_OLD_DES3, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 0
  %222 = call i32 @memset(i8* %221, i32 0, i32 8)
  br label %228

223:                                              ; preds = %213
  %224 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 0
  %225 = load i8*, i8** %16, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 8
  %227 = call i32 @memcpy(i8* %224, i8* %226, i32 8)
  br label %228

228:                                              ; preds = %223, %220
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %22, align 4
  %231 = load i32, i32* @KRB5_KU_USAGE_SEQ, align 4
  %232 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %233 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 0
  %234 = call i64 @krb5_encrypt_ivec(i32 %229, i32 %230, i32 %231, i8* %232, i32 8, %struct.TYPE_14__* %24, i8* %233)
  store i64 %234, i64* %23, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %22, align 4
  %237 = call i32 @krb5_crypto_destroy(i32 %235, i32 %236)
  %238 = load i64, i64* %23, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %228
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 @free(i8* %243)
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  store i8* null, i8** %246, align 8
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  %249 = load i64, i64* %23, align 8
  %250 = load i64*, i64** %9, align 8
  store i64 %249, i64* %250, align 8
  %251 = load i64, i64* @GSS_S_FAILURE, align 8
  store i64 %251, i64* %8, align 8
  br label %278

252:                                              ; preds = %228
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp eq i32 %254, 8
  %256 = zext i1 %255 to i32
  %257 = call i32 @assert(i32 %256)
  %258 = load i8*, i8** %16, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %260 = load i8*, i8** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @memcpy(i8* %258, i8* %260, i32 %262)
  %264 = call i32 @krb5_data_free(%struct.TYPE_14__* %24)
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %19, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %19, align 4
  %271 = call i32 @krb5_auth_con_setlocalseqnumber(i32 %265, i32 %268, i32 %270)
  %272 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %273 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %272, i32 0, i32 1
  %274 = call i32 @HEIMDAL_MUTEX_unlock(i32* %273)
  %275 = call i32 @free_Checksum(%struct.TYPE_17__* %17)
  %276 = load i64*, i64** %9, align 8
  store i64 0, i64* %276, align 8
  %277 = load i64, i64* @GSS_S_COMPLETE, align 8
  store i64 %277, i64* %8, align 8
  br label %278

278:                                              ; preds = %252, %240, %201, %134, %102, %70, %41
  %279 = load i64, i64* %8, align 8
  ret i64 %279
}

declare dso_local i32 @_gsskrb5_encap_length(i32, i64*, i64*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @_gsskrb5_make_header(i8*, i64, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @krb5_crypto_init(i32, i32*, i32, i32*) #1

declare dso_local i64 @krb5_create_checksum(i32, i32, i32, i32, i8*, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @krb5_crypto_destroy(i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_lock(i32*) #1

declare dso_local i32 @krb5_auth_con_getlocalseqnumber(i32, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @krb5_encrypt_ivec(i32, i32, i32, i8*, i32, %struct.TYPE_14__*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @krb5_data_free(%struct.TYPE_14__*) #1

declare dso_local i32 @krb5_auth_con_setlocalseqnumber(i32, i32, i32) #1

declare dso_local i32 @HEIMDAL_MUTEX_unlock(i32*) #1

declare dso_local i32 @free_Checksum(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
