; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_flushln.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term.c_term_flushln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i32, i64, i64, i64, i64 (%struct.termp*, i8)*, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32* }

@TERMP_NOPAD = common dso_local global i32 0, align 4
@TERMP_MULTICOL = common dso_local global i32 0, align 4
@TERMP_BRNEVER = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@TERMP_NOBREAK = common dso_local global i32 0, align 4
@TERMP_CENTER = common dso_local global i32 0, align 4
@TERMP_RIGHT = common dso_local global i32 0, align 4
@TERMP_BRTRSP = common dso_local global i32 0, align 4
@TERMP_BRIND = common dso_local global i32 0, align 4
@TERMP_BACKAFTER = common dso_local global i32 0, align 4
@TERMP_BACKBEFORE = common dso_local global i32 0, align 4
@TERMP_HANG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_flushln(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %9 = load %struct.termp*, %struct.termp** %2, align 8
  %10 = getelementptr inbounds %struct.termp, %struct.termp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TERMP_NOPAD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.termp*, %struct.termp** %2, align 8
  %17 = getelementptr inbounds %struct.termp, %struct.termp* %16, i32 0, i32 7
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.termp*, %struct.termp** %2, align 8
  %22 = getelementptr inbounds %struct.termp, %struct.termp* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15, %1
  br label %36

26:                                               ; preds = %15
  %27 = load %struct.termp*, %struct.termp** %2, align 8
  %28 = getelementptr inbounds %struct.termp, %struct.termp* %27, i32 0, i32 7
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.termp*, %struct.termp** %2, align 8
  %33 = getelementptr inbounds %struct.termp, %struct.termp* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  br label %36

36:                                               ; preds = %26, %25
  %37 = phi i64 [ 0, %25 ], [ %35, %26 ]
  store i64 %37, i64* %3, align 8
  %38 = load %struct.termp*, %struct.termp** %2, align 8
  %39 = getelementptr inbounds %struct.termp, %struct.termp* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %36
  %43 = load i64, i64* %3, align 8
  %44 = load %struct.termp*, %struct.termp** %2, align 8
  %45 = getelementptr inbounds %struct.termp, %struct.termp* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.termp*, %struct.termp** %2, align 8
  %50 = getelementptr inbounds %struct.termp, %struct.termp* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %3, align 8
  br label %52

52:                                               ; preds = %48, %42, %36
  %53 = load %struct.termp*, %struct.termp** %2, align 8
  %54 = getelementptr inbounds %struct.termp, %struct.termp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @TERMP_MULTICOL, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.termp*, %struct.termp** %2, align 8
  %61 = getelementptr inbounds %struct.termp, %struct.termp* %60, i32 0, i32 7
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %59, %52
  br label %65

65:                                               ; preds = %313, %64
  %66 = load %struct.termp*, %struct.termp** %2, align 8
  %67 = getelementptr inbounds %struct.termp, %struct.termp* %66, i32 0, i32 7
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.termp*, %struct.termp** %2, align 8
  %72 = getelementptr inbounds %struct.termp, %struct.termp* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %3, align 8
  %75 = add i64 %73, %74
  %76 = icmp ugt i64 %70, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %65
  %78 = load %struct.termp*, %struct.termp** %2, align 8
  %79 = getelementptr inbounds %struct.termp, %struct.termp* %78, i32 0, i32 7
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.termp*, %struct.termp** %2, align 8
  %84 = getelementptr inbounds %struct.termp, %struct.termp* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub i64 %82, %85
  %87 = load i64, i64* %3, align 8
  %88 = sub i64 %86, %87
  br label %90

89:                                               ; preds = %65
  br label %90

90:                                               ; preds = %89, %77
  %91 = phi i64 [ %88, %77 ], [ 0, %89 ]
  store i64 %91, i64* %5, align 8
  %92 = load %struct.termp*, %struct.termp** %2, align 8
  %93 = getelementptr inbounds %struct.termp, %struct.termp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TERMP_BRNEVER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %90
  %99 = load i64, i64* @SIZE_MAX, align 8
  br label %134

100:                                              ; preds = %90
  %101 = load %struct.termp*, %struct.termp** %2, align 8
  %102 = getelementptr inbounds %struct.termp, %struct.termp* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TERMP_NOBREAK, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = load i64, i64* %5, align 8
  br label %132

109:                                              ; preds = %100
  %110 = load %struct.termp*, %struct.termp** %2, align 8
  %111 = getelementptr inbounds %struct.termp, %struct.termp* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.termp*, %struct.termp** %2, align 8
  %114 = getelementptr inbounds %struct.termp, %struct.termp* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %115, %116
  %118 = icmp ugt i64 %112, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %109
  %120 = load %struct.termp*, %struct.termp** %2, align 8
  %121 = getelementptr inbounds %struct.termp, %struct.termp* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.termp*, %struct.termp** %2, align 8
  %124 = getelementptr inbounds %struct.termp, %struct.termp* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %122, %125
  %127 = load i64, i64* %3, align 8
  %128 = sub i64 %126, %127
  br label %130

129:                                              ; preds = %109
  br label %130

130:                                              ; preds = %129, %119
  %131 = phi i64 [ %128, %119 ], [ 0, %129 ]
  br label %132

132:                                              ; preds = %130, %107
  %133 = phi i64 [ %108, %107 ], [ %131, %130 ]
  br label %134

134:                                              ; preds = %132, %98
  %135 = phi i64 [ %99, %98 ], [ %133, %132 ]
  store i64 %135, i64* %6, align 8
  %136 = load %struct.termp*, %struct.termp** %2, align 8
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @term_fill(%struct.termp* %136, i64* %8, i64* %4, i64 %137)
  %139 = load i64, i64* %8, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %315

142:                                              ; preds = %134
  %143 = load i64, i64* %4, align 8
  %144 = load i64, i64* %6, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %175

146:                                              ; preds = %142
  %147 = load %struct.termp*, %struct.termp** %2, align 8
  %148 = getelementptr inbounds %struct.termp, %struct.termp* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TERMP_CENTER, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %146
  %154 = load i64, i64* %6, align 8
  %155 = load i64, i64* %4, align 8
  %156 = sub i64 %154, %155
  %157 = udiv i64 %156, 2
  %158 = load i64, i64* %3, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %3, align 8
  br label %174

160:                                              ; preds = %146
  %161 = load %struct.termp*, %struct.termp** %2, align 8
  %162 = getelementptr inbounds %struct.termp, %struct.termp* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TERMP_RIGHT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i64, i64* %6, align 8
  %169 = load i64, i64* %4, align 8
  %170 = sub i64 %168, %169
  %171 = load i64, i64* %3, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %3, align 8
  br label %173

173:                                              ; preds = %167, %160
  br label %174

174:                                              ; preds = %173, %153
  br label %175

175:                                              ; preds = %174, %142
  %176 = load %struct.termp*, %struct.termp** %2, align 8
  %177 = load i64, i64* %3, align 8
  %178 = load i64, i64* %8, align 8
  %179 = load i64, i64* %4, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @term_field(%struct.termp* %176, i64 %177, i64 %178, i64 %179, i64 %180)
  %182 = load %struct.termp*, %struct.termp** %2, align 8
  %183 = getelementptr inbounds %struct.termp, %struct.termp* %182, i32 0, i32 7
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  store i64 %186, i64* %7, align 8
  br label %187

187:                                              ; preds = %234, %175
  %188 = load i64, i64* %7, align 8
  %189 = load %struct.termp*, %struct.termp** %2, align 8
  %190 = getelementptr inbounds %struct.termp, %struct.termp* %189, i32 0, i32 7
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = icmp ult i64 %188, %193
  br i1 %194, label %195, label %237

195:                                              ; preds = %187
  %196 = load %struct.termp*, %struct.termp** %2, align 8
  %197 = getelementptr inbounds %struct.termp, %struct.termp* %196, i32 0, i32 7
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 4
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* %7, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  switch i32 %203, label %232 [
    i32 9, label %204
    i32 32, label %215
    i32 10, label %231
    i32 128, label %231
  ]

204:                                              ; preds = %195
  %205 = load %struct.termp*, %struct.termp** %2, align 8
  %206 = getelementptr inbounds %struct.termp, %struct.termp* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @TERMP_BRTRSP, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load i64, i64* %4, align 8
  %213 = call i64 @term_tab_next(i64 %212)
  store i64 %213, i64* %4, align 8
  br label %214

214:                                              ; preds = %211, %204
  br label %234

215:                                              ; preds = %195
  %216 = load %struct.termp*, %struct.termp** %2, align 8
  %217 = getelementptr inbounds %struct.termp, %struct.termp* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @TERMP_BRTRSP, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %215
  %223 = load %struct.termp*, %struct.termp** %2, align 8
  %224 = getelementptr inbounds %struct.termp, %struct.termp* %223, i32 0, i32 4
  %225 = load i64 (%struct.termp*, i8)*, i64 (%struct.termp*, i8)** %224, align 8
  %226 = load %struct.termp*, %struct.termp** %2, align 8
  %227 = call i64 %225(%struct.termp* %226, i8 signext 32)
  %228 = load i64, i64* %4, align 8
  %229 = add i64 %228, %227
  store i64 %229, i64* %4, align 8
  br label %230

230:                                              ; preds = %222, %215
  br label %234

231:                                              ; preds = %195, %195
  br label %234

232:                                              ; preds = %195
  br label %233

233:                                              ; preds = %232
  br label %237

234:                                              ; preds = %231, %230, %214
  %235 = load i64, i64* %7, align 8
  %236 = add i64 %235, 1
  store i64 %236, i64* %7, align 8
  br label %187

237:                                              ; preds = %233, %187
  %238 = load i64, i64* %7, align 8
  %239 = load %struct.termp*, %struct.termp** %2, align 8
  %240 = getelementptr inbounds %struct.termp, %struct.termp* %239, i32 0, i32 7
  %241 = load %struct.TYPE_2__*, %struct.TYPE_2__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %238, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %237
  br label %315

246:                                              ; preds = %237
  br label %247

247:                                              ; preds = %275, %246
  %248 = load %struct.termp*, %struct.termp** %2, align 8
  %249 = getelementptr inbounds %struct.termp, %struct.termp* %248, i32 0, i32 7
  %250 = load %struct.TYPE_2__*, %struct.TYPE_2__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %250, i32 0, i32 1
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.termp*, %struct.termp** %2, align 8
  %254 = getelementptr inbounds %struct.termp, %struct.termp* %253, i32 0, i32 7
  %255 = load %struct.TYPE_2__*, %struct.TYPE_2__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = icmp ult i64 %252, %257
  br i1 %258, label %259, label %273

259:                                              ; preds = %247
  %260 = load %struct.termp*, %struct.termp** %2, align 8
  %261 = getelementptr inbounds %struct.termp, %struct.termp* %260, i32 0, i32 7
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = load %struct.termp*, %struct.termp** %2, align 8
  %266 = getelementptr inbounds %struct.termp, %struct.termp* %265, i32 0, i32 7
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = getelementptr inbounds i32, i32* %264, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, 32
  br label %273

273:                                              ; preds = %259, %247
  %274 = phi i1 [ false, %247 ], [ %272, %259 ]
  br i1 %274, label %275, label %282

275:                                              ; preds = %273
  %276 = load %struct.termp*, %struct.termp** %2, align 8
  %277 = getelementptr inbounds %struct.termp, %struct.termp* %276, i32 0, i32 7
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = add i64 %280, 1
  store i64 %281, i64* %279, align 8
  br label %247

282:                                              ; preds = %273
  %283 = load %struct.termp*, %struct.termp** %2, align 8
  %284 = getelementptr inbounds %struct.termp, %struct.termp* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @TERMP_MULTICOL, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %282
  br label %375

290:                                              ; preds = %282
  %291 = load %struct.termp*, %struct.termp** %2, align 8
  %292 = call i32 @endline(%struct.termp* %291)
  %293 = load %struct.termp*, %struct.termp** %2, align 8
  %294 = getelementptr inbounds %struct.termp, %struct.termp* %293, i32 0, i32 1
  store i64 0, i64* %294, align 8
  %295 = load %struct.termp*, %struct.termp** %2, align 8
  %296 = getelementptr inbounds %struct.termp, %struct.termp* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @TERMP_BRIND, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %290
  %302 = load %struct.termp*, %struct.termp** %2, align 8
  %303 = getelementptr inbounds %struct.termp, %struct.termp* %302, i32 0, i32 7
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  br label %313

307:                                              ; preds = %290
  %308 = load %struct.termp*, %struct.termp** %2, align 8
  %309 = getelementptr inbounds %struct.termp, %struct.termp* %308, i32 0, i32 7
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  br label %313

313:                                              ; preds = %307, %301
  %314 = phi i64 [ %306, %301 ], [ %312, %307 ]
  store i64 %314, i64* %3, align 8
  br label %65

315:                                              ; preds = %245, %141
  %316 = load %struct.termp*, %struct.termp** %2, align 8
  %317 = getelementptr inbounds %struct.termp, %struct.termp* %316, i32 0, i32 7
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 3
  store i64 0, i64* %319, align 8
  %320 = load %struct.termp*, %struct.termp** %2, align 8
  %321 = getelementptr inbounds %struct.termp, %struct.termp* %320, i32 0, i32 7
  %322 = load %struct.TYPE_2__*, %struct.TYPE_2__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %322, i32 0, i32 1
  store i64 0, i64* %323, align 8
  %324 = load %struct.termp*, %struct.termp** %2, align 8
  %325 = getelementptr inbounds %struct.termp, %struct.termp* %324, i32 0, i32 5
  store i64 0, i64* %325, align 8
  %326 = load %struct.termp*, %struct.termp** %2, align 8
  %327 = getelementptr inbounds %struct.termp, %struct.termp* %326, i32 0, i32 6
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.termp*, %struct.termp** %2, align 8
  %330 = getelementptr inbounds %struct.termp, %struct.termp* %329, i32 0, i32 2
  store i64 %328, i64* %330, align 8
  %331 = load i32, i32* @TERMP_BACKAFTER, align 4
  %332 = load i32, i32* @TERMP_BACKBEFORE, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @TERMP_NOPAD, align 4
  %335 = or i32 %333, %334
  %336 = xor i32 %335, -1
  %337 = load %struct.termp*, %struct.termp** %2, align 8
  %338 = getelementptr inbounds %struct.termp, %struct.termp* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = and i32 %339, %336
  store i32 %340, i32* %338, align 8
  %341 = load %struct.termp*, %struct.termp** %2, align 8
  %342 = getelementptr inbounds %struct.termp, %struct.termp* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @TERMP_MULTICOL, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %348

347:                                              ; preds = %315
  br label %375

348:                                              ; preds = %315
  %349 = load %struct.termp*, %struct.termp** %2, align 8
  %350 = getelementptr inbounds %struct.termp, %struct.termp* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @TERMP_HANG, align 4
  %353 = and i32 %351, %352
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %375

355:                                              ; preds = %348
  %356 = load %struct.termp*, %struct.termp** %2, align 8
  %357 = getelementptr inbounds %struct.termp, %struct.termp* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @TERMP_NOBREAK, align 4
  %360 = and i32 %358, %359
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %372, label %362

362:                                              ; preds = %355
  %363 = load i64, i64* %4, align 8
  %364 = load %struct.termp*, %struct.termp** %2, align 8
  %365 = load %struct.termp*, %struct.termp** %2, align 8
  %366 = getelementptr inbounds %struct.termp, %struct.termp* %365, i32 0, i32 6
  %367 = load i64, i64* %366, align 8
  %368 = call i64 @term_len(%struct.termp* %364, i64 %367)
  %369 = add i64 %363, %368
  %370 = load i64, i64* %5, align 8
  %371 = icmp ugt i64 %369, %370
  br i1 %371, label %372, label %375

372:                                              ; preds = %362, %355
  %373 = load %struct.termp*, %struct.termp** %2, align 8
  %374 = call i32 @endline(%struct.termp* %373)
  br label %375

375:                                              ; preds = %289, %347, %372, %362, %348
  ret void
}

declare dso_local i32 @term_fill(%struct.termp*, i64*, i64*, i64) #1

declare dso_local i32 @term_field(%struct.termp*, i64, i64, i64, i64) #1

declare dso_local i64 @term_tab_next(i64) #1

declare dso_local i32 @endline(%struct.termp*) #1

declare dso_local i64 @term_len(%struct.termp*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
