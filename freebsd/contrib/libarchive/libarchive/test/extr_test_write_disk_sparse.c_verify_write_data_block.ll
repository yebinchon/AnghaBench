; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk_sparse.c_verify_write_data_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk_sparse.c_verify_write_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.stat = type { i64 }
%struct.archive_entry = type { i32 }

@verify_write_data_block.data = internal constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@.str = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"non-sparse\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"test_write_data_block\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"offset: %d, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32)* @verify_write_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_write_data_block(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 65536, i64* %7, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  store i8* %15, i8** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call i8* @malloc(i64 %16)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %386

25:                                               ; preds = %2
  %26 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %26, %struct.archive_entry** %6, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %28 = icmp ne %struct.archive_entry* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @archive_entry_set_size(%struct.archive_entry* %31, i32 %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %37 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %39 = load i32, i32* @AE_IFREG, align 4
  %40 = or i32 %39, 493
  %41 = call i32 @archive_entry_set_mode(%struct.archive_entry* %38, i32 %40)
  %42 = load %struct.archive*, %struct.archive** %3, align 8
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %45 = call i32 @archive_write_header(%struct.archive* %43, %struct.archive_entry* %44)
  %46 = call i32 @assertEqualIntA(%struct.archive* %42, i32 0, i32 %45)
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @memset(i8* %47, i32 0, i64 %48)
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @memcpy(i8* %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data_block.data, i64 0, i64 0), i32 27)
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  %54 = load i64, i64* @ARCHIVE_OK, align 8
  %55 = load %struct.archive*, %struct.archive** %3, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call signext i8 @archive_write_data_block(%struct.archive* %55, i8* %56, i64 %57, i64 100)
  %59 = call i32 @assertEqualInt(i64 %54, i8 signext %58)
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @memset(i8* %60, i32 0, i64 %61)
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = udiv i64 %64, 2
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = getelementptr inbounds i8, i8* %66, i64 -3
  %68 = call i32 @memcpy(i8* %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data_block.data, i64 0, i64 0), i32 27)
  %69 = load i8*, i8** %10, align 8
  %70 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  %71 = load i64, i64* @ARCHIVE_OK, align 8
  %72 = load %struct.archive*, %struct.archive** %3, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 200
  %77 = call signext i8 @archive_write_data_block(%struct.archive* %72, i8* %73, i64 %74, i64 %76)
  %78 = call i32 @assertEqualInt(i64 %71, i8 signext %77)
  %79 = load i8*, i8** %8, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @memset(i8* %79, i32 0, i64 %80)
  %82 = load i8*, i8** %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 -27
  %86 = call i32 @memcpy(i8* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data_block.data, i64 0, i64 0), i32 27)
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  %89 = load i64, i64* @ARCHIVE_OK, align 8
  %90 = load %struct.archive*, %struct.archive** %3, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %7, align 8
  %94 = mul i64 %93, 2
  %95 = add i64 %94, 300
  %96 = call signext i8 @archive_write_data_block(%struct.archive* %90, i8* %91, i64 %92, i64 %95)
  %97 = call i32 @assertEqualInt(i64 %89, i8 signext %96)
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = load %struct.archive*, %struct.archive** %3, align 8
  %101 = load %struct.archive*, %struct.archive** %3, align 8
  %102 = call i32 @archive_write_finish_entry(%struct.archive* %101)
  %103 = call i32 @assertEqualIntA(%struct.archive* %100, i32 0, i32 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %105 = call i32 @archive_entry_pathname(%struct.archive_entry* %104)
  %106 = call i64 @stat(i32 %105, %struct.stat* %5)
  %107 = icmp eq i64 0, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = mul i64 8, %112
  %114 = trunc i64 %113 to i8
  %115 = call i32 @assertEqualInt(i64 %111, i8 signext %114)
  %116 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %117 = call i32 @archive_entry_pathname(%struct.archive_entry* %116)
  %118 = call i32* @fopen(i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %118, i32** %11, align 8
  %119 = load i32*, i32** %11, align 8
  %120 = icmp ne i32* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @assert(i32 %121)
  %123 = load i32*, i32** %11, align 8
  %124 = icmp eq i32* %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %25
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @free(i8* %126)
  br label %386

128:                                              ; preds = %25
  %129 = load i8*, i8** %8, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call signext i8 @fread(i8* %129, i32 1, i64 100, i32* %130)
  %132 = call i32 @assertEqualInt(i64 100, i8 signext %131)
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %133)
  %135 = load i8*, i8** %8, align 8
  store i8* %135, i8** %9, align 8
  br label %136

136:                                              ; preds = %156, %128
  %137 = load i8*, i8** %9, align 8
  %138 = load i8*, i8** %8, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 100
  %140 = icmp ult i8* %137, %139
  br i1 %140, label %141, label %159

141:                                              ; preds = %136
  %142 = load i8*, i8** %9, align 8
  %143 = load i8*, i8** %8, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = load i8*, i8** %10, align 8
  %149 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %147, i8* %148)
  %150 = load i8*, i8** %9, align 8
  %151 = load i8, i8* %150, align 1
  %152 = call i32 @assertEqualInt(i64 0, i8 signext %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %141
  br label %159

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %9, align 8
  br label %136

159:                                              ; preds = %154, %136
  %160 = load i64, i64* %7, align 8
  %161 = load i8*, i8** %8, align 8
  %162 = load i64, i64* %7, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = call signext i8 @fread(i8* %161, i32 1, i64 %162, i32* %163)
  %165 = call i32 @assertEqualInt(i64 %160, i8 signext %164)
  %166 = load i8*, i8** %10, align 8
  %167 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %166)
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @assertEqualMem(i8* %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data_block.data, i64 0, i64 0), i32 27)
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 27
  store i8* %171, i8** %9, align 8
  br label %172

172:                                              ; preds = %193, %159
  %173 = load i8*, i8** %9, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load i64, i64* %7, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = icmp ult i8* %173, %176
  br i1 %177, label %178, label %196

178:                                              ; preds = %172
  %179 = load i8*, i8** %9, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = ptrtoint i8* %179 to i64
  %182 = ptrtoint i8* %180 to i64
  %183 = sub i64 %181, %182
  %184 = trunc i64 %183 to i32
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %184, i8* %185)
  %187 = load i8*, i8** %9, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i32 @assertEqualInt(i64 0, i8 signext %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %178
  br label %196

192:                                              ; preds = %178
  br label %193

193:                                              ; preds = %192
  %194 = load i8*, i8** %9, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %9, align 8
  br label %172

196:                                              ; preds = %191, %172
  %197 = load i8*, i8** %8, align 8
  %198 = load i32*, i32** %11, align 8
  %199 = call signext i8 @fread(i8* %197, i32 1, i64 100, i32* %198)
  %200 = call i32 @assertEqualInt(i64 100, i8 signext %199)
  %201 = load i8*, i8** %10, align 8
  %202 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %201)
  %203 = load i8*, i8** %8, align 8
  store i8* %203, i8** %9, align 8
  br label %204

204:                                              ; preds = %224, %196
  %205 = load i8*, i8** %9, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 100
  %208 = icmp ult i8* %205, %207
  br i1 %208, label %209, label %227

209:                                              ; preds = %204
  %210 = load i8*, i8** %9, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = ptrtoint i8* %210 to i64
  %213 = ptrtoint i8* %211 to i64
  %214 = sub i64 %212, %213
  %215 = trunc i64 %214 to i32
  %216 = load i8*, i8** %10, align 8
  %217 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %215, i8* %216)
  %218 = load i8*, i8** %9, align 8
  %219 = load i8, i8* %218, align 1
  %220 = call i32 @assertEqualInt(i64 0, i8 signext %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %209
  br label %227

223:                                              ; preds = %209
  br label %224

224:                                              ; preds = %223
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %9, align 8
  br label %204

227:                                              ; preds = %222, %204
  %228 = load i64, i64* %7, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = load i64, i64* %7, align 8
  %231 = load i32*, i32** %11, align 8
  %232 = call signext i8 @fread(i8* %229, i32 1, i64 %230, i32* %231)
  %233 = call i32 @assertEqualInt(i64 %228, i8 signext %232)
  %234 = load i8*, i8** %8, align 8
  store i8* %234, i8** %9, align 8
  br label %235

235:                                              ; preds = %270, %227
  %236 = load i8*, i8** %9, align 8
  %237 = load i8*, i8** %8, align 8
  %238 = load i64, i64* %7, align 8
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  %240 = icmp ult i8* %236, %239
  br i1 %240, label %241, label %273

241:                                              ; preds = %235
  %242 = load i8*, i8** %9, align 8
  %243 = load i8*, i8** %8, align 8
  %244 = ptrtoint i8* %242 to i64
  %245 = ptrtoint i8* %243 to i64
  %246 = sub i64 %244, %245
  %247 = trunc i64 %246 to i32
  %248 = load i8*, i8** %10, align 8
  %249 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %247, i8* %248)
  %250 = load i8*, i8** %9, align 8
  %251 = load i8*, i8** %8, align 8
  %252 = load i64, i64* %7, align 8
  %253 = udiv i64 %252, 2
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = getelementptr inbounds i8, i8* %254, i64 -3
  %256 = icmp eq i8* %250, %255
  br i1 %256, label %257, label %262

257:                                              ; preds = %241
  %258 = load i8*, i8** %9, align 8
  %259 = call i32 @assertEqualMem(i8* %258, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data_block.data, i64 0, i64 0), i32 27)
  %260 = load i8*, i8** %9, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 27
  store i8* %261, i8** %9, align 8
  br label %269

262:                                              ; preds = %241
  %263 = load i8*, i8** %9, align 8
  %264 = load i8, i8* %263, align 1
  %265 = call i32 @assertEqualInt(i64 0, i8 signext %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %268, label %267

267:                                              ; preds = %262
  br label %273

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %257
  br label %270

270:                                              ; preds = %269
  %271 = load i8*, i8** %9, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %9, align 8
  br label %235

273:                                              ; preds = %267, %235
  %274 = load i8*, i8** %8, align 8
  %275 = load i32*, i32** %11, align 8
  %276 = call signext i8 @fread(i8* %274, i32 1, i64 100, i32* %275)
  %277 = call i32 @assertEqualInt(i64 100, i8 signext %276)
  %278 = load i8*, i8** %10, align 8
  %279 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %278)
  %280 = load i8*, i8** %8, align 8
  store i8* %280, i8** %9, align 8
  br label %281

281:                                              ; preds = %301, %273
  %282 = load i8*, i8** %9, align 8
  %283 = load i8*, i8** %8, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 100
  %285 = icmp ult i8* %282, %284
  br i1 %285, label %286, label %304

286:                                              ; preds = %281
  %287 = load i8*, i8** %9, align 8
  %288 = load i8*, i8** %8, align 8
  %289 = ptrtoint i8* %287 to i64
  %290 = ptrtoint i8* %288 to i64
  %291 = sub i64 %289, %290
  %292 = trunc i64 %291 to i32
  %293 = load i8*, i8** %10, align 8
  %294 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %292, i8* %293)
  %295 = load i8*, i8** %9, align 8
  %296 = load i8, i8* %295, align 1
  %297 = call i32 @assertEqualInt(i64 0, i8 signext %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %286
  br label %304

300:                                              ; preds = %286
  br label %301

301:                                              ; preds = %300
  %302 = load i8*, i8** %9, align 8
  %303 = getelementptr inbounds i8, i8* %302, i32 1
  store i8* %303, i8** %9, align 8
  br label %281

304:                                              ; preds = %299, %281
  %305 = load i64, i64* %7, align 8
  %306 = load i8*, i8** %8, align 8
  %307 = load i64, i64* %7, align 8
  %308 = load i32*, i32** %11, align 8
  %309 = call signext i8 @fread(i8* %306, i32 1, i64 %307, i32* %308)
  %310 = call i32 @assertEqualInt(i64 %305, i8 signext %309)
  %311 = load i8*, i8** %8, align 8
  store i8* %311, i8** %9, align 8
  br label %312

312:                                              ; preds = %334, %304
  %313 = load i8*, i8** %9, align 8
  %314 = load i8*, i8** %8, align 8
  %315 = load i64, i64* %7, align 8
  %316 = getelementptr inbounds i8, i8* %314, i64 %315
  %317 = getelementptr inbounds i8, i8* %316, i64 -27
  %318 = icmp ult i8* %313, %317
  br i1 %318, label %319, label %337

319:                                              ; preds = %312
  %320 = load i8*, i8** %9, align 8
  %321 = load i8*, i8** %8, align 8
  %322 = ptrtoint i8* %320 to i64
  %323 = ptrtoint i8* %321 to i64
  %324 = sub i64 %322, %323
  %325 = trunc i64 %324 to i32
  %326 = load i8*, i8** %10, align 8
  %327 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %325, i8* %326)
  %328 = load i8*, i8** %9, align 8
  %329 = load i8, i8* %328, align 1
  %330 = call i32 @assertEqualInt(i64 0, i8 signext %329)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %319
  br label %337

333:                                              ; preds = %319
  br label %334

334:                                              ; preds = %333
  %335 = load i8*, i8** %9, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %9, align 8
  br label %312

337:                                              ; preds = %332, %312
  %338 = load i8*, i8** %10, align 8
  %339 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %338)
  %340 = load i8*, i8** %8, align 8
  %341 = load i64, i64* %7, align 8
  %342 = getelementptr inbounds i8, i8* %340, i64 %341
  %343 = getelementptr inbounds i8, i8* %342, i64 -27
  %344 = call i32 @assertEqualMem(i8* %343, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @verify_write_data_block.data, i64 0, i64 0), i32 27)
  %345 = load i64, i64* %7, align 8
  %346 = load i8*, i8** %8, align 8
  %347 = load i64, i64* %7, align 8
  %348 = load i32*, i32** %11, align 8
  %349 = call signext i8 @fread(i8* %346, i32 1, i64 %347, i32* %348)
  %350 = call i32 @assertEqualInt(i64 %345, i8 signext %349)
  %351 = load i8*, i8** %10, align 8
  %352 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %351)
  %353 = load i8*, i8** %8, align 8
  store i8* %353, i8** %9, align 8
  br label %354

354:                                              ; preds = %375, %337
  %355 = load i8*, i8** %9, align 8
  %356 = load i8*, i8** %8, align 8
  %357 = load i64, i64* %7, align 8
  %358 = getelementptr inbounds i8, i8* %356, i64 %357
  %359 = icmp ult i8* %355, %358
  br i1 %359, label %360, label %378

360:                                              ; preds = %354
  %361 = load i8*, i8** %9, align 8
  %362 = load i8*, i8** %8, align 8
  %363 = ptrtoint i8* %361 to i64
  %364 = ptrtoint i8* %362 to i64
  %365 = sub i64 %363, %364
  %366 = trunc i64 %365 to i32
  %367 = load i8*, i8** %10, align 8
  %368 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %366, i8* %367)
  %369 = load i8*, i8** %9, align 8
  %370 = load i8, i8* %369, align 1
  %371 = call i32 @assertEqualInt(i64 0, i8 signext %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %360
  br label %378

374:                                              ; preds = %360
  br label %375

375:                                              ; preds = %374
  %376 = load i8*, i8** %9, align 8
  %377 = getelementptr inbounds i8, i8* %376, i32 1
  store i8* %377, i8** %9, align 8
  br label %354

378:                                              ; preds = %373, %354
  %379 = load i32*, i32** %11, align 8
  %380 = call signext i8 @fclose(i32* %379)
  %381 = call i32 @assertEqualInt(i64 0, i8 signext %380)
  %382 = load i8*, i8** %8, align 8
  %383 = call i32 @free(i8* %382)
  %384 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %385 = call i32 @archive_entry_free(%struct.archive_entry* %384)
  br label %386

386:                                              ; preds = %378, %125, %24
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @failure(i8*, ...) #1

declare dso_local i32 @assertEqualInt(i64, i8 signext) #1

declare dso_local signext i8 @archive_write_data_block(%struct.archive*, i8*, i64, i64) #1

declare dso_local i32 @archive_write_finish_entry(%struct.archive*) #1

declare dso_local i64 @stat(i32, %struct.stat*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local signext i8 @fread(i8*, i32, i64, i32*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local signext i8 @fclose(i32*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
