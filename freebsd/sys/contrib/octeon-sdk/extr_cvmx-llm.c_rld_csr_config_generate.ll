; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_rld_csr_config_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-llm.c_rld_csr_config_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OCTEON_CN58XX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Warning, using default max_rld_clock_mhz of: %lu MHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ERROR: CN58XX LLM clock divisor out of range\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Using llm clock divisor: %d, llm clock is: %lu MHz\0A\00", align 1
@tskw_mod = common dso_local global i32 0, align 4
@tskw_ps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rld_csr_config_generate(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 20, i32* %12, align 4
  store i32 6, i32* %17, align 4
  store i32 99, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %33, align 4
  store i32 32, i32* %34, align 4
  store i32 8, i32* %36, align 4
  store i32 0, i32* %39, align 4
  store i32 1, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32 1, i32* %44, align 4
  store i32 1, i32* %47, align 4
  store i32 1, i32* %48, align 4
  store i32 2, i32* %49, align 4
  store i32 0, i32* %50, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %468

56:                                               ; preds = %2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %6, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %7, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %8, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %9, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %28, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %29, align 4
  %83 = load i32, i32* %28, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %56
  %86 = load i32, i32* %29, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @MIN(i32 %91, i32 %94)
  store i32 %95, i32* %30, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @MIN(i32 %98, i32 %101)
  store i32 %102, i32* %32, align 4
  br label %126

103:                                              ; preds = %85, %56
  %104 = load i32, i32* %28, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %30, align 4
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %32, align 4
  br label %125

113:                                              ; preds = %103
  %114 = load i32, i32* %29, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %30, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 5
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %32, align 4
  br label %124

123:                                              ; preds = %113
  store i32 -1, i32* %3, align 4
  br label %468

124:                                              ; preds = %116
  br label %125

125:                                              ; preds = %124, %106
  br label %126

126:                                              ; preds = %125, %88
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = sdiv i32 %129, 1000000
  store i32 %130, i32* %51, align 4
  %131 = load i32, i32* %51, align 4
  %132 = icmp sle i32 %131, 367
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  store i32 0, i32* %39, align 4
  br label %135

134:                                              ; preds = %126
  store i32 1, i32* %39, align 4
  br label %135

135:                                              ; preds = %134, %133
  %136 = load i32, i32* @OCTEON_CN58XX, align 4
  %137 = call i64 @OCTEON_IS_MODEL(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %199

139:                                              ; preds = %135
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 9
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %52, align 4
  %143 = load i32, i32* %52, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %139
  store i32 400, i32* %52, align 4
  %146 = load i32, i32* %52, align 4
  %147 = sext i32 %146 to i64
  %148 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %147)
  br label %149

149:                                              ; preds = %145, %139
  %150 = load i32, i32* %51, align 4
  %151 = load i32, i32* %52, align 4
  %152 = sdiv i32 %150, %151
  store i32 %152, i32* %49, align 4
  %153 = load i32, i32* %49, align 4
  %154 = load i32, i32* %52, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %51, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %161

158:                                              ; preds = %149
  %159 = load i32, i32* %49, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %49, align 4
  br label %161

161:                                              ; preds = %158, %149
  %162 = load i32, i32* %49, align 4
  %163 = icmp sgt i32 %162, 4
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %467

166:                                              ; preds = %161
  %167 = load i32, i32* %49, align 4
  %168 = icmp slt i32 %167, 2
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  store i32 2, i32* %49, align 4
  br label %170

170:                                              ; preds = %169, %166
  %171 = load i32, i32* %49, align 4
  %172 = load i32, i32* %51, align 4
  %173 = sext i32 %172 to i64
  %174 = load i32, i32* %49, align 4
  %175 = sext i32 %174 to i64
  %176 = udiv i64 %173, %175
  %177 = call i32 (i8*, ...) @cvmx_dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %171, i64 %176)
  %178 = load i32, i32* %49, align 4
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %181

180:                                              ; preds = %170
  store i32 0, i32* %50, align 4
  br label %184

181:                                              ; preds = %170
  %182 = load i32, i32* %49, align 4
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* %50, align 4
  br label %184

184:                                              ; preds = %181, %180
  %185 = load i32, i32* %49, align 4
  %186 = icmp eq i32 %185, 3
  br i1 %186, label %187, label %188

187:                                              ; preds = %184
  store i32 2, i32* %48, align 4
  br label %188

188:                                              ; preds = %187, %184
  %189 = load i32, i32* %51, align 4
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %49, align 4
  %192 = sext i32 %191 to i64
  %193 = udiv i64 %190, %192
  %194 = icmp uge i64 %193, 375
  br i1 %194, label %195, label %198

195:                                              ; preds = %188
  %196 = load i32, i32* %39, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %39, align 4
  br label %198

198:                                              ; preds = %195, %188
  br label %199

199:                                              ; preds = %198, %135
  %200 = load i32, i32* %51, align 4
  %201 = sub nsw i32 %200, 1
  %202 = add nsw i32 1000000, %201
  %203 = load i32, i32* %51, align 4
  %204 = sdiv i32 %202, %203
  store i32 %204, i32* %10, align 4
  %205 = load i32, i32* %11, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  br label %467

208:                                              ; preds = %199
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %49, align 4
  %211 = mul nsw i32 %209, %210
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %12, align 4
  %213 = mul nsw i32 %212, 1000
  %214 = load i32, i32* %18, align 4
  %215 = sdiv i32 %213, %214
  store i32 %215, i32* %13, align 4
  %216 = load i32, i32* %12, align 4
  %217 = mul nsw i32 %216, 1000
  %218 = load i32, i32* %18, align 4
  %219 = srem i32 %217, %218
  store i32 %219, i32* %14, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %208
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %13, align 4
  br label %225

225:                                              ; preds = %222, %208
  %226 = load i32, i32* %13, align 4
  %227 = and i32 %226, 1
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %225
  %230 = load i32, i32* %13, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %13, align 4
  br label %232

232:                                              ; preds = %229, %225
  %233 = load i32, i32* %13, align 4
  %234 = icmp slt i32 %233, 4
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  store i32 4, i32* %13, align 4
  br label %241

236:                                              ; preds = %232
  %237 = load i32, i32* %13, align 4
  %238 = icmp sgt i32 %237, 8
  br i1 %238, label %239, label %240

239:                                              ; preds = %236
  br label %467

240:                                              ; preds = %236
  br label %241

241:                                              ; preds = %240, %235
  %242 = load i32, i32* %13, align 4
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %16, align 4
  %245 = load i32, i32* %13, align 4
  %246 = icmp eq i32 %245, 4
  br i1 %246, label %247, label %248

247:                                              ; preds = %241
  store i32 1, i32* %19, align 4
  br label %259

248:                                              ; preds = %241
  %249 = load i32, i32* %13, align 4
  %250 = icmp eq i32 %249, 6
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  store i32 2, i32* %19, align 4
  br label %258

252:                                              ; preds = %248
  %253 = load i32, i32* %13, align 4
  %254 = icmp eq i32 %253, 8
  br i1 %254, label %255, label %256

255:                                              ; preds = %252
  store i32 3, i32* %19, align 4
  br label %257

256:                                              ; preds = %252
  br label %467

257:                                              ; preds = %255
  br label %258

258:                                              ; preds = %257, %251
  br label %259

259:                                              ; preds = %258, %247
  %260 = load i32, i32* %20, align 4
  %261 = shl i32 %260, 9
  %262 = load i32, i32* %21, align 4
  %263 = shl i32 %262, 8
  %264 = or i32 %261, %263
  %265 = load i32, i32* %22, align 4
  %266 = shl i32 %265, 7
  %267 = or i32 %264, %266
  %268 = load i32, i32* %19, align 4
  %269 = or i32 %267, %268
  store i32 %269, i32* %23, align 4
  %270 = load i32, i32* %32, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %273

272:                                              ; preds = %259
  br label %286

273:                                              ; preds = %259
  %274 = load i32, i32* %23, align 4
  %275 = load i8*, i8** %6, align 8
  %276 = call i32 @process_address_map_str(i32 %274, i8* %275)
  store i32 %276, i32* %26, align 4
  %277 = load i32, i32* %23, align 4
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 @process_address_map_str(i32 %277, i8* %278)
  store i32 %279, i32* %27, align 4
  %280 = load i32, i32* %23, align 4
  %281 = load i8*, i8** %8, align 8
  %282 = call i32 @process_address_map_str(i32 %280, i8* %281)
  store i32 %282, i32* %24, align 4
  %283 = load i32, i32* %23, align 4
  %284 = load i8*, i8** %9, align 8
  %285 = call i32 @process_address_map_str(i32 %283, i8* %284)
  store i32 %285, i32* %25, align 4
  br label %286

286:                                              ; preds = %273, %272
  %287 = load i32, i32* %32, align 4
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i32, i32* %30, align 4
  %291 = sdiv i32 %290, 2
  store i32 %291, i32* %31, align 4
  br label %294

292:                                              ; preds = %286
  %293 = load i32, i32* %30, align 4
  store i32 %293, i32* %31, align 4
  br label %294

294:                                              ; preds = %292, %289
  %295 = load i32, i32* %31, align 4
  %296 = icmp eq i32 %295, 16
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  store i32 0, i32* %33, align 4
  br label %323

298:                                              ; preds = %294
  %299 = load i32, i32* %31, align 4
  %300 = icmp eq i32 %299, 32
  br i1 %300, label %301, label %302

301:                                              ; preds = %298
  store i32 1, i32* %33, align 4
  br label %322

302:                                              ; preds = %298
  %303 = load i32, i32* %31, align 4
  %304 = icmp eq i32 %303, 64
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  store i32 2, i32* %33, align 4
  br label %321

306:                                              ; preds = %302
  %307 = load i32, i32* %31, align 4
  %308 = icmp eq i32 %307, 128
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  store i32 3, i32* %33, align 4
  br label %320

310:                                              ; preds = %306
  %311 = load i32, i32* %31, align 4
  %312 = icmp eq i32 %311, 256
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 4, i32* %33, align 4
  br label %319

314:                                              ; preds = %310
  %315 = load i32, i32* %31, align 4
  %316 = icmp eq i32 %315, 512
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %318

318:                                              ; preds = %317, %314
  br label %319

319:                                              ; preds = %318, %313
  br label %320

320:                                              ; preds = %319, %309
  br label %321

321:                                              ; preds = %320, %305
  br label %322

322:                                              ; preds = %321, %301
  br label %323

323:                                              ; preds = %322, %297
  %324 = load i32, i32* %34, align 4
  %325 = mul nsw i32 %324, 1000
  %326 = mul nsw i32 %325, 1000
  %327 = load i32, i32* %36, align 4
  %328 = mul nsw i32 %327, 1024
  %329 = sdiv i32 %326, %328
  store i32 %329, i32* %35, align 4
  %330 = load i32, i32* %35, align 4
  %331 = mul nsw i32 %330, 1000
  %332 = load i32, i32* %10, align 4
  %333 = mul nsw i32 %332, 512
  %334 = sdiv i32 %331, %333
  store i32 %334, i32* %37, align 4
  %335 = load i32, i32* %35, align 4
  %336 = mul nsw i32 %335, 1000
  %337 = load i32, i32* %10, align 4
  %338 = mul nsw i32 %337, 512
  %339 = srem i32 %336, %338
  store i32 %339, i32* %38, align 4
  %340 = load i32, i32* %39, align 4
  %341 = icmp sgt i32 %340, 3
  br i1 %341, label %342, label %343

342:                                              ; preds = %323
  br label %467

343:                                              ; preds = %323
  store i32 1, i32* %44, align 4
  %344 = load i32, i32* %15, align 4
  %345 = load i32, i32* %44, align 4
  %346 = add nsw i32 %344, %345
  %347 = mul nsw i32 %346, 2
  %348 = load i32, i32* %39, align 4
  %349 = add nsw i32 %347, %348
  %350 = load i32, i32* %41, align 4
  %351 = add nsw i32 %349, %350
  %352 = add nsw i32 %351, 1
  %353 = sdiv i32 %352, 2
  store i32 %353, i32* %45, align 4
  %354 = load i32, i32* %45, align 4
  %355 = and i32 %354, 1
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %343
  %358 = load i32, i32* %45, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %45, align 4
  br label %360

360:                                              ; preds = %357, %343
  %361 = load i32, i32* %45, align 4
  %362 = load i32, i32* %16, align 4
  %363 = sub nsw i32 %361, %362
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %45, align 4
  %365 = load i32, i32* %45, align 4
  %366 = icmp slt i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  br label %467

368:                                              ; preds = %360
  %369 = load i32, i32* %16, align 4
  %370 = load i32, i32* %44, align 4
  %371 = add nsw i32 %369, %370
  %372 = mul nsw i32 %371, 2
  %373 = load i32, i32* %39, align 4
  %374 = sub nsw i32 %372, %373
  %375 = load i32, i32* %40, align 4
  %376 = add nsw i32 %374, %375
  %377 = sdiv i32 %376, 2
  store i32 %377, i32* %46, align 4
  %378 = load i32, i32* %46, align 4
  %379 = and i32 %378, 1
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %368
  %382 = load i32, i32* %46, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %46, align 4
  br label %384

384:                                              ; preds = %381, %368
  %385 = load i32, i32* %46, align 4
  %386 = load i32, i32* %15, align 4
  %387 = sub nsw i32 %385, %386
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %46, align 4
  %389 = load i32, i32* %46, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %384
  br label %467

392:                                              ; preds = %384
  store i32 0, i32* %42, align 4
  %393 = load i32, i32* %28, align 4
  %394 = load i32, i32* %29, align 4
  %395 = shl i32 %394, 1
  %396 = or i32 %393, %395
  %397 = load i32, i32* %11, align 4
  %398 = shl i32 %397, 3
  %399 = or i32 %396, %398
  %400 = load i32, i32* %48, align 4
  %401 = shl i32 %400, 4
  %402 = or i32 %399, %401
  %403 = load i32, i32* %45, align 4
  %404 = shl i32 %403, 6
  %405 = or i32 %402, %404
  %406 = load i32, i32* %46, align 4
  %407 = shl i32 %406, 10
  %408 = or i32 %405, %407
  %409 = load i32, i32* %40, align 4
  %410 = shl i32 %409, 14
  %411 = or i32 %408, %410
  %412 = load i32, i32* %41, align 4
  %413 = shl i32 %412, 16
  %414 = or i32 %411, %413
  %415 = load i32, i32* %33, align 4
  %416 = shl i32 %415, 19
  %417 = or i32 %414, %416
  %418 = load i32, i32* %47, align 4
  %419 = shl i32 %418, 22
  %420 = or i32 %417, %419
  %421 = load i32, i32* %50, align 4
  %422 = shl i32 %421, 28
  %423 = or i32 %420, %422
  store i32 %423, i32* %42, align 4
  store i32 0, i32* %43, align 4
  %424 = load i32, i32* %37, align 4
  %425 = load i32, i32* %39, align 4
  %426 = shl i32 %425, 4
  %427 = or i32 %424, %426
  %428 = load i32, i32* %15, align 4
  %429 = shl i32 %428, 8
  %430 = or i32 %427, %429
  %431 = load i32, i32* %16, align 4
  %432 = shl i32 %431, 12
  %433 = or i32 %430, %432
  %434 = load i32, i32* %13, align 4
  %435 = shl i32 %434, 16
  %436 = or i32 %433, %435
  %437 = load i32, i32* %17, align 4
  %438 = shl i32 %437, 20
  %439 = or i32 %436, %438
  store i32 %439, i32* %43, align 4
  %440 = load i32, i32* %42, align 4
  %441 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 0
  store i32 %440, i32* %442, align 4
  %443 = load i32, i32* %43, align 4
  %444 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 1
  store i32 %443, i32* %445, align 4
  %446 = load i32, i32* %24, align 4
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 2
  store i32 %446, i32* %448, align 4
  %449 = load i32, i32* %26, align 4
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 3
  store i32 %449, i32* %451, align 4
  %452 = load i32, i32* %25, align 4
  %453 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %453, i32 0, i32 4
  store i32 %452, i32* %454, align 4
  %455 = load i32, i32* %27, align 4
  %456 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %457 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %456, i32 0, i32 5
  store i32 %455, i32* %457, align 4
  %458 = load i32, i32* %28, align 4
  %459 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %459, i32 0, i32 6
  store i32 %458, i32* %460, align 4
  %461 = load i32, i32* %29, align 4
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 7
  store i32 %461, i32* %463, align 4
  %464 = load i32, i32* %32, align 4
  %465 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i32 0, i32 8
  store i32 %464, i32* %466, align 4
  store i32 0, i32* %3, align 4
  br label %468

467:                                              ; preds = %391, %367, %342, %256, %239, %207, %164
  store i32 -1, i32* %3, align 4
  br label %468

468:                                              ; preds = %467, %392, %123, %55
  %469 = load i32, i32* %3, align 4
  ret i32 %469
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_dprintf(i8*, ...) #1

declare dso_local i32 @process_address_map_str(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
