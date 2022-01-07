; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_simp_re.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_simp_re.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64*, i64*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@REG_EESCAPE = common dso_local global i32 0, align 4
@REG_BADRPT = common dso_local global i32 0, align 4
@NPAREN = common dso_local global i64 0, align 8
@OLPAREN = common dso_local global i32 0, align 4
@ORPAREN = common dso_local global i32 0, align 4
@REG_EPAREN = common dso_local global i32 0, align 4
@OBACK_ = common dso_local global i32 0, align 4
@O_BACK = common dso_local global i32 0, align 4
@REG_ESUBREG = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@OANY = common dso_local global i32 0, align 4
@OPLUS_ = common dso_local global i32 0, align 4
@O_PLUS = common dso_local global i32 0, align 4
@OQUEST_ = common dso_local global i32 0, align 4
@O_QUEST = common dso_local global i32 0, align 4
@REG_BADBR = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4
@REG_EBRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*, i32, i64)* @p_simp_re to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_simp_re(%struct.parse* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.parse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %15 = call i8* (...) @HERE()
  %16 = ptrtoint i8* %15 to i64
  store i64 %16, i64* %11, align 8
  %17 = call i32 (...) @MORE()
  %18 = call i32 @assert(i32 %17)
  %19 = call i32 (...) @GETNEXT()
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 92
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %212

25:                                               ; preds = %3
  %26 = call i32 (...) @MORE()
  %27 = load i32, i32* @REG_EESCAPE, align 4
  %28 = call i32 @REQUIRE(i32 %26, i32 %27)
  %29 = call i32 (...) @GETNEXT()
  %30 = trunc i32 %29 to i8
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %207 [
    i32 123, label %33
    i32 40, label %36
    i32 41, label %102
    i32 125, label %102
    i32 49, label %105
    i32 50, label %105
    i32 51, label %105
    i32 52, label %105
    i32 53, label %105
    i32 54, label %105
    i32 55, label %105
    i32 56, label %105
    i32 57, label %105
  ]

33:                                               ; preds = %25
  %34 = load i32, i32* @REG_BADRPT, align 4
  %35 = call i32 @SETERROR(i32 %34)
  br label %211

36:                                               ; preds = %25
  %37 = load %struct.parse*, %struct.parse** %5, align 8
  %38 = getelementptr inbounds %struct.parse, %struct.parse* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.parse*, %struct.parse** %5, align 8
  %44 = getelementptr inbounds %struct.parse, %struct.parse* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @NPAREN, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %36
  %52 = call i8* (...) @HERE()
  %53 = ptrtoint i8* %52 to i64
  %54 = load %struct.parse*, %struct.parse** %5, align 8
  %55 = getelementptr inbounds %struct.parse, %struct.parse* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %53, i64* %58, align 8
  br label %59

59:                                               ; preds = %51, %36
  %60 = load i32, i32* @OLPAREN, align 4
  %61 = load i64, i64* %13, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @EMIT(i32 %60, i32 %62)
  %64 = call i32 (...) @MORE()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %59
  %67 = call i32 @SEETWO(i8 signext 92, i8 signext 41)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %66
  %70 = load %struct.parse*, %struct.parse** %5, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @p_bre(%struct.parse* %70, i8 signext 92, i8 signext 41, i64 %71)
  br label %73

73:                                               ; preds = %69, %66, %59
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @NPAREN, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = call i8* (...) @HERE()
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.parse*, %struct.parse** %5, align 8
  %81 = getelementptr inbounds %struct.parse, %struct.parse* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  store i64 %79, i64* %84, align 8
  %85 = load %struct.parse*, %struct.parse** %5, align 8
  %86 = getelementptr inbounds %struct.parse, %struct.parse* %85, i32 0, i32 1
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %13, align 8
  %89 = getelementptr inbounds i64, i64* %87, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i32 @assert(i32 %92)
  br label %94

94:                                               ; preds = %77, %73
  %95 = load i32, i32* @ORPAREN, align 4
  %96 = load i64, i64* %13, align 8
  %97 = trunc i64 %96 to i32
  %98 = call i32 @EMIT(i32 %95, i32 %97)
  %99 = call i32 @EATTWO(i8 signext 92, i8 signext 41)
  %100 = load i32, i32* @REG_EPAREN, align 4
  %101 = call i32 @REQUIRE(i32 %99, i32 %100)
  br label %211

102:                                              ; preds = %25, %25
  %103 = load i32, i32* @REG_EPAREN, align 4
  %104 = call i32 @SETERROR(i32 %103)
  br label %211

105:                                              ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 48
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @NPAREN, align 8
  %111 = icmp ult i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @assert(i32 %112)
  %114 = load %struct.parse*, %struct.parse** %5, align 8
  %115 = getelementptr inbounds %struct.parse, %struct.parse* %114, i32 0, i32 1
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %199

122:                                              ; preds = %105
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.parse*, %struct.parse** %5, align 8
  %126 = getelementptr inbounds %struct.parse, %struct.parse* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ule i64 %124, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i32, i32* @OBACK_, align 4
  %134 = load i32, i32* %12, align 4
  %135 = call i32 @EMIT(i32 %133, i32 %134)
  %136 = load %struct.parse*, %struct.parse** %5, align 8
  %137 = getelementptr inbounds %struct.parse, %struct.parse* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %138, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  %144 = zext i1 %143 to i32
  %145 = call i32 @assert(i32 %144)
  %146 = load %struct.parse*, %struct.parse** %5, align 8
  %147 = getelementptr inbounds %struct.parse, %struct.parse* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.parse*, %struct.parse** %5, align 8
  %150 = getelementptr inbounds %struct.parse, %struct.parse* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %148, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @OLPAREN, align 4
  %159 = icmp eq i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load %struct.parse*, %struct.parse** %5, align 8
  %163 = getelementptr inbounds %struct.parse, %struct.parse* %162, i32 0, i32 3
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.parse*, %struct.parse** %5, align 8
  %166 = getelementptr inbounds %struct.parse, %struct.parse* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i32, i32* %164, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ORPAREN, align 4
  %175 = icmp eq i32 %173, %174
  %176 = zext i1 %175 to i32
  %177 = call i32 @assert(i32 %176)
  %178 = load %struct.parse*, %struct.parse** %5, align 8
  %179 = load %struct.parse*, %struct.parse** %5, align 8
  %180 = getelementptr inbounds %struct.parse, %struct.parse* %179, i32 0, i32 0
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  %187 = trunc i64 %186 to i32
  %188 = load %struct.parse*, %struct.parse** %5, align 8
  %189 = getelementptr inbounds %struct.parse, %struct.parse* %188, i32 0, i32 1
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = call i32 @dupl(%struct.parse* %178, i32 %187, i64 %194)
  %196 = load i32, i32* @O_BACK, align 4
  %197 = load i32, i32* %12, align 4
  %198 = call i32 @EMIT(i32 %196, i32 %197)
  br label %202

199:                                              ; preds = %105
  %200 = load i32, i32* @REG_ESUBREG, align 4
  %201 = call i32 @SETERROR(i32 %200)
  br label %202

202:                                              ; preds = %199, %122
  %203 = load %struct.parse*, %struct.parse** %5, align 8
  %204 = getelementptr inbounds %struct.parse, %struct.parse* %203, i32 0, i32 2
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  store i32 1, i32* %206, align 8
  br label %211

207:                                              ; preds = %25
  %208 = load %struct.parse*, %struct.parse** %5, align 8
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @ordinary(%struct.parse* %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %202, %102, %94, %33
  br label %242

212:                                              ; preds = %3
  %213 = load i32, i32* %8, align 4
  switch i32 %213, label %237 [
    i32 46, label %214
    i32 91, label %230
    i32 42, label %233
  ]

214:                                              ; preds = %212
  %215 = load %struct.parse*, %struct.parse** %5, align 8
  %216 = getelementptr inbounds %struct.parse, %struct.parse* %215, i32 0, i32 2
  %217 = load %struct.TYPE_2__*, %struct.TYPE_2__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @REG_NEWLINE, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %214
  %224 = load %struct.parse*, %struct.parse** %5, align 8
  %225 = call i32 @nonnewline(%struct.parse* %224)
  br label %229

226:                                              ; preds = %214
  %227 = load i32, i32* @OANY, align 4
  %228 = call i32 @EMIT(i32 %227, i32 0)
  br label %229

229:                                              ; preds = %226, %223
  br label %241

230:                                              ; preds = %212
  %231 = load %struct.parse*, %struct.parse** %5, align 8
  %232 = call i32 @p_bracket(%struct.parse* %231)
  br label %241

233:                                              ; preds = %212
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* @REG_BADRPT, align 4
  %236 = call i32 @REQUIRE(i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %212, %233
  %238 = load %struct.parse*, %struct.parse** %5, align 8
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @ordinary(%struct.parse* %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %230, %229
  br label %242

242:                                              ; preds = %241, %211
  %243 = call i64 @EAT(i8 signext 42)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %242
  %246 = load i32, i32* @OPLUS_, align 4
  %247 = load i64, i64* %11, align 8
  %248 = call i32 @INSERT(i32 %246, i64 %247)
  %249 = load i32, i32* @O_PLUS, align 4
  %250 = load i64, i64* %11, align 8
  %251 = call i32 @ASTERN(i32 %249, i64 %250)
  %252 = load i32, i32* @OQUEST_, align 4
  %253 = load i64, i64* %11, align 8
  %254 = call i32 @INSERT(i32 %252, i64 %253)
  %255 = load i32, i32* @O_QUEST, align 4
  %256 = load i64, i64* %11, align 8
  %257 = call i32 @ASTERN(i32 %255, i64 %256)
  br label %325

258:                                              ; preds = %242
  %259 = call i32 @EATTWO(i8 signext 92, i8 signext 123)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %316

261:                                              ; preds = %258
  %262 = load %struct.parse*, %struct.parse** %5, align 8
  %263 = call i32 @p_count(%struct.parse* %262)
  store i32 %263, i32* %9, align 4
  %264 = call i64 @EAT(i8 signext 44)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %286

266:                                              ; preds = %261
  %267 = call i32 (...) @MORE()
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %283

269:                                              ; preds = %266
  %270 = call i64 (...) @PEEK()
  %271 = trunc i64 %270 to i32
  %272 = call i64 @ISDIGIT(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %283

274:                                              ; preds = %269
  %275 = load %struct.parse*, %struct.parse** %5, align 8
  %276 = call i32 @p_count(%struct.parse* %275)
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load i32, i32* %10, align 4
  %279 = icmp sle i32 %277, %278
  %280 = zext i1 %279 to i32
  %281 = load i32, i32* @REG_BADBR, align 4
  %282 = call i32 @REQUIRE(i32 %280, i32 %281)
  br label %285

283:                                              ; preds = %269, %266
  %284 = load i32, i32* @INFINITY, align 4
  store i32 %284, i32* %10, align 4
  br label %285

285:                                              ; preds = %283, %274
  br label %288

286:                                              ; preds = %261
  %287 = load i32, i32* %9, align 4
  store i32 %287, i32* %10, align 4
  br label %288

288:                                              ; preds = %286, %285
  %289 = load %struct.parse*, %struct.parse** %5, align 8
  %290 = load i64, i64* %11, align 8
  %291 = load i32, i32* %9, align 4
  %292 = load i32, i32* %10, align 4
  %293 = load i64, i64* %7, align 8
  %294 = call i32 @repeat(%struct.parse* %289, i64 %290, i32 %291, i32 %292, i64 %293)
  %295 = call i32 @EATTWO(i8 signext 92, i8 signext 125)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %315, label %297

297:                                              ; preds = %288
  br label %298

298:                                              ; preds = %307, %297
  %299 = call i32 (...) @MORE()
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %305

301:                                              ; preds = %298
  %302 = call i32 @SEETWO(i8 signext 92, i8 signext 125)
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  br label %305

305:                                              ; preds = %301, %298
  %306 = phi i1 [ false, %298 ], [ %304, %301 ]
  br i1 %306, label %307, label %309

307:                                              ; preds = %305
  %308 = call i32 (...) @NEXT()
  br label %298

309:                                              ; preds = %305
  %310 = call i32 (...) @MORE()
  %311 = load i32, i32* @REG_EBRACE, align 4
  %312 = call i32 @REQUIRE(i32 %310, i32 %311)
  %313 = load i32, i32* @REG_BADBR, align 4
  %314 = call i32 @SETERROR(i32 %313)
  br label %315

315:                                              ; preds = %309, %288
  br label %324

316:                                              ; preds = %258
  %317 = load i32, i32* %14, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %8, align 4
  %321 = icmp eq i32 %320, 36
  br i1 %321, label %322, label %323

322:                                              ; preds = %319
  store i32 1, i32* %4, align 4
  br label %326

323:                                              ; preds = %319, %316
  br label %324

324:                                              ; preds = %323, %315
  br label %325

325:                                              ; preds = %324, %245
  store i32 0, i32* %4, align 4
  br label %326

326:                                              ; preds = %325, %322
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local i8* @HERE(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MORE(...) #1

declare dso_local i32 @GETNEXT(...) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i32 @SEETWO(i8 signext, i8 signext) #1

declare dso_local i32 @p_bre(%struct.parse*, i8 signext, i8 signext, i64) #1

declare dso_local i32 @EATTWO(i8 signext, i8 signext) #1

declare dso_local i32 @dupl(%struct.parse*, i32, i64) #1

declare dso_local i32 @ordinary(%struct.parse*, i32) #1

declare dso_local i32 @nonnewline(%struct.parse*) #1

declare dso_local i32 @p_bracket(%struct.parse*) #1

declare dso_local i64 @EAT(i8 signext) #1

declare dso_local i32 @INSERT(i32, i64) #1

declare dso_local i32 @ASTERN(i32, i64) #1

declare dso_local i32 @p_count(%struct.parse*) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local i64 @PEEK(...) #1

declare dso_local i32 @repeat(%struct.parse*, i64, i32, i32, i64) #1

declare dso_local i32 @NEXT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
