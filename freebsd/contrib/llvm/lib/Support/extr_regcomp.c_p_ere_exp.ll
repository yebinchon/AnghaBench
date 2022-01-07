; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_ere_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_p_ere_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64*, i64*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32 }

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
@REG_ESUBREG = common dso_local global i32 0, align 4
@OBACK_ = common dso_local global i32 0, align 4
@O_BACK = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*)* @p_ere_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p_ere_exp(%struct.parse* %0) #0 {
  %2 = alloca %struct.parse*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.parse* %0, %struct.parse** %2, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 (...) @MORE()
  %11 = call i32 @assert(i32 %10)
  %12 = call signext i8 (...) @GETNEXT()
  store i8 %12, i8* %3, align 1
  %13 = call i8* (...) @HERE()
  %14 = ptrtoint i8* %13 to i64
  store i64 %14, i64* %4, align 8
  %15 = load i8, i8* %3, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %270 [
    i32 40, label %17
    i32 41, label %81
    i32 94, label %84
    i32 36, label %100
    i32 124, label %116
    i32 42, label %119
    i32 43, label %119
    i32 63, label %119
    i32 46, label %122
    i32 91, label %138
    i32 92, label %141
    i32 123, label %256
  ]

17:                                               ; preds = %1
  %18 = call i32 (...) @MORE()
  %19 = load i32, i32* @REG_EPAREN, align 4
  %20 = call i32 @REQUIRE(i32 %18, i32 %19)
  %21 = load %struct.parse*, %struct.parse** %2, align 8
  %22 = getelementptr inbounds %struct.parse, %struct.parse* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.parse*, %struct.parse** %2, align 8
  %28 = getelementptr inbounds %struct.parse, %struct.parse* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @NPAREN, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %17
  %36 = call i8* (...) @HERE()
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.parse*, %struct.parse** %2, align 8
  %39 = getelementptr inbounds %struct.parse, %struct.parse* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %37, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %17
  %44 = load i32, i32* @OLPAREN, align 4
  %45 = load i64, i64* %8, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @EMIT(i32 %44, i32 %46)
  %48 = call i32 @SEE(i8 signext 41)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load %struct.parse*, %struct.parse** %2, align 8
  %52 = call i32 @p_ere(%struct.parse* %51, i8 signext 41)
  br label %53

53:                                               ; preds = %50, %43
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* @NPAREN, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = call i8* (...) @HERE()
  %59 = ptrtoint i8* %58 to i64
  %60 = load %struct.parse*, %struct.parse** %2, align 8
  %61 = getelementptr inbounds %struct.parse, %struct.parse* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 %59, i64* %64, align 8
  %65 = load %struct.parse*, %struct.parse** %2, align 8
  %66 = getelementptr inbounds %struct.parse, %struct.parse* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  br label %74

74:                                               ; preds = %57, %53
  %75 = load i32, i32* @ORPAREN, align 4
  %76 = load i64, i64* %8, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @EMIT(i32 %75, i32 %77)
  %79 = load i32, i32* @REG_EPAREN, align 4
  %80 = call i32 @MUSTEAT(i8 signext 41, i32 %79)
  br label %274

81:                                               ; preds = %1
  %82 = load i32, i32* @REG_EPAREN, align 4
  %83 = call i32 @SETERROR(i32 %82)
  br label %274

84:                                               ; preds = %1
  %85 = load i32, i32* @OBOL, align 4
  %86 = call i32 @EMIT(i32 %85, i32 0)
  %87 = load i32, i32* @USEBOL, align 4
  %88 = load %struct.parse*, %struct.parse** %2, align 8
  %89 = getelementptr inbounds %struct.parse, %struct.parse* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %87
  store i32 %93, i32* %91, align 4
  %94 = load %struct.parse*, %struct.parse** %2, align 8
  %95 = getelementptr inbounds %struct.parse, %struct.parse* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  store i32 1, i32* %9, align 4
  br label %274

100:                                              ; preds = %1
  %101 = load i32, i32* @OEOL, align 4
  %102 = call i32 @EMIT(i32 %101, i32 0)
  %103 = load i32, i32* @USEEOL, align 4
  %104 = load %struct.parse*, %struct.parse** %2, align 8
  %105 = getelementptr inbounds %struct.parse, %struct.parse* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = load %struct.parse*, %struct.parse** %2, align 8
  %111 = getelementptr inbounds %struct.parse, %struct.parse* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  br label %274

116:                                              ; preds = %1
  %117 = load i32, i32* @REG_EMPTY, align 4
  %118 = call i32 @SETERROR(i32 %117)
  br label %274

119:                                              ; preds = %1, %1, %1
  %120 = load i32, i32* @REG_BADRPT, align 4
  %121 = call i32 @SETERROR(i32 %120)
  br label %274

122:                                              ; preds = %1
  %123 = load %struct.parse*, %struct.parse** %2, align 8
  %124 = getelementptr inbounds %struct.parse, %struct.parse* %123, i32 0, i32 2
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @REG_NEWLINE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %122
  %132 = load %struct.parse*, %struct.parse** %2, align 8
  %133 = call i32 @nonnewline(%struct.parse* %132)
  br label %137

134:                                              ; preds = %122
  %135 = load i32, i32* @OANY, align 4
  %136 = call i32 @EMIT(i32 %135, i32 0)
  br label %137

137:                                              ; preds = %134, %131
  br label %274

138:                                              ; preds = %1
  %139 = load %struct.parse*, %struct.parse** %2, align 8
  %140 = call i32 @p_bracket(%struct.parse* %139)
  br label %274

141:                                              ; preds = %1
  %142 = call i32 (...) @MORE()
  %143 = load i32, i32* @REG_EESCAPE, align 4
  %144 = call i32 @REQUIRE(i32 %142, i32 %143)
  %145 = call signext i8 (...) @GETNEXT()
  store i8 %145, i8* %3, align 1
  %146 = load i8, i8* %3, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp sge i32 %147, 49
  br i1 %148, label %149, label %251

149:                                              ; preds = %141
  %150 = load i8, i8* %3, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp sle i32 %151, 57
  br i1 %152, label %153, label %251

153:                                              ; preds = %149
  %154 = load i8, i8* %3, align 1
  %155 = sext i8 %154 to i32
  %156 = sub nsw i32 %155, 48
  store i32 %156, i32* %7, align 4
  %157 = load %struct.parse*, %struct.parse** %2, align 8
  %158 = getelementptr inbounds %struct.parse, %struct.parse* %157, i32 0, i32 1
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i32, i32* @REG_ESUBREG, align 4
  %167 = call i32 @SETERROR(i32 %166)
  br label %274

168:                                              ; preds = %153
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = load %struct.parse*, %struct.parse** %2, align 8
  %172 = getelementptr inbounds %struct.parse, %struct.parse* %171, i32 0, i32 2
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ule i64 %170, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load i32, i32* @OBACK_, align 4
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @EMIT(i32 %179, i32 %180)
  %182 = load %struct.parse*, %struct.parse** %2, align 8
  %183 = getelementptr inbounds %struct.parse, %struct.parse* %182, i32 0, i32 0
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load %struct.parse*, %struct.parse** %2, align 8
  %193 = getelementptr inbounds %struct.parse, %struct.parse* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.parse*, %struct.parse** %2, align 8
  %196 = getelementptr inbounds %struct.parse, %struct.parse* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64, i64* %197, i64 %199
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds i32, i32* %194, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @OP(i32 %203)
  %205 = load i32, i32* @OLPAREN, align 4
  %206 = icmp ne i32 %204, %205
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  %209 = load %struct.parse*, %struct.parse** %2, align 8
  %210 = getelementptr inbounds %struct.parse, %struct.parse* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load %struct.parse*, %struct.parse** %2, align 8
  %213 = getelementptr inbounds %struct.parse, %struct.parse* %212, i32 0, i32 1
  %214 = load i64*, i64** %213, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i64, i64* %214, i64 %216
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds i32, i32* %211, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @OP(i32 %220)
  %222 = load i32, i32* @ORPAREN, align 4
  %223 = icmp ne i32 %221, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  %226 = load %struct.parse*, %struct.parse** %2, align 8
  %227 = load %struct.parse*, %struct.parse** %2, align 8
  %228 = getelementptr inbounds %struct.parse, %struct.parse* %227, i32 0, i32 0
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %7, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = add i64 %233, 1
  %235 = trunc i64 %234 to i32
  %236 = load %struct.parse*, %struct.parse** %2, align 8
  %237 = getelementptr inbounds %struct.parse, %struct.parse* %236, i32 0, i32 1
  %238 = load i64*, i64** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %238, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @dupl(%struct.parse* %226, i32 %235, i64 %242)
  %244 = load i32, i32* @O_BACK, align 4
  %245 = load i32, i32* %7, align 4
  %246 = call i32 @EMIT(i32 %244, i32 %245)
  %247 = load %struct.parse*, %struct.parse** %2, align 8
  %248 = getelementptr inbounds %struct.parse, %struct.parse* %247, i32 0, i32 2
  %249 = load %struct.TYPE_2__*, %struct.TYPE_2__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 2
  store i32 1, i32* %250, align 4
  br label %255

251:                                              ; preds = %149, %141
  %252 = load %struct.parse*, %struct.parse** %2, align 8
  %253 = load i8, i8* %3, align 1
  %254 = call i32 @ordinary(%struct.parse* %252, i8 signext %253)
  br label %255

255:                                              ; preds = %251, %168
  br label %274

256:                                              ; preds = %1
  %257 = call i32 (...) @MORE()
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = call signext i8 (...) @PEEK()
  %261 = sext i8 %260 to i32
  %262 = call i64 @isdigit(i32 %261)
  %263 = icmp ne i64 %262, 0
  %264 = xor i1 %263, true
  br label %265

265:                                              ; preds = %259, %256
  %266 = phi i1 [ true, %256 ], [ %264, %259 ]
  %267 = zext i1 %266 to i32
  %268 = load i32, i32* @REG_BADRPT, align 4
  %269 = call i32 @REQUIRE(i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %1, %265
  %271 = load %struct.parse*, %struct.parse** %2, align 8
  %272 = load i8, i8* %3, align 1
  %273 = call i32 @ordinary(%struct.parse* %271, i8 signext %272)
  br label %274

274:                                              ; preds = %270, %255, %165, %138, %137, %119, %116, %100, %84, %81, %74
  %275 = call i32 (...) @MORE()
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %274
  br label %434

278:                                              ; preds = %274
  %279 = call signext i8 (...) @PEEK()
  store i8 %279, i8* %3, align 1
  %280 = load i8, i8* %3, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %281, 42
  br i1 %282, label %304, label %283

283:                                              ; preds = %278
  %284 = load i8, i8* %3, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp eq i32 %285, 43
  br i1 %286, label %304, label %287

287:                                              ; preds = %283
  %288 = load i8, i8* %3, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp eq i32 %289, 63
  br i1 %290, label %304, label %291

291:                                              ; preds = %287
  %292 = load i8, i8* %3, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %293, 123
  br i1 %294, label %295, label %303

295:                                              ; preds = %291
  %296 = call i64 (...) @MORE2()
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = call i64 (...) @PEEK2()
  %300 = trunc i64 %299 to i32
  %301 = call i64 @isdigit(i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %298, %295, %291
  br label %434

304:                                              ; preds = %298, %287, %283, %278
  %305 = call i32 (...) @NEXT()
  %306 = load i32, i32* %9, align 4
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = load i32, i32* @REG_BADRPT, align 4
  %311 = call i32 @REQUIRE(i32 %309, i32 %310)
  %312 = load i8, i8* %3, align 1
  %313 = sext i8 %312 to i32
  switch i32 %313, label %401 [
    i32 42, label %314
    i32 43, label %327
    i32 63, label %334
    i32 123, label %350
  ]

314:                                              ; preds = %304
  %315 = load i32, i32* @OPLUS_, align 4
  %316 = load i64, i64* %4, align 8
  %317 = call i32 @INSERT(i32 %315, i64 %316)
  %318 = load i32, i32* @O_PLUS, align 4
  %319 = load i64, i64* %4, align 8
  %320 = call i32 @ASTERN(i32 %318, i64 %319)
  %321 = load i32, i32* @OQUEST_, align 4
  %322 = load i64, i64* %4, align 8
  %323 = call i32 @INSERT(i32 %321, i64 %322)
  %324 = load i32, i32* @O_QUEST, align 4
  %325 = load i64, i64* %4, align 8
  %326 = call i32 @ASTERN(i32 %324, i64 %325)
  br label %401

327:                                              ; preds = %304
  %328 = load i32, i32* @OPLUS_, align 4
  %329 = load i64, i64* %4, align 8
  %330 = call i32 @INSERT(i32 %328, i64 %329)
  %331 = load i32, i32* @O_PLUS, align 4
  %332 = load i64, i64* %4, align 8
  %333 = call i32 @ASTERN(i32 %331, i64 %332)
  br label %401

334:                                              ; preds = %304
  %335 = load i32, i32* @OCH_, align 4
  %336 = load i64, i64* %4, align 8
  %337 = call i32 @INSERT(i32 %335, i64 %336)
  %338 = load i32, i32* @OOR1, align 4
  %339 = load i64, i64* %4, align 8
  %340 = call i32 @ASTERN(i32 %338, i64 %339)
  %341 = load i64, i64* %4, align 8
  %342 = call i32 @AHEAD(i64 %341)
  %343 = load i32, i32* @OOR2, align 4
  %344 = call i32 @EMIT(i32 %343, i32 0)
  %345 = call i64 (...) @THERE()
  %346 = call i32 @AHEAD(i64 %345)
  %347 = load i32, i32* @O_CH, align 4
  %348 = call i64 (...) @THERETHERE()
  %349 = call i32 @ASTERN(i32 %347, i64 %348)
  br label %401

350:                                              ; preds = %304
  %351 = load %struct.parse*, %struct.parse** %2, align 8
  %352 = call i32 @p_count(%struct.parse* %351)
  store i32 %352, i32* %5, align 4
  %353 = call i32 @EAT(i8 signext 44)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %372

355:                                              ; preds = %350
  %356 = call signext i8 (...) @PEEK()
  %357 = sext i8 %356 to i32
  %358 = call i64 @isdigit(i32 %357)
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %355
  %361 = load %struct.parse*, %struct.parse** %2, align 8
  %362 = call i32 @p_count(%struct.parse* %361)
  store i32 %362, i32* %6, align 4
  %363 = load i32, i32* %5, align 4
  %364 = load i32, i32* %6, align 4
  %365 = icmp sle i32 %363, %364
  %366 = zext i1 %365 to i32
  %367 = load i32, i32* @REG_BADBR, align 4
  %368 = call i32 @REQUIRE(i32 %366, i32 %367)
  br label %371

369:                                              ; preds = %355
  %370 = load i32, i32* @INFINITY, align 4
  store i32 %370, i32* %6, align 4
  br label %371

371:                                              ; preds = %369, %360
  br label %374

372:                                              ; preds = %350
  %373 = load i32, i32* %5, align 4
  store i32 %373, i32* %6, align 4
  br label %374

374:                                              ; preds = %372, %371
  %375 = load %struct.parse*, %struct.parse** %2, align 8
  %376 = load i64, i64* %4, align 8
  %377 = load i32, i32* %5, align 4
  %378 = load i32, i32* %6, align 4
  %379 = call i32 @repeat(%struct.parse* %375, i64 %376, i32 %377, i32 %378)
  %380 = call i32 @EAT(i8 signext 125)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %400, label %382

382:                                              ; preds = %374
  br label %383

383:                                              ; preds = %392, %382
  %384 = call i32 (...) @MORE()
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %383
  %387 = call signext i8 (...) @PEEK()
  %388 = sext i8 %387 to i32
  %389 = icmp ne i32 %388, 125
  br label %390

390:                                              ; preds = %386, %383
  %391 = phi i1 [ false, %383 ], [ %389, %386 ]
  br i1 %391, label %392, label %394

392:                                              ; preds = %390
  %393 = call i32 (...) @NEXT()
  br label %383

394:                                              ; preds = %390
  %395 = call i32 (...) @MORE()
  %396 = load i32, i32* @REG_EBRACE, align 4
  %397 = call i32 @REQUIRE(i32 %395, i32 %396)
  %398 = load i32, i32* @REG_BADBR, align 4
  %399 = call i32 @SETERROR(i32 %398)
  br label %400

400:                                              ; preds = %394, %374
  br label %401

401:                                              ; preds = %304, %400, %334, %327, %314
  %402 = call i32 (...) @MORE()
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %401
  br label %434

405:                                              ; preds = %401
  %406 = call signext i8 (...) @PEEK()
  store i8 %406, i8* %3, align 1
  %407 = load i8, i8* %3, align 1
  %408 = sext i8 %407 to i32
  %409 = icmp eq i32 %408, 42
  br i1 %409, label %431, label %410

410:                                              ; preds = %405
  %411 = load i8, i8* %3, align 1
  %412 = sext i8 %411 to i32
  %413 = icmp eq i32 %412, 43
  br i1 %413, label %431, label %414

414:                                              ; preds = %410
  %415 = load i8, i8* %3, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 63
  br i1 %417, label %431, label %418

418:                                              ; preds = %414
  %419 = load i8, i8* %3, align 1
  %420 = sext i8 %419 to i32
  %421 = icmp eq i32 %420, 123
  br i1 %421, label %422, label %430

422:                                              ; preds = %418
  %423 = call i64 (...) @MORE2()
  %424 = icmp ne i64 %423, 0
  br i1 %424, label %425, label %430

425:                                              ; preds = %422
  %426 = call i64 (...) @PEEK2()
  %427 = trunc i64 %426 to i32
  %428 = call i64 @isdigit(i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %431, label %430

430:                                              ; preds = %425, %422, %418
  br label %434

431:                                              ; preds = %425, %414, %410, %405
  %432 = load i32, i32* @REG_BADRPT, align 4
  %433 = call i32 @SETERROR(i32 %432)
  br label %434

434:                                              ; preds = %431, %430, %404, %303, %277
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MORE(...) #1

declare dso_local signext i8 @GETNEXT(...) #1

declare dso_local i8* @HERE(...) #1

declare dso_local i32 @REQUIRE(i32, i32) #1

declare dso_local i32 @EMIT(i32, i32) #1

declare dso_local i32 @SEE(i8 signext) #1

declare dso_local i32 @p_ere(%struct.parse*, i8 signext) #1

declare dso_local i32 @MUSTEAT(i8 signext, i32) #1

declare dso_local i32 @SETERROR(i32) #1

declare dso_local i32 @nonnewline(%struct.parse*) #1

declare dso_local i32 @p_bracket(%struct.parse*) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @dupl(%struct.parse*, i32, i64) #1

declare dso_local i32 @ordinary(%struct.parse*, i8 signext) #1

declare dso_local i64 @isdigit(i32) #1

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

declare dso_local i32 @repeat(%struct.parse*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
