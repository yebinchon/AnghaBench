; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dccp.c_dccp_print_option.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-dccp.c_dccp_print_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"CCID option %u optlen too short\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s optlen too short\00", align 1
@dccp_option_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Option %u\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"CCID option %u optlen goes past header length\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%s optlen goes past header length\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"CCID option %d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %u\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c" optlen too short\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@dccp_feature_nums = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" 0x\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c" optlen != 4\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c" optlen != 4 or 6\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @dccp_print_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_print_option(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ND_TCHECK(i32 %11)
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 32
  br i1 %15, label %16, label %48

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ND_TCHECK(i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %47

26:                                               ; preds = %16
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 128
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i32*
  %36 = call i32 @ND_PRINT(i32* %35)
  br label %46

37:                                               ; preds = %26
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @dccp_option_values, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tok2str(i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  %45 = call i32 @ND_PRINT(i32* %44)
  br label %46

46:                                               ; preds = %37, %30
  store i32 0, i32* %4, align 4
  br label %386

47:                                               ; preds = %16
  br label %49

48:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 128
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i32*
  %63 = call i32 @ND_PRINT(i32* %62)
  br label %73

64:                                               ; preds = %53
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @dccp_option_values, align 4
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @tok2str(i32 %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i32*
  %72 = call i32 @ND_PRINT(i32* %71)
  br label %73

73:                                               ; preds = %64, %57
  store i32 0, i32* %4, align 4
  br label %386

74:                                               ; preds = %49
  %75 = load i32*, i32** %6, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @ND_TCHECK2(i32 %76, i32 %77)
  %79 = load i32*, i32** %6, align 8
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %80, 128
  br i1 %81, label %82, label %108

82:                                               ; preds = %74
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i32*
  %88 = call i32 @ND_PRINT(i32* %87)
  %89 = load i32, i32* %8, align 4
  switch i32 %89, label %106 [
    i32 4, label %90
    i32 6, label %98
  ]

90:                                               ; preds = %82
  %91 = load i32*, i32** %5, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = call i32 @EXTRACT_16BITS(i32* %93)
  %95 = sext i32 %94 to i64
  %96 = inttoptr i64 %95 to i32*
  %97 = call i32 @ND_PRINT(i32* %96)
  br label %107

98:                                               ; preds = %82
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = call i32 @EXTRACT_32BITS(i32* %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i32*
  %105 = call i32 @ND_PRINT(i32* %104)
  br label %107

106:                                              ; preds = %82
  br label %107

107:                                              ; preds = %106, %98, %90
  br label %378

108:                                              ; preds = %74
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* @dccp_option_values, align 4
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @tok2str(i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to i32*
  %116 = call i32 @ND_PRINT(i32* %115)
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %377 [
    i32 32, label %119
    i32 33, label %119
    i32 34, label %119
    i32 35, label %119
    i32 36, label %164
    i32 37, label %191
    i32 38, label %212
    i32 39, label %239
    i32 40, label %266
    i32 41, label %293
    i32 42, label %308
    i32 43, label %323
    i32 44, label %350
  ]

119:                                              ; preds = %108, %108, %108, %108
  %120 = load i32, i32* %8, align 4
  %121 = icmp slt i32 %120, 3
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.8 to i32*))
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %4, align 4
  br label %386

126:                                              ; preds = %119
  %127 = load i32*, i32** %6, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %129, 10
  br i1 %130, label %131, label %163

131:                                              ; preds = %126
  %132 = load i32*, i32** %5, align 8
  %133 = load i32*, i32** @dccp_feature_nums, align 8
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i32*
  %142 = call i32 @ND_PRINT(i32* %141)
  store i32 0, i32* %9, align 4
  br label %143

143:                                              ; preds = %159, %131
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %145, 3
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %143
  %149 = load i32*, i32** %5, align 8
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 3
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i32*
  %158 = call i32 @ND_PRINT(i32* %157)
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %143

162:                                              ; preds = %143
  br label %163

163:                                              ; preds = %162, %126
  br label %377

164:                                              ; preds = %108
  %165 = load i32, i32* %8, align 4
  %166 = icmp sgt i32 %165, 2
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = load i32*, i32** %5, align 8
  %169 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.11 to i32*))
  store i32 0, i32* %9, align 4
  br label %170

170:                                              ; preds = %186, %167
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = sub nsw i32 %172, 2
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %189

175:                                              ; preds = %170
  %176 = load i32*, i32** %5, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i32*
  %185 = call i32 @ND_PRINT(i32* %184)
  br label %186

186:                                              ; preds = %175
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %9, align 4
  br label %170

189:                                              ; preds = %170
  br label %190

190:                                              ; preds = %189, %164
  br label %377

191:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %192

192:                                              ; preds = %208, %191
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %8, align 4
  %195 = sub nsw i32 %194, 2
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %192
  %198 = load i32*, i32** %5, align 8
  %199 = load i32*, i32** %6, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i32*
  %207 = call i32 @ND_PRINT(i32* %206)
  br label %208

208:                                              ; preds = %197
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %192

211:                                              ; preds = %192
  br label %377

212:                                              ; preds = %108
  %213 = load i32, i32* %8, align 4
  %214 = icmp sgt i32 %213, 2
  br i1 %214, label %215, label %238

215:                                              ; preds = %212
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.11 to i32*))
  store i32 0, i32* %9, align 4
  br label %218

218:                                              ; preds = %234, %215
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %8, align 4
  %221 = sub nsw i32 %220, 2
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %218
  %224 = load i32*, i32** %5, align 8
  %225 = load i32*, i32** %6, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i32*
  %233 = call i32 @ND_PRINT(i32* %232)
  br label %234

234:                                              ; preds = %223
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %218

237:                                              ; preds = %218
  br label %238

238:                                              ; preds = %237, %212
  br label %377

239:                                              ; preds = %108
  %240 = load i32, i32* %8, align 4
  %241 = icmp sgt i32 %240, 2
  br i1 %241, label %242, label %265

242:                                              ; preds = %239
  %243 = load i32*, i32** %5, align 8
  %244 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.11 to i32*))
  store i32 0, i32* %9, align 4
  br label %245

245:                                              ; preds = %261, %242
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* %8, align 4
  %248 = sub nsw i32 %247, 2
  %249 = icmp slt i32 %246, %248
  br i1 %249, label %250, label %264

250:                                              ; preds = %245
  %251 = load i32*, i32** %5, align 8
  %252 = load i32*, i32** %6, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 2
  %254 = load i32, i32* %9, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %253, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = sext i32 %257 to i64
  %259 = inttoptr i64 %258 to i32*
  %260 = call i32 @ND_PRINT(i32* %259)
  br label %261

261:                                              ; preds = %250
  %262 = load i32, i32* %9, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %9, align 4
  br label %245

264:                                              ; preds = %245
  br label %265

265:                                              ; preds = %264, %239
  br label %377

266:                                              ; preds = %108
  %267 = load i32, i32* %8, align 4
  %268 = icmp sgt i32 %267, 2
  br i1 %268, label %269, label %292

269:                                              ; preds = %266
  %270 = load i32*, i32** %5, align 8
  %271 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.11 to i32*))
  store i32 0, i32* %9, align 4
  br label %272

272:                                              ; preds = %288, %269
  %273 = load i32, i32* %9, align 4
  %274 = load i32, i32* %8, align 4
  %275 = sub nsw i32 %274, 2
  %276 = icmp slt i32 %273, %275
  br i1 %276, label %277, label %291

277:                                              ; preds = %272
  %278 = load i32*, i32** %5, align 8
  %279 = load i32*, i32** %6, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = inttoptr i64 %285 to i32*
  %287 = call i32 @ND_PRINT(i32* %286)
  br label %288

288:                                              ; preds = %277
  %289 = load i32, i32* %9, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %9, align 4
  br label %272

291:                                              ; preds = %272
  br label %292

292:                                              ; preds = %291, %266
  br label %377

293:                                              ; preds = %108
  %294 = load i32, i32* %8, align 4
  %295 = icmp eq i32 %294, 4
  br i1 %295, label %296, label %304

296:                                              ; preds = %293
  %297 = load i32*, i32** %5, align 8
  %298 = load i32*, i32** %6, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 2
  %300 = call i32 @EXTRACT_32BITS(i32* %299)
  %301 = sext i32 %300 to i64
  %302 = inttoptr i64 %301 to i32*
  %303 = call i32 @ND_PRINT(i32* %302)
  br label %307

304:                                              ; preds = %293
  %305 = load i32*, i32** %5, align 8
  %306 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.13 to i32*))
  br label %307

307:                                              ; preds = %304, %296
  br label %377

308:                                              ; preds = %108
  %309 = load i32, i32* %8, align 4
  %310 = icmp eq i32 %309, 4
  br i1 %310, label %311, label %319

311:                                              ; preds = %308
  %312 = load i32*, i32** %5, align 8
  %313 = load i32*, i32** %6, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  %315 = call i32 @EXTRACT_32BITS(i32* %314)
  %316 = sext i32 %315 to i64
  %317 = inttoptr i64 %316 to i32*
  %318 = call i32 @ND_PRINT(i32* %317)
  br label %322

319:                                              ; preds = %308
  %320 = load i32*, i32** %5, align 8
  %321 = call i32 @ND_PRINT(i32* bitcast ([13 x i8]* @.str.13 to i32*))
  br label %322

322:                                              ; preds = %319, %311
  br label %377

323:                                              ; preds = %108
  %324 = load i32, i32* %8, align 4
  %325 = icmp eq i32 %324, 6
  br i1 %325, label %326, label %334

326:                                              ; preds = %323
  %327 = load i32*, i32** %5, align 8
  %328 = load i32*, i32** %6, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 2
  %330 = call i32 @EXTRACT_32BITS(i32* %329)
  %331 = sext i32 %330 to i64
  %332 = inttoptr i64 %331 to i32*
  %333 = call i32 @ND_PRINT(i32* %332)
  br label %349

334:                                              ; preds = %323
  %335 = load i32, i32* %8, align 4
  %336 = icmp eq i32 %335, 4
  br i1 %336, label %337, label %345

337:                                              ; preds = %334
  %338 = load i32*, i32** %5, align 8
  %339 = load i32*, i32** %6, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  %341 = call i32 @EXTRACT_16BITS(i32* %340)
  %342 = sext i32 %341 to i64
  %343 = inttoptr i64 %342 to i32*
  %344 = call i32 @ND_PRINT(i32* %343)
  br label %348

345:                                              ; preds = %334
  %346 = load i32*, i32** %5, align 8
  %347 = call i32 @ND_PRINT(i32* bitcast ([18 x i8]* @.str.14 to i32*))
  br label %348

348:                                              ; preds = %345, %337
  br label %349

349:                                              ; preds = %348, %326
  br label %377

350:                                              ; preds = %108
  %351 = load i32, i32* %8, align 4
  %352 = icmp sgt i32 %351, 2
  br i1 %352, label %353, label %376

353:                                              ; preds = %350
  %354 = load i32*, i32** %5, align 8
  %355 = call i32 @ND_PRINT(i32* bitcast ([2 x i8]* @.str.15 to i32*))
  store i32 0, i32* %9, align 4
  br label %356

356:                                              ; preds = %372, %353
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* %8, align 4
  %359 = sub nsw i32 %358, 2
  %360 = icmp slt i32 %357, %359
  br i1 %360, label %361, label %375

361:                                              ; preds = %356
  %362 = load i32*, i32** %5, align 8
  %363 = load i32*, i32** %6, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 2
  %365 = load i32, i32* %9, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = inttoptr i64 %369 to i32*
  %371 = call i32 @ND_PRINT(i32* %370)
  br label %372

372:                                              ; preds = %361
  %373 = load i32, i32* %9, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %9, align 4
  br label %356

375:                                              ; preds = %356
  br label %376

376:                                              ; preds = %375, %350
  br label %377

377:                                              ; preds = %108, %376, %349, %322, %307, %292, %265, %238, %211, %190, %163
  br label %378

378:                                              ; preds = %377, %107
  %379 = load i32, i32* %8, align 4
  store i32 %379, i32* %4, align 4
  br label %386

380:                                              ; No predecessors!
  %381 = load i32*, i32** %5, align 8
  %382 = load i32, i32* @tstr, align 4
  %383 = sext i32 %382 to i64
  %384 = inttoptr i64 %383 to i32*
  %385 = call i32 @ND_PRINT(i32* %384)
  store i32 0, i32* %4, align 4
  br label %386

386:                                              ; preds = %380, %378, %122, %73, %46
  %387 = load i32, i32* %4, align 4
  ret i32 %387
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
