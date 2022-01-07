; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_split.c_split.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/lib/libc/regex/extr_split.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @split(i8* %0, i8** %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %18 = load i8*, i8** %6, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %12, align 1
  %21 = load i8**, i8*** %7, align 8
  store i8** %21, i8*** %15, align 8
  %22 = load i8, i8* %12, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  store i8 %29, i8* %11, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i8, i8* %11, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 9
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi i1 [ true, %26 ], [ %35, %32 ]
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  br label %26

39:                                               ; preds = %36
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 -1
  store i8* %41, i8** %10, align 8
  store i32 1, i32* %17, align 4
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8 32, i8* %12, align 1
  br label %43

42:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %13, align 1
  %47 = load i8*, i8** %10, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %363

52:                                               ; preds = %43
  %53 = load i8, i8* %13, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %85, %56
  %59 = load i8*, i8** %10, align 8
  %60 = load i8**, i8*** %15, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i32 1
  store i8** %61, i8*** %15, align 8
  store i8* %59, i8** %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %88

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i8*, i8** %10, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %10, align 8
  %71 = load i8, i8* %69, align 1
  store i8 %71, i8* %11, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* %12, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load i8, i8* %11, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %14, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %5, align 4
  br label %363

84:                                               ; preds = %76
  br label %68

85:                                               ; preds = %68
  %86 = load i8*, i8** %10, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 -1
  store i8 0, i8* %87, align 1
  br label %58

88:                                               ; preds = %66
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %106, %88
  br label %91

91:                                               ; preds = %105, %90
  %92 = load i8*, i8** %10, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %10, align 8
  %94 = load i8, i8* %92, align 1
  store i8 %94, i8* %11, align 1
  %95 = sext i8 %94 to i32
  %96 = load i8, i8* %12, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i8, i8* %11, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %5, align 4
  br label %363

105:                                              ; preds = %99
  br label %91

106:                                              ; preds = %91
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %90

109:                                              ; preds = %52
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %282

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %185, %115
  %118 = load i8*, i8** %10, align 8
  %119 = load i8**, i8*** %15, align 8
  %120 = getelementptr inbounds i8*, i8** %119, i32 1
  store i8** %120, i8*** %15, align 8
  store i8* %118, i8** %119, align 8
  %121 = load i32, i32* %14, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %160, %117
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %10, align 8
  %126 = load i8, i8* %124, align 1
  store i8 %126, i8* %11, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8, i8* %12, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = load i8, i8* %13, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %133, %135
  br label %137

137:                                              ; preds = %131, %123
  %138 = phi i1 [ false, %123 ], [ %136, %131 ]
  br i1 %138, label %139, label %161

139:                                              ; preds = %137
  %140 = load i8, i8* %11, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i32, i32* %17, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %143
  %147 = load i8**, i8*** %15, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 -1
  %149 = load i8*, i8** %148, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %153, %146, %143
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %14, align 4
  %159 = sub nsw i32 %157, %158
  store i32 %159, i32* %5, align 4
  br label %363

160:                                              ; preds = %139
  br label %123

161:                                              ; preds = %137
  %162 = load i32, i32* %14, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  br label %188

165:                                              ; preds = %161
  %166 = load i8*, i8** %10, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 -1
  store i8 0, i8* %167, align 1
  br label %168

168:                                              ; preds = %184, %165
  %169 = load i8*, i8** %10, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %10, align 8
  %171 = load i8, i8* %169, align 1
  store i8 %171, i8* %11, align 1
  %172 = sext i8 %171 to i32
  %173 = load i8, i8* %12, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %172, %174
  br i1 %175, label %182, label %176

176:                                              ; preds = %168
  %177 = load i8, i8* %11, align 1
  %178 = sext i8 %177 to i32
  %179 = load i8, i8* %13, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %178, %180
  br label %182

182:                                              ; preds = %176, %168
  %183 = phi i1 [ true, %168 ], [ %181, %176 ]
  br i1 %183, label %184, label %185

184:                                              ; preds = %182
  br label %168

185:                                              ; preds = %182
  %186 = load i8*, i8** %10, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 -1
  store i8* %187, i8** %10, align 8
  br label %117

188:                                              ; preds = %164
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %14, align 4
  br label %190

190:                                              ; preds = %238, %188
  %191 = load i8, i8* %11, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %239

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %211, %194
  %196 = load i8*, i8** %10, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %10, align 8
  %198 = load i8, i8* %196, align 1
  store i8 %198, i8* %11, align 1
  %199 = sext i8 %198 to i32
  %200 = load i8, i8* %12, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %209, label %203

203:                                              ; preds = %195
  %204 = load i8, i8* %11, align 1
  %205 = sext i8 %204 to i32
  %206 = load i8, i8* %13, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %205, %207
  br label %209

209:                                              ; preds = %203, %195
  %210 = phi i1 [ true, %195 ], [ %208, %203 ]
  br i1 %210, label %211, label %212

211:                                              ; preds = %209
  br label %195

212:                                              ; preds = %209
  %213 = load i8*, i8** %10, align 8
  %214 = getelementptr inbounds i8, i8* %213, i32 -1
  store i8* %214, i8** %10, align 8
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %237, %212
  %218 = load i8*, i8** %10, align 8
  %219 = getelementptr inbounds i8, i8* %218, i32 1
  store i8* %219, i8** %10, align 8
  %220 = load i8, i8* %218, align 1
  store i8 %220, i8* %11, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %217
  %224 = load i8, i8* %11, align 1
  %225 = sext i8 %224 to i32
  %226 = load i8, i8* %12, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %225, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %223
  %230 = load i8, i8* %11, align 1
  %231 = sext i8 %230 to i32
  %232 = load i8, i8* %13, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %231, %233
  br label %235

235:                                              ; preds = %229, %223, %217
  %236 = phi i1 [ false, %223 ], [ false, %217 ], [ %234, %229 ]
  br i1 %236, label %237, label %238

237:                                              ; preds = %235
  br label %217

238:                                              ; preds = %235
  br label %190

239:                                              ; preds = %190
  %240 = load i32, i32* %17, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %280

242:                                              ; preds = %239
  %243 = load i8*, i8** %10, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 -1
  store i8* %244, i8** %10, align 8
  br label %245

245:                                              ; preds = %261, %242
  %246 = load i8*, i8** %10, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 -1
  store i8* %247, i8** %10, align 8
  %248 = load i8, i8* %247, align 1
  store i8 %248, i8* %11, align 1
  %249 = sext i8 %248 to i32
  %250 = load i8, i8* %12, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %259, label %253

253:                                              ; preds = %245
  %254 = load i8, i8* %11, align 1
  %255 = sext i8 %254 to i32
  %256 = load i8, i8* %13, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %255, %257
  br label %259

259:                                              ; preds = %253, %245
  %260 = phi i1 [ true, %245 ], [ %258, %253 ]
  br i1 %260, label %261, label %262

261:                                              ; preds = %259
  br label %245

262:                                              ; preds = %259
  %263 = load i8*, i8** %10, align 8
  %264 = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %264, i8** %10, align 8
  %265 = load i8*, i8** %10, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %262
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %8, align 4
  %272 = add nsw i32 %271, 1
  %273 = icmp eq i32 %270, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %269
  %275 = load i8*, i8** %10, align 8
  store i8 0, i8* %275, align 1
  br label %276

276:                                              ; preds = %274, %269
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, -1
  store i32 %278, i32* %14, align 4
  br label %279

279:                                              ; preds = %276, %262
  br label %280

280:                                              ; preds = %279, %239
  %281 = load i32, i32* %14, align 4
  store i32 %281, i32* %5, align 4
  br label %363

282:                                              ; preds = %109
  store i32 0, i32* %14, align 4
  br label %283

283:                                              ; preds = %360, %282
  %284 = load i32, i32* %14, align 4
  %285 = load i32, i32* %8, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %291

287:                                              ; preds = %283
  %288 = load i8*, i8** %10, align 8
  %289 = load i8**, i8*** %15, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i32 1
  store i8** %290, i8*** %15, align 8
  store i8* %288, i8** %289, align 8
  br label %291

291:                                              ; preds = %287, %283
  %292 = load i32, i32* %14, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %14, align 4
  br label %294

294:                                              ; preds = %325, %291
  %295 = load i8*, i8** %10, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %10, align 8
  %297 = load i8, i8* %295, align 1
  store i8 %297, i8* %11, align 1
  %298 = load i8, i8* %11, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = load i32, i32* %14, align 4
  store i32 %302, i32* %5, align 4
  br label %363

303:                                              ; preds = %294
  %304 = load i8*, i8** %9, align 8
  store i8* %304, i8** %16, align 8
  br label %305

305:                                              ; preds = %319, %303
  %306 = load i8*, i8** %16, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %16, align 8
  %308 = load i8, i8* %306, align 1
  store i8 %308, i8* %12, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %317

311:                                              ; preds = %305
  %312 = load i8, i8* %12, align 1
  %313 = sext i8 %312 to i32
  %314 = load i8, i8* %11, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp ne i32 %313, %315
  br label %317

317:                                              ; preds = %311, %305
  %318 = phi i1 [ false, %305 ], [ %316, %311 ]
  br i1 %318, label %319, label %320

319:                                              ; preds = %317
  br label %305

320:                                              ; preds = %317
  %321 = load i8, i8* %12, align 1
  %322 = sext i8 %321 to i32
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %320
  br label %326

325:                                              ; preds = %320
  br label %294

326:                                              ; preds = %324
  %327 = load i32, i32* %14, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %326
  %331 = load i8*, i8** %10, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 -1
  store i8 0, i8* %332, align 1
  br label %333

333:                                              ; preds = %330, %326
  br label %334

334:                                              ; preds = %359, %333
  %335 = load i8*, i8** %10, align 8
  %336 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %336, i8** %10, align 8
  %337 = load i8, i8* %335, align 1
  store i8 %337, i8* %11, align 1
  %338 = load i8*, i8** %9, align 8
  store i8* %338, i8** %16, align 8
  br label %339

339:                                              ; preds = %353, %334
  %340 = load i8*, i8** %16, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %16, align 8
  %342 = load i8, i8* %340, align 1
  store i8 %342, i8* %12, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %339
  %346 = load i8, i8* %12, align 1
  %347 = sext i8 %346 to i32
  %348 = load i8, i8* %11, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp ne i32 %347, %349
  br label %351

351:                                              ; preds = %345, %339
  %352 = phi i1 [ false, %339 ], [ %350, %345 ]
  br i1 %352, label %353, label %354

353:                                              ; preds = %351
  br label %339

354:                                              ; preds = %351
  %355 = load i8, i8* %12, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %354
  br label %360

359:                                              ; preds = %354
  br label %334

360:                                              ; preds = %358
  %361 = load i8*, i8** %10, align 8
  %362 = getelementptr inbounds i8, i8* %361, i32 -1
  store i8* %362, i8** %10, align 8
  br label %283

363:                                              ; preds = %301, %280, %156, %103, %80, %51
  %364 = load i32, i32* %5, align 4
  ret i32 %364
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
