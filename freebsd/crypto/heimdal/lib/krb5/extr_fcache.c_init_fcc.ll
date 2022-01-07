; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c_init_fcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_fcache.c_init_fcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@KRB5_CC_END = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Empty credential cache file: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Error reading pvno in cache file: %s\00", align 1
@KRB5_CCACHE_BADVNO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [48 x i8] c"Bad version number in credential cache file: %s\00", align 1
@KRB5_CC_FORMAT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"Error reading tag in cache file: %s\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"Error reading tag length in cache file: %s\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Error reading dtag in cache file: %s\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Error reading dlength in cache file: %s\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Error reading kdc_sec in cache file: %s\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Error reading unknown tag in cache file: %s\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"Unknown version number (%d) in credential cache file: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32, i32**, i32*, i8**)* @init_fcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_fcc(%struct.TYPE_9__* %0, i32 %1, i32** %2, i32* %3, i8** %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %23 = load i8**, i8*** %11, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i8**, i8*** %11, align 8
  store i8* null, i8** %26, align 8
  br label %27

27:                                               ; preds = %25, %5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @O_RDONLY, align 4
  %31 = load i32, i32* @O_BINARY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @O_CLOEXEC, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @fcc_open(%struct.TYPE_9__* %28, i32 %29, i32* %12, i32 %34, i32 0)
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i64, i64* %16, align 8
  store i64 %39, i64* %6, align 8
  br label %262

40:                                               ; preds = %27
  %41 = load i32, i32* %12, align 4
  %42 = call i32* @krb5_storage_from_fd(i32 %41)
  store i32* %42, i32** %15, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = call i32 @krb5_clear_error_message(%struct.TYPE_9__* %46)
  %48 = load i64, i64* @ENOMEM, align 8
  store i64 %48, i64* %16, align 8
  br label %249

49:                                               ; preds = %40
  %50 = load i32*, i32** %15, align 8
  %51 = load i64, i64* @KRB5_CC_END, align 8
  %52 = call i32 @krb5_storage_set_eof_code(i32* %50, i64 %51)
  %53 = load i32*, i32** %15, align 8
  %54 = call i64 @krb5_ret_int8(i32* %53, i32* %13)
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %49
  %58 = load i64, i64* %16, align 8
  %59 = load i64, i64* @KRB5_CC_END, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i64, i64* @ENOENT, align 8
  store i64 %62, i64* %16, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = load i64, i64* %16, align 8
  %65 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @FILENAME(i32 %68)
  %70 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %63, i64 %64, i8* %67, i32 %69)
  br label %80

71:                                               ; preds = %57
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = load i64, i64* %16, align 8
  %74 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @FILENAME(i32 %77)
  %79 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %72, i64 %73, i8* %76, i32 %78)
  br label %80

80:                                               ; preds = %71, %61
  br label %249

81:                                               ; preds = %49
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 5
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i64, i64* @KRB5_CCACHE_BADVNO, align 8
  store i64 %85, i64* %16, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = load i64, i64* %16, align 8
  %88 = call i32 @N_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @FILENAME(i32 %91)
  %93 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %86, i64 %87, i8* %90, i32 %92)
  br label %249

94:                                               ; preds = %81
  %95 = load i32*, i32** %15, align 8
  %96 = call i64 @krb5_ret_int8(i32* %95, i32* %14)
  store i64 %96, i64* %16, align 8
  %97 = load i64, i64* %16, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %94
  %100 = load i64, i64* @KRB5_CC_FORMAT, align 8
  store i64 %100, i64* %16, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %102 = load i64, i64* %16, align 8
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @FILENAME(i32 %103)
  %105 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %101, i64 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %104)
  br label %249

106:                                              ; preds = %94
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call %struct.TYPE_10__* @FCACHE(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call %struct.TYPE_10__* @FCACHE(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @storage_set_flags(%struct.TYPE_9__* %111, i32* %112, i32 %116)
  %118 = load i32, i32* %14, align 4
  switch i32 %118, label %233 [
    i32 128, label %119
    i32 129, label %232
    i32 130, label %232
    i32 131, label %232
  ]

119:                                              ; preds = %106
  %120 = load i32*, i32** %15, align 8
  %121 = call i64 @krb5_ret_int16(i32* %120, i32* %17)
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i64, i64* @KRB5_CC_FORMAT, align 8
  store i64 %125, i64* %16, align 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %127 = load i64, i64* %16, align 8
  %128 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %129 = sext i32 %128 to i64
  %130 = inttoptr i64 %129 to i8*
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @FILENAME(i32 %131)
  %133 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %126, i64 %127, i8* %130, i32 %132)
  br label %249

134:                                              ; preds = %119
  br label %135

135:                                              ; preds = %226, %134
  %136 = load i32, i32* %17, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %231

138:                                              ; preds = %135
  %139 = load i32*, i32** %15, align 8
  %140 = call i64 @krb5_ret_int16(i32* %139, i32* %18)
  store i64 %140, i64* %16, align 8
  %141 = load i64, i64* %16, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = load i64, i64* @KRB5_CC_FORMAT, align 8
  store i64 %144, i64* %16, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = load i64, i64* %16, align 8
  %147 = call i32 @N_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %148 = sext i32 %147 to i64
  %149 = inttoptr i64 %148 to i8*
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @FILENAME(i32 %150)
  %152 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %145, i64 %146, i8* %149, i32 %151)
  br label %249

153:                                              ; preds = %138
  %154 = load i32*, i32** %15, align 8
  %155 = call i64 @krb5_ret_int16(i32* %154, i32* %19)
  store i64 %155, i64* %16, align 8
  %156 = load i64, i64* %16, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %168

158:                                              ; preds = %153
  %159 = load i64, i64* @KRB5_CC_FORMAT, align 8
  store i64 %159, i64* %16, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %161 = load i64, i64* %16, align 8
  %162 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %163 = sext i32 %162 to i64
  %164 = inttoptr i64 %163 to i8*
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @FILENAME(i32 %165)
  %167 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %160, i64 %161, i8* %164, i32 %166)
  br label %249

168:                                              ; preds = %153
  %169 = load i32, i32* %18, align 4
  switch i32 %169, label %201 [
    i32 132, label %170
  ]

170:                                              ; preds = %168
  %171 = load i32*, i32** %15, align 8
  %172 = call i64 @krb5_ret_int32(i32* %171, i8** %22)
  store i64 %172, i64* %16, align 8
  %173 = load i32*, i32** %15, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = call i64 @krb5_ret_int32(i32* %173, i8** %175)
  %177 = load i64, i64* %16, align 8
  %178 = or i64 %177, %176
  store i64 %178, i64* %16, align 8
  %179 = load i64, i64* %16, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %170
  %182 = load i64, i64* @KRB5_CC_FORMAT, align 8
  store i64 %182, i64* %16, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %184 = load i64, i64* %16, align 8
  %185 = call i32 @N_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @FILENAME(i32 %188)
  %190 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %183, i64 %184, i8* %187, i32 %189)
  br label %249

191:                                              ; preds = %170
  %192 = load i8*, i8** %22, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load i8**, i8*** %11, align 8
  %196 = icmp ne i8** %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load i8*, i8** %22, align 8
  %199 = load i8**, i8*** %11, align 8
  store i8* %198, i8** %199, align 8
  br label %200

200:                                              ; preds = %197, %191
  br label %226

201:                                              ; preds = %168
  store i32 0, i32* %20, align 4
  br label %202

202:                                              ; preds = %222, %201
  %203 = load i32, i32* %20, align 4
  %204 = load i32, i32* %19, align 4
  %205 = icmp slt i32 %203, %204
  br i1 %205, label %206, label %225

206:                                              ; preds = %202
  %207 = load i32*, i32** %15, align 8
  %208 = call i64 @krb5_ret_int8(i32* %207, i32* %21)
  store i64 %208, i64* %16, align 8
  %209 = load i64, i64* %16, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %221

211:                                              ; preds = %206
  %212 = load i64, i64* @KRB5_CC_FORMAT, align 8
  store i64 %212, i64* %16, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %214 = load i64, i64* %16, align 8
  %215 = call i32 @N_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %216 = sext i32 %215 to i64
  %217 = inttoptr i64 %216 to i8*
  %218 = load i32, i32* %8, align 4
  %219 = call i32 @FILENAME(i32 %218)
  %220 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %213, i64 %214, i8* %217, i32 %219)
  br label %249

221:                                              ; preds = %206
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %20, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %20, align 4
  br label %202

225:                                              ; preds = %202
  br label %226

226:                                              ; preds = %225, %200
  %227 = load i32, i32* %19, align 4
  %228 = add nsw i32 4, %227
  %229 = load i32, i32* %17, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %17, align 4
  br label %135

231:                                              ; preds = %135
  br label %244

232:                                              ; preds = %106, %106, %106
  br label %244

233:                                              ; preds = %106
  %234 = load i64, i64* @KRB5_CCACHE_BADVNO, align 8
  store i64 %234, i64* %16, align 8
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %236 = load i64, i64* %16, align 8
  %237 = call i32 @N_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to i8*
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @FILENAME(i32 %241)
  %243 = call i32 (%struct.TYPE_9__*, i64, i8*, i32, ...) @krb5_set_error_message(%struct.TYPE_9__* %235, i64 %236, i8* %239, i32 %240, i32 %242)
  br label %249

244:                                              ; preds = %232, %231
  %245 = load i32*, i32** %15, align 8
  %246 = load i32**, i32*** %9, align 8
  store i32* %245, i32** %246, align 8
  %247 = load i32, i32* %12, align 4
  %248 = load i32*, i32** %10, align 8
  store i32 %247, i32* %248, align 4
  store i64 0, i64* %6, align 8
  br label %262

249:                                              ; preds = %233, %211, %181, %158, %143, %124, %99, %84, %80, %45
  %250 = load i32*, i32** %15, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32*, i32** %15, align 8
  %254 = call i32 @krb5_storage_free(i32* %253)
  br label %255

255:                                              ; preds = %252, %249
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %257 = load i32, i32* %12, align 4
  %258 = call i32 @fcc_unlock(%struct.TYPE_9__* %256, i32 %257)
  %259 = load i32, i32* %12, align 4
  %260 = call i32 @close(i32 %259)
  %261 = load i64, i64* %16, align 8
  store i64 %261, i64* %6, align 8
  br label %262

262:                                              ; preds = %255, %244, %38
  %263 = load i64, i64* %6, align 8
  ret i64 %263
}

declare dso_local i64 @fcc_open(%struct.TYPE_9__*, i32, i32*, i32, i32) #1

declare dso_local i32* @krb5_storage_from_fd(i32) #1

declare dso_local i32 @krb5_clear_error_message(%struct.TYPE_9__*) #1

declare dso_local i32 @krb5_storage_set_eof_code(i32*, i64) #1

declare dso_local i64 @krb5_ret_int8(i32*, i32*) #1

declare dso_local i32 @krb5_set_error_message(%struct.TYPE_9__*, i64, i8*, i32, ...) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i32 @FILENAME(i32) #1

declare dso_local %struct.TYPE_10__* @FCACHE(i32) #1

declare dso_local i32 @storage_set_flags(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @krb5_ret_int16(i32*, i32*) #1

declare dso_local i64 @krb5_ret_int32(i32*, i8**) #1

declare dso_local i32 @krb5_storage_free(i32*) #1

declare dso_local i32 @fcc_unlock(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
