; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__krb5_derive_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_crypto.c__krb5_derive_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._krb5_encryption_type = type { i32, i32 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i32*)*, %struct._krb5_key_type* }
%struct._krb5_key_type = type { i32, i32 }
%struct._krb5_key_data = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }

@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KRB5_CRYPTO_INTERNAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"derive_key() called with unknown keytype (%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_krb5_derive_key(i32 %0, %struct._krb5_encryption_type* %1, %struct._krb5_key_data* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._krb5_encryption_type*, align 8
  %9 = alloca %struct._krb5_key_data*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct._krb5_key_type*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._krb5_encryption_type* %1, %struct._krb5_encryption_type** %8, align 8
  store %struct._krb5_key_data* %2, %struct._krb5_key_data** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %19 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %20 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %19, i32 0, i32 2
  %21 = load %struct._krb5_key_type*, %struct._krb5_key_type** %20, align 8
  store %struct._krb5_key_type* %21, %struct._krb5_key_type** %16, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %24 = call i64 @_key_schedule(i32 %22, %struct._krb5_key_data* %23)
  store i64 %24, i64* %15, align 8
  %25 = load i64, i64* %15, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %15, align 8
  store i64 %28, i64* %6, align 8
  br label %277

29:                                               ; preds = %5
  %30 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %31 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %32, 8
  %34 = load %struct._krb5_key_type*, %struct._krb5_key_type** %16, align 8
  %35 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %45, label %38

38:                                               ; preds = %29
  %39 = load i64, i64* %11, align 8
  %40 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %41 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %39, %43
  br i1 %44, label %45, label %144

45:                                               ; preds = %38, %29
  %46 = load %struct._krb5_key_type*, %struct._krb5_key_type** %16, align 8
  %47 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %50 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 8
  %53 = add nsw i32 %48, %52
  %54 = sub nsw i32 %53, 1
  %55 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %56 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 8
  %59 = sdiv i32 %54, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %62 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul i32 %60, %63
  %65 = zext i32 %64 to i64
  %66 = call i8* @malloc(i64 %65)
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %45
  %70 = load i64, i64* @ENOMEM, align 8
  store i64 %70, i64* %15, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i64, i64* %15, align 8
  %73 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %74 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %71, i64 %72, i32 %73)
  br label %250

75:                                               ; preds = %45
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %80 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = call i64 @_krb5_n_fold(i8* %76, i64 %77, i8* %78, i64 %82)
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  %87 = load i32, i32* %7, align 4
  %88 = load i64, i64* %15, align 8
  %89 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %90 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %87, i64 %88, i32 %89)
  br label %250

91:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  br label %92

92:                                               ; preds = %140, %91
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %143

96:                                               ; preds = %92
  %97 = load i32, i32* %14, align 4
  %98 = icmp ugt i32 %97, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load i8*, i8** %12, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %103 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul i32 %101, %104
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %100, i64 %106
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* %14, align 4
  %110 = sub i32 %109, 1
  %111 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %112 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul i32 %110, %113
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %108, i64 %115
  %117 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %118 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @memcpy(i8* %107, i8* %116, i32 %119)
  br label %121

121:                                              ; preds = %99, %96
  %122 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %123 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %122, i32 0, i32 1
  %124 = load i32 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i32*)*, i32 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i32*)** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %127 = load i8*, i8** %12, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %130 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul i32 %128, %131
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %127, i64 %133
  %135 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %136 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = call i32 %124(i32 %125, %struct._krb5_key_data* %126, i8* %134, i64 %138, i32 1, i32 0, i32* null)
  br label %140

140:                                              ; preds = %121
  %141 = load i32, i32* %14, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %14, align 4
  br label %92

143:                                              ; preds = %92
  br label %209

144:                                              ; preds = %38
  %145 = load i64, i64* %11, align 8
  %146 = call i8* @malloc(i64 %145)
  store i8* %146, i8** %17, align 8
  %147 = load %struct._krb5_key_type*, %struct._krb5_key_type** %16, align 8
  %148 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 7
  %151 = sdiv i32 %150, 8
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %11, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %144
  %156 = load i8*, i8** %17, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i64, i64* @ENOMEM, align 8
  store i64 %159, i64* %15, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i64, i64* %15, align 8
  %162 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %163 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %160, i64 %161, i32 %162)
  br label %250

164:                                              ; preds = %155, %144
  %165 = load i8*, i8** %17, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = load i64, i64* %11, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i32 @memcpy(i8* %165, i8* %166, i32 %168)
  %170 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %171 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %170, i32 0, i32 1
  %172 = load i32 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i32*)*, i32 (i32, %struct._krb5_key_data*, i8*, i64, i32, i32, i32*)** %171, align 8
  %173 = load i32, i32* %7, align 4
  %174 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %175 = load i8*, i8** %17, align 8
  %176 = load i64, i64* %11, align 8
  %177 = call i32 %172(i32 %173, %struct._krb5_key_data* %174, i8* %175, i64 %176, i32 1, i32 0, i32* null)
  %178 = load i64, i64* %18, align 8
  %179 = call i8* @malloc(i64 %178)
  store i8* %179, i8** %12, align 8
  %180 = load i64, i64* %18, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %164
  %183 = load i8*, i8** %12, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i8*, i8** %17, align 8
  %187 = call i32 @free(i8* %186)
  %188 = load i64, i64* @ENOMEM, align 8
  store i64 %188, i64* %15, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load i64, i64* %15, align 8
  %191 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %192 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %189, i64 %190, i32 %191)
  br label %250

193:                                              ; preds = %182, %164
  %194 = load i8*, i8** %17, align 8
  %195 = load i64, i64* %11, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = load i64, i64* %18, align 8
  %198 = call i64 @_krb5_n_fold(i8* %194, i64 %195, i8* %196, i64 %197)
  store i64 %198, i64* %15, align 8
  %199 = load i8*, i8** %17, align 8
  %200 = call i32 @free(i8* %199)
  %201 = load i64, i64* %15, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %193
  %204 = load i32, i32* %7, align 4
  %205 = load i64, i64* %15, align 8
  %206 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %207 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %204, i64 %205, i32 %206)
  br label %250

208:                                              ; preds = %193
  br label %209

209:                                              ; preds = %208, %143
  %210 = load %struct._krb5_key_type*, %struct._krb5_key_type** %16, align 8
  %211 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  switch i32 %212, label %240 [
    i32 128, label %213
    i32 130, label %225
    i32 129, label %225
  ]

213:                                              ; preds = %209
  %214 = load i32, i32* %7, align 4
  %215 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %216 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %215, i32 0, i32 1
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %216, align 8
  %218 = load i8*, i8** %12, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %221 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = mul i32 %219, %222
  %224 = call i32 @_krb5_DES3_random_to_key(i32 %214, %struct.TYPE_4__* %217, i8* %218, i32 %223)
  br label %249

225:                                              ; preds = %209, %209
  %226 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %227 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %226, i32 0, i32 1
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load i8*, i8** %12, align 8
  %233 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %234 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %233, i32 0, i32 1
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @memcpy(i8* %231, i8* %232, i32 %238)
  br label %249

240:                                              ; preds = %209
  %241 = load i64, i64* @KRB5_CRYPTO_INTERNAL, align 8
  store i64 %241, i64* %15, align 8
  %242 = load i32, i32* %7, align 4
  %243 = load i64, i64* %15, align 8
  %244 = call i32 @N_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %245 = load %struct._krb5_key_type*, %struct._krb5_key_type** %16, align 8
  %246 = getelementptr inbounds %struct._krb5_key_type, %struct._krb5_key_type* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 (i32, i64, i32, ...) @krb5_set_error_message(i32 %242, i64 %243, i32 %244, i32 %247)
  br label %249

249:                                              ; preds = %240, %225, %213
  br label %250

250:                                              ; preds = %249, %203, %185, %158, %86, %69
  %251 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %252 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = load i32, i32* %7, align 4
  %257 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %258 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %259 = call i32 @free_key_schedule(i32 %256, %struct._krb5_key_data* %257, %struct._krb5_encryption_type* %258)
  %260 = load %struct._krb5_key_data*, %struct._krb5_key_data** %9, align 8
  %261 = getelementptr inbounds %struct._krb5_key_data, %struct._krb5_key_data* %260, i32 0, i32 0
  store i32* null, i32** %261, align 8
  br label %262

262:                                              ; preds = %255, %250
  %263 = load i8*, i8** %12, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %265, label %275

265:                                              ; preds = %262
  %266 = load i8*, i8** %12, align 8
  %267 = load i32, i32* %13, align 4
  %268 = load %struct._krb5_encryption_type*, %struct._krb5_encryption_type** %8, align 8
  %269 = getelementptr inbounds %struct._krb5_encryption_type, %struct._krb5_encryption_type* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = mul i32 %267, %270
  %272 = call i32 @memset(i8* %266, i32 0, i32 %271)
  %273 = load i8*, i8** %12, align 8
  %274 = call i32 @free(i8* %273)
  br label %275

275:                                              ; preds = %265, %262
  %276 = load i64, i64* %15, align 8
  store i64 %276, i64* %6, align 8
  br label %277

277:                                              ; preds = %275, %27
  %278 = load i64, i64* %6, align 8
  ret i64 %278
}

declare dso_local i64 @_key_schedule(i32, %struct._krb5_key_data*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @_krb5_n_fold(i8*, i64, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_krb5_DES3_random_to_key(i32, %struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @free_key_schedule(i32, %struct._krb5_key_data*, %struct._krb5_encryption_type*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
