; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/simple/extr_simple_coder.c_simple_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/simple/extr_simple_coder.c_simple_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32, i64, i32* }

@LZMA_SYNC_FLUSH = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* @simple_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @simple_code(i8* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %30, %struct.TYPE_4__** %20, align 8
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* @LZMA_SYNC_FLUSH, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = load i64, i64* @LZMA_OPTIONS_ERROR, align 8
  store i64 %35, i64* %10, align 8
  br label %323

36:                                               ; preds = %9
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %36
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i64*, i64** %17, align 8
  %55 = load i64, i64* %18, align 8
  %56 = call i32 @lzma_bufcpy(i32* %47, i64* %49, i64 %52, i32* %53, i64* %54, i64 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ult i64 %59, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %44
  %65 = load i64, i64* @LZMA_OK, align 8
  store i64 %65, i64* %10, align 8
  br label %323

66:                                               ; preds = %44
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @assert(i32 %79)
  %81 = load i64, i64* @LZMA_STREAM_END, align 8
  store i64 %81, i64* %10, align 8
  br label %323

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %36
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load i64, i64* %18, align 8
  %94 = load i64*, i64** %17, align 8
  %95 = load i64, i64* %94, align 8
  %96 = sub i64 %93, %95
  store i64 %96, i64* %21, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub i64 %99, %102
  store i64 %103, i64* %22, align 8
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %22, align 8
  %106 = icmp ugt i64 %104, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %83
  %108 = load i64, i64* %22, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %205

110:                                              ; preds = %107, %83
  %111 = load i64*, i64** %17, align 8
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %23, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = load i64*, i64** %17, align 8
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i64, i64* %22, align 8
  %125 = call i32 @memcpy(i32* %116, i32* %123, i64 %124)
  %126 = load i64, i64* %22, align 8
  %127 = load i64*, i64** %17, align 8
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %126
  store i64 %129, i64* %127, align 8
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = load i64*, i64** %14, align 8
  %134 = load i64, i64* %15, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = load i64*, i64** %17, align 8
  %137 = load i64, i64* %18, align 8
  %138 = load i32, i32* %19, align 4
  %139 = call i64 @copy_or_code(%struct.TYPE_4__* %130, i32* %131, i32* %132, i64* %133, i64 %134, i32* %135, i64* %136, i64 %137, i32 %138)
  store i64 %139, i64* %24, align 8
  %140 = load i64, i64* %24, align 8
  %141 = load i64, i64* @LZMA_STREAM_END, align 8
  %142 = icmp ne i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i64, i64* %24, align 8
  %146 = load i64, i64* @LZMA_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %110
  %149 = load i64, i64* %24, align 8
  store i64 %149, i64* %10, align 8
  br label %323

150:                                              ; preds = %110
  %151 = load i64*, i64** %17, align 8
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* %23, align 8
  %154 = sub i64 %152, %153
  store i64 %154, i64* %25, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %156 = load i32*, i32** %16, align 8
  %157 = load i64, i64* %23, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i64, i64* %25, align 8
  %160 = call i8* @call_filter(%struct.TYPE_4__* %155, i32* %158, i64 %159)
  %161 = ptrtoint i8* %160 to i64
  store i64 %161, i64* %26, align 8
  %162 = load i64, i64* %25, align 8
  %163 = load i64, i64* %26, align 8
  %164 = sub i64 %162, %163
  store i64 %164, i64* %27, align 8
  %165 = load i64, i64* %27, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 2
  %170 = sext i32 %169 to i64
  %171 = icmp ule i64 %165, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i64 0, i64* %175, align 8
  %176 = load i64, i64* %27, align 8
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %150
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  store i64 0, i64* %185, align 8
  br label %204

186:                                              ; preds = %150
  %187 = load i64, i64* %27, align 8
  %188 = icmp ugt i64 %187, 0
  br i1 %188, label %189, label %203

189:                                              ; preds = %186
  %190 = load i64, i64* %27, align 8
  %191 = load i64*, i64** %17, align 8
  %192 = load i64, i64* %191, align 8
  %193 = sub i64 %192, %190
  store i64 %193, i64* %191, align 8
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 5
  %196 = load i32*, i32** %195, align 8
  %197 = load i32*, i32** %16, align 8
  %198 = load i64*, i64** %17, align 8
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i64, i64* %27, align 8
  %202 = call i32 @memcpy(i32* %196, i32* %200, i64 %201)
  br label %203

203:                                              ; preds = %189, %186
  br label %204

204:                                              ; preds = %203, %183
  br label %233

205:                                              ; preds = %107
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ugt i64 %208, 0
  br i1 %209, label %210, label %232

210:                                              ; preds = %205
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 5
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i64, i64* %22, align 8
  %222 = call i32 @memmove(i32* %213, i32* %220, i64 %221)
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = sub i64 %228, %225
  store i64 %229, i64* %227, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i64 0, i64* %231, align 8
  br label %232

232:                                              ; preds = %210, %205
  br label %233

233:                                              ; preds = %232, %204
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp eq i64 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ugt i64 %242, 0
  br i1 %243, label %244, label %306

244:                                              ; preds = %233
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %246 = load i32*, i32** %12, align 8
  %247 = load i32*, i32** %13, align 8
  %248 = load i64*, i64** %14, align 8
  %249 = load i64, i64* %15, align 8
  %250 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 5
  %252 = load i32*, i32** %251, align 8
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %256 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 8
  %258 = sext i32 %257 to i64
  %259 = load i32, i32* %19, align 4
  %260 = call i64 @copy_or_code(%struct.TYPE_4__* %245, i32* %246, i32* %247, i64* %248, i64 %249, i32* %252, i64* %254, i64 %258, i32 %259)
  store i64 %260, i64* %28, align 8
  %261 = load i64, i64* %28, align 8
  %262 = load i64, i64* @LZMA_STREAM_END, align 8
  %263 = icmp ne i64 %261, %262
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load i64, i64* %28, align 8
  %267 = load i64, i64* @LZMA_OK, align 8
  %268 = icmp ne i64 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %244
  %270 = load i64, i64* %28, align 8
  store i64 %270, i64* %10, align 8
  br label %323

271:                                              ; preds = %244
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 5
  %275 = load i32*, i32** %274, align 8
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = call i8* @call_filter(%struct.TYPE_4__* %272, i32* %275, i64 %278)
  %280 = ptrtoint i8* %279 to i64
  %281 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %284 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %293

287:                                              ; preds = %271
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i32 0, i32 1
  store i64 %290, i64* %292, align 8
  br label %293

293:                                              ; preds = %287, %271
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 5
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = load i32*, i32** %16, align 8
  %303 = load i64*, i64** %17, align 8
  %304 = load i64, i64* %18, align 8
  %305 = call i32 @lzma_bufcpy(i32* %296, i64* %298, i64 %301, i32* %302, i64* %303, i64 %304)
  br label %306

306:                                              ; preds = %293, %233
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %321

311:                                              ; preds = %306
  %312 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 2
  %317 = load i64, i64* %316, align 8
  %318 = icmp eq i64 %314, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %311
  %320 = load i64, i64* @LZMA_STREAM_END, align 8
  store i64 %320, i64* %10, align 8
  br label %323

321:                                              ; preds = %311, %306
  %322 = load i64, i64* @LZMA_OK, align 8
  store i64 %322, i64* %10, align 8
  br label %323

323:                                              ; preds = %321, %319, %269, %148, %71, %64, %34
  %324 = load i64, i64* %10, align 8
  ret i64 %324
}

declare dso_local i32 @lzma_bufcpy(i32*, i64*, i64, i32*, i64*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @copy_or_code(%struct.TYPE_4__*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32) #1

declare dso_local i8* @call_filter(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
