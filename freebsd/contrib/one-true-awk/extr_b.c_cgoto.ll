; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_cgoto.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_b.c_cgoto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32**, i32, i32**, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }

@HAT = common dso_local global i32 0, align 4
@NCHARS = common dso_local global i32 0, align 4
@maxsetvec = common dso_local global i32 0, align 4
@setvec = common dso_local global i32* null, align 8
@tmpset = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"out of space in cgoto()\00", align 1
@setcnt = common dso_local global i32 0, align 4
@FINAL = common dso_local global i32 0, align 4
@CHAR = common dso_local global i32 0, align 4
@DOT = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@EMPTYRE = common dso_local global i32 0, align 4
@CCL = common dso_local global i32 0, align 4
@NCCL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cgoto overflow\00", align 1
@NSTATES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"out of space in cgoto\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgoto(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HAT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NCHARS, align 4
  %19 = icmp slt i32 %17, %18
  br label %20

20:                                               ; preds = %16, %3
  %21 = phi i1 [ true, %3 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  br label %24

24:                                               ; preds = %54, %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @maxsetvec, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %24
  %31 = load i32, i32* @maxsetvec, align 4
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* @maxsetvec, align 4
  %33 = load i32*, i32** @setvec, align 8
  %34 = load i32, i32* @maxsetvec, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  %38 = call i64 @realloc(i32* %33, i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** @setvec, align 8
  %40 = load i32*, i32** @tmpset, align 8
  %41 = load i32, i32* @maxsetvec, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i64 @realloc(i32* %40, i32 %44)
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** @tmpset, align 8
  %47 = load i32*, i32** @setvec, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %30
  %50 = load i32*, i32** @tmpset, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %30
  %53 = call i32 @overflo(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  br label %24

55:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %67, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sle i32 %57, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load i32*, i32** @setvec, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %56

70:                                               ; preds = %56
  store i32 0, i32* @setcnt, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %11, align 8
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %275, %70
  %79 = load i32, i32* %8, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp sle i32 %79, %81
  br i1 %82, label %83, label %278

83:                                               ; preds = %78
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 6
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* @FINAL, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %274

98:                                               ; preds = %83
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @CHAR, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i32*, i32** %11, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @ptoi(i32 %116)
  %118 = icmp eq i32 %103, %117
  br i1 %118, label %195, label %119

119:                                              ; preds = %102, %98
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @DOT, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @HAT, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %195, label %130

130:                                              ; preds = %126, %123, %119
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @ALL, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32, i32* %7, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %195, label %137

137:                                              ; preds = %134, %130
  %138 = load i32, i32* %10, align 4
  %139 = load i32, i32* @EMPTYRE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %195, label %144

144:                                              ; preds = %141, %137
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @CCL, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %166

148:                                              ; preds = %144
  %149 = load i32, i32* %7, align 4
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 6
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i8*
  %164 = call i64 @member(i32 %149, i8* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %195, label %166

166:                                              ; preds = %148, %144
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @NCCL, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %273

170:                                              ; preds = %166
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 6
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = inttoptr i64 %184 to i8*
  %186 = call i64 @member(i32 %171, i8* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %273, label %188

188:                                              ; preds = %170
  %189 = load i32, i32* %7, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %273

191:                                              ; preds = %188
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @HAT, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %273

195:                                              ; preds = %191, %148, %141, %134, %126, %102
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32*, i32** %11, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  store i32* %207, i32** %12, align 8
  store i32 1, i32* %9, align 4
  br label %208

208:                                              ; preds = %269, %195
  %209 = load i32, i32* %9, align 4
  %210 = load i32*, i32** %12, align 8
  %211 = load i32, i32* %210, align 4
  %212 = icmp sle i32 %209, %211
  br i1 %212, label %213, label %272

213:                                              ; preds = %208
  %214 = load i32*, i32** %12, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @maxsetvec, align 4
  %220 = icmp sge i32 %218, %219
  br i1 %220, label %221, label %246

221:                                              ; preds = %213
  %222 = load i32, i32* @maxsetvec, align 4
  %223 = mul nsw i32 %222, 4
  store i32 %223, i32* @maxsetvec, align 4
  %224 = load i32*, i32** @setvec, align 8
  %225 = load i32, i32* @maxsetvec, align 4
  %226 = sext i32 %225 to i64
  %227 = mul i64 %226, 4
  %228 = trunc i64 %227 to i32
  %229 = call i64 @realloc(i32* %224, i32 %228)
  %230 = inttoptr i64 %229 to i32*
  store i32* %230, i32** @setvec, align 8
  %231 = load i32*, i32** @tmpset, align 8
  %232 = load i32, i32* @maxsetvec, align 4
  %233 = sext i32 %232 to i64
  %234 = mul i64 %233, 4
  %235 = trunc i64 %234 to i32
  %236 = call i64 @realloc(i32* %231, i32 %235)
  %237 = inttoptr i64 %236 to i32*
  store i32* %237, i32** @tmpset, align 8
  %238 = load i32*, i32** @setvec, align 8
  %239 = icmp eq i32* %238, null
  br i1 %239, label %243, label %240

240:                                              ; preds = %221
  %241 = load i32*, i32** @tmpset, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %245

243:                                              ; preds = %240, %221
  %244 = call i32 @overflo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %245

245:                                              ; preds = %243, %240
  br label %246

246:                                              ; preds = %245, %213
  %247 = load i32*, i32** @setvec, align 8
  %248 = load i32*, i32** %12, align 8
  %249 = load i32, i32* %9, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %247, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %246
  %258 = load i32, i32* @setcnt, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* @setcnt, align 4
  %260 = load i32*, i32** @setvec, align 8
  %261 = load i32*, i32** %12, align 8
  %262 = load i32, i32* %9, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %260, i64 %266
  store i32 1, i32* %267, align 4
  br label %268

268:                                              ; preds = %257, %246
  br label %269

269:                                              ; preds = %268
  %270 = load i32, i32* %9, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %9, align 4
  br label %208

272:                                              ; preds = %208
  br label %273

273:                                              ; preds = %272, %191, %188, %170, %166
  br label %274

274:                                              ; preds = %273, %83
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %8, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %8, align 4
  br label %78

278:                                              ; preds = %78
  %279 = load i32, i32* @setcnt, align 4
  %280 = load i32*, i32** @tmpset, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 0
  store i32 %279, i32* %281, align 4
  store i32 1, i32* %9, align 4
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  store i32 %284, i32* %8, align 4
  br label %285

285:                                              ; preds = %303, %278
  %286 = load i32, i32* %8, align 4
  %287 = icmp sge i32 %286, 0
  br i1 %287, label %288, label %306

288:                                              ; preds = %285
  %289 = load i32*, i32** @setvec, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %288
  %296 = load i32, i32* %8, align 4
  %297 = load i32*, i32** @tmpset, align 8
  %298 = load i32, i32* %9, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %9, align 4
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  store i32 %296, i32* %301, align 4
  br label %302

302:                                              ; preds = %295, %288
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %8, align 4
  %305 = add nsw i32 %304, -1
  store i32 %305, i32* %8, align 4
  br label %285

306:                                              ; preds = %285
  store i32 1, i32* %8, align 4
  br label %307

307:                                              ; preds = %365, %306
  %308 = load i32, i32* %8, align 4
  %309 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = icmp sle i32 %308, %311
  br i1 %312, label %313, label %368

313:                                              ; preds = %307
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load i32**, i32*** %315, align 8
  %317 = load i32, i32* %8, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32*, i32** %316, i64 %318
  %320 = load i32*, i32** %319, align 8
  store i32* %320, i32** %11, align 8
  %321 = load i32*, i32** @tmpset, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* %322, align 4
  store i32 %323, i32* %10, align 4
  %324 = load i32*, i32** %11, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp ne i32 %323, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %313
  br label %364

329:                                              ; preds = %313
  store i32 1, i32* %9, align 4
  br label %330

330:                                              ; preds = %348, %329
  %331 = load i32, i32* %9, align 4
  %332 = load i32, i32* %10, align 4
  %333 = icmp sle i32 %331, %332
  br i1 %333, label %334, label %351

334:                                              ; preds = %330
  %335 = load i32*, i32** @tmpset, align 8
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32, i32* %335, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i32*, i32** %11, align 8
  %341 = load i32, i32* %9, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %339, %344
  br i1 %345, label %346, label %347

346:                                              ; preds = %334
  br label %364

347:                                              ; preds = %334
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %9, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %9, align 4
  br label %330

351:                                              ; preds = %330
  %352 = load i32, i32* %8, align 4
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 3
  %355 = load i32**, i32*** %354, align 8
  %356 = load i32, i32* %6, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32*, i32** %355, i64 %357
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  store i32 %352, i32* %362, align 4
  %363 = load i32, i32* %8, align 4
  store i32 %363, i32* %4, align 4
  br label %512

364:                                              ; preds = %346, %328
  br label %365

365:                                              ; preds = %364
  %366 = load i32, i32* %8, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %8, align 4
  br label %307

368:                                              ; preds = %307
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @NSTATES, align 4
  %373 = sub nsw i32 %372, 1
  %374 = icmp sge i32 %371, %373
  br i1 %374, label %375, label %397

375:                                              ; preds = %368
  %376 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %377 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %376, i32 0, i32 2
  store i32 2, i32* %377, align 8
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 4
  store i32 1, i32* %379, align 8
  store i32 2, i32* %8, align 4
  br label %380

380:                                              ; preds = %393, %375
  %381 = load i32, i32* %8, align 4
  %382 = load i32, i32* @NSTATES, align 4
  %383 = icmp slt i32 %381, %382
  br i1 %383, label %384, label %396

384:                                              ; preds = %380
  %385 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %385, i32 0, i32 1
  %387 = load i32**, i32*** %386, align 8
  %388 = load i32, i32* %8, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %387, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = call i32 @xfree(i32* %391)
  br label %393

393:                                              ; preds = %384
  %394 = load i32, i32* %8, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %8, align 4
  br label %380

396:                                              ; preds = %380
  br label %402

397:                                              ; preds = %368
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 2
  %400 = load i32, i32* %399, align 8
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 8
  br label %402

402:                                              ; preds = %397, %396
  store i32 0, i32* %8, align 4
  br label %403

403:                                              ; preds = %420, %402
  %404 = load i32, i32* %8, align 4
  %405 = load i32, i32* @NCHARS, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %423

407:                                              ; preds = %403
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 3
  %410 = load i32**, i32*** %409, align 8
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 8
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i32*, i32** %410, i64 %414
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %8, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  store i32 0, i32* %419, align 4
  br label %420

420:                                              ; preds = %407
  %421 = load i32, i32* %8, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %8, align 4
  br label %403

423:                                              ; preds = %403
  %424 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 1
  %426 = load i32**, i32*** %425, align 8
  %427 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds i32*, i32** %426, i64 %430
  %432 = load i32*, i32** %431, align 8
  %433 = call i32 @xfree(i32* %432)
  %434 = load i32, i32* @setcnt, align 4
  %435 = add nsw i32 %434, 1
  %436 = call i64 @calloc(i32 %435, i32 4)
  %437 = inttoptr i64 %436 to i32*
  store i32* %437, i32** %11, align 8
  %438 = icmp eq i32* %437, null
  br i1 %438, label %439, label %441

439:                                              ; preds = %423
  %440 = call i32 @overflo(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %441

441:                                              ; preds = %439, %423
  %442 = load i32*, i32** %11, align 8
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 1
  %445 = load i32**, i32*** %444, align 8
  %446 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32*, i32** %445, i64 %449
  store i32* %442, i32** %450, align 8
  %451 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %452 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 3
  %456 = load i32**, i32*** %455, align 8
  %457 = load i32, i32* %6, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i32*, i32** %456, i64 %458
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %7, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  store i32 %453, i32* %463, align 4
  store i32 0, i32* %8, align 4
  br label %464

464:                                              ; preds = %478, %441
  %465 = load i32, i32* %8, align 4
  %466 = load i32, i32* @setcnt, align 4
  %467 = icmp sle i32 %465, %466
  br i1 %467, label %468, label %481

468:                                              ; preds = %464
  %469 = load i32*, i32** @tmpset, align 8
  %470 = load i32, i32* %8, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %469, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = load i32*, i32** %11, align 8
  %475 = load i32, i32* %8, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  store i32 %473, i32* %477, align 4
  br label %478

478:                                              ; preds = %468
  %479 = load i32, i32* %8, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %8, align 4
  br label %464

481:                                              ; preds = %464
  %482 = load i32*, i32** @setvec, align 8
  %483 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %482, i64 %486
  %488 = load i32, i32* %487, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %499

490:                                              ; preds = %481
  %491 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %491, i32 0, i32 5
  %493 = load i32*, i32** %492, align 8
  %494 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %493, i64 %497
  store i32 1, i32* %498, align 4
  br label %508

499:                                              ; preds = %481
  %500 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 5
  %502 = load i32*, i32** %501, align 8
  %503 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %504 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 8
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %502, i64 %506
  store i32 0, i32* %507, align 4
  br label %508

508:                                              ; preds = %499, %490
  %509 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  store i32 %511, i32* %4, align 4
  br label %512

512:                                              ; preds = %508, %351
  %513 = load i32, i32* %4, align 4
  ret i32 %513
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @realloc(i32*, i32) #1

declare dso_local i32 @overflo(i8*) #1

declare dso_local i32 @ptoi(i32) #1

declare dso_local i64 @member(i32, i8*) #1

declare dso_local i32 @xfree(i32*) #1

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
