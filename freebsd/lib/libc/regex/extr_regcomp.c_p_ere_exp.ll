; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_ere_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/regex/extr_regcomp.c_p_ere_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i32, i32, %struct.TYPE_2__*, i8**, i8** }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }
%struct.branchc = type { i32 }

@REG_EPAREN = common dso_local global i32 0, align 4
@NPAREN = common dso_local global i64 0, align 8
@OLPAREN = common dso_local global i32 0, align 4
@IGN = common dso_local global i32 0, align 4
@ORPAREN = common dso_local global i32 0, align 4
@OBOL = common dso_local global i32 0, align 4
@USEBOL = common dso_local global i32 0, align 4
@OEOL = common dso_local global i32 0, align 4
@USEEOL = common dso_local global i32 0, align 4
@REG_EMPTY = common dso_local global i32 0, align 4
@REG_BADRPT = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@OANY = common dso_local global i32 0, align 4
@REG_EESCAPE = common dso_local global i32 0, align 4
@OBOW = common dso_local global i32 0, align 4
@OEOW = common dso_local global i32 0, align 4
@OPLUS_ = common dso_local global i32 0, align 4
@O_PLUS = common dso_local global i32 0, align 4
@OQUEST_ = common dso_local global i32 0, align 4
@O_QUEST = common dso_local global i32 0, align 4
@OCH_ = common dso_local global i32 0, align 4
@OOR1 = common dso_local global i32 0, align 4
@OOR2 = common dso_local global i32 0, align 4
@O_CH = common dso_local global i32 0, align 4
@REG_BADBR = common dso_local global i32 0, align 4
@INFINITY = common dso_local global i32 0, align 4
@REG_EBRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse*, %struct.branchc*)* @p_ere_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p_ere_exp(%struct.parse* %0, %struct.branchc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.parse*, align 8
  %5 = alloca %struct.branchc*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %4, align 8
  store %struct.branchc* %1, %struct.branchc** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.branchc*, %struct.branchc** %5, align 8
  %14 = call i32 (...) @MORE()
  %15 = call i32 @assert(i32 %14)
  %16 = call signext i8 (...) @GETNEXT()
  store i8 %16, i8* %6, align 1
  %17 = call i8* (...) @HERE()
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %8, align 8
  %19 = load i8, i8* %6, align 1
  %20 = sext i8 %19 to i32
  switch i32 %20, label %159 [
    i32 40, label %21
    i32 41, label %82
    i32 94, label %85
    i32 36, label %101
    i32 124, label %117
    i32 42, label %120
    i32 43, label %120
    i32 63, label %120
    i32 123, label %120
    i32 46, label %123
    i32 91, label %139
    i32 92, label %142
  ]

21:                                               ; preds = %2
  %22 = call i32 (...) @MORE()
  %23 = load i32, i32* @REG_EPAREN, align 4
  %24 = call i32 @REQUIRE(i32 %22, i32 %23)
  %25 = load %struct.parse*, %struct.parse** %4, align 8
  %26 = getelementptr inbounds %struct.parse, %struct.parse* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.parse*, %struct.parse** %4, align 8
  %32 = getelementptr inbounds %struct.parse, %struct.parse* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @NPAREN, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = call i8* (...) @HERE()
  %41 = load %struct.parse*, %struct.parse** %4, align 8
  %42 = getelementptr inbounds %struct.parse, %struct.parse* %41, i32 0, i32 4
  %43 = load i8**, i8*** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* %40, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %21
  %47 = load i32, i32* @OLPAREN, align 4
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @EMIT(i32 %47, i64 %48)
  %50 = call i32 @SEE(i8 signext 41)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load %struct.parse*, %struct.parse** %4, align 8
  %54 = load i32, i32* @IGN, align 4
  %55 = call i32 @p_re(%struct.parse* %53, i8 signext 41, i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i64, i64* %11, align 8
  %58 = load i64, i64* @NPAREN, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = call i8* (...) @HERE()
  %62 = load %struct.parse*, %struct.parse** %4, align 8
  %63 = getelementptr inbounds %struct.parse, %struct.parse* %62, i32 0, i32 3
  %64 = load i8**, i8*** %63, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* %61, i8** %66, align 8
  %67 = load %struct.parse*, %struct.parse** %4, align 8
  %68 = getelementptr inbounds %struct.parse, %struct.parse* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  br label %76

76:                                               ; preds = %60, %56
  %77 = load i32, i32* @ORPAREN, align 4
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @EMIT(i32 %77, i64 %78)
  %80 = load i32, i32* @REG_EPAREN, align 4
  %81 = call i32 @MUSTEAT(i8 signext 41, i32 %80)
  br label %174

82:                                               ; preds = %2
  %83 = load i32, i32* @REG_EPAREN, align 4
  %84 = call i32 @SETERROR(i32 %83)
  br label %174

85:                                               ; preds = %2
  %86 = load i32, i32* @OBOL, align 4
  %87 = call i32 @EMIT(i32 %86, i64 0)
  %88 = load i32, i32* @USEBOL, align 4
  %89 = load %struct.parse*, %struct.parse** %4, align 8
  %90 = getelementptr inbounds %struct.parse, %struct.parse* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %88
  store i32 %94, i32* %92, align 8
  %95 = load %struct.parse*, %struct.parse** %4, align 8
  %96 = getelementptr inbounds %struct.parse, %struct.parse* %95, i32 0, i32 2
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  store i32 1, i32* %12, align 4
  br label %174

101:                                              ; preds = %2
  %102 = load i32, i32* @OEOL, align 4
  %103 = call i32 @EMIT(i32 %102, i64 0)
  %104 = load i32, i32* @USEEOL, align 4
  %105 = load %struct.parse*, %struct.parse** %4, align 8
  %106 = getelementptr inbounds %struct.parse, %struct.parse* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %104
  store i32 %110, i32* %108, align 8
  %111 = load %struct.parse*, %struct.parse** %4, align 8
  %112 = getelementptr inbounds %struct.parse, %struct.parse* %111, i32 0, i32 2
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %174

117:                                              ; preds = %2
  %118 = load i32, i32* @REG_EMPTY, align 4
  %119 = call i32 @SETERROR(i32 %118)
  br label %174

120:                                              ; preds = %2, %2, %2, %2
  %121 = load i32, i32* @REG_BADRPT, align 4
  %122 = call i32 @SETERROR(i32 %121)
  br label %174

123:                                              ; preds = %2
  %124 = load %struct.parse*, %struct.parse** %4, align 8
  %125 = getelementptr inbounds %struct.parse, %struct.parse* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @REG_NEWLINE, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load %struct.parse*, %struct.parse** %4, align 8
  %134 = call i32 @nonnewline(%struct.parse* %133)
  br label %138

135:                                              ; preds = %123
  %136 = load i32, i32* @OANY, align 4
  %137 = call i32 @EMIT(i32 %136, i64 0)
  br label %138

138:                                              ; preds = %135, %132
  br label %174

139:                                              ; preds = %2
  %140 = load %struct.parse*, %struct.parse** %4, align 8
  %141 = call i32 @p_bracket(%struct.parse* %140)
  br label %174

142:                                              ; preds = %2
  %143 = call i32 (...) @MORE()
  %144 = load i32, i32* @REG_EESCAPE, align 4
  %145 = call i32 @REQUIRE(i32 %143, i32 %144)
  %146 = call i32 (...) @WGETNEXT()
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  switch i32 %147, label %154 [
    i32 60, label %148
    i32 62, label %151
  ]

148:                                              ; preds = %142
  %149 = load i32, i32* @OBOW, align 4
  %150 = call i32 @EMIT(i32 %149, i64 0)
  br label %158

151:                                              ; preds = %142
  %152 = load i32, i32* @OEOW, align 4
  %153 = call i32 @EMIT(i32 %152, i64 0)
  br label %158

154:                                              ; preds = %142
  %155 = load %struct.parse*, %struct.parse** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @ordinary(%struct.parse* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %151, %148
  br label %174

159:                                              ; preds = %2
  %160 = load %struct.parse*, %struct.parse** %4, align 8
  %161 = getelementptr inbounds %struct.parse, %struct.parse* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %350

165:                                              ; preds = %159
  %166 = load %struct.parse*, %struct.parse** %4, align 8
  %167 = getelementptr inbounds %struct.parse, %struct.parse* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %167, align 8
  %170 = call i32 (...) @WGETNEXT()
  store i32 %170, i32* %7, align 4
  %171 = load %struct.parse*, %struct.parse** %4, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @ordinary(%struct.parse* %171, i32 %172)
  br label %174

174:                                              ; preds = %165, %158, %139, %138, %120, %117, %101, %85, %82, %76
  %175 = call i32 (...) @MORE()
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %350

178:                                              ; preds = %174
  %179 = call signext i8 (...) @PEEK()
  store i8 %179, i8* %6, align 1
  %180 = load i8, i8* %6, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 42
  br i1 %182, label %196, label %183

183:                                              ; preds = %178
  %184 = load i8, i8* %6, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 43
  br i1 %186, label %196, label %187

187:                                              ; preds = %183
  %188 = load i8, i8* %6, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 63
  br i1 %190, label %196, label %191

191:                                              ; preds = %187
  %192 = load i8, i8* %6, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 123
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  store i32 0, i32* %3, align 4
  br label %350

196:                                              ; preds = %191, %187, %183, %178
  %197 = load i8, i8* %6, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 123
  br i1 %199, label %200, label %219

200:                                              ; preds = %196
  %201 = call i64 (...) @MORE2()
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %200
  %204 = call signext i8 (...) @PEEK2()
  %205 = sext i8 %204 to i32
  %206 = call i64 @isdigit(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %203
  %209 = call signext i8 (...) @PEEK2()
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 44
  br label %212

212:                                              ; preds = %208, %203
  %213 = phi i1 [ true, %203 ], [ %211, %208 ]
  br label %214

214:                                              ; preds = %212, %200
  %215 = phi i1 [ false, %200 ], [ %213, %212 ]
  %216 = zext i1 %215 to i32
  %217 = load i32, i32* @REG_BADRPT, align 4
  %218 = call i32 @REQUIRE(i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %196
  br label %220

220:                                              ; preds = %219
  %221 = call i32 (...) @NEXT()
  %222 = load i32, i32* %12, align 4
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = load i32, i32* @REG_BADRPT, align 4
  %227 = call i32 @REQUIRE(i32 %225, i32 %226)
  %228 = load i8, i8* %6, align 1
  %229 = sext i8 %228 to i32
  switch i32 %229, label %317 [
    i32 42, label %230
    i32 43, label %243
    i32 63, label %250
    i32 123, label %266
  ]

230:                                              ; preds = %220
  %231 = load i32, i32* @OPLUS_, align 4
  %232 = load i64, i64* %8, align 8
  %233 = call i32 @INSERT(i32 %231, i64 %232)
  %234 = load i32, i32* @O_PLUS, align 4
  %235 = load i64, i64* %8, align 8
  %236 = call i32 @ASTERN(i32 %234, i64 %235)
  %237 = load i32, i32* @OQUEST_, align 4
  %238 = load i64, i64* %8, align 8
  %239 = call i32 @INSERT(i32 %237, i64 %238)
  %240 = load i32, i32* @O_QUEST, align 4
  %241 = load i64, i64* %8, align 8
  %242 = call i32 @ASTERN(i32 %240, i64 %241)
  br label %317

243:                                              ; preds = %220
  %244 = load i32, i32* @OPLUS_, align 4
  %245 = load i64, i64* %8, align 8
  %246 = call i32 @INSERT(i32 %244, i64 %245)
  %247 = load i32, i32* @O_PLUS, align 4
  %248 = load i64, i64* %8, align 8
  %249 = call i32 @ASTERN(i32 %247, i64 %248)
  br label %317

250:                                              ; preds = %220
  %251 = load i32, i32* @OCH_, align 4
  %252 = load i64, i64* %8, align 8
  %253 = call i32 @INSERT(i32 %251, i64 %252)
  %254 = load i32, i32* @OOR1, align 4
  %255 = load i64, i64* %8, align 8
  %256 = call i32 @ASTERN(i32 %254, i64 %255)
  %257 = load i64, i64* %8, align 8
  %258 = call i32 @AHEAD(i64 %257)
  %259 = load i32, i32* @OOR2, align 4
  %260 = call i32 @EMIT(i32 %259, i64 0)
  %261 = call i64 (...) @THERE()
  %262 = call i32 @AHEAD(i64 %261)
  %263 = load i32, i32* @O_CH, align 4
  %264 = call i64 (...) @THERETHERE()
  %265 = call i32 @ASTERN(i32 %263, i64 %264)
  br label %317

266:                                              ; preds = %220
  %267 = load %struct.parse*, %struct.parse** %4, align 8
  %268 = call i32 @p_count(%struct.parse* %267)
  store i32 %268, i32* %9, align 4
  %269 = call i32 @EAT(i8 signext 44)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %288

271:                                              ; preds = %266
  %272 = call signext i8 (...) @PEEK()
  %273 = sext i8 %272 to i32
  %274 = call i64 @isdigit(i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %285

276:                                              ; preds = %271
  %277 = load %struct.parse*, %struct.parse** %4, align 8
  %278 = call i32 @p_count(%struct.parse* %277)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %10, align 4
  %281 = icmp sle i32 %279, %280
  %282 = zext i1 %281 to i32
  %283 = load i32, i32* @REG_BADBR, align 4
  %284 = call i32 @REQUIRE(i32 %282, i32 %283)
  br label %287

285:                                              ; preds = %271
  %286 = load i32, i32* @INFINITY, align 4
  store i32 %286, i32* %10, align 4
  br label %287

287:                                              ; preds = %285, %276
  br label %290

288:                                              ; preds = %266
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %10, align 4
  br label %290

290:                                              ; preds = %288, %287
  %291 = load %struct.parse*, %struct.parse** %4, align 8
  %292 = load i64, i64* %8, align 8
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %10, align 4
  %295 = call i32 @repeat(%struct.parse* %291, i64 %292, i32 %293, i32 %294)
  %296 = call i32 @EAT(i8 signext 125)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %316, label %298

298:                                              ; preds = %290
  br label %299

299:                                              ; preds = %308, %298
  %300 = call i32 (...) @MORE()
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = call signext i8 (...) @PEEK()
  %304 = sext i8 %303 to i32
  %305 = icmp ne i32 %304, 125
  br label %306

306:                                              ; preds = %302, %299
  %307 = phi i1 [ false, %299 ], [ %305, %302 ]
  br i1 %307, label %308, label %310

308:                                              ; preds = %306
  %309 = call i32 (...) @NEXT()
  br label %299

310:                                              ; preds = %306
  %311 = call i32 (...) @MORE()
  %312 = load i32, i32* @REG_EBRACE, align 4
  %313 = call i32 @REQUIRE(i32 %311, i32 %312)
  %314 = load i32, i32* @REG_BADBR, align 4
  %315 = call i32 @SETERROR(i32 %314)
  br label %316

316:                                              ; preds = %310, %290
  br label %317

317:                                              ; preds = %220, %316, %250, %243, %230
  %318 = call i32 (...) @MORE()
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317
  store i32 0, i32* %3, align 4
  br label %350

321:                                              ; preds = %317
  %322 = call signext i8 (...) @PEEK()
  store i8 %322, i8* %6, align 1
  %323 = load i8, i8* %6, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 42
  br i1 %325, label %347, label %326

326:                                              ; preds = %321
  %327 = load i8, i8* %6, align 1
  %328 = sext i8 %327 to i32
  %329 = icmp eq i32 %328, 43
  br i1 %329, label %347, label %330

330:                                              ; preds = %326
  %331 = load i8, i8* %6, align 1
  %332 = sext i8 %331 to i32
  %333 = icmp eq i32 %332, 63
  br i1 %333, label %347, label %334

334:                                              ; preds = %330
  %335 = load i8, i8* %6, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp eq i32 %336, 123
  br i1 %337, label %338, label %346

338:                                              ; preds = %334
  %339 = call i64 (...) @MORE2()
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  %342 = call signext i8 (...) @PEEK2()
  %343 = sext i8 %342 to i32
  %344 = call i64 @isdigit(i32 %343)
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %341, %338, %334
  store i32 0, i32* %3, align 4
  br label %350

347:                                              ; preds = %341, %330, %326, %321
  %348 = load i32, i32* @REG_BADRPT, align 4
  %349 = call i32 @SETERROR(i32 %348)
  store i32 0, i32* %3, align 4
  br label %350

350:                                              ; preds = %347, %346, %320, %195, %177, %164
  %351 = load i32, i32* %3, align 4
  ret i32 %351
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MORE(...) #1

declare dso_local signext i8 @GETNEXT(...) #1

declare dso_local i8* @HERE(...) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

declare dso_local i32 @EMIT(i32, i64) #1

declare dso_local i32 @SEE(i8 signext) #1

declare dso_local i32 @p_re(%struct.parse*, i8 signext, i32) #1

declare dso_local i32 @MUSTEAT(i8 signext, i32) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i32 @nonnewline(%struct.parse*) #1

declare dso_local i32 @p_bracket(%struct.parse*) #1

declare dso_local i32 @WGETNEXT(...) #1

declare dso_local i32 @ordinary(%struct.parse*, i32) #1

declare dso_local signext i8 @PEEK(...) #1

declare dso_local i64 @MORE2(...) #1

declare dso_local i64 @isdigit(i32) #1

declare dso_local signext i8 @PEEK2(...) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @INSERT(i32, i64) #1

declare dso_local i32 @ASTERN(i32, i64) #1

declare dso_local i32 @AHEAD(i64) #1

declare dso_local i64 @THERE(...) #1

declare dso_local i64 @THERETHERE(...) #1

declare dso_local i32 @p_count(%struct.parse*) #1

declare dso_local i32 @EAT(i8 signext) #1

declare dso_local i32 @repeat(%struct.parse*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
