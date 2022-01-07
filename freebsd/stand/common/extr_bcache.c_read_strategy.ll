; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_read_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_bcache.c_read_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcache_devdata = type { i32 (i32, i32, i64, i64, i64, i64*)*, i32, %struct.bcache* }
%struct.bcache = type { i64, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@bcache_blksize = common dso_local global i64 0, align 8
@bcache_misses = common dso_local global i32 0, align 4
@BCACHE_MINREADAHEAD = common dso_local global i64 0, align 8
@bcache_hits = common dso_local global i32 0, align 4
@BCACHE_READAHEAD = common dso_local global i32 0, align 4
@F_NORA = common dso_local global i32 0, align 4
@F_MASK = common dso_local global i32 0, align 4
@bcache_rablks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i64, i8*, i64*)* @read_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_strategy(i8* %0, i32 %1, i64 %2, i64 %3, i8* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.bcache_devdata*, align 8
  %15 = alloca %struct.bcache*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to %struct.bcache_devdata*
  store %struct.bcache_devdata* %26, %struct.bcache_devdata** %14, align 8
  %27 = load %struct.bcache_devdata*, %struct.bcache_devdata** %14, align 8
  %28 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %27, i32 0, i32 2
  %29 = load %struct.bcache*, %struct.bcache** %28, align 8
  store %struct.bcache* %29, %struct.bcache** %15, align 8
  %30 = load %struct.bcache*, %struct.bcache** %15, align 8
  %31 = icmp eq %struct.bcache* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @ENODEV, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  br label %305

34:                                               ; preds = %6
  %35 = load i64*, i64** %13, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64*, i64** %13, align 8
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* @bcache_blksize, align 8
  %42 = udiv i64 %40, %41
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* %17, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %17, align 8
  br label %51

51:                                               ; preds = %48, %45, %39
  store i32 0, i32* %22, align 4
  store i64 1, i64* %20, align 8
  store i64 0, i64* %16, align 8
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* %17, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load %struct.bcache*, %struct.bcache** %15, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %16, align 8
  %60 = add i64 %58, %59
  %61 = call i64 @BCACHE_LOOKUP(%struct.bcache* %57, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %56
  %64 = load i64, i64* %17, align 8
  %65 = load i64, i64* %16, align 8
  %66 = sub i64 %64, %65
  %67 = load i32, i32* @bcache_misses, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* @bcache_misses, align 4
  store i64 0, i64* %20, align 8
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* %16, align 8
  %73 = sub i64 %71, %72
  %74 = load i64, i64* @BCACHE_MINREADAHEAD, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %63
  %77 = load %struct.bcache*, %struct.bcache** %15, align 8
  %78 = getelementptr inbounds %struct.bcache, %struct.bcache* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BCACHE_MINREADAHEAD, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.bcache*, %struct.bcache** %15, align 8
  %84 = getelementptr inbounds %struct.bcache, %struct.bcache* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = lshr i64 %85, 1
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %82, %76, %63
  br label %95

88:                                               ; preds = %56
  %89 = load i32, i32* @bcache_hits, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* @bcache_hits, align 4
  br label %91

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91
  %93 = load i64, i64* %16, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %16, align 8
  br label %52

95:                                               ; preds = %87, %52
  %96 = load i64, i64* %20, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %123

98:                                               ; preds = %95
  %99 = load %struct.bcache*, %struct.bcache** %15, align 8
  %100 = getelementptr inbounds %struct.bcache, %struct.bcache* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @BCACHE_READAHEAD, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.bcache*, %struct.bcache** %15, align 8
  %107 = getelementptr inbounds %struct.bcache, %struct.bcache* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = shl i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %105, %98
  %111 = load %struct.bcache*, %struct.bcache** %15, align 8
  %112 = getelementptr inbounds %struct.bcache, %struct.bcache* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @bcache_blksize, align 8
  %115 = load %struct.bcache*, %struct.bcache** %15, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i64 @BHASH(%struct.bcache* %115, i64 %116)
  %118 = mul i64 %114, %117
  %119 = add i64 %113, %118
  %120 = load i8*, i8** %12, align 8
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @bcopy(i64 %119, i8* %120, i64 %121)
  br label %294

123:                                              ; preds = %95
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %16, align 8
  %126 = add i64 %124, %125
  store i64 %126, i64* %23, align 8
  %127 = load %struct.bcache*, %struct.bcache** %15, align 8
  %128 = getelementptr inbounds %struct.bcache, %struct.bcache* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @bcache_blksize, align 8
  %131 = load %struct.bcache*, %struct.bcache** %15, align 8
  %132 = load i64, i64* %23, align 8
  %133 = call i64 @BHASH(%struct.bcache* %131, i64 %132)
  %134 = mul i64 %130, %133
  %135 = add i64 %129, %134
  store i64 %135, i64* %24, align 8
  %136 = load %struct.bcache*, %struct.bcache** %15, align 8
  %137 = getelementptr inbounds %struct.bcache, %struct.bcache* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.bcache*, %struct.bcache** %15, align 8
  %140 = load i64, i64* %23, align 8
  %141 = call i64 @BHASH(%struct.bcache* %139, i64 %140)
  %142 = sub i64 %138, %141
  store i64 %142, i64* %19, align 8
  %143 = load i64, i64* %19, align 8
  %144 = load i64, i64* %17, align 8
  %145 = load i64, i64* %16, align 8
  %146 = sub i64 %144, %145
  %147 = call i64 @MIN(i64 %143, i64 %146)
  store i64 %147, i64* %18, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @F_NORA, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* @F_NORA, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %123
  store i64 0, i64* %21, align 8
  br label %164

154:                                              ; preds = %123
  %155 = load %struct.bcache*, %struct.bcache** %15, align 8
  %156 = getelementptr inbounds %struct.bcache, %struct.bcache* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.bcache*, %struct.bcache** %15, align 8
  %159 = load i64, i64* %23, align 8
  %160 = load i64, i64* %18, align 8
  %161 = add i64 %159, %160
  %162 = call i64 @BHASH(%struct.bcache* %158, i64 %161)
  %163 = sub i64 %157, %162
  store i64 %163, i64* %21, align 8
  br label %164

164:                                              ; preds = %154, %153
  %165 = load i64, i64* %21, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %164
  %168 = load i64, i64* %21, align 8
  %169 = load %struct.bcache*, %struct.bcache** %15, align 8
  %170 = getelementptr inbounds %struct.bcache, %struct.bcache* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %168, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %167
  %174 = load %struct.bcache*, %struct.bcache** %15, align 8
  %175 = getelementptr inbounds %struct.bcache, %struct.bcache* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %21, align 8
  %178 = sub i64 %177, 1
  %179 = call i64 @MIN(i64 %176, i64 %178)
  store i64 %179, i64* %21, align 8
  %180 = load i64, i64* %21, align 8
  %181 = call i64 @rounddown(i64 %180, i32 16)
  store i64 %181, i64* %21, align 8
  %182 = load i64, i64* %21, align 8
  %183 = load i64, i64* %18, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %18, align 8
  br label %185

185:                                              ; preds = %173, %167, %164
  store i64 0, i64* %16, align 8
  br label %186

186:                                              ; preds = %196, %185
  %187 = load i64, i64* %16, align 8
  %188 = load i64, i64* %18, align 8
  %189 = icmp ult i64 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load %struct.bcache*, %struct.bcache** %15, align 8
  %192 = load i64, i64* %23, align 8
  %193 = load i64, i64* %16, align 8
  %194 = add i64 %192, %193
  %195 = call i32 @bcache_invalidate(%struct.bcache* %191, i64 %194)
  br label %196

196:                                              ; preds = %190
  %197 = load i64, i64* %16, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %16, align 8
  br label %186

199:                                              ; preds = %186
  store i64 0, i64* %19, align 8
  %200 = load i32, i32* @F_MASK, align 4
  %201 = load i32, i32* %9, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %9, align 4
  %203 = load %struct.bcache_devdata*, %struct.bcache_devdata** %14, align 8
  %204 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %203, i32 0, i32 0
  %205 = load i32 (i32, i32, i64, i64, i64, i64*)*, i32 (i32, i32, i64, i64, i64, i64*)** %204, align 8
  %206 = load %struct.bcache_devdata*, %struct.bcache_devdata** %14, align 8
  %207 = getelementptr inbounds %struct.bcache_devdata, %struct.bcache_devdata* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load i64, i64* %23, align 8
  %211 = load i64, i64* %18, align 8
  %212 = load i64, i64* @bcache_blksize, align 8
  %213 = mul i64 %211, %212
  %214 = load i64, i64* %24, align 8
  %215 = call i32 %205(i32 %208, i32 %209, i64 %210, i64 %213, i64 %214, i64* %19)
  store i32 %215, i32* %22, align 4
  %216 = load i64, i64* @bcache_blksize, align 8
  %217 = load i64, i64* %19, align 8
  %218 = udiv i64 %217, %216
  store i64 %218, i64* %19, align 8
  store i64 0, i64* %16, align 8
  br label %219

219:                                              ; preds = %229, %199
  %220 = load i64, i64* %16, align 8
  %221 = load i64, i64* %19, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %232

223:                                              ; preds = %219
  %224 = load %struct.bcache*, %struct.bcache** %15, align 8
  %225 = load i64, i64* %23, align 8
  %226 = load i64, i64* %16, align 8
  %227 = add i64 %225, %226
  %228 = call i32 @bcache_insert(%struct.bcache* %224, i64 %227)
  br label %229

229:                                              ; preds = %223
  %230 = load i64, i64* %16, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %16, align 8
  br label %219

232:                                              ; preds = %219
  %233 = load i64, i64* %19, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load i64, i64* %19, align 8
  %237 = load i64, i64* %18, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load i64, i64* %18, align 8
  %241 = load i64, i64* %19, align 8
  %242 = sub i64 %240, %241
  %243 = load i64, i64* @bcache_rablks, align 8
  %244 = add i64 %243, %242
  store i64 %244, i64* @bcache_rablks, align 8
  br label %249

245:                                              ; preds = %235
  %246 = load i64, i64* %21, align 8
  %247 = load i64, i64* @bcache_rablks, align 8
  %248 = add i64 %247, %246
  store i64 %248, i64* @bcache_rablks, align 8
  br label %249

249:                                              ; preds = %245, %239
  br label %250

250:                                              ; preds = %249, %232
  store i64 0, i64* %16, align 8
  br label %251

251:                                              ; preds = %264, %250
  %252 = load i64, i64* %16, align 8
  %253 = load i64, i64* %17, align 8
  %254 = icmp ult i64 %252, %253
  br i1 %254, label %255, label %267

255:                                              ; preds = %251
  %256 = load %struct.bcache*, %struct.bcache** %15, align 8
  %257 = load i64, i64* %10, align 8
  %258 = load i64, i64* %16, align 8
  %259 = add i64 %257, %258
  %260 = call i64 @BCACHE_LOOKUP(%struct.bcache* %256, i64 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %267

263:                                              ; preds = %255
  br label %264

264:                                              ; preds = %263
  %265 = load i64, i64* %16, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %16, align 8
  br label %251

267:                                              ; preds = %262, %251
  %268 = load i64, i64* %11, align 8
  %269 = load i64, i64* %16, align 8
  %270 = load i64, i64* @bcache_blksize, align 8
  %271 = mul i64 %269, %270
  %272 = icmp ugt i64 %268, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load i64, i64* %16, align 8
  %275 = load i64, i64* @bcache_blksize, align 8
  %276 = mul i64 %274, %275
  store i64 %276, i64* %11, align 8
  br label %277

277:                                              ; preds = %273, %267
  %278 = load i64, i64* %11, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %293

280:                                              ; preds = %277
  %281 = load %struct.bcache*, %struct.bcache** %15, align 8
  %282 = getelementptr inbounds %struct.bcache, %struct.bcache* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @bcache_blksize, align 8
  %285 = load %struct.bcache*, %struct.bcache** %15, align 8
  %286 = load i64, i64* %10, align 8
  %287 = call i64 @BHASH(%struct.bcache* %285, i64 %286)
  %288 = mul i64 %284, %287
  %289 = add i64 %283, %288
  %290 = load i8*, i8** %12, align 8
  %291 = load i64, i64* %11, align 8
  %292 = call i32 @bcopy(i64 %289, i8* %290, i64 %291)
  store i32 0, i32* %22, align 4
  br label %293

293:                                              ; preds = %280, %277
  br label %294

294:                                              ; preds = %293, %110
  %295 = load i32, i32* %22, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %294
  %298 = load i64*, i64** %13, align 8
  %299 = icmp ne i64* %298, null
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i64, i64* %11, align 8
  %302 = load i64*, i64** %13, align 8
  store i64 %301, i64* %302, align 8
  br label %303

303:                                              ; preds = %300, %297, %294
  %304 = load i32, i32* %22, align 4
  store i32 %304, i32* %7, align 4
  br label %305

305:                                              ; preds = %303, %32
  %306 = load i32, i32* %7, align 4
  ret i32 %306
}

declare dso_local i64 @BCACHE_LOOKUP(%struct.bcache*, i64) #1

declare dso_local i32 @bcopy(i64, i8*, i64) #1

declare dso_local i64 @BHASH(%struct.bcache*, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local i32 @bcache_invalidate(%struct.bcache*, i64) #1

declare dso_local i32 @bcache_insert(%struct.bcache*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
