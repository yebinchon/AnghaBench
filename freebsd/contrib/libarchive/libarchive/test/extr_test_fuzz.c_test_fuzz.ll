; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_fuzz.c_test_fuzz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_fuzz.c_test_fuzz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files = type { i32**, i64 }
%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"SKIP_TEST_FUZZ\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Skipping fuzz tests due to SKIP_TEST_FUZZ environment variable\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Cannot uncompress fileset\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Cannot uncompress %s\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"Internal buffer is not big enough for uncompressed test files\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"Internal buffer is not big enough for uncompressed test file: %s\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"after.test.failure.send.this.file.to.libarchive.maintainers.with.system.details\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files*)* @test_fuzz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fuzz(%struct.files* %0) #0 {
  %2 = alloca %struct.files*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca %struct.archive*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.files* %0, %struct.files** %2, align 8
  %24 = call i8* @getenv(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 (i8*, ...) @skipping(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %403

29:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %400, %29
  %31 = load %struct.files*, %struct.files** %2, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.files, %struct.files* %31, i64 %33
  %35 = getelementptr inbounds %struct.files, %struct.files* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = icmp ne i32** %36, null
  br i1 %37, label %38, label %403

38:                                               ; preds = %30
  store i64 30000000, i64* %8, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %39 = load %struct.files*, %struct.files** %2, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.files, %struct.files* %39, i64 %41
  %43 = getelementptr inbounds %struct.files, %struct.files* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = call i32 @extract_reference_files(i32** %44)
  %46 = load %struct.files*, %struct.files** %2, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.files, %struct.files* %46, i64 %48
  %50 = getelementptr inbounds %struct.files, %struct.files* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %179

53:                                               ; preds = %38
  %54 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %54, %struct.archive** %10, align 8
  %55 = icmp ne %struct.archive* %54, null
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load %struct.archive*, %struct.archive** %10, align 8
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  %60 = load %struct.archive*, %struct.archive** %10, align 8
  %61 = call i64 @archive_read_support_filter_all(%struct.archive* %60)
  %62 = call i32 @assertEqualIntA(%struct.archive* %58, i32 %59, i64 %61)
  %63 = load %struct.archive*, %struct.archive** %10, align 8
  %64 = load i32, i32* @ARCHIVE_OK, align 4
  %65 = load %struct.archive*, %struct.archive** %10, align 8
  %66 = call i64 @archive_read_support_format_raw(%struct.archive* %65)
  %67 = call i32 @assertEqualIntA(%struct.archive* %63, i32 %64, i64 %66)
  %68 = load %struct.archive*, %struct.archive** %10, align 8
  %69 = load %struct.files*, %struct.files** %2, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.files, %struct.files* %69, i64 %71
  %73 = getelementptr inbounds %struct.files, %struct.files* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = call i32 @archive_read_open_filenames(%struct.archive* %68, i32** %74, i32 16384)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @ARCHIVE_OK, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %53
  %80 = load %struct.archive*, %struct.archive** %10, align 8
  %81 = call i32 @archive_read_free(%struct.archive* %80)
  %82 = load %struct.files*, %struct.files** %2, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.files, %struct.files* %82, i64 %84
  %86 = getelementptr inbounds %struct.files, %struct.files* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = getelementptr inbounds i32*, i32** %87, i64 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %101, label %91

91:                                               ; preds = %79
  %92 = load %struct.files*, %struct.files** %2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.files, %struct.files* %92, i64 %94
  %96 = getelementptr inbounds %struct.files, %struct.files* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = getelementptr inbounds i32*, i32** %97, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %91, %79
  %102 = call i32 (i8*, ...) @skipping(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %113

103:                                              ; preds = %91
  %104 = load %struct.files*, %struct.files** %2, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.files, %struct.files* %104, i64 %106
  %108 = getelementptr inbounds %struct.files, %struct.files* %107, i32 0, i32 0
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 (i8*, ...) @skipping(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32* %111)
  br label %113

113:                                              ; preds = %103, %101
  br label %400

114:                                              ; preds = %53
  %115 = load %struct.archive*, %struct.archive** %10, align 8
  %116 = load i32, i32* @ARCHIVE_OK, align 4
  %117 = load %struct.archive*, %struct.archive** %10, align 8
  %118 = call i64 @archive_read_next_header(%struct.archive* %117, %struct.archive_entry** %9)
  %119 = call i32 @assertEqualIntA(%struct.archive* %115, i32 %116, i64 %118)
  %120 = call i8* @malloc(i64 30000000)
  store i8* %120, i8** %11, align 8
  %121 = load %struct.archive*, %struct.archive** %10, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = call i64 @archive_read_data(%struct.archive* %121, i8* %122, i64 30000000)
  store i64 %123, i64* %14, align 8
  %124 = load %struct.archive*, %struct.archive** %10, align 8
  %125 = load i32, i32* @ARCHIVE_EOF, align 4
  %126 = load %struct.archive*, %struct.archive** %10, align 8
  %127 = call i64 @archive_read_next_header(%struct.archive* %126, %struct.archive_entry** %9)
  %128 = call i32 @assertEqualIntA(%struct.archive* %124, i32 %125, i64 %127)
  %129 = load i32, i32* @ARCHIVE_OK, align 4
  %130 = sext i32 %129 to i64
  %131 = load %struct.archive*, %struct.archive** %10, align 8
  %132 = call i32 @archive_read_free(%struct.archive* %131)
  %133 = call i32 @assertEqualInt(i64 %130, i32 %132)
  %134 = load i64, i64* %14, align 8
  %135 = icmp ugt i64 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i32 @assert(i32 %136)
  %138 = load %struct.files*, %struct.files** %2, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.files, %struct.files* %138, i64 %140
  %142 = getelementptr inbounds %struct.files, %struct.files* %141, i32 0, i32 0
  %143 = load i32**, i32*** %142, align 8
  %144 = getelementptr inbounds i32*, i32** %143, i64 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %114
  %148 = load %struct.files*, %struct.files** %2, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.files, %struct.files* %148, i64 %150
  %152 = getelementptr inbounds %struct.files, %struct.files* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 1
  %155 = load i32*, i32** %154, align 8
  %156 = icmp eq i32* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %147, %114
  %158 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  br label %169

159:                                              ; preds = %147
  %160 = load %struct.files*, %struct.files** %2, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.files, %struct.files* %160, i64 %162
  %164 = getelementptr inbounds %struct.files, %struct.files* %163, i32 0, i32 0
  %165 = load i32**, i32*** %164, align 8
  %166 = getelementptr inbounds i32*, i32** %165, i64 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32* %167)
  br label %169

169:                                              ; preds = %159, %157
  %170 = load i64, i64* %14, align 8
  %171 = icmp ult i64 %170, 30000000
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %169
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 @free(i8* %176)
  store i8* null, i8** %11, align 8
  br label %400

178:                                              ; preds = %169
  br label %237

179:                                              ; preds = %38
  store i32 0, i32* %16, align 4
  br label %180

180:                                              ; preds = %233, %179
  %181 = load %struct.files*, %struct.files** %2, align 8
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.files, %struct.files* %181, i64 %183
  %185 = getelementptr inbounds %struct.files, %struct.files* %184, i32 0, i32 0
  %186 = load i32**, i32*** %185, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %236

192:                                              ; preds = %180
  %193 = load %struct.files*, %struct.files** %2, align 8
  %194 = load i32, i32* %6, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.files, %struct.files* %193, i64 %195
  %197 = getelementptr inbounds %struct.files, %struct.files* %196, i32 0, i32 0
  %198 = load i32**, i32*** %197, align 8
  %199 = load i32, i32* %16, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32*, i32** %198, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = call i8* @slurpfile(i64* %14, i32* %202)
  store i8* %203, i8** %13, align 8
  %204 = load i8*, i8** %11, align 8
  %205 = load i64, i64* %15, align 8
  %206 = load i64, i64* %14, align 8
  %207 = add i64 %205, %206
  %208 = call i8* @realloc(i8* %204, i64 %207)
  store i8* %208, i8** %19, align 8
  %209 = load i8*, i8** %19, align 8
  %210 = icmp ne i8* %209, null
  %211 = zext i1 %210 to i32
  %212 = call i32 @assert(i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %219, label %214

214:                                              ; preds = %192
  %215 = load i8*, i8** %11, align 8
  %216 = call i32 @free(i8* %215)
  store i8* null, i8** %11, align 8
  %217 = load i8*, i8** %13, align 8
  %218 = call i32 @free(i8* %217)
  br label %233

219:                                              ; preds = %192
  %220 = load i8*, i8** %19, align 8
  store i8* %220, i8** %11, align 8
  %221 = load i8*, i8** %11, align 8
  %222 = load i64, i64* %15, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  %224 = load i8*, i8** %13, align 8
  %225 = load i64, i64* %14, align 8
  %226 = call i32 @memcpy(i8* %223, i8* %224, i64 %225)
  %227 = load i64, i64* %14, align 8
  %228 = load i64, i64* %15, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %15, align 8
  %230 = load i64, i64* %15, align 8
  store i64 %230, i64* %14, align 8
  %231 = load i8*, i8** %13, align 8
  %232 = call i32 @free(i8* %231)
  br label %233

233:                                              ; preds = %219, %214
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %180

236:                                              ; preds = %180
  br label %237

237:                                              ; preds = %236, %178
  %238 = load i64, i64* %14, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i8*, i8** %11, align 8
  %242 = call i32 @free(i8* %241)
  store i8* null, i8** %11, align 8
  br label %400

243:                                              ; preds = %237
  %244 = load i64, i64* %14, align 8
  %245 = call i8* @malloc(i64 %244)
  store i8* %245, i8** %12, align 8
  %246 = load i8*, i8** %12, align 8
  %247 = icmp ne i8* %246, null
  %248 = zext i1 %247 to i32
  %249 = call i32 @assert(i32 %248)
  %250 = load i8*, i8** %12, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %243
  %253 = load i8*, i8** %11, align 8
  %254 = call i32 @free(i8* %253)
  store i8* null, i8** %11, align 8
  br label %403

255:                                              ; preds = %243
  %256 = load i8*, i8** %11, align 8
  %257 = icmp ne i8* %256, null
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = call i64 @time(i32* null)
  %261 = trunc i64 %260 to i32
  %262 = call i32 @srand(i32 %261)
  store i32 0, i32* %16, align 4
  br label %263

263:                                              ; preds = %392, %255
  %264 = load i32, i32* %16, align 4
  %265 = icmp slt i32 %264, 1000
  br i1 %265, label %266, label %395

266:                                              ; preds = %263
  %267 = load i8*, i8** %12, align 8
  %268 = load i8*, i8** %11, align 8
  %269 = load i64, i64* %14, align 8
  %270 = call i32 @memcpy(i8* %267, i8* %268, i64 %269)
  %271 = load i64, i64* %14, align 8
  %272 = trunc i64 %271 to i32
  %273 = sdiv i32 %272, 100
  store i32 %273, i32* %17, align 4
  %274 = load i32, i32* %17, align 4
  %275 = icmp slt i32 %274, 4
  br i1 %275, label %276, label %277

276:                                              ; preds = %266
  store i32 4, i32* %17, align 4
  br label %277

277:                                              ; preds = %276, %266
  %278 = call i64 (...) @rand()
  %279 = load i32, i32* %17, align 4
  %280 = sext i32 %279 to i64
  %281 = urem i64 %278, %280
  %282 = trunc i64 %281 to i32
  store i32 %282, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %283

283:                                              ; preds = %295, %277
  %284 = load i32, i32* %21, align 4
  %285 = load i32, i32* %22, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %298

287:                                              ; preds = %283
  %288 = call i64 (...) @rand()
  %289 = trunc i64 %288 to i8
  %290 = load i8*, i8** %12, align 8
  %291 = call i64 (...) @rand()
  %292 = load i64, i64* %14, align 8
  %293 = urem i64 %291, %292
  %294 = getelementptr inbounds i8, i8* %290, i64 %293
  store i8 %289, i8* %294, align 1
  br label %295

295:                                              ; preds = %287
  %296 = load i32, i32* %21, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %21, align 4
  br label %283

298:                                              ; preds = %283
  store i32 0, i32* %23, align 4
  br label %299

299:                                              ; preds = %308, %298
  %300 = load i32, i32* %23, align 4
  %301 = icmp slt i32 %300, 3
  br i1 %301, label %302, label %311

302:                                              ; preds = %299
  %303 = call i32* @fopen(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32* %303, i32** %20, align 8
  %304 = load i32*, i32** %20, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  br label %311

307:                                              ; preds = %302
  br label %308

308:                                              ; preds = %307
  %309 = load i32, i32* %23, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %23, align 4
  br label %299

311:                                              ; preds = %306, %299
  %312 = load i32*, i32** %20, align 8
  %313 = icmp ne i32* %312, null
  %314 = zext i1 %313 to i32
  %315 = call i32 @assert(i32 %314)
  %316 = load i64, i64* %14, align 8
  %317 = load i8*, i8** %12, align 8
  %318 = load i64, i64* %14, align 8
  %319 = load i32*, i32** %20, align 8
  %320 = call i32 @fwrite(i8* %317, i32 1, i64 %318, i32* %319)
  %321 = call i32 @assertEqualInt(i64 %316, i32 %320)
  %322 = load i32*, i32** %20, align 8
  %323 = call i32 @fclose(i32* %322)
  %324 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %324, %struct.archive** %10, align 8
  %325 = icmp ne %struct.archive* %324, null
  %326 = zext i1 %325 to i32
  %327 = call i32 @assert(i32 %326)
  %328 = load %struct.archive*, %struct.archive** %10, align 8
  %329 = load i32, i32* @ARCHIVE_OK, align 4
  %330 = load %struct.archive*, %struct.archive** %10, align 8
  %331 = call i64 @archive_read_support_filter_all(%struct.archive* %330)
  %332 = call i32 @assertEqualIntA(%struct.archive* %328, i32 %329, i64 %331)
  %333 = load %struct.archive*, %struct.archive** %10, align 8
  %334 = load i32, i32* @ARCHIVE_OK, align 4
  %335 = load %struct.archive*, %struct.archive** %10, align 8
  %336 = call i64 @archive_read_support_format_all(%struct.archive* %335)
  %337 = call i32 @assertEqualIntA(%struct.archive* %333, i32 %334, i64 %336)
  %338 = load %struct.archive*, %struct.archive** %10, align 8
  %339 = load i8*, i8** %12, align 8
  %340 = load i64, i64* %14, align 8
  %341 = call i64 @archive_read_open_memory(%struct.archive* %338, i8* %339, i64 %340)
  %342 = icmp eq i64 0, %341
  br i1 %342, label %343, label %358

343:                                              ; preds = %311
  br label %344

344:                                              ; preds = %354, %343
  %345 = load %struct.archive*, %struct.archive** %10, align 8
  %346 = call i64 @archive_read_next_header(%struct.archive* %345, %struct.archive_entry** %9)
  %347 = icmp eq i64 0, %346
  br i1 %347, label %348, label %355

348:                                              ; preds = %344
  br label %349

349:                                              ; preds = %353, %348
  %350 = load %struct.archive*, %struct.archive** %10, align 8
  %351 = call i64 @archive_read_data_block(%struct.archive* %350, i8** %3, i64* %4, i32* %5)
  %352 = icmp eq i64 0, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %349
  br label %349

354:                                              ; preds = %349
  br label %344

355:                                              ; preds = %344
  %356 = load %struct.archive*, %struct.archive** %10, align 8
  %357 = call i32 @archive_read_close(%struct.archive* %356)
  br label %358

358:                                              ; preds = %355, %311
  %359 = load %struct.archive*, %struct.archive** %10, align 8
  %360 = call i32 @archive_read_free(%struct.archive* %359)
  %361 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %361, %struct.archive** %10, align 8
  %362 = icmp ne %struct.archive* %361, null
  %363 = zext i1 %362 to i32
  %364 = call i32 @assert(i32 %363)
  %365 = load %struct.archive*, %struct.archive** %10, align 8
  %366 = load i32, i32* @ARCHIVE_OK, align 4
  %367 = load %struct.archive*, %struct.archive** %10, align 8
  %368 = call i64 @archive_read_support_filter_all(%struct.archive* %367)
  %369 = call i32 @assertEqualIntA(%struct.archive* %365, i32 %366, i64 %368)
  %370 = load %struct.archive*, %struct.archive** %10, align 8
  %371 = load i32, i32* @ARCHIVE_OK, align 4
  %372 = load %struct.archive*, %struct.archive** %10, align 8
  %373 = call i64 @archive_read_support_format_all(%struct.archive* %372)
  %374 = call i32 @assertEqualIntA(%struct.archive* %370, i32 %371, i64 %373)
  %375 = load %struct.archive*, %struct.archive** %10, align 8
  %376 = load i8*, i8** %12, align 8
  %377 = load i64, i64* %14, align 8
  %378 = call i64 @archive_read_open_memory(%struct.archive* %375, i8* %376, i64 %377)
  %379 = icmp eq i64 0, %378
  br i1 %379, label %380, label %389

380:                                              ; preds = %358
  br label %381

381:                                              ; preds = %385, %380
  %382 = load %struct.archive*, %struct.archive** %10, align 8
  %383 = call i64 @archive_read_next_header(%struct.archive* %382, %struct.archive_entry** %9)
  %384 = icmp eq i64 0, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %381
  br label %381

386:                                              ; preds = %381
  %387 = load %struct.archive*, %struct.archive** %10, align 8
  %388 = call i32 @archive_read_close(%struct.archive* %387)
  br label %389

389:                                              ; preds = %386, %358
  %390 = load %struct.archive*, %struct.archive** %10, align 8
  %391 = call i32 @archive_read_free(%struct.archive* %390)
  br label %392

392:                                              ; preds = %389
  %393 = load i32, i32* %16, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %16, align 4
  br label %263

395:                                              ; preds = %263
  %396 = load i8*, i8** %12, align 8
  %397 = call i32 @free(i8* %396)
  %398 = load i8*, i8** %11, align 8
  %399 = call i32 @free(i8* %398)
  br label %400

400:                                              ; preds = %395, %240, %175, %113
  %401 = load i32, i32* %6, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %6, align 4
  br label %30

403:                                              ; preds = %27, %252, %30
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @skipping(i8*, ...) #1

declare dso_local i32 @extract_reference_files(i32**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i64) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i64 @archive_read_support_format_raw(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filenames(%struct.archive*, i32**, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i64 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @archive_read_data(%struct.archive*, i8*, i64) #1

declare dso_local i32 @assertEqualInt(i64, i32) #1

declare dso_local i32 @failure(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @slurpfile(i64*, i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @rand(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i64 @archive_read_data_block(%struct.archive*, i8**, i64*, i32*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
