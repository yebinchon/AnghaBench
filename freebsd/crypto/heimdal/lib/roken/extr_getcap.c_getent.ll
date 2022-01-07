; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getcap.c_getent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getcap.c_getent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_RECURSION = common dso_local global i32 0, align 4
@toprec = common dso_local global i8* null, align 8
@topreclen = common dso_local global i64 0, align 8
@BFRAG = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tc\00", align 1
@DB_HASH = common dso_local global i32 0, align 4
@_POSIX_PATH_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i8**, i32, i8*, i32, i8*)* @getent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getent(i8** %0, i64* %1, i8** %2, i32 %3, i8* %4, i32 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i64, align 8
  store i8** %0, i8*** %9, align 8
  store i64* %1, i64** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %19, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* @MAX_RECURSION, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %7
  store i32 -3, i32* %8, align 4
  br label %540

56:                                               ; preds = %7
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %89

59:                                               ; preds = %56
  %60 = load i8*, i8** @toprec, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %89

62:                                               ; preds = %59
  %63 = load i8*, i8** @toprec, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i64 @cgetmatch(i8* %63, i8* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load i64, i64* @topreclen, align 8
  %69 = load i64, i64* @BFRAG, align 8
  %70 = add i64 %68, %69
  store i64 %70, i64* %24, align 8
  %71 = load i64, i64* %24, align 8
  %72 = call i8* @malloc(i64 %71)
  store i8* %72, i8** %22, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* @ENOMEM, align 4
  store i32 %75, i32* @errno, align 4
  store i32 -2, i32* %8, align 4
  br label %540

76:                                               ; preds = %67
  %77 = load i8*, i8** %22, align 8
  %78 = load i8*, i8** @toprec, align 8
  %79 = load i64, i64* %24, align 8
  %80 = call i32 @strlcpy(i8* %77, i8* %78, i64 %79)
  %81 = load i8**, i8*** %11, align 8
  store i8** %81, i8*** %18, align 8
  %82 = load i8*, i8** %22, align 8
  %83 = load i64, i64* @topreclen, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = load i64, i64* @BFRAG, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %16, align 8
  br label %296

89:                                               ; preds = %62, %59, %56
  %90 = load i64, i64* @BFRAG, align 8
  %91 = call i8* @malloc(i64 %90)
  store i8* %91, i8** %22, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @ENOMEM, align 4
  store i32 %94, i32* @errno, align 4
  store i32 -2, i32* %8, align 4
  br label %540

95:                                               ; preds = %89
  %96 = load i8*, i8** %22, align 8
  %97 = load i64, i64* @BFRAG, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %16, align 8
  store i32 0, i32* %21, align 4
  %99 = load i8**, i8*** %11, align 8
  store i8** %99, i8*** %18, align 8
  br label %100

100:                                              ; preds = %288, %95
  %101 = load i8**, i8*** %18, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %291

104:                                              ; preds = %100
  store i32 0, i32* %20, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp sge i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @SEEK_SET, align 4
  %110 = call i32 @lseek(i32 %108, i32 0, i32 %109)
  br label %120

111:                                              ; preds = %104
  %112 = load i8**, i8*** %18, align 8
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* @O_RDONLY, align 4
  %115 = call i32 @open(i8* %113, i32 %114, i32 0)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %288

119:                                              ; preds = %111
  store i32 1, i32* %19, align 4
  br label %120

120:                                              ; preds = %119, %107
  %121 = load i32, i32* @BUFSIZ, align 4
  %122 = zext i32 %121 to i64
  %123 = call i8* @llvm.stacksave()
  store i8* %123, i8** %25, align 8
  %124 = alloca i8, i64 %122, align 16
  store i64 %122, i64* %26, align 8
  store i8* %124, i8** %27, align 8
  store i8* %124, i8** %28, align 8
  store i8* null, i8** %29, align 8
  store i32 0, i32* %31, align 4
  br label %125

125:                                              ; preds = %278, %262, %120
  %126 = load i8*, i8** %22, align 8
  store i8* %126, i8** %17, align 8
  br label %127

127:                                              ; preds = %239, %164, %125
  %128 = load i8*, i8** %28, align 8
  %129 = load i8*, i8** %27, align 8
  %130 = icmp uge i8* %128, %129
  br i1 %130, label %131, label %154

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = trunc i64 %122 to i32
  %134 = call i32 @read(i32 %132, i8* %124, i32 %133)
  store i32 %134, i32* %32, align 4
  %135 = load i32, i32* %32, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %131
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @close(i32 %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = load i32, i32* %32, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i8*, i8** %22, align 8
  %148 = call i32 @free(i8* %147)
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %33, align 4
  br label %280

149:                                              ; preds = %143
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %20, align 4
  br label %240

150:                                              ; preds = %131
  %151 = load i32, i32* %32, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %124, i64 %152
  store i8* %153, i8** %27, align 8
  store i8* %124, i8** %28, align 8
  br label %154

154:                                              ; preds = %150, %127
  %155 = load i8*, i8** %28, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %28, align 8
  %157 = load i8, i8* %155, align 1
  %158 = sext i8 %157 to i32
  store i32 %158, i32* %30, align 4
  %159 = load i32, i32* %30, align 4
  %160 = icmp eq i32 %159, 10
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i32, i32* %31, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  store i32 0, i32* %31, align 4
  %165 = load i8*, i8** %17, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 -1
  store i8* %166, i8** %17, align 8
  br label %127

167:                                              ; preds = %161
  br label %240

168:                                              ; preds = %154
  %169 = load i32, i32* %31, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 0, i32* %31, align 4
  store i8* null, i8** %29, align 8
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, i32* %30, align 4
  %174 = icmp eq i32 %173, 58
  br i1 %174, label %175, label %183

175:                                              ; preds = %172
  %176 = load i8*, i8** %29, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i8*, i8** %29, align 8
  store i8* %179, i8** %17, align 8
  br label %182

180:                                              ; preds = %175
  %181 = load i8*, i8** %17, align 8
  store i8* %181, i8** %29, align 8
  br label %182

182:                                              ; preds = %180, %178
  br label %196

183:                                              ; preds = %172
  %184 = load i32, i32* %30, align 4
  %185 = icmp eq i32 %184, 92
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 1, i32* %31, align 4
  br label %195

187:                                              ; preds = %183
  %188 = load i32, i32* %30, align 4
  %189 = icmp ne i32 %188, 32
  br i1 %189, label %190, label %194

190:                                              ; preds = %187
  %191 = load i32, i32* %30, align 4
  %192 = icmp ne i32 %191, 9
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  store i8* null, i8** %29, align 8
  br label %194

194:                                              ; preds = %193, %190, %187
  br label %195

195:                                              ; preds = %194, %186
  br label %196

196:                                              ; preds = %195, %182
  %197 = load i32, i32* %30, align 4
  %198 = trunc i32 %197 to i8
  %199 = load i8*, i8** %17, align 8
  %200 = getelementptr inbounds i8, i8* %199, i32 1
  store i8* %200, i8** %17, align 8
  store i8 %198, i8* %199, align 1
  %201 = load i8*, i8** %17, align 8
  %202 = load i8*, i8** %16, align 8
  %203 = icmp uge i8* %201, %202
  br i1 %203, label %204, label %239

204:                                              ; preds = %196
  %205 = load i8*, i8** %17, align 8
  %206 = load i8*, i8** %22, align 8
  %207 = ptrtoint i8* %205 to i64
  %208 = ptrtoint i8* %206 to i64
  %209 = sub i64 %207, %208
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %34, align 4
  %211 = load i8*, i8** %16, align 8
  %212 = load i8*, i8** %22, align 8
  %213 = ptrtoint i8* %211 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = load i64, i64* @BFRAG, align 8
  %217 = add i64 %215, %216
  store i64 %217, i64* %35, align 8
  %218 = load i8*, i8** %22, align 8
  %219 = load i64, i64* %35, align 8
  %220 = call i8* @realloc(i8* %218, i64 %219)
  store i8* %220, i8** %22, align 8
  %221 = load i8*, i8** %22, align 8
  %222 = icmp eq i8* %221, null
  br i1 %222, label %223, label %231

223:                                              ; preds = %204
  %224 = load i32, i32* @ENOMEM, align 4
  store i32 %224, i32* @errno, align 4
  %225 = load i32, i32* %19, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @close(i32 %228)
  br label %230

230:                                              ; preds = %227, %223
  store i32 -2, i32* %8, align 4
  store i32 1, i32* %33, align 4
  br label %280

231:                                              ; preds = %204
  %232 = load i8*, i8** %22, align 8
  %233 = load i64, i64* %35, align 8
  %234 = getelementptr inbounds i8, i8* %232, i64 %233
  store i8* %234, i8** %16, align 8
  %235 = load i8*, i8** %22, align 8
  %236 = load i32, i32* %34, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8, i8* %235, i64 %237
  store i8* %238, i8** %17, align 8
  br label %239

239:                                              ; preds = %231, %196
  br label %127

240:                                              ; preds = %167, %149
  %241 = load i8*, i8** %29, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i8*, i8** %29, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 1
  store i8* %245, i8** %17, align 8
  br label %246

246:                                              ; preds = %243, %240
  %247 = load i8*, i8** %17, align 8
  %248 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %248, i8** %17, align 8
  store i8 0, i8* %247, align 1
  %249 = load i32, i32* %20, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %279

252:                                              ; preds = %246
  %253 = load i8*, i8** %22, align 8
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %262, label %257

257:                                              ; preds = %252
  %258 = load i8*, i8** %22, align 8
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp eq i32 %260, 35
  br i1 %261, label %262, label %263

262:                                              ; preds = %257, %252
  br label %125

263:                                              ; preds = %257
  %264 = load i8*, i8** %22, align 8
  %265 = load i8*, i8** %13, align 8
  %266 = call i64 @cgetmatch(i8* %264, i8* %265)
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %268, label %278

268:                                              ; preds = %263
  %269 = load i8*, i8** %15, align 8
  %270 = icmp eq i8* %269, null
  br i1 %270, label %276, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** %15, align 8
  %273 = load i8*, i8** %22, align 8
  %274 = call i32 @nfcmp(i8* %272, i8* %273)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %271, %268
  store i32 1, i32* %21, align 4
  br label %279

277:                                              ; preds = %271
  br label %278

278:                                              ; preds = %277, %263
  br label %125

279:                                              ; preds = %276, %251
  store i32 0, i32* %33, align 4
  br label %280

280:                                              ; preds = %279, %230, %146
  %281 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %281)
  %282 = load i32, i32* %33, align 4
  switch i32 %282, label %542 [
    i32 0, label %283
    i32 1, label %540
  ]

283:                                              ; preds = %280
  %284 = load i32, i32* %21, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  br label %291

287:                                              ; preds = %283
  br label %288

288:                                              ; preds = %287, %118
  %289 = load i8**, i8*** %18, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i32 1
  store i8** %290, i8*** %18, align 8
  br label %100

291:                                              ; preds = %286, %100
  %292 = load i32, i32* %21, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %291
  store i32 -1, i32* %8, align 4
  br label %540

295:                                              ; preds = %291
  br label %296

296:                                              ; preds = %295, %76
  %297 = load i8*, i8** %22, align 8
  store i8* %297, i8** %44, align 8
  store i32 0, i32* %23, align 4
  br label %298

298:                                              ; preds = %480, %362, %296
  %299 = load i8*, i8** %44, align 8
  %300 = call i8* @cgetcap(i8* %299, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext 61)
  store i8* %300, i8** %45, align 8
  %301 = icmp eq i8* %300, null
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  br label %504

303:                                              ; preds = %298
  %304 = load i8*, i8** %45, align 8
  store i8* %304, i8** %37, align 8
  br label %305

305:                                              ; preds = %321, %303
  %306 = load i8*, i8** %37, align 8
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %305
  br label %322

311:                                              ; preds = %305
  %312 = load i8*, i8** %37, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %37, align 8
  %314 = load i8, i8* %312, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 58
  br i1 %316, label %317, label %320

317:                                              ; preds = %311
  %318 = load i8*, i8** %37, align 8
  %319 = getelementptr inbounds i8, i8* %318, i64 -1
  store i8 0, i8* %319, align 1
  br label %322

320:                                              ; preds = %311
  br label %321

321:                                              ; preds = %320
  br label %305

322:                                              ; preds = %317, %310
  %323 = load i8*, i8** %45, align 8
  %324 = getelementptr inbounds i8, i8* %323, i64 -3
  store i8* %324, i8** %46, align 8
  %325 = load i8*, i8** %37, align 8
  %326 = load i8*, i8** %46, align 8
  %327 = ptrtoint i8* %325 to i64
  %328 = ptrtoint i8* %326 to i64
  %329 = sub i64 %327, %328
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %42, align 4
  %331 = load i8*, i8** %37, align 8
  store i8* %331, i8** %47, align 8
  %332 = load i8**, i8*** %18, align 8
  %333 = load i32, i32* %12, align 4
  %334 = load i8*, i8** %45, align 8
  %335 = load i32, i32* %14, align 4
  %336 = add nsw i32 %335, 1
  %337 = call i32 @getent(i8** %43, i64* %38, i8** %332, i32 %333, i8* %334, i32 %336, i8* null)
  store i32 %337, i32* %41, align 4
  %338 = load i8*, i8** %43, align 8
  store i8* %338, i8** %36, align 8
  %339 = load i64, i64* %38, align 8
  store i64 %339, i64* %39, align 8
  %340 = load i32, i32* %41, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %368

342:                                              ; preds = %322
  %343 = load i32, i32* %41, align 4
  %344 = icmp slt i32 %343, -1
  br i1 %344, label %345, label %355

345:                                              ; preds = %342
  %346 = load i32, i32* %19, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %351

348:                                              ; preds = %345
  %349 = load i32, i32* %12, align 4
  %350 = call i32 @close(i32 %349)
  br label %351

351:                                              ; preds = %348, %345
  %352 = load i8*, i8** %22, align 8
  %353 = call i32 @free(i8* %352)
  %354 = load i32, i32* %41, align 4
  store i32 %354, i32* %8, align 4
  br label %540

355:                                              ; preds = %342
  %356 = load i32, i32* %41, align 4
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  store i32 1, i32* %23, align 4
  br label %359

359:                                              ; preds = %358, %355
  %360 = load i32, i32* %41, align 4
  %361 = icmp eq i32 %360, -1
  br i1 %361, label %362, label %367

362:                                              ; preds = %359
  %363 = load i8*, i8** %37, align 8
  %364 = getelementptr inbounds i8, i8* %363, i64 -1
  store i8 58, i8* %364, align 1
  %365 = load i8*, i8** %37, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 -1
  store i8* %366, i8** %44, align 8
  store i32 1, i32* %23, align 4
  br label %298

367:                                              ; preds = %359
  br label %368

368:                                              ; preds = %367, %322
  %369 = load i8*, i8** %36, align 8
  store i8* %369, i8** %37, align 8
  br label %370

370:                                              ; preds = %384, %368
  %371 = load i8*, i8** %37, align 8
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %370
  br label %385

376:                                              ; preds = %370
  %377 = load i8*, i8** %37, align 8
  %378 = getelementptr inbounds i8, i8* %377, i32 1
  store i8* %378, i8** %37, align 8
  %379 = load i8, i8* %377, align 1
  %380 = sext i8 %379 to i32
  %381 = icmp eq i32 %380, 58
  br i1 %381, label %382, label %383

382:                                              ; preds = %376
  br label %385

383:                                              ; preds = %376
  br label %384

384:                                              ; preds = %383
  br label %370

385:                                              ; preds = %382, %375
  %386 = load i8*, i8** %37, align 8
  %387 = load i8*, i8** %36, align 8
  %388 = ptrtoint i8* %386 to i64
  %389 = ptrtoint i8* %387 to i64
  %390 = sub i64 %388, %389
  %391 = load i64, i64* %39, align 8
  %392 = sub i64 %391, %390
  store i64 %392, i64* %39, align 8
  %393 = load i8*, i8** %37, align 8
  store i8* %393, i8** %36, align 8
  %394 = load i64, i64* %39, align 8
  %395 = load i8*, i8** %37, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 %394
  store i8* %396, i8** %37, align 8
  %397 = load i8*, i8** %37, align 8
  %398 = getelementptr inbounds i8, i8* %397, i64 -1
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp ne i32 %400, 58
  br i1 %401, label %402, label %406

402:                                              ; preds = %385
  %403 = load i8*, i8** %37, align 8
  store i8 58, i8* %403, align 1
  %404 = load i64, i64* %39, align 8
  %405 = add i64 %404, 1
  store i64 %405, i64* %39, align 8
  br label %406

406:                                              ; preds = %402, %385
  %407 = load i64, i64* %39, align 8
  %408 = load i32, i32* %42, align 4
  %409 = sext i32 %408 to i64
  %410 = sub i64 %407, %409
  %411 = trunc i64 %410 to i32
  store i32 %411, i32* %40, align 4
  %412 = load i32, i32* %40, align 4
  %413 = sext i32 %412 to i64
  %414 = load i8*, i8** %16, align 8
  %415 = load i8*, i8** %17, align 8
  %416 = ptrtoint i8* %414 to i64
  %417 = ptrtoint i8* %415 to i64
  %418 = sub i64 %416, %417
  %419 = icmp sge i64 %413, %418
  br i1 %419, label %420, label %480

420:                                              ; preds = %406
  %421 = load i8*, i8** %17, align 8
  %422 = load i8*, i8** %22, align 8
  %423 = ptrtoint i8* %421 to i64
  %424 = ptrtoint i8* %422 to i64
  %425 = sub i64 %423, %424
  %426 = trunc i64 %425 to i32
  store i32 %426, i32* %48, align 4
  %427 = load i8*, i8** %16, align 8
  %428 = load i8*, i8** %22, align 8
  %429 = ptrtoint i8* %427 to i64
  %430 = ptrtoint i8* %428 to i64
  %431 = sub i64 %429, %430
  %432 = load i32, i32* %40, align 4
  %433 = sext i32 %432 to i64
  %434 = add nsw i64 %431, %433
  %435 = load i64, i64* @BFRAG, align 8
  %436 = add i64 %434, %435
  store i64 %436, i64* %51, align 8
  %437 = load i8*, i8** %46, align 8
  %438 = load i8*, i8** %22, align 8
  %439 = ptrtoint i8* %437 to i64
  %440 = ptrtoint i8* %438 to i64
  %441 = sub i64 %439, %440
  %442 = trunc i64 %441 to i32
  store i32 %442, i32* %49, align 4
  %443 = load i8*, i8** %47, align 8
  %444 = load i8*, i8** %22, align 8
  %445 = ptrtoint i8* %443 to i64
  %446 = ptrtoint i8* %444 to i64
  %447 = sub i64 %445, %446
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %50, align 4
  %449 = load i8*, i8** %22, align 8
  %450 = load i64, i64* %51, align 8
  %451 = call i8* @realloc(i8* %449, i64 %450)
  store i8* %451, i8** %22, align 8
  %452 = load i8*, i8** %22, align 8
  %453 = icmp eq i8* %452, null
  br i1 %453, label %454, label %464

454:                                              ; preds = %420
  %455 = load i32, i32* @ENOMEM, align 4
  store i32 %455, i32* @errno, align 4
  %456 = load i32, i32* %19, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %461

458:                                              ; preds = %454
  %459 = load i32, i32* %12, align 4
  %460 = call i32 @close(i32 %459)
  br label %461

461:                                              ; preds = %458, %454
  %462 = load i8*, i8** %43, align 8
  %463 = call i32 @free(i8* %462)
  store i32 -2, i32* %8, align 4
  br label %540

464:                                              ; preds = %420
  %465 = load i8*, i8** %22, align 8
  %466 = load i64, i64* %51, align 8
  %467 = getelementptr inbounds i8, i8* %465, i64 %466
  store i8* %467, i8** %16, align 8
  %468 = load i8*, i8** %22, align 8
  %469 = load i32, i32* %48, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i8, i8* %468, i64 %470
  store i8* %471, i8** %17, align 8
  %472 = load i8*, i8** %22, align 8
  %473 = load i32, i32* %49, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i8, i8* %472, i64 %474
  store i8* %475, i8** %46, align 8
  %476 = load i8*, i8** %22, align 8
  %477 = load i32, i32* %50, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds i8, i8* %476, i64 %478
  store i8* %479, i8** %47, align 8
  br label %480

480:                                              ; preds = %464, %406
  %481 = load i8*, i8** %46, align 8
  %482 = load i64, i64* %39, align 8
  %483 = getelementptr inbounds i8, i8* %481, i64 %482
  store i8* %483, i8** %37, align 8
  %484 = load i8*, i8** %37, align 8
  %485 = load i8*, i8** %47, align 8
  %486 = load i8*, i8** %17, align 8
  %487 = load i8*, i8** %47, align 8
  %488 = ptrtoint i8* %486 to i64
  %489 = ptrtoint i8* %487 to i64
  %490 = sub i64 %488, %489
  %491 = call i32 @memmove(i8* %484, i8* %485, i64 %490)
  %492 = load i8*, i8** %46, align 8
  %493 = load i8*, i8** %36, align 8
  %494 = load i64, i64* %39, align 8
  %495 = call i32 @memmove(i8* %492, i8* %493, i64 %494)
  %496 = load i32, i32* %40, align 4
  %497 = load i8*, i8** %17, align 8
  %498 = sext i32 %496 to i64
  %499 = getelementptr inbounds i8, i8* %497, i64 %498
  store i8* %499, i8** %17, align 8
  %500 = load i8*, i8** %43, align 8
  %501 = call i32 @free(i8* %500)
  %502 = load i8*, i8** %37, align 8
  %503 = getelementptr inbounds i8, i8* %502, i64 -1
  store i8* %503, i8** %44, align 8
  br label %298

504:                                              ; preds = %302
  %505 = load i32, i32* %19, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %510

507:                                              ; preds = %504
  %508 = load i32, i32* %12, align 4
  %509 = call i32 @close(i32 %508)
  br label %510

510:                                              ; preds = %507, %504
  %511 = load i8*, i8** %17, align 8
  %512 = load i8*, i8** %22, align 8
  %513 = ptrtoint i8* %511 to i64
  %514 = ptrtoint i8* %512 to i64
  %515 = sub i64 %513, %514
  %516 = sub nsw i64 %515, 1
  %517 = load i64*, i64** %10, align 8
  store i64 %516, i64* %517, align 8
  %518 = load i8*, i8** %16, align 8
  %519 = load i8*, i8** %17, align 8
  %520 = icmp ugt i8* %518, %519
  br i1 %520, label %521, label %533

521:                                              ; preds = %510
  %522 = load i8*, i8** %22, align 8
  %523 = load i8*, i8** %17, align 8
  %524 = load i8*, i8** %22, align 8
  %525 = ptrtoint i8* %523 to i64
  %526 = ptrtoint i8* %524 to i64
  %527 = sub i64 %525, %526
  %528 = call i8* @realloc(i8* %522, i64 %527)
  store i8* %528, i8** %22, align 8
  %529 = icmp eq i8* %528, null
  br i1 %529, label %530, label %532

530:                                              ; preds = %521
  %531 = load i32, i32* @ENOMEM, align 4
  store i32 %531, i32* @errno, align 4
  store i32 -2, i32* %8, align 4
  br label %540

532:                                              ; preds = %521
  br label %533

533:                                              ; preds = %532, %510
  %534 = load i8*, i8** %22, align 8
  %535 = load i8**, i8*** %9, align 8
  store i8* %534, i8** %535, align 8
  %536 = load i32, i32* %23, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %539

538:                                              ; preds = %533
  store i32 1, i32* %8, align 4
  br label %540

539:                                              ; preds = %533
  store i32 0, i32* %8, align 4
  br label %540

540:                                              ; preds = %539, %538, %530, %461, %351, %294, %280, %93, %74, %55
  %541 = load i32, i32* %8, align 4
  ret i32 %541

542:                                              ; preds = %280
  unreachable
}

declare dso_local i64 @cgetmatch(i8*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @nfcmp(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i8* @cgetcap(i8*, i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
