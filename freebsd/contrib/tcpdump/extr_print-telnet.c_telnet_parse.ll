; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-telnet.c_telnet_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-telnet.c_telnet_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"IAC IAC\00", align 1
@TELCMD_FIRST = common dso_local global i32 0, align 4
@NTELOPTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@telcmds = common dso_local global i32* null, align 8
@telopts = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"%s %#x\00", align 1
@SE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@authcmd = common dso_local global i32 0, align 4
@authtype = common dso_local global i32 0, align 4
@enccmd = common dso_local global i32 0, align 4
@enctype = common dso_local global i32 0, align 4
@cmds = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c" %#x\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" SE\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @telnet_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @telnet_parse(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %13, align 8
  br label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %396

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ND_TCHECK(i32 %22)
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @IAC, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %396

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %396

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ND_TCHECK(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %7, align 8
  %45 = load i32, i32* %43, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @IAC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @ND_PRINT(i32* bitcast ([8 x i8]* @.str to i32*))
  br label %58

58:                                               ; preds = %55, %52
  br label %382

59:                                               ; preds = %48
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @TELCMD_FIRST, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IAC, align 4
  %68 = load i32, i32* @TELCMD_FIRST, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %59
  br label %396

72:                                               ; preds = %65
  %73 = load i32, i32* %12, align 4
  switch i32 %73, label %367 [
    i32 133, label %74
    i32 134, label %74
    i32 128, label %74
    i32 129, label %74
    i32 132, label %74
  ]

74:                                               ; preds = %72, %72, %72, %72, %72
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = icmp slt i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %396

79:                                               ; preds = %75
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ND_TCHECK(i32 %81)
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %7, align 8
  %85 = load i32, i32* %83, align 4
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %79
  %89 = load i32, i32* %11, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @NTELOPTS, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = load i32*, i32** %6, align 8
  %100 = load i32*, i32** @telcmds, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @telopts, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = inttoptr i64 %110 to i32*
  %112 = call i32 @ND_PRINT(i32* %111)
  br label %113

113:                                              ; preds = %98, %95
  br label %129

114:                                              ; preds = %91, %88
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %114
  %118 = load i32*, i32** %6, align 8
  %119 = load i32*, i32** @telcmds, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i32*
  %127 = call i32 @ND_PRINT(i32* %126)
  br label %128

128:                                              ; preds = %117, %114
  br label %129

129:                                              ; preds = %128, %113
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 132
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %381

133:                                              ; preds = %129
  %134 = load i32*, i32** %7, align 8
  store i32* %134, i32** %14, align 8
  br label %135

135:                                              ; preds = %162, %133
  %136 = load i32, i32* %8, align 4
  %137 = load i32*, i32** %14, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32*, i32** %7, align 8
  %140 = ptrtoint i32* %138 to i64
  %141 = ptrtoint i32* %139 to i64
  %142 = sub i64 %140, %141
  %143 = sdiv exact i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = icmp sgt i32 %136, %144
  br i1 %145, label %146, label %165

146:                                              ; preds = %135
  %147 = load i32*, i32** %14, align 8
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ND_TCHECK2(i32 %148, i32 2)
  %150 = load i32*, i32** %14, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @IAC, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %146
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SE, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %155
  br label %165

162:                                              ; preds = %155, %146
  %163 = load i32*, i32** %14, align 8
  %164 = getelementptr inbounds i32, i32* %163, i32 1
  store i32* %164, i32** %14, align 8
  br label %135

165:                                              ; preds = %161, %135
  %166 = load i32*, i32** %14, align 8
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @ND_TCHECK(i32 %167)
  %169 = load i32*, i32** %14, align 8
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IAC, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %396

174:                                              ; preds = %165
  %175 = load i32, i32* %11, align 4
  switch i32 %175, label %298 [
    i32 131, label %176
    i32 130, label %237
  ]

176:                                              ; preds = %174
  %177 = load i32*, i32** %14, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = icmp ule i32* %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %329

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  br label %396

186:                                              ; preds = %182
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @ND_TCHECK(i32 %188)
  %190 = load i32*, i32** %7, align 8
  %191 = getelementptr inbounds i32, i32* %190, i32 1
  store i32* %191, i32** %7, align 8
  %192 = load i32, i32* %190, align 4
  store i32 %192, i32* %12, align 4
  %193 = load i32, i32* %8, align 4
  %194 = add nsw i32 %193, -1
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %186
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load i32*, i32** %6, align 8
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @authcmd, align 4
  %202 = call i32 @STR_OR_ID(i32 %200, i32 %201)
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i32*
  %205 = call i32 @ND_PRINT(i32* %204)
  br label %206

206:                                              ; preds = %198, %195
  %207 = load i32*, i32** %14, align 8
  %208 = load i32*, i32** %7, align 8
  %209 = icmp ule i32* %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %329

211:                                              ; preds = %206
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %8, align 4
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %396

216:                                              ; preds = %212
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @ND_TCHECK(i32 %218)
  %220 = load i32*, i32** %7, align 8
  %221 = getelementptr inbounds i32, i32* %220, i32 1
  store i32* %221, i32** %7, align 8
  %222 = load i32, i32* %220, align 4
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %8, align 4
  br label %225

225:                                              ; preds = %216
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %236

228:                                              ; preds = %225
  %229 = load i32*, i32** %6, align 8
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @authtype, align 4
  %232 = call i32 @STR_OR_ID(i32 %230, i32 %231)
  %233 = sext i32 %232 to i64
  %234 = inttoptr i64 %233 to i32*
  %235 = call i32 @ND_PRINT(i32* %234)
  br label %236

236:                                              ; preds = %228, %225
  br label %329

237:                                              ; preds = %174
  %238 = load i32*, i32** %14, align 8
  %239 = load i32*, i32** %7, align 8
  %240 = icmp ule i32* %238, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  br label %329

242:                                              ; preds = %237
  br label %243

243:                                              ; preds = %242
  %244 = load i32, i32* %8, align 4
  %245 = icmp slt i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  br label %396

247:                                              ; preds = %243
  %248 = load i32*, i32** %7, align 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @ND_TCHECK(i32 %249)
  %251 = load i32*, i32** %7, align 8
  %252 = getelementptr inbounds i32, i32* %251, i32 1
  store i32* %252, i32** %7, align 8
  %253 = load i32, i32* %251, align 4
  store i32 %253, i32* %12, align 4
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %247
  %257 = load i32, i32* %9, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %256
  %260 = load i32*, i32** %6, align 8
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* @enccmd, align 4
  %263 = call i32 @STR_OR_ID(i32 %261, i32 %262)
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to i32*
  %266 = call i32 @ND_PRINT(i32* %265)
  br label %267

267:                                              ; preds = %259, %256
  %268 = load i32*, i32** %14, align 8
  %269 = load i32*, i32** %7, align 8
  %270 = icmp ule i32* %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %329

272:                                              ; preds = %267
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %8, align 4
  %275 = icmp slt i32 %274, 1
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  br label %396

277:                                              ; preds = %273
  %278 = load i32*, i32** %7, align 8
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @ND_TCHECK(i32 %279)
  %281 = load i32*, i32** %7, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %7, align 8
  %283 = load i32, i32* %281, align 4
  store i32 %283, i32* %12, align 4
  %284 = load i32, i32* %8, align 4
  %285 = add nsw i32 %284, -1
  store i32 %285, i32* %8, align 4
  br label %286

286:                                              ; preds = %277
  %287 = load i32, i32* %9, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = load i32*, i32** %6, align 8
  %291 = load i32, i32* %12, align 4
  %292 = load i32, i32* @enctype, align 4
  %293 = call i32 @STR_OR_ID(i32 %291, i32 %292)
  %294 = sext i32 %293 to i64
  %295 = inttoptr i64 %294 to i32*
  %296 = call i32 @ND_PRINT(i32* %295)
  br label %297

297:                                              ; preds = %289, %286
  br label %329

298:                                              ; preds = %174
  %299 = load i32*, i32** %14, align 8
  %300 = load i32*, i32** %7, align 8
  %301 = icmp ule i32* %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  br label %329

303:                                              ; preds = %298
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %8, align 4
  %306 = icmp slt i32 %305, 1
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  br label %396

308:                                              ; preds = %304
  %309 = load i32*, i32** %7, align 8
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @ND_TCHECK(i32 %310)
  %312 = load i32*, i32** %7, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %7, align 8
  %314 = load i32, i32* %312, align 4
  store i32 %314, i32* %12, align 4
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %8, align 4
  br label %317

317:                                              ; preds = %308
  %318 = load i32, i32* %9, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %317
  %321 = load i32*, i32** %6, align 8
  %322 = load i32, i32* %12, align 4
  %323 = load i32, i32* @cmds, align 4
  %324 = call i32 @STR_OR_ID(i32 %322, i32 %323)
  %325 = sext i32 %324 to i64
  %326 = inttoptr i64 %325 to i32*
  %327 = call i32 @ND_PRINT(i32* %326)
  br label %328

328:                                              ; preds = %320, %317
  br label %329

329:                                              ; preds = %328, %302, %297, %271, %241, %236, %210, %180
  br label %330

330:                                              ; preds = %357, %329
  %331 = load i32*, i32** %14, align 8
  %332 = load i32*, i32** %7, align 8
  %333 = icmp ugt i32* %331, %332
  br i1 %333, label %334, label %358

334:                                              ; preds = %330
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %8, align 4
  %337 = icmp slt i32 %336, 1
  br i1 %337, label %338, label %339

338:                                              ; preds = %335
  br label %396

339:                                              ; preds = %335
  %340 = load i32*, i32** %7, align 8
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @ND_TCHECK(i32 %341)
  %343 = load i32*, i32** %7, align 8
  %344 = getelementptr inbounds i32, i32* %343, i32 1
  store i32* %344, i32** %7, align 8
  %345 = load i32, i32* %343, align 4
  store i32 %345, i32* %11, align 4
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %8, align 4
  br label %348

348:                                              ; preds = %339
  %349 = load i32, i32* %9, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load i32*, i32** %6, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = inttoptr i64 %354 to i32*
  %356 = call i32 @ND_PRINT(i32* %355)
  br label %357

357:                                              ; preds = %351, %348
  br label %330

358:                                              ; preds = %330
  %359 = load i32, i32* %9, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %364

361:                                              ; preds = %358
  %362 = load i32*, i32** %6, align 8
  %363 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.5 to i32*))
  br label %364

364:                                              ; preds = %361, %358
  %365 = load i32*, i32** %7, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 2
  store i32* %366, i32** %7, align 8
  br label %381

367:                                              ; preds = %72
  %368 = load i32, i32* %9, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %380

370:                                              ; preds = %367
  %371 = load i32*, i32** %6, align 8
  %372 = load i32*, i32** @telcmds, align 8
  %373 = load i32, i32* %10, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = inttoptr i64 %377 to i32*
  %379 = call i32 @ND_PRINT(i32* %378)
  br label %380

380:                                              ; preds = %370, %367
  br label %382

381:                                              ; preds = %364, %132
  br label %382

382:                                              ; preds = %381, %380, %58
  %383 = load i32*, i32** %7, align 8
  %384 = load i32*, i32** %13, align 8
  %385 = ptrtoint i32* %383 to i64
  %386 = ptrtoint i32* %384 to i64
  %387 = sub i64 %385, %386
  %388 = sdiv exact i64 %387, 4
  %389 = trunc i64 %388 to i32
  store i32 %389, i32* %5, align 4
  br label %397

390:                                              ; No predecessors!
  %391 = load i32*, i32** %6, align 8
  %392 = load i32, i32* @tstr, align 4
  %393 = sext i32 %392 to i64
  %394 = inttoptr i64 %393 to i32*
  %395 = call i32 @ND_PRINT(i32* %394)
  br label %396

396:                                              ; preds = %390, %338, %307, %276, %246, %215, %185, %173, %78, %71, %38, %33, %19
  store i32 -1, i32* %5, align 4
  br label %397

397:                                              ; preds = %396, %382
  %398 = load i32, i32* %5, align 4
  ret i32 %398
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @STR_OR_ID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
