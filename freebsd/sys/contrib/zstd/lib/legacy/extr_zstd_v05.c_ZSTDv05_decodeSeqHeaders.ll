; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decodeSeqHeaders.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decodeSeqHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_SEQUENCES_SIZE = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@LLbits = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@LLFSEv05Log = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@Offbits = common dso_local global i32 0, align 4
@OffFSEv05Log = common dso_local global i32 0, align 4
@MLbits = common dso_local global i32 0, align 4
@MLFSEv05Log = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i64*, i32*, i32*, i32*, i8*, i64, i32)* @ZSTDv05_decodeSeqHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv05_decodeSeqHeaders(i32* %0, i32** %1, i64* %2, i32* %3, i32* %4, i32* %5, i8* %6, i64 %7, i32 %8) #0 {
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i64* %2, i64** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %37 = load i8*, i8** %17, align 8
  %38 = bitcast i8* %37 to i32*
  store i32* %38, i32** %20, align 8
  %39 = load i32*, i32** %20, align 8
  store i32* %39, i32** %21, align 8
  %40 = load i32*, i32** %20, align 8
  %41 = load i64, i64* %18, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %22, align 8
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* @MIN_SEQUENCES_SIZE, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %9
  %47 = load i32, i32* @srcSize_wrong, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %10, align 8
  br label %356

49:                                               ; preds = %9
  %50 = load i32*, i32** %21, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %21, align 8
  %52 = load i32, i32* %50, align 4
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i64 1, i64* %10, align 8
  br label %356

58:                                               ; preds = %49
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 128
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i32*, i32** %21, align 8
  %64 = load i32*, i32** %22, align 8
  %65 = icmp uge i32* %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @srcSize_wrong, align 4
  %68 = call i64 @ERROR(i32 %67)
  store i64 %68, i64* %10, align 8
  br label %356

69:                                               ; preds = %62
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 128
  %74 = shl i32 %73, 8
  %75 = load i32*, i32** %21, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %21, align 8
  %77 = load i32, i32* %75, align 4
  %78 = add nsw i32 %74, %77
  %79 = load i32*, i32** %11, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %69, %58
  %81 = load i32*, i32** %21, align 8
  %82 = load i32*, i32** %22, align 8
  %83 = icmp uge i32* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @srcSize_wrong, align 4
  %86 = call i64 @ERROR(i32 %85)
  store i64 %86, i64* %10, align 8
  br label %356

87:                                               ; preds = %80
  %88 = load i32*, i32** %21, align 8
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 6
  store i32 %90, i32* %23, align 4
  %91 = load i32*, i32** %21, align 8
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 4
  %94 = and i32 %93, 3
  store i32 %94, i32* %24, align 4
  %95 = load i32*, i32** %21, align 8
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 2
  %98 = and i32 %97, 3
  store i32 %98, i32* %25, align 4
  %99 = load i32*, i32** %21, align 8
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 2
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %125

103:                                              ; preds = %87
  %104 = load i32*, i32** %21, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32*, i32** %22, align 8
  %107 = icmp ugt i32* %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @srcSize_wrong, align 4
  %110 = call i64 @ERROR(i32 %109)
  store i64 %110, i64* %10, align 8
  br label %356

111:                                              ; preds = %103
  %112 = load i32*, i32** %21, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  store i64 %115, i64* %29, align 8
  %116 = load i32*, i32** %21, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 8
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* %29, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %29, align 8
  %123 = load i32*, i32** %21, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 3
  store i32* %124, i32** %21, align 8
  br label %148

125:                                              ; preds = %87
  %126 = load i32*, i32** %21, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  %128 = load i32*, i32** %22, align 8
  %129 = icmp ugt i32* %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i32, i32* @srcSize_wrong, align 4
  %132 = call i64 @ERROR(i32 %131)
  store i64 %132, i64* %10, align 8
  br label %356

133:                                              ; preds = %125
  %134 = load i32*, i32** %21, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %29, align 8
  %138 = load i32*, i32** %21, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 1
  %142 = shl i32 %141, 8
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %29, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* %29, align 8
  %146 = load i32*, i32** %21, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32* %147, i32** %21, align 8
  br label %148

148:                                              ; preds = %133, %111
  %149 = load i32*, i32** %21, align 8
  %150 = load i32**, i32*** %12, align 8
  store i32* %149, i32** %150, align 8
  %151 = load i64, i64* %29, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 %151
  store i32* %153, i32** %21, align 8
  %154 = load i64, i64* %29, align 8
  %155 = load i64*, i64** %13, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i32*, i32** %21, align 8
  %157 = load i32*, i32** %22, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 -3
  %159 = icmp ugt i32* %156, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %148
  %161 = load i32, i32* @srcSize_wrong, align 4
  %162 = call i64 @ERROR(i32 %161)
  store i64 %162, i64* %10, align 8
  br label %356

163:                                              ; preds = %148
  %164 = load i32, i32* @MaxML, align 4
  %165 = add i32 %164, 1
  %166 = zext i32 %165 to i64
  %167 = call i8* @llvm.stacksave()
  store i8* %167, i8** %30, align 8
  %168 = alloca i32, i64 %166, align 16
  store i64 %166, i64* %31, align 8
  %169 = load i32, i32* %23, align 4
  switch i32 %169, label %189 [
    i32 129, label %170
    i32 130, label %176
    i32 128, label %181
    i32 131, label %188
  ]

170:                                              ; preds = %163
  store i32 0, i32* %26, align 4
  %171 = load i32*, i32** %14, align 8
  %172 = load i32*, i32** %21, align 8
  %173 = getelementptr inbounds i32, i32* %172, i32 1
  store i32* %173, i32** %21, align 8
  %174 = load i32, i32* %172, align 4
  %175 = call i32 @FSEv05_buildDTable_rle(i32* %171, i32 %174)
  br label %221

176:                                              ; preds = %163
  %177 = load i32, i32* @LLbits, align 4
  store i32 %177, i32* %26, align 4
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* @LLbits, align 4
  %180 = call i32 @FSEv05_buildDTable_raw(i32* %178, i32 %179)
  br label %221

181:                                              ; preds = %163
  %182 = load i32, i32* %19, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* @corruption_detected, align 4
  %186 = call i64 @ERROR(i32 %185)
  store i64 %186, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

187:                                              ; preds = %181
  br label %221

188:                                              ; preds = %163
  br label %189

189:                                              ; preds = %163, %188
  %190 = load i32, i32* @MaxLL, align 4
  store i32 %190, i32* %34, align 4
  %191 = load i32*, i32** %21, align 8
  %192 = load i32*, i32** %22, align 8
  %193 = load i32*, i32** %21, align 8
  %194 = ptrtoint i32* %192 to i64
  %195 = ptrtoint i32* %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = call i64 @FSEv05_readNCount(i32* %168, i32* %34, i32* %26, i32* %191, i32 %198)
  store i64 %199, i64* %32, align 8
  %200 = load i64, i64* %32, align 8
  %201 = call i32 @FSEv05_isError(i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %189
  %204 = load i32, i32* @GENERIC, align 4
  %205 = call i64 @ERROR(i32 %204)
  store i64 %205, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

206:                                              ; preds = %189
  %207 = load i32, i32* %26, align 4
  %208 = load i32, i32* @LLFSEv05Log, align 4
  %209 = icmp ugt i32 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %206
  %211 = load i32, i32* @corruption_detected, align 4
  %212 = call i64 @ERROR(i32 %211)
  store i64 %212, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

213:                                              ; preds = %206
  %214 = load i64, i64* %32, align 8
  %215 = load i32*, i32** %21, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 %214
  store i32* %216, i32** %21, align 8
  %217 = load i32*, i32** %14, align 8
  %218 = load i32, i32* %34, align 4
  %219 = load i32, i32* %26, align 4
  %220 = call i32 @FSEv05_buildDTable(i32* %217, i32* %168, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %213, %187, %176, %170
  %222 = load i32, i32* %24, align 4
  switch i32 %222, label %252 [
    i32 129, label %223
    i32 130, label %239
    i32 128, label %244
    i32 131, label %251
  ]

223:                                              ; preds = %221
  store i32 0, i32* %27, align 4
  %224 = load i32*, i32** %21, align 8
  %225 = load i32*, i32** %22, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 -2
  %227 = icmp ugt i32* %224, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %223
  %229 = load i32, i32* @srcSize_wrong, align 4
  %230 = call i64 @ERROR(i32 %229)
  store i64 %230, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

231:                                              ; preds = %223
  %232 = load i32*, i32** %16, align 8
  %233 = load i32*, i32** %21, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %21, align 8
  %235 = load i32, i32* %233, align 4
  %236 = load i32, i32* @MaxOff, align 4
  %237 = and i32 %235, %236
  %238 = call i32 @FSEv05_buildDTable_rle(i32* %232, i32 %237)
  br label %284

239:                                              ; preds = %221
  %240 = load i32, i32* @Offbits, align 4
  store i32 %240, i32* %27, align 4
  %241 = load i32*, i32** %16, align 8
  %242 = load i32, i32* @Offbits, align 4
  %243 = call i32 @FSEv05_buildDTable_raw(i32* %241, i32 %242)
  br label %284

244:                                              ; preds = %221
  %245 = load i32, i32* %19, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %244
  %248 = load i32, i32* @corruption_detected, align 4
  %249 = call i64 @ERROR(i32 %248)
  store i64 %249, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

250:                                              ; preds = %244
  br label %284

251:                                              ; preds = %221
  br label %252

252:                                              ; preds = %221, %251
  %253 = load i32, i32* @MaxOff, align 4
  store i32 %253, i32* %35, align 4
  %254 = load i32*, i32** %21, align 8
  %255 = load i32*, i32** %22, align 8
  %256 = load i32*, i32** %21, align 8
  %257 = ptrtoint i32* %255 to i64
  %258 = ptrtoint i32* %256 to i64
  %259 = sub i64 %257, %258
  %260 = sdiv exact i64 %259, 4
  %261 = trunc i64 %260 to i32
  %262 = call i64 @FSEv05_readNCount(i32* %168, i32* %35, i32* %27, i32* %254, i32 %261)
  store i64 %262, i64* %32, align 8
  %263 = load i64, i64* %32, align 8
  %264 = call i32 @FSEv05_isError(i64 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %252
  %267 = load i32, i32* @GENERIC, align 4
  %268 = call i64 @ERROR(i32 %267)
  store i64 %268, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

269:                                              ; preds = %252
  %270 = load i32, i32* %27, align 4
  %271 = load i32, i32* @OffFSEv05Log, align 4
  %272 = icmp ugt i32 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %269
  %274 = load i32, i32* @corruption_detected, align 4
  %275 = call i64 @ERROR(i32 %274)
  store i64 %275, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

276:                                              ; preds = %269
  %277 = load i64, i64* %32, align 8
  %278 = load i32*, i32** %21, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 %277
  store i32* %279, i32** %21, align 8
  %280 = load i32*, i32** %16, align 8
  %281 = load i32, i32* %35, align 4
  %282 = load i32, i32* %27, align 4
  %283 = call i32 @FSEv05_buildDTable(i32* %280, i32* %168, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %276, %250, %239, %231
  %285 = load i32, i32* %25, align 4
  switch i32 %285, label %313 [
    i32 129, label %286
    i32 130, label %300
    i32 128, label %305
    i32 131, label %312
  ]

286:                                              ; preds = %284
  store i32 0, i32* %28, align 4
  %287 = load i32*, i32** %21, align 8
  %288 = load i32*, i32** %22, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 -2
  %290 = icmp ugt i32* %287, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load i32, i32* @srcSize_wrong, align 4
  %293 = call i64 @ERROR(i32 %292)
  store i64 %293, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

294:                                              ; preds = %286
  %295 = load i32*, i32** %15, align 8
  %296 = load i32*, i32** %21, align 8
  %297 = getelementptr inbounds i32, i32* %296, i32 1
  store i32* %297, i32** %21, align 8
  %298 = load i32, i32* %296, align 4
  %299 = call i32 @FSEv05_buildDTable_rle(i32* %295, i32 %298)
  br label %345

300:                                              ; preds = %284
  %301 = load i32, i32* @MLbits, align 4
  store i32 %301, i32* %28, align 4
  %302 = load i32*, i32** %15, align 8
  %303 = load i32, i32* @MLbits, align 4
  %304 = call i32 @FSEv05_buildDTable_raw(i32* %302, i32 %303)
  br label %345

305:                                              ; preds = %284
  %306 = load i32, i32* %19, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %305
  %309 = load i32, i32* @corruption_detected, align 4
  %310 = call i64 @ERROR(i32 %309)
  store i64 %310, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

311:                                              ; preds = %305
  br label %345

312:                                              ; preds = %284
  br label %313

313:                                              ; preds = %284, %312
  %314 = load i32, i32* @MaxML, align 4
  store i32 %314, i32* %36, align 4
  %315 = load i32*, i32** %21, align 8
  %316 = load i32*, i32** %22, align 8
  %317 = load i32*, i32** %21, align 8
  %318 = ptrtoint i32* %316 to i64
  %319 = ptrtoint i32* %317 to i64
  %320 = sub i64 %318, %319
  %321 = sdiv exact i64 %320, 4
  %322 = trunc i64 %321 to i32
  %323 = call i64 @FSEv05_readNCount(i32* %168, i32* %36, i32* %28, i32* %315, i32 %322)
  store i64 %323, i64* %32, align 8
  %324 = load i64, i64* %32, align 8
  %325 = call i32 @FSEv05_isError(i64 %324)
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %313
  %328 = load i32, i32* @GENERIC, align 4
  %329 = call i64 @ERROR(i32 %328)
  store i64 %329, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

330:                                              ; preds = %313
  %331 = load i32, i32* %28, align 4
  %332 = load i32, i32* @MLFSEv05Log, align 4
  %333 = icmp ugt i32 %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = load i32, i32* @corruption_detected, align 4
  %336 = call i64 @ERROR(i32 %335)
  store i64 %336, i64* %10, align 8
  store i32 1, i32* %33, align 4
  br label %346

337:                                              ; preds = %330
  %338 = load i64, i64* %32, align 8
  %339 = load i32*, i32** %21, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 %338
  store i32* %340, i32** %21, align 8
  %341 = load i32*, i32** %15, align 8
  %342 = load i32, i32* %36, align 4
  %343 = load i32, i32* %28, align 4
  %344 = call i32 @FSEv05_buildDTable(i32* %341, i32* %168, i32 %342, i32 %343)
  br label %345

345:                                              ; preds = %337, %311, %300, %294
  store i32 0, i32* %33, align 4
  br label %346

346:                                              ; preds = %345, %334, %327, %308, %291, %273, %266, %247, %228, %210, %203, %184
  %347 = load i8*, i8** %30, align 8
  call void @llvm.stackrestore(i8* %347)
  %348 = load i32, i32* %33, align 4
  switch i32 %348, label %358 [
    i32 0, label %349
    i32 1, label %356
  ]

349:                                              ; preds = %346
  %350 = load i32*, i32** %21, align 8
  %351 = load i32*, i32** %20, align 8
  %352 = ptrtoint i32* %350 to i64
  %353 = ptrtoint i32* %351 to i64
  %354 = sub i64 %352, %353
  %355 = sdiv exact i64 %354, 4
  store i64 %355, i64* %10, align 8
  br label %356

356:                                              ; preds = %349, %346, %160, %130, %108, %84, %66, %57, %46
  %357 = load i64, i64* %10, align 8
  ret i64 %357

358:                                              ; preds = %346
  unreachable
}

declare dso_local i64 @ERROR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @FSEv05_buildDTable_rle(i32*, i32) #1

declare dso_local i32 @FSEv05_buildDTable_raw(i32*, i32) #1

declare dso_local i64 @FSEv05_readNCount(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @FSEv05_isError(i64) #1

declare dso_local i32 @FSEv05_buildDTable(i32*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
