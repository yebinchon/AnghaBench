; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_argv.c_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, i32 }

@MDOC_PHRASELIT = common dso_local global i32 0, align 4
@MDOC_PHRASE = common dso_local global i32 0, align 4
@MANDOCERR_ARG_QUOTE = common dso_local global i32 0, align 4
@MDOC_PHRASEQL = common dso_local global i32 0, align 4
@ARGS_EOLN = common dso_local global i32 0, align 4
@ARGSFL_DELIM = common dso_local global i32 0, align 4
@ARGS_PUNCT = common dso_local global i32 0, align 4
@ARGSFL_TABSEP = common dso_local global i32 0, align 4
@MDOC_PHRASEQN = common dso_local global i32 0, align 4
@MANDOCERR_SPACE_EOL = common dso_local global i32 0, align 4
@ARGS_PHRASE = common dso_local global i32 0, align 4
@ARGS_WORD = common dso_local global i32 0, align 4
@MDOC_PHRASEQF = common dso_local global i32 0, align 4
@ARGS_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.roff_man*, i32, i32*, i8*, i32, i8**)* @args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @args(%struct.roff_man* %0, i32 %1, i32* %2, i8* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.roff_man*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.roff_man* %0, %struct.roff_man** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %17, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %59

25:                                               ; preds = %6
  %26 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %27 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MDOC_PHRASELIT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %25
  %33 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %34 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MDOC_PHRASE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @MANDOCERR_ARG_QUOTE, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mandoc_msg(i32 %40, i32 %41, i32 %43, i32* null)
  %45 = load i32, i32* @MDOC_PHRASELIT, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %48 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %39, %32, %25
  %52 = load i32, i32* @MDOC_PHRASEQL, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %55 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* @ARGS_EOLN, align 4
  store i32 %58, i32* %7, align 4
  br label %475

59:                                               ; preds = %6
  %60 = load i8**, i8*** %13, align 8
  %61 = icmp eq i8** %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i8** %15, i8*** %13, align 8
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i8*, i8** %11, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8**, i8*** %13, align 8
  store i8* %68, i8** %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @ARGSFL_DELIM, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load i8*, i8** %11, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @args_checkpunct(i8* %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @ARGS_PUNCT, align 4
  store i32 %80, i32* %7, align 4
  br label %475

81:                                               ; preds = %73, %63
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @ARGSFL_TABSEP, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %241

85:                                               ; preds = %81
  %86 = load i8**, i8*** %13, align 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 9)
  store i8* %88, i8** %14, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %181

90:                                               ; preds = %85
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = icmp ugt i8* %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %90
  %95 = load i8*, i8** %14, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 -1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 32
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* @MDOC_PHRASEQL, align 4
  %102 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %103 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %94, %90
  %107 = load i8*, i8** %14, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 32
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load i32, i32* @MDOC_PHRASEQN, align 4
  %114 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %115 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %106
  %119 = load i8*, i8** %14, align 8
  %120 = load i8**, i8*** %13, align 8
  %121 = load i8*, i8** %120, align 8
  %122 = ptrtoint i8* %119 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  %126 = add nsw i32 %125, 1
  %127 = load i32*, i32** %10, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %151, %118
  %131 = load i8*, i8** %11, align 8
  %132 = load i32*, i32** %10, align 8
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %131, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 32
  br i1 %138, label %139, label %149

139:                                              ; preds = %130
  %140 = load i8*, i8** %11, align 8
  %141 = load i32*, i32** %10, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 32
  br label %149

149:                                              ; preds = %139, %130
  %150 = phi i1 [ false, %130 ], [ %148, %139 ]
  br i1 %150, label %151, label %155

151:                                              ; preds = %149
  %152 = load i32*, i32** %10, align 8
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  br label %130

155:                                              ; preds = %149
  %156 = load i8*, i8** %11, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %155
  %165 = load i8*, i8** %11, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %165, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %164, %155
  %175 = load i32, i32* @MDOC_PHRASEQN, align 4
  %176 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %177 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %164
  br label %207

181:                                              ; preds = %85
  %182 = load i8**, i8*** %13, align 8
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @strchr(i8* %183, i8 signext 0)
  store i8* %184, i8** %14, align 8
  %185 = load i8*, i8** %14, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 -1
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp eq i32 %188, 32
  br i1 %189, label %190, label %196

190:                                              ; preds = %181
  %191 = load i32, i32* @MANDOCERR_SPACE_EOL, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32*, i32** %10, align 8
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @mandoc_msg(i32 %191, i32 %192, i32 %194, i32* null)
  br label %196

196:                                              ; preds = %190, %181
  %197 = load i8*, i8** %14, align 8
  %198 = load i8**, i8*** %13, align 8
  %199 = load i8*, i8** %198, align 8
  %200 = ptrtoint i8* %197 to i64
  %201 = ptrtoint i8* %199 to i64
  %202 = sub i64 %200, %201
  %203 = trunc i64 %202 to i32
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %203
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %196, %180
  br label %208

208:                                              ; preds = %235, %207
  %209 = load i8*, i8** %14, align 8
  %210 = load i8**, i8*** %13, align 8
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ugt i8* %209, %211
  br i1 %212, label %213, label %233

213:                                              ; preds = %208
  %214 = load i8*, i8** %14, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 -1
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = icmp eq i32 %217, 32
  br i1 %218, label %219, label %233

219:                                              ; preds = %213
  %220 = load i8*, i8** %14, align 8
  %221 = getelementptr inbounds i8, i8* %220, i64 -1
  %222 = load i8**, i8*** %13, align 8
  %223 = load i8*, i8** %222, align 8
  %224 = icmp eq i8* %221, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load i8*, i8** %14, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 -2
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp ne i32 %229, 92
  br label %231

231:                                              ; preds = %225, %219
  %232 = phi i1 [ true, %219 ], [ %230, %225 ]
  br label %233

233:                                              ; preds = %231, %213, %208
  %234 = phi i1 [ false, %213 ], [ false, %208 ], [ %232, %231 ]
  br i1 %234, label %235, label %238

235:                                              ; preds = %233
  %236 = load i8*, i8** %14, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 -1
  store i8* %237, i8** %14, align 8
  br label %208

238:                                              ; preds = %233
  %239 = load i8*, i8** %14, align 8
  store i8 0, i8* %239, align 1
  %240 = load i32, i32* @ARGS_PHRASE, align 4
  store i32 %240, i32* %7, align 4
  br label %475

241:                                              ; preds = %81
  %242 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %243 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @MDOC_PHRASELIT, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %264, label %248

248:                                              ; preds = %241
  %249 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %250 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @MDOC_PHRASE, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %430

255:                                              ; preds = %248
  %256 = load i8*, i8** %11, align 8
  %257 = load i32*, i32** %10, align 8
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %256, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 34
  br i1 %263, label %264, label %430

264:                                              ; preds = %255, %241
  %265 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %266 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @MDOC_PHRASELIT, align 4
  %269 = and i32 %267, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %264
  %272 = load i8*, i8** %11, align 8
  %273 = load i32*, i32** %10, align 8
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i8, i8* %272, i64 %276
  %278 = load i8**, i8*** %13, align 8
  store i8* %277, i8** %278, align 8
  %279 = load i32, i32* @MDOC_PHRASELIT, align 4
  %280 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %281 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = or i32 %282, %279
  store i32 %283, i32* %281, align 4
  br label %284

284:                                              ; preds = %271, %264
  store i32 0, i32* %16, align 4
  br label %285

285:                                              ; preds = %337, %284
  %286 = load i8*, i8** %11, align 8
  %287 = load i32*, i32** %10, align 8
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %286, i64 %289
  %291 = load i8, i8* %290, align 1
  %292 = icmp ne i8 %291, 0
  br i1 %292, label %293, label %341

293:                                              ; preds = %285
  %294 = load i32, i32* %16, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %310

296:                                              ; preds = %293
  %297 = load i8*, i8** %11, align 8
  %298 = load i32*, i32** %10, align 8
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i8, i8* %297, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = load i8*, i8** %11, align 8
  %304 = load i32*, i32** %10, align 8
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %16, align 4
  %307 = sub nsw i32 %305, %306
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %303, i64 %308
  store i8 %302, i8* %309, align 1
  br label %310

310:                                              ; preds = %296, %293
  %311 = load i8*, i8** %11, align 8
  %312 = load i32*, i32** %10, align 8
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i8, i8* %311, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp ne i32 34, %317
  br i1 %318, label %319, label %320

319:                                              ; preds = %310
  br label %337

320:                                              ; preds = %310
  %321 = load i8*, i8** %11, align 8
  %322 = load i32*, i32** %10, align 8
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i8, i8* %321, i64 %325
  %327 = load i8, i8* %326, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp ne i32 34, %328
  br i1 %329, label %330, label %331

330:                                              ; preds = %320
  br label %341

331:                                              ; preds = %320
  %332 = load i32, i32* %16, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %16, align 4
  %334 = load i32*, i32** %10, align 8
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %331, %319
  %338 = load i32*, i32** %10, align 8
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 4
  br label %285

341:                                              ; preds = %330, %285
  %342 = load i32, i32* %16, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %341
  %345 = load i8*, i8** %11, align 8
  %346 = load i32*, i32** %10, align 8
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %16, align 4
  %349 = sub nsw i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i8, i8* %345, i64 %350
  store i8 0, i8* %351, align 1
  br label %352

352:                                              ; preds = %344, %341
  %353 = load i8*, i8** %11, align 8
  %354 = load i32*, i32** %10, align 8
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %376

361:                                              ; preds = %352
  %362 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %363 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @MDOC_PHRASE, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %374, label %368

368:                                              ; preds = %361
  %369 = load i32, i32* @MANDOCERR_ARG_QUOTE, align 4
  %370 = load i32, i32* %9, align 4
  %371 = load i32*, i32** %10, align 8
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @mandoc_msg(i32 %369, i32 %370, i32 %372, i32* null)
  br label %374

374:                                              ; preds = %368, %361
  %375 = load i32, i32* @ARGS_WORD, align 4
  store i32 %375, i32* %7, align 4
  br label %475

376:                                              ; preds = %352
  %377 = load i32, i32* @MDOC_PHRASELIT, align 4
  %378 = xor i32 %377, -1
  %379 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %380 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = and i32 %381, %378
  store i32 %382, i32* %380, align 4
  %383 = load i8*, i8** %11, align 8
  %384 = load i32*, i32** %10, align 8
  %385 = load i32, i32* %384, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %384, align 4
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i8, i8* %383, i64 %387
  store i8 0, i8* %388, align 1
  %389 = load i8*, i8** %11, align 8
  %390 = load i32*, i32** %10, align 8
  %391 = load i32, i32* %390, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, i8* %389, i64 %392
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  %396 = icmp eq i32 0, %395
  br i1 %396, label %397, label %399

397:                                              ; preds = %376
  %398 = load i32, i32* @ARGS_WORD, align 4
  store i32 %398, i32* %7, align 4
  br label %475

399:                                              ; preds = %376
  br label %400

400:                                              ; preds = %409, %399
  %401 = load i8*, i8** %11, align 8
  %402 = load i32*, i32** %10, align 8
  %403 = load i32, i32* %402, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i8, i8* %401, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = sext i8 %406 to i32
  %408 = icmp eq i32 32, %407
  br i1 %408, label %409, label %413

409:                                              ; preds = %400
  %410 = load i32*, i32** %10, align 8
  %411 = load i32, i32* %410, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %410, align 4
  br label %400

413:                                              ; preds = %400
  %414 = load i8*, i8** %11, align 8
  %415 = load i32*, i32** %10, align 8
  %416 = load i32, i32* %415, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i8, i8* %414, i64 %417
  %419 = load i8, i8* %418, align 1
  %420 = sext i8 %419 to i32
  %421 = icmp eq i32 0, %420
  br i1 %421, label %422, label %428

422:                                              ; preds = %413
  %423 = load i32, i32* @MANDOCERR_SPACE_EOL, align 4
  %424 = load i32, i32* %9, align 4
  %425 = load i32*, i32** %10, align 8
  %426 = load i32, i32* %425, align 4
  %427 = call i32 @mandoc_msg(i32 %423, i32 %424, i32 %426, i32* null)
  br label %428

428:                                              ; preds = %422, %413
  %429 = load i32, i32* @ARGS_WORD, align 4
  store i32 %429, i32* %7, align 4
  br label %475

430:                                              ; preds = %255, %248
  %431 = load i8*, i8** %11, align 8
  %432 = load i32*, i32** %10, align 8
  %433 = load i32, i32* %432, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i8, i8* %431, i64 %434
  store i8* %435, i8** %14, align 8
  %436 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %437 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %9, align 4
  %440 = load i32*, i32** %10, align 8
  %441 = call i8* @roff_getarg(i32 %438, i8** %14, i32 %439, i32* %440)
  %442 = load i8**, i8*** %13, align 8
  store i8* %441, i8** %442, align 8
  %443 = load i8**, i8*** %13, align 8
  %444 = icmp eq i8** %443, %15
  br i1 %444, label %445, label %449

445:                                              ; preds = %430
  %446 = load i8**, i8*** %13, align 8
  %447 = load i8*, i8** %446, align 8
  %448 = call i32 @free(i8* %447)
  br label %449

449:                                              ; preds = %445, %430
  %450 = load i8*, i8** %14, align 8
  %451 = load i8, i8* %450, align 1
  %452 = sext i8 %451 to i32
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %473

454:                                              ; preds = %449
  %455 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %456 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @MDOC_PHRASEQL, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %473

461:                                              ; preds = %454
  %462 = load i32, i32* @MDOC_PHRASEQL, align 4
  %463 = xor i32 %462, -1
  %464 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %465 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = and i32 %466, %463
  store i32 %467, i32* %465, align 4
  %468 = load i32, i32* @MDOC_PHRASEQF, align 4
  %469 = load %struct.roff_man*, %struct.roff_man** %8, align 8
  %470 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %471, %468
  store i32 %472, i32* %470, align 4
  br label %473

473:                                              ; preds = %461, %454, %449
  %474 = load i32, i32* @ARGS_ALLOC, align 4
  store i32 %474, i32* %7, align 4
  br label %475

475:                                              ; preds = %473, %428, %397, %374, %238, %79, %51
  %476 = load i32, i32* %7, align 4
  ret i32 %476
}

declare dso_local i32 @mandoc_msg(i32, i32, i32, i32*) #1

declare dso_local i64 @args_checkpunct(i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @roff_getarg(i32, i8**, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
