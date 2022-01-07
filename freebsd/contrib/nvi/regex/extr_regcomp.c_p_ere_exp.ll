; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_ere_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regcomp.c_p_ere_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { %struct.TYPE_2__*, i8**, i8** }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@REG_EPAREN = common dso_local global i32 0, align 4
@NPAREN = common dso_local global i64 0, align 8
@OLPAREN = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, i64)* @p_ere_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_ere_exp(%struct.parse* %0, i64 %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %10, align 4
  %11 = call i32 (...) @MORE()
  %12 = call i32 @assert(i32 %11)
  %13 = call signext i8 (...) @GETNEXT()
  store i8 %13, i8* %5, align 1
  %14 = call i8* (...) @HERE()
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %6, align 8
  %16 = load i8, i8* %5, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %161 [
    i32 40, label %18
    i32 41, label %79
    i32 94, label %82
    i32 36, label %98
    i32 124, label %114
    i32 42, label %117
    i32 43, label %117
    i32 63, label %117
    i32 46, label %120
    i32 91, label %136
    i32 92, label %139
    i32 123, label %147
  ]

18:                                               ; preds = %2
  %19 = call i32 (...) @MORE()
  %20 = load i32, i32* @REG_EPAREN, align 4
  %21 = call i32 @REQUIRE(i32 %19, i32 %20)
  %22 = load %struct.parse*, %struct.parse** %3, align 8
  %23 = getelementptr inbounds %struct.parse, %struct.parse* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.parse*, %struct.parse** %3, align 8
  %29 = getelementptr inbounds %struct.parse, %struct.parse* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @NPAREN, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %18
  %37 = call i8* (...) @HERE()
  %38 = load %struct.parse*, %struct.parse** %3, align 8
  %39 = getelementptr inbounds %struct.parse, %struct.parse* %38, i32 0, i32 2
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %37, i8** %42, align 8
  br label %43

43:                                               ; preds = %36, %18
  %44 = load i32, i32* @OLPAREN, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @EMIT(i32 %44, i64 %45)
  %47 = call i32 @SEE(i8 signext 41)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load %struct.parse*, %struct.parse** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i32 @p_ere(%struct.parse* %50, i8 signext 41, i64 %51)
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* @NPAREN, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = call i8* (...) @HERE()
  %59 = load %struct.parse*, %struct.parse** %3, align 8
  %60 = getelementptr inbounds %struct.parse, %struct.parse* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* %58, i8** %63, align 8
  %64 = load %struct.parse*, %struct.parse** %3, align 8
  %65 = getelementptr inbounds %struct.parse, %struct.parse* %64, i32 0, i32 1
  %66 = load i8**, i8*** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  br label %73

73:                                               ; preds = %57, %53
  %74 = load i32, i32* @ORPAREN, align 4
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @EMIT(i32 %74, i64 %75)
  %77 = load i32, i32* @REG_EPAREN, align 4
  %78 = call i32 @MUSTEAT(i8 signext 41, i32 %77)
  br label %165

79:                                               ; preds = %2
  %80 = load i32, i32* @REG_EPAREN, align 4
  %81 = call i32 @SETERROR(i32 %80)
  br label %165

82:                                               ; preds = %2
  %83 = load i32, i32* @OBOL, align 4
  %84 = call i32 @EMIT(i32 %83, i64 0)
  %85 = load i32, i32* @USEBOL, align 4
  %86 = load %struct.parse*, %struct.parse** %3, align 8
  %87 = getelementptr inbounds %struct.parse, %struct.parse* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 8
  %92 = load %struct.parse*, %struct.parse** %3, align 8
  %93 = getelementptr inbounds %struct.parse, %struct.parse* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  store i32 1, i32* %10, align 4
  br label %165

98:                                               ; preds = %2
  %99 = load i32, i32* @OEOL, align 4
  %100 = call i32 @EMIT(i32 %99, i64 0)
  %101 = load i32, i32* @USEEOL, align 4
  %102 = load %struct.parse*, %struct.parse** %3, align 8
  %103 = getelementptr inbounds %struct.parse, %struct.parse* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %101
  store i32 %107, i32* %105, align 8
  %108 = load %struct.parse*, %struct.parse** %3, align 8
  %109 = getelementptr inbounds %struct.parse, %struct.parse* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  br label %165

114:                                              ; preds = %2
  %115 = load i32, i32* @REG_EMPTY, align 4
  %116 = call i32 @SETERROR(i32 %115)
  br label %165

117:                                              ; preds = %2, %2, %2
  %118 = load i32, i32* @REG_BADRPT, align 4
  %119 = call i32 @SETERROR(i32 %118)
  br label %165

120:                                              ; preds = %2
  %121 = load %struct.parse*, %struct.parse** %3, align 8
  %122 = getelementptr inbounds %struct.parse, %struct.parse* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @REG_NEWLINE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %120
  %130 = load %struct.parse*, %struct.parse** %3, align 8
  %131 = call i32 @nonnewline(%struct.parse* %130)
  br label %135

132:                                              ; preds = %120
  %133 = load i32, i32* @OANY, align 4
  %134 = call i32 @EMIT(i32 %133, i64 0)
  br label %135

135:                                              ; preds = %132, %129
  br label %165

136:                                              ; preds = %2
  %137 = load %struct.parse*, %struct.parse** %3, align 8
  %138 = call i32 @p_bracket(%struct.parse* %137)
  br label %165

139:                                              ; preds = %2
  %140 = call i32 (...) @MORE()
  %141 = load i32, i32* @REG_EESCAPE, align 4
  %142 = call i32 @REQUIRE(i32 %140, i32 %141)
  %143 = call signext i8 (...) @GETNEXT()
  store i8 %143, i8* %5, align 1
  %144 = load %struct.parse*, %struct.parse** %3, align 8
  %145 = load i8, i8* %5, align 1
  %146 = call i32 @ordinary(%struct.parse* %144, i8 signext %145)
  br label %165

147:                                              ; preds = %2
  %148 = call i32 (...) @MORE()
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = call signext i8 (...) @PEEK()
  %152 = sext i8 %151 to i32
  %153 = call i64 @ISDIGIT(i32 %152)
  %154 = icmp ne i64 %153, 0
  %155 = xor i1 %154, true
  br label %156

156:                                              ; preds = %150, %147
  %157 = phi i1 [ true, %147 ], [ %155, %150 ]
  %158 = zext i1 %157 to i32
  %159 = load i32, i32* @REG_BADRPT, align 4
  %160 = call i32 @REQUIRE(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %2, %156
  %162 = load %struct.parse*, %struct.parse** %3, align 8
  %163 = load i8, i8* %5, align 1
  %164 = call i32 @ordinary(%struct.parse* %162, i8 signext %163)
  br label %165

165:                                              ; preds = %161, %139, %136, %135, %117, %114, %98, %82, %79, %73
  %166 = call i32 (...) @MORE()
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  br label %325

169:                                              ; preds = %165
  %170 = call signext i8 (...) @PEEK()
  store i8 %170, i8* %5, align 1
  %171 = load i8, i8* %5, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 42
  br i1 %173, label %195, label %174

174:                                              ; preds = %169
  %175 = load i8, i8* %5, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp eq i32 %176, 43
  br i1 %177, label %195, label %178

178:                                              ; preds = %174
  %179 = load i8, i8* %5, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 63
  br i1 %181, label %195, label %182

182:                                              ; preds = %178
  %183 = load i8, i8* %5, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 123
  br i1 %185, label %186, label %194

186:                                              ; preds = %182
  %187 = call i64 (...) @MORE2()
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %186
  %190 = call i64 (...) @PEEK2()
  %191 = trunc i64 %190 to i32
  %192 = call i64 @ISDIGIT(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189, %186, %182
  br label %325

195:                                              ; preds = %189, %178, %174, %169
  %196 = call i32 (...) @NEXT()
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = load i32, i32* @REG_BADRPT, align 4
  %202 = call i32 @REQUIRE(i32 %200, i32 %201)
  %203 = load i8, i8* %5, align 1
  %204 = sext i8 %203 to i32
  switch i32 %204, label %292 [
    i32 42, label %205
    i32 43, label %218
    i32 63, label %225
    i32 123, label %241
  ]

205:                                              ; preds = %195
  %206 = load i32, i32* @OPLUS_, align 4
  %207 = load i64, i64* %6, align 8
  %208 = call i32 @INSERT(i32 %206, i64 %207)
  %209 = load i32, i32* @O_PLUS, align 4
  %210 = load i64, i64* %6, align 8
  %211 = call i32 @ASTERN(i32 %209, i64 %210)
  %212 = load i32, i32* @OQUEST_, align 4
  %213 = load i64, i64* %6, align 8
  %214 = call i32 @INSERT(i32 %212, i64 %213)
  %215 = load i32, i32* @O_QUEST, align 4
  %216 = load i64, i64* %6, align 8
  %217 = call i32 @ASTERN(i32 %215, i64 %216)
  br label %292

218:                                              ; preds = %195
  %219 = load i32, i32* @OPLUS_, align 4
  %220 = load i64, i64* %6, align 8
  %221 = call i32 @INSERT(i32 %219, i64 %220)
  %222 = load i32, i32* @O_PLUS, align 4
  %223 = load i64, i64* %6, align 8
  %224 = call i32 @ASTERN(i32 %222, i64 %223)
  br label %292

225:                                              ; preds = %195
  %226 = load i32, i32* @OCH_, align 4
  %227 = load i64, i64* %6, align 8
  %228 = call i32 @INSERT(i32 %226, i64 %227)
  %229 = load i32, i32* @OOR1, align 4
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @ASTERN(i32 %229, i64 %230)
  %232 = load i64, i64* %6, align 8
  %233 = call i32 @AHEAD(i64 %232)
  %234 = load i32, i32* @OOR2, align 4
  %235 = call i32 @EMIT(i32 %234, i64 0)
  %236 = call i64 (...) @THERE()
  %237 = call i32 @AHEAD(i64 %236)
  %238 = load i32, i32* @O_CH, align 4
  %239 = call i64 (...) @THERETHERE()
  %240 = call i32 @ASTERN(i32 %238, i64 %239)
  br label %292

241:                                              ; preds = %195
  %242 = load %struct.parse*, %struct.parse** %3, align 8
  %243 = call i32 @p_count(%struct.parse* %242)
  store i32 %243, i32* %7, align 4
  %244 = call i32 @EAT(i8 signext 44)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %263

246:                                              ; preds = %241
  %247 = call signext i8 (...) @PEEK()
  %248 = sext i8 %247 to i32
  %249 = call i64 @ISDIGIT(i32 %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.parse*, %struct.parse** %3, align 8
  %253 = call i32 @p_count(%struct.parse* %252)
  store i32 %253, i32* %8, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %8, align 4
  %256 = icmp sle i32 %254, %255
  %257 = zext i1 %256 to i32
  %258 = load i32, i32* @REG_BADBR, align 4
  %259 = call i32 @REQUIRE(i32 %257, i32 %258)
  br label %262

260:                                              ; preds = %246
  %261 = load i32, i32* @INFINITY, align 4
  store i32 %261, i32* %8, align 4
  br label %262

262:                                              ; preds = %260, %251
  br label %265

263:                                              ; preds = %241
  %264 = load i32, i32* %7, align 4
  store i32 %264, i32* %8, align 4
  br label %265

265:                                              ; preds = %263, %262
  %266 = load %struct.parse*, %struct.parse** %3, align 8
  %267 = load i64, i64* %6, align 8
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* %8, align 4
  %270 = call i32 @repeat(%struct.parse* %266, i64 %267, i32 %268, i32 %269, i32 0)
  %271 = call i32 @EAT(i8 signext 125)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %291, label %273

273:                                              ; preds = %265
  br label %274

274:                                              ; preds = %283, %273
  %275 = call i32 (...) @MORE()
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %274
  %278 = call signext i8 (...) @PEEK()
  %279 = sext i8 %278 to i32
  %280 = icmp ne i32 %279, 125
  br label %281

281:                                              ; preds = %277, %274
  %282 = phi i1 [ false, %274 ], [ %280, %277 ]
  br i1 %282, label %283, label %285

283:                                              ; preds = %281
  %284 = call i32 (...) @NEXT()
  br label %274

285:                                              ; preds = %281
  %286 = call i32 (...) @MORE()
  %287 = load i32, i32* @REG_EBRACE, align 4
  %288 = call i32 @REQUIRE(i32 %286, i32 %287)
  %289 = load i32, i32* @REG_BADBR, align 4
  %290 = call i32 @SETERROR(i32 %289)
  br label %291

291:                                              ; preds = %285, %265
  br label %292

292:                                              ; preds = %195, %291, %225, %218, %205
  %293 = call i32 (...) @MORE()
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %292
  br label %325

296:                                              ; preds = %292
  %297 = call signext i8 (...) @PEEK()
  store i8 %297, i8* %5, align 1
  %298 = load i8, i8* %5, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 42
  br i1 %300, label %322, label %301

301:                                              ; preds = %296
  %302 = load i8, i8* %5, align 1
  %303 = sext i8 %302 to i32
  %304 = icmp eq i32 %303, 43
  br i1 %304, label %322, label %305

305:                                              ; preds = %301
  %306 = load i8, i8* %5, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp eq i32 %307, 63
  br i1 %308, label %322, label %309

309:                                              ; preds = %305
  %310 = load i8, i8* %5, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 123
  br i1 %312, label %313, label %321

313:                                              ; preds = %309
  %314 = call i64 (...) @MORE2()
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %321

316:                                              ; preds = %313
  %317 = call i64 (...) @PEEK2()
  %318 = trunc i64 %317 to i32
  %319 = call i64 @ISDIGIT(i32 %318)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %316, %313, %309
  br label %325

322:                                              ; preds = %316, %305, %301, %296
  %323 = load i32, i32* @REG_BADRPT, align 4
  %324 = call i32 @SETERROR(i32 %323)
  br label %325

325:                                              ; preds = %322, %321, %295, %194, %168
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MORE(...) #1

declare dso_local signext i8 @GETNEXT(...) #1

declare dso_local i8* @HERE(...) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

declare dso_local i32 @EMIT(i32, i64) #1

declare dso_local i32 @SEE(i8 signext) #1

declare dso_local i32 @p_ere(%struct.parse*, i8 signext, i64) #1

declare dso_local i32 @MUSTEAT(i8 signext, i32) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i32 @nonnewline(%struct.parse*) #1

declare dso_local i32 @p_bracket(%struct.parse*) #1

declare dso_local i32 @ordinary(%struct.parse*, i8 signext) #1

declare dso_local i64 @ISDIGIT(i32) #1

declare dso_local signext i8 @PEEK(...) #1

declare dso_local i64 @MORE2(...) #1

declare dso_local i64 @PEEK2(...) #1

declare dso_local i32 @NEXT(...) #1

declare dso_local i32 @INSERT(i32, i64) #1

declare dso_local i32 @ASTERN(i32, i64) #1

declare dso_local i32 @AHEAD(i64) #1

declare dso_local i64 @THERE(...) #1

declare dso_local i64 @THERETHERE(...) #1

declare dso_local i32 @p_count(%struct.parse*) #1

declare dso_local i32 @EAT(i8 signext) #1

declare dso_local i32 @repeat(%struct.parse*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
