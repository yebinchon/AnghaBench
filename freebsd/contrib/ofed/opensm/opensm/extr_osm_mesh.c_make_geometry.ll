; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_make_geometry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/opensm/opensm/extr_osm_mesh.c_make_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__**, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32**, i32, i64*, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@OSM_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"phase 1 mismatch\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"no reverse link\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"phase 2 mismatch\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"phase 3 mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32)* @make_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_geometry(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  store i32* %24, i32** %5, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @OSM_LOG_ENTER(i32* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %32, i64 %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %9, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = icmp ne i32** %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  br label %735

44:                                               ; preds = %2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @seed_axes(%struct.TYPE_13__* %45, i32 %46)
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %50, i64 %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %12, align 8
  br label %55

55:                                               ; preds = %731, %44
  store i32 0, i32* %19, align 4
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %255, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %258

60:                                               ; preds = %56
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %63, i64 %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  store %struct.TYPE_12__* %67, %struct.TYPE_12__** %10, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %17, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ult i32 %73, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %60
  %81 = load i32, i32* %17, align 4
  %82 = icmp ule i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %255

84:                                               ; preds = %80, %60
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = icmp ne i32** %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %255

92:                                               ; preds = %84
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %251, %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %254

97:                                               ; preds = %93
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %97
  br label %251

109:                                              ; preds = %97
  store i32 0, i32* %18, align 4
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %138, %109
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %110
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  br label %138

119:                                              ; preds = %114
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %13, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %14, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 2
  br i1 %133, label %134, label %137

134:                                              ; preds = %119
  %135 = load i32, i32* %18, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %18, align 4
  br label %137

137:                                              ; preds = %134, %119
  br label %138

138:                                              ; preds = %137, %118
  %139 = load i32, i32* %14, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %14, align 4
  br label %110

141:                                              ; preds = %110
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 1
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %251

145:                                              ; preds = %141
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %247, %145
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %17, align 4
  %149 = icmp ult i32 %147, %148
  br i1 %149, label %150, label %250

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %247

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32**, i32*** %159, align 8
  %161 = load i32, i32* %13, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds i32*, i32** %160, i64 %162
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 2
  br i1 %169, label %170, label %246

170:                                              ; preds = %155
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %13, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = icmp sle i32 %183, 4
  br i1 %184, label %185, label %246

185:                                              ; preds = %170
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 2
  %190 = load i64*, i64** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %223

196:                                              ; preds = %185
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load i64*, i64** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i64, i64* %201, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 2
  %211 = load i64*, i64** %210, align 8
  %212 = load i32, i32* %13, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %211, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = call i64 @opposite(%struct.TYPE_12__* %206, i64 %215)
  %217 = icmp ne i64 %205, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %196
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %221 = call i32 @OSM_LOG(i32* %219, i32 %220, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %222

222:                                              ; preds = %218, %196
  br label %245

223:                                              ; preds = %185
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  %229 = load i64*, i64** %228, align 8
  %230 = load i32, i32* %13, align 4
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %229, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = call i64 @opposite(%struct.TYPE_12__* %224, i64 %233)
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 2
  %239 = load i64*, i64** %238, align 8
  %240 = load i32, i32* %14, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds i64, i64* %239, i64 %241
  store i64 %234, i64* %242, align 8
  %243 = load i32, i32* %19, align 4
  %244 = add i32 %243, 1
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %223, %222
  br label %246

246:                                              ; preds = %245, %170, %155
  br label %247

247:                                              ; preds = %246, %154
  %248 = load i32, i32* %14, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %14, align 4
  br label %146

250:                                              ; preds = %146
  br label %251

251:                                              ; preds = %250, %144, %108
  %252 = load i32, i32* %13, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %13, align 4
  br label %93

254:                                              ; preds = %93
  br label %255

255:                                              ; preds = %254, %91, %83
  %256 = load i32, i32* %7, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %7, align 4
  br label %56

258:                                              ; preds = %56
  store i32 0, i32* %7, align 4
  br label %259

259:                                              ; preds = %409, %258
  %260 = load i32, i32* %7, align 4
  %261 = load i32, i32* %6, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %412

263:                                              ; preds = %259
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %265, align 8
  %267 = load i32, i32* %7, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %266, i64 %268
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %269, align 8
  store %struct.TYPE_12__* %270, %struct.TYPE_12__** %10, align 8
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  store i32 %275, i32* %17, align 4
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = load i32**, i32*** %279, align 8
  %281 = icmp ne i32** %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %263
  br label %409

283:                                              ; preds = %263
  store i32 0, i32* %13, align 4
  br label %284

284:                                              ; preds = %405, %283
  %285 = load i32, i32* %13, align 4
  %286 = load i32, i32* %17, align 4
  %287 = icmp ult i32 %285, %286
  br i1 %287, label %288, label %408

288:                                              ; preds = %284
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 3
  %293 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %293, i64 %295
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  store i32 %299, i32* %20, align 4
  %300 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 2
  %304 = load i64*, i64** %303, align 8
  %305 = load i32, i32* %13, align 4
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds i64, i64* %304, i64 %306
  %308 = load i64, i64* %307, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %288
  br label %405

311:                                              ; preds = %288
  %312 = load i32, i32* %20, align 4
  %313 = icmp eq i32 %312, -1
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = load i32*, i32** %5, align 8
  %316 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %317 = call i32 @OSM_LOG(i32* %315, i32 %316, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %405

318:                                              ; preds = %311
  %319 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %320 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %319, i32 0, i32 0
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %320, align 8
  %322 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %321, i32 0, i32 3
  %323 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %322, align 8
  %324 = load i32, i32* %13, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %323, i64 %325
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  store i32 %329, i32* %8, align 4
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  %332 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %332, i64 %334
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %335, align 8
  store %struct.TYPE_12__* %336, %struct.TYPE_12__** %11, align 8
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 0
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 0
  %341 = load i32**, i32*** %340, align 8
  %342 = icmp ne i32** %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %318
  br label %405

344:                                              ; preds = %318
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 0
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 2
  %349 = load i64*, i64** %348, align 8
  %350 = load i32, i32* %20, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64, i64* %349, i64 %351
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %377, label %355

355:                                              ; preds = %344
  %356 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_11__*, %struct.TYPE_11__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %359, i32 0, i32 2
  %361 = load i64*, i64** %360, align 8
  %362 = load i32, i32* %13, align 4
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds i64, i64* %361, i64 %363
  %365 = load i64, i64* %364, align 8
  %366 = call i64 @opposite(%struct.TYPE_12__* %356, i64 %365)
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_11__*, %struct.TYPE_11__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %369, i32 0, i32 2
  %371 = load i64*, i64** %370, align 8
  %372 = load i32, i32* %20, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i64, i64* %371, i64 %373
  store i64 %366, i64* %374, align 8
  %375 = load i32, i32* %19, align 4
  %376 = add i32 %375, 1
  store i32 %376, i32* %19, align 4
  br label %404

377:                                              ; preds = %344
  %378 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %379 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %378, i32 0, i32 0
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 2
  %382 = load i64*, i64** %381, align 8
  %383 = load i32, i32* %20, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i64, i64* %382, i64 %384
  %386 = load i64, i64* %385, align 8
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 2
  %392 = load i64*, i64** %391, align 8
  %393 = load i32, i32* %13, align 4
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds i64, i64* %392, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = call i64 @opposite(%struct.TYPE_12__* %387, i64 %396)
  %398 = icmp ne i64 %386, %397
  br i1 %398, label %399, label %403

399:                                              ; preds = %377
  %400 = load i32*, i32** %5, align 8
  %401 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %402 = call i32 @OSM_LOG(i32* %400, i32 %401, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %403

403:                                              ; preds = %399, %377
  br label %404

404:                                              ; preds = %403, %355
  br label %405

405:                                              ; preds = %404, %343, %314, %310
  %406 = load i32, i32* %13, align 4
  %407 = add i32 %406, 1
  store i32 %407, i32* %13, align 4
  br label %284

408:                                              ; preds = %284
  br label %409

409:                                              ; preds = %408, %282
  %410 = load i32, i32* %7, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %7, align 4
  br label %259

412:                                              ; preds = %259
  store i32 0, i32* %7, align 4
  br label %413

413:                                              ; preds = %727, %412
  %414 = load i32, i32* %7, align 4
  %415 = load i32, i32* %6, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %730

417:                                              ; preds = %413
  %418 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 1
  %420 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %419, align 8
  %421 = load i32, i32* %7, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %420, i64 %422
  %424 = load %struct.TYPE_12__*, %struct.TYPE_12__** %423, align 8
  store %struct.TYPE_12__* %424, %struct.TYPE_12__** %9, align 8
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i32 0, i32 1
  %429 = load i32, i32* %428, align 8
  store i32 %429, i32* %17, align 4
  %430 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %431 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %430, i32 0, i32 0
  %432 = load %struct.TYPE_11__*, %struct.TYPE_11__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %432, i32 0, i32 0
  %434 = load i32**, i32*** %433, align 8
  %435 = icmp ne i32** %434, null
  br i1 %435, label %437, label %436

436:                                              ; preds = %417
  br label %727

437:                                              ; preds = %417
  store i32 0, i32* %13, align 4
  br label %438

438:                                              ; preds = %723, %437
  %439 = load i32, i32* %13, align 4
  %440 = load i32, i32* %17, align 4
  %441 = icmp ult i32 %439, %440
  br i1 %441, label %442, label %726

442:                                              ; preds = %438
  %443 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %444 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %443, i32 0, i32 0
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i32 0, i32 2
  %447 = load i64*, i64** %446, align 8
  %448 = load i32, i32* %13, align 4
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds i64, i64* %447, i64 %449
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %442
  br label %723

454:                                              ; preds = %442
  store i32 0, i32* %14, align 4
  br label %455

455:                                              ; preds = %719, %454
  %456 = load i32, i32* %14, align 4
  %457 = load i32, i32* %17, align 4
  %458 = icmp ult i32 %456, %457
  br i1 %458, label %459, label %722

459:                                              ; preds = %455
  %460 = load i32, i32* %13, align 4
  %461 = load i32, i32* %14, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %489, label %463

463:                                              ; preds = %459
  %464 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %465 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_11__*, %struct.TYPE_11__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 2
  %468 = load i64*, i64** %467, align 8
  %469 = load i32, i32* %14, align 4
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds i64, i64* %468, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %489

474:                                              ; preds = %463
  %475 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %476 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %475, i32 0, i32 0
  %477 = load %struct.TYPE_11__*, %struct.TYPE_11__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 0
  %479 = load i32**, i32*** %478, align 8
  %480 = load i32, i32* %13, align 4
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds i32*, i32** %479, i64 %481
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %14, align 4
  %485 = zext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = icmp ne i32 %487, 2
  br i1 %488, label %489, label %490

489:                                              ; preds = %474, %463, %459
  br label %719

490:                                              ; preds = %474
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 1
  %493 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %492, align 8
  %494 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 0
  %496 = load %struct.TYPE_11__*, %struct.TYPE_11__** %495, align 8
  %497 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %496, i32 0, i32 3
  %498 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %497, align 8
  %499 = load i32, i32* %13, align 4
  %500 = zext i32 %499 to i64
  %501 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %498, i64 %500
  %502 = load %struct.TYPE_9__*, %struct.TYPE_9__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %493, i64 %505
  %507 = load %struct.TYPE_12__*, %struct.TYPE_12__** %506, align 8
  store %struct.TYPE_12__* %507, %struct.TYPE_12__** %10, align 8
  %508 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 1
  %510 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %509, align 8
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = load %struct.TYPE_11__*, %struct.TYPE_11__** %512, align 8
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 0, i32 3
  %515 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %514, align 8
  %516 = load i32, i32* %14, align 4
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %515, i64 %517
  %519 = load %struct.TYPE_9__*, %struct.TYPE_9__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %510, i64 %522
  %524 = load %struct.TYPE_12__*, %struct.TYPE_12__** %523, align 8
  store %struct.TYPE_12__* %524, %struct.TYPE_12__** %11, align 8
  store i32 0, i32* %15, align 4
  br label %525

525:                                              ; preds = %714, %490
  %526 = load i32, i32* %15, align 4
  %527 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %528 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %527, i32 0, i32 0
  %529 = load %struct.TYPE_11__*, %struct.TYPE_11__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 8
  %532 = icmp ult i32 %526, %531
  br i1 %532, label %533, label %717

533:                                              ; preds = %525
  %534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %535 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %534, i32 0, i32 0
  %536 = load %struct.TYPE_11__*, %struct.TYPE_11__** %535, align 8
  %537 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %536, i32 0, i32 3
  %538 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %537, align 8
  %539 = load i32, i32* %15, align 4
  %540 = zext i32 %539 to i64
  %541 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %538, i64 %540
  %542 = load %struct.TYPE_9__*, %struct.TYPE_9__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = load i32, i32* %7, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %548

547:                                              ; preds = %533
  br label %714

548:                                              ; preds = %533
  store i32 0, i32* %16, align 4
  br label %549

549:                                              ; preds = %710, %548
  %550 = load i32, i32* %16, align 4
  %551 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %552 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %551, i32 0, i32 0
  %553 = load %struct.TYPE_11__*, %struct.TYPE_11__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %553, i32 0, i32 1
  %555 = load i32, i32* %554, align 8
  %556 = icmp ult i32 %550, %555
  br i1 %556, label %557, label %713

557:                                              ; preds = %549
  %558 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %559 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %558, i32 0, i32 0
  %560 = load %struct.TYPE_11__*, %struct.TYPE_11__** %559, align 8
  %561 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %560, i32 0, i32 3
  %562 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %561, align 8
  %563 = load i32, i32* %16, align 4
  %564 = zext i32 %563 to i64
  %565 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %562, i64 %564
  %566 = load %struct.TYPE_9__*, %struct.TYPE_9__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = load i32, i32* %7, align 4
  %570 = icmp eq i32 %568, %569
  br i1 %570, label %571, label %572

571:                                              ; preds = %557
  br label %710

572:                                              ; preds = %557
  %573 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %574 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %573, i32 0, i32 0
  %575 = load %struct.TYPE_11__*, %struct.TYPE_11__** %574, align 8
  %576 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %575, i32 0, i32 3
  %577 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %576, align 8
  %578 = load i32, i32* %15, align 4
  %579 = zext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %577, i64 %579
  %581 = load %struct.TYPE_9__*, %struct.TYPE_9__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %581, i32 0, i32 1
  %583 = load i32, i32* %582, align 4
  %584 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %585 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %584, i32 0, i32 0
  %586 = load %struct.TYPE_11__*, %struct.TYPE_11__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %586, i32 0, i32 3
  %588 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %587, align 8
  %589 = load i32, i32* %16, align 4
  %590 = zext i32 %589 to i64
  %591 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %588, i64 %590
  %592 = load %struct.TYPE_9__*, %struct.TYPE_9__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 1
  %594 = load i32, i32* %593, align 4
  %595 = icmp eq i32 %583, %594
  br i1 %595, label %596, label %709

596:                                              ; preds = %572
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 0
  %599 = load %struct.TYPE_11__*, %struct.TYPE_11__** %598, align 8
  %600 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %599, i32 0, i32 2
  %601 = load i64*, i64** %600, align 8
  %602 = load i32, i32* %15, align 4
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds i64, i64* %601, i64 %603
  %605 = load i64, i64* %604, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %632

607:                                              ; preds = %596
  %608 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %609 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %608, i32 0, i32 0
  %610 = load %struct.TYPE_11__*, %struct.TYPE_11__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %610, i32 0, i32 2
  %612 = load i64*, i64** %611, align 8
  %613 = load i32, i32* %15, align 4
  %614 = zext i32 %613 to i64
  %615 = getelementptr inbounds i64, i64* %612, i64 %614
  %616 = load i64, i64* %615, align 8
  %617 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %618 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %617, i32 0, i32 0
  %619 = load %struct.TYPE_11__*, %struct.TYPE_11__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %619, i32 0, i32 2
  %621 = load i64*, i64** %620, align 8
  %622 = load i32, i32* %14, align 4
  %623 = zext i32 %622 to i64
  %624 = getelementptr inbounds i64, i64* %621, i64 %623
  %625 = load i64, i64* %624, align 8
  %626 = icmp ne i64 %616, %625
  br i1 %626, label %627, label %631

627:                                              ; preds = %607
  %628 = load i32*, i32** %5, align 8
  %629 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %630 = call i32 @OSM_LOG(i32* %628, i32 %629, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %631

631:                                              ; preds = %627, %607
  br label %652

632:                                              ; preds = %596
  %633 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %634 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %633, i32 0, i32 0
  %635 = load %struct.TYPE_11__*, %struct.TYPE_11__** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %635, i32 0, i32 2
  %637 = load i64*, i64** %636, align 8
  %638 = load i32, i32* %14, align 4
  %639 = zext i32 %638 to i64
  %640 = getelementptr inbounds i64, i64* %637, i64 %639
  %641 = load i64, i64* %640, align 8
  %642 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %643 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %642, i32 0, i32 0
  %644 = load %struct.TYPE_11__*, %struct.TYPE_11__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %644, i32 0, i32 2
  %646 = load i64*, i64** %645, align 8
  %647 = load i32, i32* %15, align 4
  %648 = zext i32 %647 to i64
  %649 = getelementptr inbounds i64, i64* %646, i64 %648
  store i64 %641, i64* %649, align 8
  %650 = load i32, i32* %19, align 4
  %651 = add i32 %650, 1
  store i32 %651, i32* %19, align 4
  br label %652

652:                                              ; preds = %632, %631
  %653 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %654 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %653, i32 0, i32 0
  %655 = load %struct.TYPE_11__*, %struct.TYPE_11__** %654, align 8
  %656 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %655, i32 0, i32 2
  %657 = load i64*, i64** %656, align 8
  %658 = load i32, i32* %16, align 4
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds i64, i64* %657, i64 %659
  %661 = load i64, i64* %660, align 8
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %663, label %688

663:                                              ; preds = %652
  %664 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %665 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %664, i32 0, i32 0
  %666 = load %struct.TYPE_11__*, %struct.TYPE_11__** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %666, i32 0, i32 2
  %668 = load i64*, i64** %667, align 8
  %669 = load i32, i32* %16, align 4
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds i64, i64* %668, i64 %670
  %672 = load i64, i64* %671, align 8
  %673 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %674 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %673, i32 0, i32 0
  %675 = load %struct.TYPE_11__*, %struct.TYPE_11__** %674, align 8
  %676 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %675, i32 0, i32 2
  %677 = load i64*, i64** %676, align 8
  %678 = load i32, i32* %13, align 4
  %679 = zext i32 %678 to i64
  %680 = getelementptr inbounds i64, i64* %677, i64 %679
  %681 = load i64, i64* %680, align 8
  %682 = icmp ne i64 %672, %681
  br i1 %682, label %683, label %687

683:                                              ; preds = %663
  %684 = load i32*, i32** %5, align 8
  %685 = load i32, i32* @OSM_LOG_DEBUG, align 4
  %686 = call i32 @OSM_LOG(i32* %684, i32 %685, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %687

687:                                              ; preds = %683, %663
  br label %708

688:                                              ; preds = %652
  %689 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %690 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %689, i32 0, i32 0
  %691 = load %struct.TYPE_11__*, %struct.TYPE_11__** %690, align 8
  %692 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %691, i32 0, i32 2
  %693 = load i64*, i64** %692, align 8
  %694 = load i32, i32* %13, align 4
  %695 = zext i32 %694 to i64
  %696 = getelementptr inbounds i64, i64* %693, i64 %695
  %697 = load i64, i64* %696, align 8
  %698 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %699 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %698, i32 0, i32 0
  %700 = load %struct.TYPE_11__*, %struct.TYPE_11__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %700, i32 0, i32 2
  %702 = load i64*, i64** %701, align 8
  %703 = load i32, i32* %16, align 4
  %704 = zext i32 %703 to i64
  %705 = getelementptr inbounds i64, i64* %702, i64 %704
  store i64 %697, i64* %705, align 8
  %706 = load i32, i32* %19, align 4
  %707 = add i32 %706, 1
  store i32 %707, i32* %19, align 4
  br label %708

708:                                              ; preds = %688, %687
  br label %718

709:                                              ; preds = %572
  br label %710

710:                                              ; preds = %709, %571
  %711 = load i32, i32* %16, align 4
  %712 = add i32 %711, 1
  store i32 %712, i32* %16, align 4
  br label %549

713:                                              ; preds = %549
  br label %714

714:                                              ; preds = %713, %547
  %715 = load i32, i32* %15, align 4
  %716 = add i32 %715, 1
  store i32 %716, i32* %15, align 4
  br label %525

717:                                              ; preds = %525
  br label %718

718:                                              ; preds = %717, %708
  br label %719

719:                                              ; preds = %718, %489
  %720 = load i32, i32* %14, align 4
  %721 = add i32 %720, 1
  store i32 %721, i32* %14, align 4
  br label %455

722:                                              ; preds = %455
  br label %723

723:                                              ; preds = %722, %453
  %724 = load i32, i32* %13, align 4
  %725 = add i32 %724, 1
  store i32 %725, i32* %13, align 4
  br label %438

726:                                              ; preds = %438
  br label %727

727:                                              ; preds = %726, %436
  %728 = load i32, i32* %7, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %7, align 4
  br label %413

730:                                              ; preds = %413
  br label %731

731:                                              ; preds = %730
  %732 = load i32, i32* %19, align 4
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %55, label %734

734:                                              ; preds = %731
  br label %735

735:                                              ; preds = %734, %43
  %736 = load i32*, i32** %5, align 8
  %737 = call i32 @OSM_LOG_EXIT(i32* %736)
  ret void
}

declare dso_local i32 @OSM_LOG_ENTER(i32*) #1

declare dso_local i32 @seed_axes(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @opposite(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @OSM_LOG(i32*, i32, i8*) #1

declare dso_local i32 @OSM_LOG_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
