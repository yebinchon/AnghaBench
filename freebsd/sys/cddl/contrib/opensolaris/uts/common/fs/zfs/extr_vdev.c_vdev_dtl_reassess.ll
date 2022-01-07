; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_dtl_reassess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_dtl_reassess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i32, i32, i32*, %struct.TYPE_16__**, i32, %struct.TYPE_13__*, i64, %struct.TYPE_17__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }

@SCL_ALL = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@DTL_MISSING = common dso_local global i64 0, align 8
@DTL_SCRUB = common dso_local global i64 0, align 8
@DTL_PARTIAL = common dso_local global i64 0, align 8
@DTL_OUTAGE = common dso_local global i64 0, align 8
@VDD_DTL = common dso_local global i32 0, align 4
@DTL_TYPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_dtl_reassess(%struct.TYPE_16__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = load i32, i32* @SCL_ALL, align 4
  %23 = load i32, i32* @RW_READER, align 4
  %24 = call i64 @spa_config_held(%struct.TYPE_17__* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %45, %4
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %37, i64 %39
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %8, align 4
  call void @vdev_dtl_reassess(%struct.TYPE_16__* %41, i64 %42, i64 %43, i32 %44)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %28

48:                                               ; preds = %28
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = icmp eq %struct.TYPE_16__* %49, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %48
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = call i32 @vdev_is_concrete(%struct.TYPE_16__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %54, %48
  br label %333

64:                                               ; preds = %58
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 7
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %235

71:                                               ; preds = %64
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  store %struct.TYPE_18__* %76, %struct.TYPE_18__** %13, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 3
  %79 = call i32 @mutex_enter(i32* %78)
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %126

82:                                               ; preds = %71
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %89 = icmp ne %struct.TYPE_18__* %88, null
  br i1 %89, label %90, label %126

90:                                               ; preds = %87
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %90, %82
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %98 = call i64 @vdev_dtl_should_excise(%struct.TYPE_16__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %96
  %101 = call i32 @space_reftree_create(i32* %10)
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 4
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @DTL_MISSING, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @space_reftree_add_map(i32* %10, i32 %107, i32 1)
  %109 = load i64, i64* %7, align 8
  %110 = call i32 @space_reftree_add_seg(i32* %10, i32 0, i64 %109, i32 -1)
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @DTL_SCRUB, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @space_reftree_add_map(i32* %10, i32 %116, i32 2)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @DTL_MISSING, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @space_reftree_generate_map(i32* %10, i32 %123, i32 1)
  %125 = call i32 @space_reftree_destroy(i32* %10)
  br label %126

126:                                              ; preds = %100, %96, %90, %87, %71
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @DTL_PARTIAL, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @range_tree_vacate(i32 %132, i32* null, i32* null)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* @DTL_MISSING, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @DTL_PARTIAL, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @range_tree_walk(i32 %139, i32 (i32, i32, i64)* @range_tree_add, i32 %145)
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %126
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 4
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @DTL_SCRUB, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @range_tree_vacate(i32 %155, i32* null, i32* null)
  br label %157

157:                                              ; preds = %149, %126
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 4
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @DTL_OUTAGE, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @range_tree_vacate(i32 %163, i32* null, i32* null)
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %166 = call i32 @vdev_readable(%struct.TYPE_16__* %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %157
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @DTL_OUTAGE, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @range_tree_add(i32 %174, i32 0, i64 -1)
  br label %190

176:                                              ; preds = %157
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* @DTL_MISSING, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @DTL_OUTAGE, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @range_tree_walk(i32 %182, i32 (i32, i32, i64)* @range_tree_add, i32 %188)
  br label %190

190:                                              ; preds = %176, %168
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %220

195:                                              ; preds = %190
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @DTL_MISSING, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @range_tree_is_empty(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %220

204:                                              ; preds = %195
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 4
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @DTL_OUTAGE, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @range_tree_is_empty(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 6
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @vdev_config_dirty(i32 %218)
  br label %220

220:                                              ; preds = %213, %204, %195, %190
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 3
  %223 = call i32 @mutex_exit(i32* %222)
  %224 = load i64, i64* %6, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %220
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @VDD_DTL, align 4
  %231 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %232 = load i64, i64* %6, align 8
  %233 = call i32 @vdev_dirty(i32 %229, i32 %230, %struct.TYPE_16__* %231, i64 %232)
  br label %234

234:                                              ; preds = %226, %220
  br label %333

235:                                              ; preds = %64
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 3
  %238 = call i32 @mutex_enter(i32* %237)
  store i32 0, i32* %14, align 4
  br label %239

239:                                              ; preds = %326, %235
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @DTL_TYPES, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %329

243:                                              ; preds = %239
  %244 = load i32, i32* %14, align 4
  %245 = sext i32 %244 to i64
  %246 = load i64, i64* @DTL_MISSING, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i64, i64* @DTL_OUTAGE, align 8
  br label %253

250:                                              ; preds = %243
  %251 = load i32, i32* %14, align 4
  %252 = sext i32 %251 to i64
  br label %253

253:                                              ; preds = %250, %248
  %254 = phi i64 [ %249, %248 ], [ %252, %250 ]
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %15, align 4
  %256 = load i32, i32* %14, align 4
  %257 = sext i32 %256 to i64
  %258 = load i64, i64* @DTL_SCRUB, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %326

261:                                              ; preds = %253
  %262 = load i32, i32* %14, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* @DTL_PARTIAL, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 1, i32* %11, align 4
  br label %282

267:                                              ; preds = %261
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %11, align 4
  br label %281

277:                                              ; preds = %267
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  store i32 %280, i32* %11, align 4
  br label %281

281:                                              ; preds = %277, %272
  br label %282

282:                                              ; preds = %281, %266
  %283 = call i32 @space_reftree_create(i32* %10)
  store i32 0, i32* %16, align 4
  br label %284

284:                                              ; preds = %312, %282
  %285 = load i32, i32* %16, align 4
  %286 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %315

290:                                              ; preds = %284
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 5
  %293 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %292, align 8
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %293, i64 %295
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  store %struct.TYPE_16__* %297, %struct.TYPE_16__** %17, align 8
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 3
  %300 = call i32 @mutex_enter(i32* %299)
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 4
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @space_reftree_add_map(i32* %10, i32 %307, i32 1)
  %309 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 3
  %311 = call i32 @mutex_exit(i32* %310)
  br label %312

312:                                              ; preds = %290
  %313 = load i32, i32* %16, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %16, align 4
  br label %284

315:                                              ; preds = %284
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i32 0, i32 4
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %14, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  %323 = load i32, i32* %11, align 4
  %324 = call i32 @space_reftree_generate_map(i32* %10, i32 %322, i32 %323)
  %325 = call i32 @space_reftree_destroy(i32* %10)
  br label %326

326:                                              ; preds = %315, %260
  %327 = load i32, i32* %14, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %14, align 4
  br label %239

329:                                              ; preds = %239
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 3
  %332 = call i32 @mutex_exit(i32* %331)
  br label %333

333:                                              ; preds = %329, %234, %63
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @vdev_dtl_should_excise(%struct.TYPE_16__*) #1

declare dso_local i32 @space_reftree_create(i32*) #1

declare dso_local i32 @space_reftree_add_map(i32*, i32, i32) #1

declare dso_local i32 @space_reftree_add_seg(i32*, i32, i64, i32) #1

declare dso_local i32 @space_reftree_generate_map(i32*, i32, i32) #1

declare dso_local i32 @space_reftree_destroy(i32*) #1

declare dso_local i32 @range_tree_vacate(i32, i32*, i32*) #1

declare dso_local i32 @range_tree_walk(i32, i32 (i32, i32, i64)*, i32) #1

declare dso_local i32 @range_tree_add(i32, i32, i64) #1

declare dso_local i32 @vdev_readable(%struct.TYPE_16__*) #1

declare dso_local i64 @range_tree_is_empty(i32) #1

declare dso_local i32 @vdev_config_dirty(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_dirty(i32, i32, %struct.TYPE_16__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
