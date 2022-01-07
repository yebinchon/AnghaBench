; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_domap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_cmds.c_domap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mapin = common dso_local global i8* null, align 8
@mapout = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"nmap: unbalanced brackets.\0A\00", align 1
@ttyout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i8*)* @domap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @domap(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [9 x i8*], align 16
  %11 = alloca [9 x i8*], align 16
  %12 = alloca i32, align 4
  %13 = alloca [9 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** @mapin, align 8
  store i8* %23, i8** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %24

24:                                               ; preds = %31, %3
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 9
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 %29
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %24

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %159, %34
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %38, %35
  %49 = phi i1 [ false, %38 ], [ false, %35 ], [ %47, %43 ]
  br i1 %49, label %50, label %160

50:                                               ; preds = %48
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  switch i32 %53, label %127 [
    i32 92, label %54
    i32 36, label %65
  ]

54:                                               ; preds = %50
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %63, %54
  br label %137

65:                                               ; preds = %50
  %66 = load i8*, i8** %9, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp sge i32 %69, 49
  br i1 %70, label %71, label %126

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = add nsw i32 %74, 1
  %76 = icmp sle i32 %75, 57
  br i1 %76, label %77, label %126

77:                                               ; preds = %71
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %9, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %9, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %80, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %77
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = sub nsw i32 %90, 49
  store i32 %91, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 %98
  store i8* %96, i8** %99, align 8
  br label %100

100:                                              ; preds = %117, %87
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %100
  %107 = load i8*, i8** %9, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load i8*, i8** %8, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %110, %113
  br label %115

115:                                              ; preds = %106, %100
  %116 = phi i1 [ false, %100 ], [ %114, %106 ]
  br i1 %116, label %117, label %118

117:                                              ; preds = %115
  br label %100

118:                                              ; preds = %115
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %121
  store i8* %119, i8** %122, align 8
  br label %123

123:                                              ; preds = %118, %77
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %9, align 8
  br label %137

126:                                              ; preds = %71, %65
  br label %127

127:                                              ; preds = %50, %126
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = load i8*, i8** %8, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %130, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 0, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %127
  br label %137

137:                                              ; preds = %136, %123, %64
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load i8*, i8** %8, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %140
  %146 = load i8*, i8** %8, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %8, align 8
  br label %148

148:                                              ; preds = %145, %140, %137
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %148
  %152 = load i8*, i8** %9, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %9, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %9, align 8
  br label %159

159:                                              ; preds = %156, %151, %148
  br label %35

160:                                              ; preds = %48
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %160
  %164 = load i8*, i8** %8, align 8
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 %170
  store i32 0, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %163, %160
  %173 = load i8*, i8** %5, align 8
  store i8* %173, i8** %9, align 8
  %174 = load i8*, i8** %9, align 8
  store i8 0, i8* %174, align 1
  %175 = load i8*, i8** @mapout, align 8
  store i8* %175, i8** %8, align 8
  br label %176

176:                                              ; preds = %481, %172
  %177 = load i8*, i8** %8, align 8
  %178 = load i8, i8* %177, align 1
  %179 = icmp ne i8 %178, 0
  br i1 %179, label %180, label %484

180:                                              ; preds = %176
  store i32 0, i32* %15, align 4
  %181 = load i8*, i8** %8, align 8
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  switch i32 %183, label %476 [
    i32 92, label %184
    i32 91, label %196
    i32 36, label %420
  ]

184:                                              ; preds = %180
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = icmp ne i8 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load i8*, i8** %8, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %8, align 8
  %192 = load i8, i8* %191, align 1
  %193 = load i8*, i8** %9, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %9, align 8
  store i8 %192, i8* %193, align 1
  br label %195

195:                                              ; preds = %189, %184
  br label %481

196:                                              ; preds = %180
  br label %197

197:                                              ; preds = %416, %414, %196
  %198 = load i8*, i8** %8, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %8, align 8
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 36
  br i1 %202, label %203, label %258

203:                                              ; preds = %197
  %204 = load i8*, i8** %8, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 1
  %206 = load i8, i8* %205, align 1
  %207 = call i32 @isdigit(i8 zeroext %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %258

209:                                              ; preds = %203
  %210 = load i8*, i8** %8, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %8, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 48
  br i1 %214, label %215, label %228

215:                                              ; preds = %209
  %216 = load i8*, i8** %7, align 8
  store i8* %216, i8** %16, align 8
  br label %217

217:                                              ; preds = %221, %215
  %218 = load i8*, i8** %16, align 8
  %219 = load i8, i8* %218, align 1
  %220 = icmp ne i8 %219, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = load i8*, i8** %16, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %16, align 8
  %224 = load i8, i8* %222, align 1
  %225 = load i8*, i8** %9, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %9, align 8
  store i8 %224, i8* %225, align 1
  br label %217

227:                                              ; preds = %217
  store i32 1, i32* %15, align 4
  br label %257

228:                                              ; preds = %209
  %229 = load i8*, i8** %8, align 8
  %230 = load i8, i8* %229, align 1
  %231 = sext i8 %230 to i32
  %232 = sub nsw i32 %231, 49
  store i32 %232, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %256

237:                                              ; preds = %228
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 %239
  %241 = load i8*, i8** %240, align 8
  store i8* %241, i8** %17, align 8
  br label %242

242:                                              ; preds = %249, %237
  %243 = load i8*, i8** %17, align 8
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = icmp ne i8* %243, %247
  br i1 %248, label %249, label %255

249:                                              ; preds = %242
  %250 = load i8*, i8** %17, align 8
  %251 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %251, i8** %17, align 8
  %252 = load i8, i8* %250, align 1
  %253 = load i8*, i8** %9, align 8
  %254 = getelementptr inbounds i8, i8* %253, i32 1
  store i8* %254, i8** %9, align 8
  store i8 %252, i8* %253, align 1
  br label %242

255:                                              ; preds = %242
  store i32 1, i32* %15, align 4
  br label %256

256:                                              ; preds = %255, %228
  br label %257

257:                                              ; preds = %256, %227
  br label %368

258:                                              ; preds = %203, %197
  br label %259

259:                                              ; preds = %356, %258
  %260 = load i8*, i8** %8, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %274

264:                                              ; preds = %259
  %265 = load i8*, i8** %8, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp ne i32 %267, 44
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = load i8*, i8** %8, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp ne i32 %272, 93
  br label %274

274:                                              ; preds = %269, %264, %259
  %275 = phi i1 [ false, %264 ], [ false, %259 ], [ %273, %269 ]
  br i1 %275, label %276, label %357

276:                                              ; preds = %274
  %277 = load i8*, i8** %8, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 92
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load i8*, i8** %8, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %8, align 8
  br label %356

284:                                              ; preds = %276
  %285 = load i8*, i8** %8, align 8
  %286 = load i8, i8* %285, align 1
  %287 = sext i8 %286 to i32
  %288 = icmp eq i32 %287, 36
  br i1 %288, label %289, label %344

289:                                              ; preds = %284
  %290 = load i8*, i8** %8, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 1
  %292 = load i8, i8* %291, align 1
  %293 = call i32 @isdigit(i8 zeroext %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %344

295:                                              ; preds = %289
  %296 = load i8*, i8** %8, align 8
  %297 = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %297, i8** %8, align 8
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 48
  br i1 %300, label %301, label %314

301:                                              ; preds = %295
  %302 = load i8*, i8** %7, align 8
  store i8* %302, i8** %18, align 8
  br label %303

303:                                              ; preds = %307, %301
  %304 = load i8*, i8** %18, align 8
  %305 = load i8, i8* %304, align 1
  %306 = icmp ne i8 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %303
  %308 = load i8*, i8** %18, align 8
  %309 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %309, i8** %18, align 8
  %310 = load i8, i8* %308, align 1
  %311 = load i8*, i8** %9, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %9, align 8
  store i8 %310, i8* %311, align 1
  br label %303

313:                                              ; preds = %303
  br label %343

314:                                              ; preds = %295
  %315 = load i8*, i8** %8, align 8
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = sub nsw i32 %317, 49
  store i32 %318, i32* %14, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %342

323:                                              ; preds = %314
  %324 = load i32, i32* %14, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 %325
  %327 = load i8*, i8** %326, align 8
  store i8* %327, i8** %19, align 8
  br label %328

328:                                              ; preds = %335, %323
  %329 = load i8*, i8** %19, align 8
  %330 = load i32, i32* %14, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %331
  %333 = load i8*, i8** %332, align 8
  %334 = icmp ne i8* %329, %333
  br i1 %334, label %335, label %341

335:                                              ; preds = %328
  %336 = load i8*, i8** %19, align 8
  %337 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %337, i8** %19, align 8
  %338 = load i8, i8* %336, align 1
  %339 = load i8*, i8** %9, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %9, align 8
  store i8 %338, i8* %339, align 1
  br label %328

341:                                              ; preds = %328
  br label %342

342:                                              ; preds = %341, %314
  br label %343

343:                                              ; preds = %342, %313
  br label %355

344:                                              ; preds = %289, %284
  %345 = load i8*, i8** %8, align 8
  %346 = load i8, i8* %345, align 1
  %347 = icmp ne i8 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %344
  %349 = load i8*, i8** %8, align 8
  %350 = getelementptr inbounds i8, i8* %349, i32 1
  store i8* %350, i8** %8, align 8
  %351 = load i8, i8* %349, align 1
  %352 = load i8*, i8** %9, align 8
  %353 = getelementptr inbounds i8, i8* %352, i32 1
  store i8* %353, i8** %9, align 8
  store i8 %351, i8* %352, align 1
  br label %354

354:                                              ; preds = %348, %344
  br label %355

355:                                              ; preds = %354, %343
  br label %356

356:                                              ; preds = %355, %281
  br label %259

357:                                              ; preds = %274
  %358 = load i8*, i8** %8, align 8
  %359 = load i8, i8* %358, align 1
  %360 = icmp ne i8 %359, 0
  br i1 %360, label %365, label %361

361:                                              ; preds = %357
  %362 = load i32, i32* @ttyout, align 4
  %363 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %362)
  %364 = load i8*, i8** %7, align 8
  store i8* %364, i8** %4, align 8
  br label %496

365:                                              ; preds = %357
  store i32 1, i32* %15, align 4
  %366 = load i8*, i8** %8, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 -1
  store i8* %367, i8** %8, align 8
  br label %368

368:                                              ; preds = %365, %257
  %369 = load i32, i32* %15, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %409

371:                                              ; preds = %368
  br label %372

372:                                              ; preds = %399, %371
  %373 = load i8*, i8** %8, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %8, align 8
  %375 = load i8, i8* %374, align 1
  %376 = sext i8 %375 to i32
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %372
  %379 = load i8*, i8** %8, align 8
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = icmp ne i32 %381, 93
  br label %383

383:                                              ; preds = %378, %372
  %384 = phi i1 [ false, %372 ], [ %382, %378 ]
  br i1 %384, label %385, label %400

385:                                              ; preds = %383
  %386 = load i8*, i8** %8, align 8
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 92
  br i1 %389, label %390, label %399

390:                                              ; preds = %385
  %391 = load i8*, i8** %8, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 1
  %393 = load i8, i8* %392, align 1
  %394 = sext i8 %393 to i32
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %390
  %397 = load i8*, i8** %8, align 8
  %398 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %398, i8** %8, align 8
  br label %399

399:                                              ; preds = %396, %390, %385
  br label %372

400:                                              ; preds = %383
  %401 = load i8*, i8** %8, align 8
  %402 = load i8, i8* %401, align 1
  %403 = icmp ne i8 %402, 0
  br i1 %403, label %408, label %404

404:                                              ; preds = %400
  %405 = load i32, i32* @ttyout, align 4
  %406 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %405)
  %407 = load i8*, i8** %7, align 8
  store i8* %407, i8** %4, align 8
  br label %496

408:                                              ; preds = %400
  br label %481

409:                                              ; preds = %368
  %410 = load i8*, i8** %8, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %8, align 8
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  switch i32 %413, label %416 [
    i32 44, label %414
    i32 93, label %415
  ]

414:                                              ; preds = %409
  br label %197

415:                                              ; preds = %409
  br label %419

416:                                              ; preds = %409
  %417 = load i8*, i8** %8, align 8
  %418 = getelementptr inbounds i8, i8* %417, i32 -1
  store i8* %418, i8** %8, align 8
  br label %197

419:                                              ; preds = %415
  br label %481

420:                                              ; preds = %180
  %421 = load i8*, i8** %8, align 8
  %422 = getelementptr inbounds i8, i8* %421, i64 1
  %423 = load i8, i8* %422, align 1
  %424 = call i32 @isdigit(i8 zeroext %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %475

426:                                              ; preds = %420
  %427 = load i8*, i8** %8, align 8
  %428 = getelementptr inbounds i8, i8* %427, i32 1
  store i8* %428, i8** %8, align 8
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 48
  br i1 %431, label %432, label %445

432:                                              ; preds = %426
  %433 = load i8*, i8** %7, align 8
  store i8* %433, i8** %20, align 8
  br label %434

434:                                              ; preds = %438, %432
  %435 = load i8*, i8** %20, align 8
  %436 = load i8, i8* %435, align 1
  %437 = icmp ne i8 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %434
  %439 = load i8*, i8** %20, align 8
  %440 = getelementptr inbounds i8, i8* %439, i32 1
  store i8* %440, i8** %20, align 8
  %441 = load i8, i8* %439, align 1
  %442 = load i8*, i8** %9, align 8
  %443 = getelementptr inbounds i8, i8* %442, i32 1
  store i8* %443, i8** %9, align 8
  store i8 %441, i8* %442, align 1
  br label %434

444:                                              ; preds = %434
  br label %474

445:                                              ; preds = %426
  %446 = load i8*, i8** %8, align 8
  %447 = load i8, i8* %446, align 1
  %448 = sext i8 %447 to i32
  %449 = sub nsw i32 %448, 49
  store i32 %449, i32* %14, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [9 x i32], [9 x i32]* %13, i64 0, i64 %450
  %452 = load i32, i32* %451, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %473

454:                                              ; preds = %445
  %455 = load i32, i32* %14, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [9 x i8*], [9 x i8*]* %10, i64 0, i64 %456
  %458 = load i8*, i8** %457, align 8
  store i8* %458, i8** %21, align 8
  br label %459

459:                                              ; preds = %466, %454
  %460 = load i8*, i8** %21, align 8
  %461 = load i32, i32* %14, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [9 x i8*], [9 x i8*]* %11, i64 0, i64 %462
  %464 = load i8*, i8** %463, align 8
  %465 = icmp ne i8* %460, %464
  br i1 %465, label %466, label %472

466:                                              ; preds = %459
  %467 = load i8*, i8** %21, align 8
  %468 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %468, i8** %21, align 8
  %469 = load i8, i8* %467, align 1
  %470 = load i8*, i8** %9, align 8
  %471 = getelementptr inbounds i8, i8* %470, i32 1
  store i8* %471, i8** %9, align 8
  store i8 %469, i8* %470, align 1
  br label %459

472:                                              ; preds = %459
  br label %473

473:                                              ; preds = %472, %445
  br label %474

474:                                              ; preds = %473, %444
  br label %481

475:                                              ; preds = %420
  br label %476

476:                                              ; preds = %180, %475
  %477 = load i8*, i8** %8, align 8
  %478 = load i8, i8* %477, align 1
  %479 = load i8*, i8** %9, align 8
  %480 = getelementptr inbounds i8, i8* %479, i32 1
  store i8* %480, i8** %9, align 8
  store i8 %478, i8* %479, align 1
  br label %481

481:                                              ; preds = %476, %474, %419, %408, %195
  %482 = load i8*, i8** %8, align 8
  %483 = getelementptr inbounds i8, i8* %482, i32 1
  store i8* %483, i8** %8, align 8
  br label %176

484:                                              ; preds = %176
  %485 = load i8*, i8** %9, align 8
  store i8 0, i8* %485, align 1
  %486 = load i8*, i8** %5, align 8
  %487 = load i8, i8* %486, align 1
  %488 = sext i8 %487 to i32
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %492

490:                                              ; preds = %484
  %491 = load i8*, i8** %5, align 8
  br label %494

492:                                              ; preds = %484
  %493 = load i8*, i8** %7, align 8
  br label %494

494:                                              ; preds = %492, %490
  %495 = phi i8* [ %491, %490 ], [ %493, %492 ]
  store i8* %495, i8** %4, align 8
  br label %496

496:                                              ; preds = %494, %404, %361
  %497 = load i8*, i8** %4, align 8
  ret i8* %497
}

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
