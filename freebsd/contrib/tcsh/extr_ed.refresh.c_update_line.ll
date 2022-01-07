; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_update_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.refresh.c_update_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRhighlight = common dso_local global i32 0, align 4
@MarkIsSet = common dso_local global i64 0, align 8
@CHAR_DBWIDTH = common dso_local global i8 0, align 1
@MIN_END_KEEP = common dso_local global i32 0, align 4
@T_CanIns = common dso_local global i32 0, align 4
@T_CanDel = common dso_local global i32 0, align 4
@TermH = common dso_local global i32 0, align 4
@CursorH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @update_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_line(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %5, align 8
  store i8* %25, i8** %8, align 8
  br label %26

26:                                               ; preds = %42, %3
  %27 = load i8*, i8** %7, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8*, i8** %8, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %34, %37
  br label %39

39:                                               ; preds = %31, %26
  %40 = phi i1 [ false, %26 ], [ %38, %31 ]
  br i1 %40, label %41, label %47

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %8, align 8
  br label %26

47:                                               ; preds = %39
  %48 = load i8*, i8** %7, align 8
  store i8* %48, i8** %11, align 8
  %49 = load i8*, i8** %8, align 8
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = call i8* @Strend(i8* %50)
  store i8* %51, i8** %7, align 8
  %52 = load i32, i32* @STRhighlight, align 4
  %53 = call i64 @adrof(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i64, i64* @MarkIsSet, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %55, %47
  br label %59

59:                                               ; preds = %70, %58
  %60 = load i8*, i8** %11, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = icmp ult i8* %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 -1
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 32
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %73

70:                                               ; preds = %63
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 -1
  store i8* %72, i8** %7, align 8
  br label %59

73:                                               ; preds = %69, %59
  br label %74

74:                                               ; preds = %73, %55
  %75 = load i8*, i8** %7, align 8
  store i8* %75, i8** %13, align 8
  %76 = load i8*, i8** %13, align 8
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %8, align 8
  %78 = call i8* @Strend(i8* %77)
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* @STRhighlight, align 4
  %80 = call i64 @adrof(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i64, i64* @MarkIsSet, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %82, %74
  br label %86

86:                                               ; preds = %97, %85
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ult i8* %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 -1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %94, 32
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %99, i8** %8, align 8
  br label %86

100:                                              ; preds = %96, %86
  br label %101

101:                                              ; preds = %100, %82
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %16, align 8
  %103 = load i8*, i8** %16, align 8
  store i8 0, i8* %103, align 1
  %104 = load i8*, i8** %11, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load i8*, i8** %14, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %884

114:                                              ; preds = %108, %101
  br label %115

115:                                              ; preds = %135, %114
  %116 = load i8*, i8** %7, align 8
  %117 = load i8*, i8** %11, align 8
  %118 = icmp ugt i8* %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load i8*, i8** %8, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = icmp ugt i8* %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %125, i8** %7, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 -1
  store i8* %129, i8** %8, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %127, %131
  br label %133

133:                                              ; preds = %123, %119, %115
  %134 = phi i1 [ false, %119 ], [ false, %115 ], [ %132, %123 ]
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %115

136:                                              ; preds = %133
  %137 = load i8*, i8** %7, align 8
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = load i8*, i8** %8, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %136
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %146, i8** %7, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %8, align 8
  br label %149

149:                                              ; preds = %144, %136
  br label %150

150:                                              ; preds = %157, %149
  %151 = load i8*, i8** %7, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = load i8, i8* @CHAR_DBWIDTH, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %153, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i8*, i8** %7, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %7, align 8
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %8, align 8
  br label %150

162:                                              ; preds = %150
  %163 = load i8*, i8** %7, align 8
  store i8* %163, i8** %12, align 8
  %164 = load i8*, i8** %8, align 8
  store i8* %164, i8** %15, align 8
  %165 = load i8*, i8** %12, align 8
  store i8* %165, i8** %17, align 8
  %166 = load i8*, i8** %15, align 8
  store i8* %166, i8** %19, align 8
  %167 = load i8*, i8** %12, align 8
  store i8* %167, i8** %18, align 8
  %168 = load i8*, i8** %15, align 8
  store i8* %168, i8** %20, align 8
  %169 = load i8*, i8** %11, align 8
  %170 = load i8, i8* %169, align 1
  %171 = icmp ne i8 %170, 0
  br i1 %171, label %172, label %250

172:                                              ; preds = %162
  %173 = load i8*, i8** %11, align 8
  %174 = load i8, i8* %173, align 1
  store i8 %174, i8* %10, align 1
  %175 = load i8*, i8** %14, align 8
  store i8* %175, i8** %8, align 8
  br label %176

176:                                              ; preds = %246, %172
  %177 = load i8*, i8** %8, align 8
  %178 = load i8*, i8** %15, align 8
  %179 = icmp ult i8* %177, %178
  br i1 %179, label %180, label %249

180:                                              ; preds = %176
  %181 = load i8, i8* %10, align 1
  %182 = sext i8 %181 to i32
  %183 = load i8*, i8** %8, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %182, %185
  br i1 %186, label %187, label %245

187:                                              ; preds = %180
  %188 = load i8*, i8** %11, align 8
  store i8* %188, i8** %7, align 8
  %189 = load i8*, i8** %8, align 8
  store i8* %189, i8** %9, align 8
  br label %190

190:                                              ; preds = %209, %187
  %191 = load i8*, i8** %9, align 8
  %192 = load i8*, i8** %15, align 8
  %193 = icmp ult i8* %191, %192
  br i1 %193, label %194, label %206

194:                                              ; preds = %190
  %195 = load i8*, i8** %7, align 8
  %196 = load i8*, i8** %12, align 8
  %197 = icmp ult i8* %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load i8*, i8** %7, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = load i8*, i8** %9, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %201, %204
  br label %206

206:                                              ; preds = %198, %194, %190
  %207 = phi i1 [ false, %194 ], [ false, %190 ], [ %205, %198 ]
  br i1 %207, label %208, label %214

208:                                              ; preds = %206
  br label %209

209:                                              ; preds = %208
  %210 = load i8*, i8** %7, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %7, align 8
  %212 = load i8*, i8** %9, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %9, align 8
  br label %190

214:                                              ; preds = %206
  %215 = load i8*, i8** %20, align 8
  %216 = load i8*, i8** %19, align 8
  %217 = ptrtoint i8* %215 to i64
  %218 = ptrtoint i8* %216 to i64
  %219 = sub i64 %217, %218
  %220 = load i8*, i8** %9, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = icmp slt i64 %219, %224
  br i1 %225, label %226, label %244

226:                                              ; preds = %214
  %227 = load i8*, i8** %9, align 8
  %228 = load i8*, i8** %8, align 8
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = mul nsw i64 2, %231
  %233 = load i8*, i8** %8, align 8
  %234 = load i8*, i8** %14, align 8
  %235 = ptrtoint i8* %233 to i64
  %236 = ptrtoint i8* %234 to i64
  %237 = sub i64 %235, %236
  %238 = icmp sgt i64 %232, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %226
  %240 = load i8*, i8** %8, align 8
  store i8* %240, i8** %19, align 8
  %241 = load i8*, i8** %9, align 8
  store i8* %241, i8** %20, align 8
  %242 = load i8*, i8** %11, align 8
  store i8* %242, i8** %17, align 8
  %243 = load i8*, i8** %7, align 8
  store i8* %243, i8** %18, align 8
  br label %244

244:                                              ; preds = %239, %226, %214
  br label %245

245:                                              ; preds = %244, %180
  br label %246

246:                                              ; preds = %245
  %247 = load i8*, i8** %8, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %8, align 8
  br label %176

249:                                              ; preds = %176
  br label %250

250:                                              ; preds = %249, %162
  %251 = load i8*, i8** %14, align 8
  %252 = load i8, i8* %251, align 1
  %253 = icmp ne i8 %252, 0
  br i1 %253, label %254, label %332

254:                                              ; preds = %250
  %255 = load i8*, i8** %14, align 8
  %256 = load i8, i8* %255, align 1
  store i8 %256, i8* %10, align 1
  %257 = load i8*, i8** %11, align 8
  store i8* %257, i8** %7, align 8
  br label %258

258:                                              ; preds = %328, %254
  %259 = load i8*, i8** %7, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = icmp ult i8* %259, %260
  br i1 %261, label %262, label %331

262:                                              ; preds = %258
  %263 = load i8, i8* %10, align 1
  %264 = sext i8 %263 to i32
  %265 = load i8*, i8** %7, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %264, %267
  br i1 %268, label %269, label %327

269:                                              ; preds = %262
  %270 = load i8*, i8** %14, align 8
  store i8* %270, i8** %8, align 8
  %271 = load i8*, i8** %7, align 8
  store i8* %271, i8** %9, align 8
  br label %272

272:                                              ; preds = %291, %269
  %273 = load i8*, i8** %9, align 8
  %274 = load i8*, i8** %12, align 8
  %275 = icmp ult i8* %273, %274
  br i1 %275, label %276, label %288

276:                                              ; preds = %272
  %277 = load i8*, i8** %8, align 8
  %278 = load i8*, i8** %15, align 8
  %279 = icmp ult i8* %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %276
  %281 = load i8*, i8** %9, align 8
  %282 = load i8, i8* %281, align 1
  %283 = sext i8 %282 to i32
  %284 = load i8*, i8** %8, align 8
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %283, %286
  br label %288

288:                                              ; preds = %280, %276, %272
  %289 = phi i1 [ false, %276 ], [ false, %272 ], [ %287, %280 ]
  br i1 %289, label %290, label %296

290:                                              ; preds = %288
  br label %291

291:                                              ; preds = %290
  %292 = load i8*, i8** %9, align 8
  %293 = getelementptr inbounds i8, i8* %292, i32 1
  store i8* %293, i8** %9, align 8
  %294 = load i8*, i8** %8, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %8, align 8
  br label %272

296:                                              ; preds = %288
  %297 = load i8*, i8** %18, align 8
  %298 = load i8*, i8** %17, align 8
  %299 = ptrtoint i8* %297 to i64
  %300 = ptrtoint i8* %298 to i64
  %301 = sub i64 %299, %300
  %302 = load i8*, i8** %9, align 8
  %303 = load i8*, i8** %7, align 8
  %304 = ptrtoint i8* %302 to i64
  %305 = ptrtoint i8* %303 to i64
  %306 = sub i64 %304, %305
  %307 = icmp slt i64 %301, %306
  br i1 %307, label %308, label %326

308:                                              ; preds = %296
  %309 = load i8*, i8** %9, align 8
  %310 = load i8*, i8** %7, align 8
  %311 = ptrtoint i8* %309 to i64
  %312 = ptrtoint i8* %310 to i64
  %313 = sub i64 %311, %312
  %314 = mul nsw i64 2, %313
  %315 = load i8*, i8** %7, align 8
  %316 = load i8*, i8** %11, align 8
  %317 = ptrtoint i8* %315 to i64
  %318 = ptrtoint i8* %316 to i64
  %319 = sub i64 %317, %318
  %320 = icmp sgt i64 %314, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %308
  %322 = load i8*, i8** %14, align 8
  store i8* %322, i8** %19, align 8
  %323 = load i8*, i8** %8, align 8
  store i8* %323, i8** %20, align 8
  %324 = load i8*, i8** %7, align 8
  store i8* %324, i8** %17, align 8
  %325 = load i8*, i8** %9, align 8
  store i8* %325, i8** %18, align 8
  br label %326

326:                                              ; preds = %321, %308, %296
  br label %327

327:                                              ; preds = %326, %262
  br label %328

328:                                              ; preds = %327
  %329 = load i8*, i8** %7, align 8
  %330 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %330, i8** %7, align 8
  br label %258

331:                                              ; preds = %258
  br label %332

332:                                              ; preds = %331, %250
  %333 = load i8*, i8** %13, align 8
  %334 = load i8*, i8** %12, align 8
  %335 = ptrtoint i8* %333 to i64
  %336 = ptrtoint i8* %334 to i64
  %337 = sub i64 %335, %336
  %338 = load i32, i32* @MIN_END_KEEP, align 4
  %339 = sext i32 %338 to i64
  %340 = icmp slt i64 %337, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %332
  %342 = load i8*, i8** %13, align 8
  store i8* %342, i8** %12, align 8
  %343 = load i8*, i8** %16, align 8
  store i8* %343, i8** %15, align 8
  br label %344

344:                                              ; preds = %341, %332
  %345 = load i8*, i8** %19, align 8
  %346 = load i8*, i8** %14, align 8
  %347 = ptrtoint i8* %345 to i64
  %348 = ptrtoint i8* %346 to i64
  %349 = sub i64 %347, %348
  %350 = load i8*, i8** %17, align 8
  %351 = load i8*, i8** %11, align 8
  %352 = ptrtoint i8* %350 to i64
  %353 = ptrtoint i8* %351 to i64
  %354 = sub i64 %352, %353
  %355 = sub nsw i64 %349, %354
  %356 = trunc i64 %355 to i32
  store i32 %356, i32* %21, align 4
  %357 = load i8*, i8** %15, align 8
  %358 = load i8*, i8** %20, align 8
  %359 = ptrtoint i8* %357 to i64
  %360 = ptrtoint i8* %358 to i64
  %361 = sub i64 %359, %360
  %362 = load i8*, i8** %12, align 8
  %363 = load i8*, i8** %18, align 8
  %364 = ptrtoint i8* %362 to i64
  %365 = ptrtoint i8* %363 to i64
  %366 = sub i64 %364, %365
  %367 = sub nsw i64 %361, %366
  %368 = trunc i64 %367 to i32
  store i32 %368, i32* %22, align 4
  %369 = load i32, i32* @T_CanIns, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %401, label %371

371:                                              ; preds = %344
  %372 = load i32, i32* %21, align 4
  %373 = icmp sgt i32 %372, 0
  br i1 %373, label %374, label %379

374:                                              ; preds = %371
  %375 = load i8*, i8** %12, align 8
  store i8* %375, i8** %17, align 8
  %376 = load i8*, i8** %12, align 8
  store i8* %376, i8** %18, align 8
  %377 = load i8*, i8** %15, align 8
  store i8* %377, i8** %19, align 8
  %378 = load i8*, i8** %15, align 8
  store i8* %378, i8** %20, align 8
  br label %379

379:                                              ; preds = %374, %371
  %380 = load i32, i32* %22, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load i8*, i8** %13, align 8
  store i8* %383, i8** %12, align 8
  %384 = load i8*, i8** %16, align 8
  store i8* %384, i8** %15, align 8
  br label %385

385:                                              ; preds = %382, %379
  %386 = load i8*, i8** %12, align 8
  %387 = load i8*, i8** %11, align 8
  %388 = ptrtoint i8* %386 to i64
  %389 = ptrtoint i8* %387 to i64
  %390 = sub i64 %388, %389
  %391 = load i8*, i8** %15, align 8
  %392 = load i8*, i8** %14, align 8
  %393 = ptrtoint i8* %391 to i64
  %394 = ptrtoint i8* %392 to i64
  %395 = sub i64 %393, %394
  %396 = icmp slt i64 %390, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %385
  %398 = load i8*, i8** %13, align 8
  store i8* %398, i8** %12, align 8
  %399 = load i8*, i8** %16, align 8
  store i8* %399, i8** %15, align 8
  br label %400

400:                                              ; preds = %397, %385
  br label %401

401:                                              ; preds = %400, %344
  %402 = load i32, i32* @T_CanDel, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %434, label %404

404:                                              ; preds = %401
  %405 = load i32, i32* %21, align 4
  %406 = icmp slt i32 %405, 0
  br i1 %406, label %407, label %412

407:                                              ; preds = %404
  %408 = load i8*, i8** %12, align 8
  store i8* %408, i8** %17, align 8
  %409 = load i8*, i8** %12, align 8
  store i8* %409, i8** %18, align 8
  %410 = load i8*, i8** %15, align 8
  store i8* %410, i8** %19, align 8
  %411 = load i8*, i8** %15, align 8
  store i8* %411, i8** %20, align 8
  br label %412

412:                                              ; preds = %407, %404
  %413 = load i32, i32* %22, align 4
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %412
  %416 = load i8*, i8** %13, align 8
  store i8* %416, i8** %12, align 8
  %417 = load i8*, i8** %16, align 8
  store i8* %417, i8** %15, align 8
  br label %418

418:                                              ; preds = %415, %412
  %419 = load i8*, i8** %12, align 8
  %420 = load i8*, i8** %11, align 8
  %421 = ptrtoint i8* %419 to i64
  %422 = ptrtoint i8* %420 to i64
  %423 = sub i64 %421, %422
  %424 = load i8*, i8** %15, align 8
  %425 = load i8*, i8** %14, align 8
  %426 = ptrtoint i8* %424 to i64
  %427 = ptrtoint i8* %425 to i64
  %428 = sub i64 %426, %427
  %429 = icmp sgt i64 %423, %428
  br i1 %429, label %430, label %433

430:                                              ; preds = %418
  %431 = load i8*, i8** %13, align 8
  store i8* %431, i8** %12, align 8
  %432 = load i8*, i8** %16, align 8
  store i8* %432, i8** %15, align 8
  br label %433

433:                                              ; preds = %430, %418
  br label %434

434:                                              ; preds = %433, %401
  %435 = load i8*, i8** %18, align 8
  %436 = load i8*, i8** %17, align 8
  %437 = ptrtoint i8* %435 to i64
  %438 = ptrtoint i8* %436 to i64
  %439 = sub i64 %437, %438
  %440 = load i32, i32* @MIN_END_KEEP, align 4
  %441 = sext i32 %440 to i64
  %442 = icmp slt i64 %439, %441
  br i1 %442, label %443, label %448

443:                                              ; preds = %434
  %444 = load i8*, i8** %12, align 8
  store i8* %444, i8** %17, align 8
  %445 = load i8*, i8** %12, align 8
  store i8* %445, i8** %18, align 8
  %446 = load i8*, i8** %15, align 8
  store i8* %446, i8** %19, align 8
  %447 = load i8*, i8** %15, align 8
  store i8* %447, i8** %20, align 8
  br label %448

448:                                              ; preds = %443, %434
  %449 = load i8*, i8** %19, align 8
  %450 = load i8*, i8** %14, align 8
  %451 = ptrtoint i8* %449 to i64
  %452 = ptrtoint i8* %450 to i64
  %453 = sub i64 %451, %452
  %454 = load i8*, i8** %17, align 8
  %455 = load i8*, i8** %11, align 8
  %456 = ptrtoint i8* %454 to i64
  %457 = ptrtoint i8* %455 to i64
  %458 = sub i64 %456, %457
  %459 = sub nsw i64 %453, %458
  %460 = trunc i64 %459 to i32
  store i32 %460, i32* %21, align 4
  %461 = load i8*, i8** %15, align 8
  %462 = load i8*, i8** %20, align 8
  %463 = ptrtoint i8* %461 to i64
  %464 = ptrtoint i8* %462 to i64
  %465 = sub i64 %463, %464
  %466 = load i8*, i8** %12, align 8
  %467 = load i8*, i8** %18, align 8
  %468 = ptrtoint i8* %466 to i64
  %469 = ptrtoint i8* %467 to i64
  %470 = sub i64 %468, %469
  %471 = sub nsw i64 %465, %470
  %472 = trunc i64 %471 to i32
  store i32 %472, i32* %22, align 4
  %473 = load i32, i32* %6, align 4
  %474 = call i32 @MoveToLine(i32 %473)
  %475 = load i8*, i8** %12, align 8
  %476 = load i8*, i8** %13, align 8
  %477 = icmp ne i8* %475, %476
  br i1 %477, label %478, label %480

478:                                              ; preds = %448
  %479 = load i8*, i8** %13, align 8
  br label %482

480:                                              ; preds = %448
  %481 = load i8*, i8** %18, align 8
  br label %482

482:                                              ; preds = %480, %478
  %483 = phi i8* [ %479, %478 ], [ %481, %480 ]
  store i8* %483, i8** %9, align 8
  %484 = load i8*, i8** %19, align 8
  %485 = load i8*, i8** %14, align 8
  %486 = icmp ne i8* %484, %485
  br i1 %486, label %487, label %583

487:                                              ; preds = %482
  %488 = load i32, i32* %21, align 4
  %489 = icmp sgt i32 %488, 0
  br i1 %489, label %490, label %583

490:                                              ; preds = %487
  %491 = load i8*, i8** %9, align 8
  %492 = load i8*, i8** %4, align 8
  %493 = ptrtoint i8* %491 to i64
  %494 = ptrtoint i8* %492 to i64
  %495 = sub i64 %493, %494
  %496 = load i32, i32* %21, align 4
  %497 = sext i32 %496 to i64
  %498 = add nsw i64 %495, %497
  %499 = load i32, i32* @TermH, align 4
  %500 = sext i32 %499 to i64
  %501 = icmp slt i64 %498, %500
  br i1 %501, label %502, label %583

502:                                              ; preds = %490
  %503 = load i8*, i8** %14, align 8
  %504 = load i8*, i8** %5, align 8
  %505 = ptrtoint i8* %503 to i64
  %506 = ptrtoint i8* %504 to i64
  %507 = sub i64 %505, %506
  %508 = trunc i64 %507 to i32
  %509 = call i32 @MoveToChar(i32 %508)
  %510 = load i8*, i8** %19, align 8
  %511 = load i8*, i8** %16, align 8
  %512 = icmp ne i8* %510, %511
  br i1 %512, label %513, label %564

513:                                              ; preds = %502
  %514 = load i32, i32* %21, align 4
  %515 = icmp sgt i32 %514, 0
  br i1 %515, label %516, label %531

516:                                              ; preds = %513
  %517 = load i8*, i8** %14, align 8
  %518 = load i32, i32* %21, align 4
  %519 = call i32 @Insert_write(i8* %517, i32 %518)
  %520 = load i8*, i8** %4, align 8
  %521 = load i8*, i8** %11, align 8
  %522 = load i8*, i8** %4, align 8
  %523 = ptrtoint i8* %521 to i64
  %524 = ptrtoint i8* %522 to i64
  %525 = sub i64 %523, %524
  %526 = trunc i64 %525 to i32
  %527 = load i32, i32* @TermH, align 4
  %528 = load i8*, i8** %14, align 8
  %529 = load i32, i32* %21, align 4
  %530 = call i32 @str_insert(i8* %520, i32 %526, i32 %527, i8* %528, i32 %529)
  br label %531

531:                                              ; preds = %516, %513
  %532 = load i8*, i8** %14, align 8
  %533 = load i32, i32* %21, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i8, i8* %532, i64 %534
  %536 = load i8*, i8** %19, align 8
  %537 = load i8*, i8** %14, align 8
  %538 = ptrtoint i8* %536 to i64
  %539 = ptrtoint i8* %537 to i64
  %540 = sub i64 %538, %539
  %541 = load i32, i32* %21, align 4
  %542 = sext i32 %541 to i64
  %543 = sub nsw i64 %540, %542
  %544 = trunc i64 %543 to i32
  %545 = call i32 @so_write(i8* %535, i32 %544)
  %546 = load i8*, i8** %11, align 8
  %547 = load i32, i32* %21, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8, i8* %546, i64 %548
  %550 = load i8*, i8** %14, align 8
  %551 = load i32, i32* %21, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i8, i8* %550, i64 %552
  %554 = load i8*, i8** %19, align 8
  %555 = load i8*, i8** %14, align 8
  %556 = ptrtoint i8* %554 to i64
  %557 = ptrtoint i8* %555 to i64
  %558 = sub i64 %556, %557
  %559 = load i32, i32* %21, align 4
  %560 = sext i32 %559 to i64
  %561 = sub nsw i64 %558, %560
  %562 = trunc i64 %561 to i32
  %563 = call i32 @str_cp(i8* %549, i8* %553, i32 %562)
  br label %582

564:                                              ; preds = %502
  %565 = load i8*, i8** %14, align 8
  %566 = load i8*, i8** %19, align 8
  %567 = load i8*, i8** %14, align 8
  %568 = ptrtoint i8* %566 to i64
  %569 = ptrtoint i8* %567 to i64
  %570 = sub i64 %568, %569
  %571 = trunc i64 %570 to i32
  %572 = call i32 @so_write(i8* %565, i32 %571)
  %573 = load i8*, i8** %11, align 8
  %574 = load i8*, i8** %14, align 8
  %575 = load i8*, i8** %19, align 8
  %576 = load i8*, i8** %14, align 8
  %577 = ptrtoint i8* %575 to i64
  %578 = ptrtoint i8* %576 to i64
  %579 = sub i64 %577, %578
  %580 = trunc i64 %579 to i32
  %581 = call i32 @str_cp(i8* %573, i8* %574, i32 %580)
  br label %884

582:                                              ; preds = %531
  br label %658

583:                                              ; preds = %490, %487, %482
  %584 = load i32, i32* %21, align 4
  %585 = icmp slt i32 %584, 0
  br i1 %585, label %586, label %656

586:                                              ; preds = %583
  %587 = load i8*, i8** %11, align 8
  %588 = load i8*, i8** %4, align 8
  %589 = ptrtoint i8* %587 to i64
  %590 = ptrtoint i8* %588 to i64
  %591 = sub i64 %589, %590
  %592 = trunc i64 %591 to i32
  %593 = call i32 @MoveToChar(i32 %592)
  %594 = load i8*, i8** %17, align 8
  %595 = load i8*, i8** %13, align 8
  %596 = icmp ne i8* %594, %595
  br i1 %596, label %597, label %633

597:                                              ; preds = %586
  %598 = load i32, i32* %21, align 4
  %599 = icmp slt i32 %598, 0
  br i1 %599, label %600, label %615

600:                                              ; preds = %597
  %601 = load i32, i32* %21, align 4
  %602 = sub nsw i32 0, %601
  %603 = call i32 @DeleteChars(i32 %602)
  %604 = load i8*, i8** %4, align 8
  %605 = load i8*, i8** %11, align 8
  %606 = load i8*, i8** %4, align 8
  %607 = ptrtoint i8* %605 to i64
  %608 = ptrtoint i8* %606 to i64
  %609 = sub i64 %607, %608
  %610 = trunc i64 %609 to i32
  %611 = load i32, i32* @TermH, align 4
  %612 = load i32, i32* %21, align 4
  %613 = sub nsw i32 0, %612
  %614 = call i32 @str_delete(i8* %604, i32 %610, i32 %611, i32 %613)
  br label %615

615:                                              ; preds = %600, %597
  %616 = load i8*, i8** %14, align 8
  %617 = load i8*, i8** %19, align 8
  %618 = load i8*, i8** %14, align 8
  %619 = ptrtoint i8* %617 to i64
  %620 = ptrtoint i8* %618 to i64
  %621 = sub i64 %619, %620
  %622 = trunc i64 %621 to i32
  %623 = call i32 @so_write(i8* %616, i32 %622)
  %624 = load i8*, i8** %11, align 8
  %625 = load i8*, i8** %14, align 8
  %626 = load i8*, i8** %19, align 8
  %627 = load i8*, i8** %14, align 8
  %628 = ptrtoint i8* %626 to i64
  %629 = ptrtoint i8* %627 to i64
  %630 = sub i64 %628, %629
  %631 = trunc i64 %630 to i32
  %632 = call i32 @str_cp(i8* %624, i8* %625, i32 %631)
  br label %655

633:                                              ; preds = %586
  %634 = load i8*, i8** %14, align 8
  %635 = load i8*, i8** %19, align 8
  %636 = load i8*, i8** %14, align 8
  %637 = ptrtoint i8* %635 to i64
  %638 = ptrtoint i8* %636 to i64
  %639 = sub i64 %637, %638
  %640 = trunc i64 %639 to i32
  %641 = call i32 @so_write(i8* %634, i32 %640)
  %642 = load i8*, i8** %13, align 8
  %643 = load i8*, i8** %4, align 8
  %644 = ptrtoint i8* %642 to i64
  %645 = ptrtoint i8* %643 to i64
  %646 = sub i64 %644, %645
  %647 = load i8*, i8** %16, align 8
  %648 = load i8*, i8** %5, align 8
  %649 = ptrtoint i8* %647 to i64
  %650 = ptrtoint i8* %648 to i64
  %651 = sub i64 %649, %650
  %652 = sub nsw i64 %646, %651
  %653 = trunc i64 %652 to i32
  %654 = call i32 @ClearEOL(i32 %653)
  br label %884

655:                                              ; preds = %615
  br label %657

656:                                              ; preds = %583
  store i32 0, i32* %21, align 4
  br label %657

657:                                              ; preds = %656, %655
  br label %658

658:                                              ; preds = %657, %582
  %659 = load i32, i32* %22, align 4
  %660 = icmp slt i32 %659, 0
  br i1 %660, label %661, label %726

661:                                              ; preds = %658
  %662 = load i8*, i8** %18, align 8
  %663 = load i8*, i8** %4, align 8
  %664 = ptrtoint i8* %662 to i64
  %665 = ptrtoint i8* %663 to i64
  %666 = sub i64 %664, %665
  %667 = load i32, i32* %21, align 4
  %668 = sext i32 %667 to i64
  %669 = add nsw i64 %666, %668
  %670 = trunc i64 %669 to i32
  %671 = call i32 @MoveToChar(i32 %670)
  %672 = load i8*, i8** %12, align 8
  %673 = load i8*, i8** %13, align 8
  %674 = icmp ne i8* %672, %673
  br i1 %674, label %675, label %691

675:                                              ; preds = %661
  %676 = load i32, i32* %22, align 4
  %677 = icmp slt i32 %676, 0
  br i1 %677, label %678, label %682

678:                                              ; preds = %675
  %679 = load i32, i32* %22, align 4
  %680 = sub nsw i32 0, %679
  %681 = call i32 @DeleteChars(i32 %680)
  br label %682

682:                                              ; preds = %678, %675
  %683 = load i8*, i8** %20, align 8
  %684 = load i8*, i8** %15, align 8
  %685 = load i8*, i8** %20, align 8
  %686 = ptrtoint i8* %684 to i64
  %687 = ptrtoint i8* %685 to i64
  %688 = sub i64 %686, %687
  %689 = trunc i64 %688 to i32
  %690 = call i32 @so_write(i8* %683, i32 %689)
  br label %725

691:                                              ; preds = %661
  %692 = load i8*, i8** %13, align 8
  %693 = load i8*, i8** %4, align 8
  %694 = ptrtoint i8* %692 to i64
  %695 = ptrtoint i8* %693 to i64
  %696 = sub i64 %694, %695
  %697 = load i32, i32* %21, align 4
  %698 = sext i32 %697 to i64
  %699 = add nsw i64 %696, %698
  %700 = trunc i64 %699 to i32
  store i32 %700, i32* %23, align 4
  %701 = load i32, i32* %23, align 4
  %702 = load i32, i32* @TermH, align 4
  %703 = icmp sgt i32 %701, %702
  br i1 %703, label %704, label %706

704:                                              ; preds = %691
  %705 = load i32, i32* @TermH, align 4
  store i32 %705, i32* %23, align 4
  br label %706

706:                                              ; preds = %704, %691
  %707 = load i8*, i8** %20, align 8
  %708 = load i8*, i8** %15, align 8
  %709 = load i8*, i8** %20, align 8
  %710 = ptrtoint i8* %708 to i64
  %711 = ptrtoint i8* %709 to i64
  %712 = sub i64 %710, %711
  %713 = trunc i64 %712 to i32
  %714 = call i32 @so_write(i8* %707, i32 %713)
  %715 = load i32, i32* %23, align 4
  %716 = sext i32 %715 to i64
  %717 = load i8*, i8** %16, align 8
  %718 = load i8*, i8** %5, align 8
  %719 = ptrtoint i8* %717 to i64
  %720 = ptrtoint i8* %718 to i64
  %721 = sub i64 %719, %720
  %722 = sub nsw i64 %716, %721
  %723 = trunc i64 %722 to i32
  %724 = call i32 @ClearEOL(i32 %723)
  br label %725

725:                                              ; preds = %706, %682
  br label %726

726:                                              ; preds = %725, %658
  %727 = load i8*, i8** %19, align 8
  %728 = load i8*, i8** %14, align 8
  %729 = icmp ne i8* %727, %728
  br i1 %729, label %730, label %838

730:                                              ; preds = %726
  %731 = load i8*, i8** %17, align 8
  %732 = load i8*, i8** %11, align 8
  %733 = ptrtoint i8* %731 to i64
  %734 = ptrtoint i8* %732 to i64
  %735 = sub i64 %733, %734
  %736 = load i8*, i8** %19, align 8
  %737 = load i8*, i8** %14, align 8
  %738 = ptrtoint i8* %736 to i64
  %739 = ptrtoint i8* %737 to i64
  %740 = sub i64 %738, %739
  %741 = icmp sle i64 %735, %740
  br i1 %741, label %742, label %838

742:                                              ; preds = %730
  %743 = load i32, i32* %21, align 4
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %745, label %838

745:                                              ; preds = %742
  %746 = load i8*, i8** %14, align 8
  %747 = load i8*, i8** %5, align 8
  %748 = ptrtoint i8* %746 to i64
  %749 = ptrtoint i8* %747 to i64
  %750 = sub i64 %748, %749
  %751 = trunc i64 %750 to i32
  %752 = call i32 @MoveToChar(i32 %751)
  %753 = load i8*, i8** %19, align 8
  %754 = load i8*, i8** %16, align 8
  %755 = icmp ne i8* %753, %754
  br i1 %755, label %756, label %819

756:                                              ; preds = %745
  %757 = load i8*, i8** %19, align 8
  %758 = load i8*, i8** %14, align 8
  %759 = ptrtoint i8* %757 to i64
  %760 = ptrtoint i8* %758 to i64
  %761 = sub i64 %759, %760
  %762 = load i8*, i8** %17, align 8
  %763 = load i8*, i8** %11, align 8
  %764 = ptrtoint i8* %762 to i64
  %765 = ptrtoint i8* %763 to i64
  %766 = sub i64 %764, %765
  %767 = sub nsw i64 %761, %766
  %768 = trunc i64 %767 to i32
  store i32 %768, i32* %21, align 4
  %769 = load i32, i32* %21, align 4
  %770 = icmp sgt i32 %769, 0
  br i1 %770, label %771, label %786

771:                                              ; preds = %756
  %772 = load i8*, i8** %14, align 8
  %773 = load i32, i32* %21, align 4
  %774 = call i32 @Insert_write(i8* %772, i32 %773)
  %775 = load i8*, i8** %4, align 8
  %776 = load i8*, i8** %11, align 8
  %777 = load i8*, i8** %4, align 8
  %778 = ptrtoint i8* %776 to i64
  %779 = ptrtoint i8* %777 to i64
  %780 = sub i64 %778, %779
  %781 = trunc i64 %780 to i32
  %782 = load i32, i32* @TermH, align 4
  %783 = load i8*, i8** %14, align 8
  %784 = load i32, i32* %21, align 4
  %785 = call i32 @str_insert(i8* %775, i32 %781, i32 %782, i8* %783, i32 %784)
  br label %786

786:                                              ; preds = %771, %756
  %787 = load i8*, i8** %14, align 8
  %788 = load i32, i32* %21, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i8, i8* %787, i64 %789
  %791 = load i8*, i8** %19, align 8
  %792 = load i8*, i8** %14, align 8
  %793 = ptrtoint i8* %791 to i64
  %794 = ptrtoint i8* %792 to i64
  %795 = sub i64 %793, %794
  %796 = load i32, i32* %21, align 4
  %797 = sext i32 %796 to i64
  %798 = sub nsw i64 %795, %797
  %799 = trunc i64 %798 to i32
  %800 = call i32 @so_write(i8* %790, i32 %799)
  %801 = load i8*, i8** %11, align 8
  %802 = load i32, i32* %21, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds i8, i8* %801, i64 %803
  %805 = load i8*, i8** %14, align 8
  %806 = load i32, i32* %21, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds i8, i8* %805, i64 %807
  %809 = load i8*, i8** %19, align 8
  %810 = load i8*, i8** %14, align 8
  %811 = ptrtoint i8* %809 to i64
  %812 = ptrtoint i8* %810 to i64
  %813 = sub i64 %811, %812
  %814 = load i32, i32* %21, align 4
  %815 = sext i32 %814 to i64
  %816 = sub nsw i64 %813, %815
  %817 = trunc i64 %816 to i32
  %818 = call i32 @str_cp(i8* %804, i8* %808, i32 %817)
  br label %837

819:                                              ; preds = %745
  %820 = load i8*, i8** %14, align 8
  %821 = load i8*, i8** %19, align 8
  %822 = load i8*, i8** %14, align 8
  %823 = ptrtoint i8* %821 to i64
  %824 = ptrtoint i8* %822 to i64
  %825 = sub i64 %823, %824
  %826 = trunc i64 %825 to i32
  %827 = call i32 @so_write(i8* %820, i32 %826)
  %828 = load i8*, i8** %11, align 8
  %829 = load i8*, i8** %14, align 8
  %830 = load i8*, i8** %19, align 8
  %831 = load i8*, i8** %14, align 8
  %832 = ptrtoint i8* %830 to i64
  %833 = ptrtoint i8* %831 to i64
  %834 = sub i64 %832, %833
  %835 = trunc i64 %834 to i32
  %836 = call i32 @str_cp(i8* %828, i8* %829, i32 %835)
  br label %837

837:                                              ; preds = %819, %786
  br label %838

838:                                              ; preds = %837, %742, %730, %726
  %839 = load i32, i32* %22, align 4
  %840 = icmp sge i32 %839, 0
  br i1 %840, label %841, label %884

841:                                              ; preds = %838
  %842 = load i8*, i8** %20, align 8
  %843 = load i8*, i8** %5, align 8
  %844 = ptrtoint i8* %842 to i64
  %845 = ptrtoint i8* %843 to i64
  %846 = sub i64 %844, %845
  %847 = trunc i64 %846 to i32
  %848 = call i32 @MoveToChar(i32 %847)
  %849 = load i8*, i8** %12, align 8
  %850 = load i8*, i8** %13, align 8
  %851 = icmp ne i8* %849, %850
  br i1 %851, label %852, label %874

852:                                              ; preds = %841
  %853 = load i32, i32* %22, align 4
  %854 = icmp sgt i32 %853, 0
  br i1 %854, label %855, label %859

855:                                              ; preds = %852
  %856 = load i8*, i8** %20, align 8
  %857 = load i32, i32* %22, align 4
  %858 = call i32 @Insert_write(i8* %856, i32 %857)
  br label %859

859:                                              ; preds = %855, %852
  %860 = load i8*, i8** %20, align 8
  %861 = load i32, i32* %22, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds i8, i8* %860, i64 %862
  %864 = load i8*, i8** %15, align 8
  %865 = load i8*, i8** %20, align 8
  %866 = ptrtoint i8* %864 to i64
  %867 = ptrtoint i8* %865 to i64
  %868 = sub i64 %866, %867
  %869 = load i32, i32* %22, align 4
  %870 = sext i32 %869 to i64
  %871 = sub nsw i64 %868, %870
  %872 = trunc i64 %871 to i32
  %873 = call i32 @so_write(i8* %863, i32 %872)
  br label %883

874:                                              ; preds = %841
  %875 = load i8*, i8** %20, align 8
  %876 = load i8*, i8** %15, align 8
  %877 = load i8*, i8** %20, align 8
  %878 = ptrtoint i8* %876 to i64
  %879 = ptrtoint i8* %877 to i64
  %880 = sub i64 %878, %879
  %881 = trunc i64 %880 to i32
  %882 = call i32 @so_write(i8* %875, i32 %881)
  br label %883

883:                                              ; preds = %874, %859
  br label %884

884:                                              ; preds = %113, %564, %633, %883, %838
  ret void
}

declare dso_local i8* @Strend(i8*) #1

declare dso_local i64 @adrof(i32) #1

declare dso_local i32 @MoveToLine(i32) #1

declare dso_local i32 @MoveToChar(i32) #1

declare dso_local i32 @Insert_write(i8*, i32) #1

declare dso_local i32 @str_insert(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @so_write(i8*, i32) #1

declare dso_local i32 @str_cp(i8*, i8*, i32) #1

declare dso_local i32 @DeleteChars(i32) #1

declare dso_local i32 @str_delete(i8*, i32, i32, i32) #1

declare dso_local i32 @ClearEOL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
