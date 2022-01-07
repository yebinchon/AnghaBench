; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_b32_pton_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_b32_pton_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32*, i64, i32, i32)* @sldns_b32_pton_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sldns_b32_pton_base(i8* %0, i64 %1, i32* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca [8 x i32], align 16
  %17 = alloca i32*, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i8 0, i8* %15, align 1
  %18 = load i32*, i32** %10, align 8
  store i32* %18, i32** %17, align 8
  br label %19

19:                                               ; preds = %162, %6
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %219

22:                                               ; preds = %19
  store i64 0, i64* %14, align 8
  br label %23

23:                                               ; preds = %151, %22
  %24 = load i64, i64* %14, align 8
  %25 = icmp ult i64 %24, 8
  br i1 %25, label %26, label %154

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i8*, i8** %8, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %8, align 8
  %30 = load i8, i8* %28, align 1
  store i8 %30, i8* %15, align 1
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %27
  %34 = load i8, i8* %15, align 1
  %35 = call i64 @isspace(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = icmp ugt i64 %38, 0
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %27, label %42

42:                                               ; preds = %40
  %43 = load i8, i8* %15, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 61
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load i8, i8* %15, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %42
  br label %154

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %102

54:                                               ; preds = %51
  %55 = load i8, i8* %15, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp sge i32 %56, 48
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i8, i8* %15, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp sle i32 %60, 57
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = load i8, i8* %15, align 1
  %64 = sext i8 %63 to i32
  %65 = sub nsw i32 %64, 48
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %66
  store i32 %65, i32* %67, align 4
  br label %101

68:                                               ; preds = %58, %54
  %69 = load i8, i8* %15, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sge i32 %70, 97
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load i8, i8* %15, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp sle i32 %74, 118
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i8, i8* %15, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 97
  %80 = add nsw i32 %79, 10
  %81 = load i64, i64* %14, align 8
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %81
  store i32 %80, i32* %82, align 4
  br label %100

83:                                               ; preds = %72, %68
  %84 = load i8, i8* %15, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp sge i32 %85, 65
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load i8, i8* %15, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp sle i32 %89, 86
  br i1 %90, label %91, label %98

91:                                               ; preds = %87
  %92 = load i8, i8* %15, align 1
  %93 = sext i8 %92 to i32
  %94 = sub nsw i32 %93, 65
  %95 = add nsw i32 %94, 10
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %96
  store i32 %95, i32* %97, align 4
  br label %99

98:                                               ; preds = %87, %83
  store i32 -1, i32* %7, align 4
  br label %337

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100, %62
  br label %149

102:                                              ; preds = %51
  %103 = load i8, i8* %15, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp sge i32 %104, 97
  br i1 %105, label %106, label %116

106:                                              ; preds = %102
  %107 = load i8, i8* %15, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sle i32 %108, 122
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i8, i8* %15, align 1
  %112 = sext i8 %111 to i32
  %113 = sub nsw i32 %112, 97
  %114 = load i64, i64* %14, align 8
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %114
  store i32 %113, i32* %115, align 4
  br label %148

116:                                              ; preds = %106, %102
  %117 = load i8, i8* %15, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sge i32 %118, 65
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i8, i8* %15, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp sle i32 %122, 90
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i8, i8* %15, align 1
  %126 = sext i8 %125 to i32
  %127 = sub nsw i32 %126, 65
  %128 = load i64, i64* %14, align 8
  %129 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %128
  store i32 %127, i32* %129, align 4
  br label %147

130:                                              ; preds = %120, %116
  %131 = load i8, i8* %15, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sge i32 %132, 50
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i8, i8* %15, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp sle i32 %136, 55
  br i1 %137, label %138, label %145

138:                                              ; preds = %134
  %139 = load i8, i8* %15, align 1
  %140 = sext i8 %139 to i32
  %141 = sub nsw i32 %140, 50
  %142 = add nsw i32 %141, 26
  %143 = load i64, i64* %14, align 8
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 %143
  store i32 %142, i32* %144, align 4
  br label %146

145:                                              ; preds = %134, %130
  store i32 -1, i32* %7, align 4
  br label %337

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146, %124
  br label %148

148:                                              ; preds = %147, %110
  br label %149

149:                                              ; preds = %148, %101
  br label %150

150:                                              ; preds = %149
  br label %151

151:                                              ; preds = %150
  %152 = load i64, i64* %14, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %14, align 8
  br label %23

154:                                              ; preds = %50, %23
  %155 = load i64, i64* %14, align 8
  %156 = icmp ult i64 %155, 8
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %219

158:                                              ; preds = %154
  %159 = load i64, i64* %11, align 8
  %160 = icmp ult i64 %159, 5
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 -1, i32* %7, align 4
  br label %337

162:                                              ; preds = %158
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %164 = load i32, i32* %163, align 16
  %165 = shl i32 %164, 3
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 2
  %169 = or i32 %165, %168
  %170 = load i32*, i32** %10, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 %169, i32* %171, align 4
  %172 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 6
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %176 = load i32, i32* %175, align 8
  %177 = shl i32 %176, 1
  %178 = or i32 %174, %177
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = ashr i32 %180, 4
  %182 = or i32 %178, %181
  %183 = load i32*, i32** %10, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 1
  store i32 %182, i32* %184, align 4
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 %186, 4
  %188 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %189 = load i32, i32* %188, align 16
  %190 = ashr i32 %189, 1
  %191 = or i32 %187, %190
  %192 = load i32*, i32** %10, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  store i32 %191, i32* %193, align 4
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %195 = load i32, i32* %194, align 16
  %196 = shl i32 %195, 7
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %198 = load i32, i32* %197, align 4
  %199 = shl i32 %198, 2
  %200 = or i32 %196, %199
  %201 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %202 = load i32, i32* %201, align 8
  %203 = ashr i32 %202, 3
  %204 = or i32 %200, %203
  %205 = load i32*, i32** %10, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  store i32 %204, i32* %206, align 4
  %207 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %208 = load i32, i32* %207, align 8
  %209 = shl i32 %208, 5
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 7
  %211 = load i32, i32* %210, align 4
  %212 = or i32 %209, %211
  %213 = load i32*, i32** %10, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  store i32 %212, i32* %214, align 4
  %215 = load i32*, i32** %10, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 5
  store i32* %216, i32** %10, align 8
  %217 = load i64, i64* %11, align 8
  %218 = sub i64 %217, 5
  store i64 %218, i64* %11, align 8
  br label %19

219:                                              ; preds = %157, %19
  %220 = load i64, i64* %14, align 8
  %221 = icmp ugt i64 %220, 0
  br i1 %221, label %222, label %329

222:                                              ; preds = %219
  %223 = load i64, i64* %14, align 8
  %224 = icmp ult i64 %223, 8
  br i1 %224, label %225, label %329

225:                                              ; preds = %222
  %226 = load i64, i64* %11, align 8
  %227 = load i64, i64* %14, align 8
  %228 = add i64 %227, 1
  %229 = udiv i64 %228, 2
  %230 = icmp ult i64 %226, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %225
  store i32 -1, i32* %7, align 4
  br label %337

232:                                              ; preds = %225
  %233 = load i64, i64* %14, align 8
  switch i64 %233, label %282 [
    i64 7, label %234
    i64 5, label %248
    i64 4, label %258
    i64 2, label %272
  ]

234:                                              ; preds = %232
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %236 = load i32, i32* %235, align 16
  %237 = shl i32 %236, 7
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 5
  %239 = load i32, i32* %238, align 4
  %240 = shl i32 %239, 2
  %241 = or i32 %237, %240
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 6
  %243 = load i32, i32* %242, align 8
  %244 = ashr i32 %243, 3
  %245 = or i32 %241, %244
  %246 = load i32*, i32** %10, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 3
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %232, %234
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %250 = load i32, i32* %249, align 4
  %251 = shl i32 %250, 4
  %252 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 4
  %253 = load i32, i32* %252, align 16
  %254 = ashr i32 %253, 1
  %255 = or i32 %251, %254
  %256 = load i32*, i32** %10, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  store i32 %255, i32* %257, align 4
  br label %258

258:                                              ; preds = %232, %248
  %259 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 6
  %262 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 2
  %263 = load i32, i32* %262, align 8
  %264 = shl i32 %263, 1
  %265 = or i32 %261, %264
  %266 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 4
  %269 = or i32 %265, %268
  %270 = load i32*, i32** %10, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 1
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %232, %258
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %274 = load i32, i32* %273, align 16
  %275 = shl i32 %274, 3
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 1
  %277 = load i32, i32* %276, align 4
  %278 = ashr i32 %277, 2
  %279 = or i32 %275, %278
  %280 = load i32*, i32** %10, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %279, i32* %281, align 4
  br label %283

282:                                              ; preds = %232
  store i32 -1, i32* %7, align 4
  br label %337

283:                                              ; preds = %272
  %284 = load i64, i64* %14, align 8
  %285 = add i64 %284, 1
  %286 = udiv i64 %285, 2
  %287 = load i32*, i32** %10, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 %286
  store i32* %288, i32** %10, align 8
  %289 = load i32, i32* %13, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %328

291:                                              ; preds = %283
  %292 = load i8, i8* %15, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %293, 61
  br i1 %294, label %295, label %296

295:                                              ; preds = %291
  store i32 -1, i32* %7, align 4
  br label %337

296:                                              ; preds = %291
  %297 = load i64, i64* %14, align 8
  %298 = sub i64 8, %297
  %299 = sub i64 %298, 1
  store i64 %299, i64* %14, align 8
  br label %300

300:                                              ; preds = %324, %296
  %301 = load i64, i64* %14, align 8
  %302 = icmp ugt i64 %301, 0
  br i1 %302, label %303, label %327

303:                                              ; preds = %300
  br label %304

304:                                              ; preds = %314, %303
  %305 = load i64, i64* %9, align 8
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 -1, i32* %7, align 4
  br label %337

308:                                              ; preds = %304
  %309 = load i8*, i8** %8, align 8
  %310 = getelementptr inbounds i8, i8* %309, i32 1
  store i8* %310, i8** %8, align 8
  %311 = load i8, i8* %309, align 1
  store i8 %311, i8* %15, align 1
  %312 = load i64, i64* %9, align 8
  %313 = add i64 %312, -1
  store i64 %313, i64* %9, align 8
  br label %314

314:                                              ; preds = %308
  %315 = load i8, i8* %15, align 1
  %316 = call i64 @isspace(i8 zeroext %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %304, label %318

318:                                              ; preds = %314
  %319 = load i8, i8* %15, align 1
  %320 = sext i8 %319 to i32
  %321 = icmp ne i32 %320, 61
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  store i32 -1, i32* %7, align 4
  br label %337

323:                                              ; preds = %318
  br label %324

324:                                              ; preds = %323
  %325 = load i64, i64* %14, align 8
  %326 = add i64 %325, -1
  store i64 %326, i64* %14, align 8
  br label %300

327:                                              ; preds = %300
  br label %328

328:                                              ; preds = %327, %283
  br label %329

329:                                              ; preds = %328, %222, %219
  %330 = load i32*, i32** %10, align 8
  %331 = load i32*, i32** %17, align 8
  %332 = ptrtoint i32* %330 to i64
  %333 = ptrtoint i32* %331 to i64
  %334 = sub i64 %332, %333
  %335 = sdiv exact i64 %334, 4
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %7, align 4
  br label %337

337:                                              ; preds = %329, %322, %307, %295, %282, %231, %161, %145, %98
  %338 = load i32, i32* %7, align 4
  ret i32 %338
}

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
