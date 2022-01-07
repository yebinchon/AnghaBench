; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_stat_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_stat_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i32, i64, %struct.TYPE_21__*, i64, %struct.TYPE_23__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i32, %struct.TYPE_22__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_22__ = type { i64, i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_23__ = type { i64, i64, %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }

@ZIO_FLAG_IO_BYPASS = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_REPAIR = common dso_local global i32 0, align 4
@ZIO_FLAG_SCAN_THREAD = common dso_local global i32 0, align 4
@ZIO_FLAG_SELF_HEAL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@ZIO_FLAG_IO_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ECKSUM = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@DTL_SCRUB = common dso_local global i32 0, align 4
@DTL_MISSING = common dso_local global i32 0, align 4
@DTL_PARTIAL = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_stat_update(%struct.TYPE_20__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store i64 %1, i64* %4, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  store %struct.TYPE_23__* %18, %struct.TYPE_23__** %5, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %6, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = icmp ne %struct.TYPE_21__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  br label %32

30:                                               ; preds = %2
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi %struct.TYPE_21__* [ %29, %26 ], [ %31, %30 ]
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %7, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 4
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %10, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %11, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 5
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %32
  br label %339

50:                                               ; preds = %32
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %146

55:                                               ; preds = %50
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %58 = icmp eq %struct.TYPE_21__* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %339

60:                                               ; preds = %55
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = icmp eq %struct.TYPE_21__* %61, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @ASSERT(i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @ZIO_FLAG_IO_BYPASS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %60
  br label %339

73:                                               ; preds = %60
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 3
  %76 = call i32 @mutex_enter(i32* %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %125

81:                                               ; preds = %73
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @ZIO_FLAG_SCAN_THREAD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %81
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  store %struct.TYPE_24__* %92, %struct.TYPE_24__** %13, align 8
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  store i64* %94, i64** %14, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %86
  %102 = load i64*, i64** %14, align 8
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @atomic_add_64(i64* %102, i64 %103)
  br label %105

105:                                              ; preds = %101, %86
  %106 = load i64, i64* %4, align 8
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  br label %111

111:                                              ; preds = %105, %81
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @ZIO_FLAG_SELF_HEAL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load i64, i64* %4, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %117
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  br label %124

124:                                              ; preds = %116, %111
  br label %125

125:                                              ; preds = %124, %73
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* %11, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i64, i64* %4, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i64, i64* %11, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %133
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 3
  %145 = call i32 @mutex_exit(i32* %144)
  br label %339

146:                                              ; preds = %50
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %146
  br label %339

152:                                              ; preds = %146
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 3
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @EIO, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %158
  br label %339

166:                                              ; preds = %158, %152
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 4
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %168, align 8
  %170 = icmp eq %struct.TYPE_21__* %169, null
  br i1 %170, label %171, label %179

171:                                              ; preds = %166
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  br label %339

179:                                              ; preds = %171, %166
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 3
  %182 = call i32 @mutex_enter(i32* %181)
  %183 = load i64, i64* %11, align 8
  %184 = load i64, i64* @ZIO_TYPE_READ, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %207

186:                                              ; preds = %179
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %188 = call i32 @vdev_is_dead(%struct.TYPE_21__* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %207, label %190

190:                                              ; preds = %186
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @ECKSUM, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  br label %206

201:                                              ; preds = %190
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %201, %196
  br label %207

207:                                              ; preds = %206, %186, %179
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %207
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %213 = call i32 @vdev_is_dead(%struct.TYPE_21__* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %211
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %215, %211, %207
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 3
  %223 = call i32 @mutex_exit(i32* %222)
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @SPA_LOAD_NONE, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %339

229:                                              ; preds = %220
  %230 = load i64, i64* %11, align 8
  %231 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %339

233:                                              ; preds = %229
  %234 = load i64, i64* %9, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %339

236:                                              ; preds = %233
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %236
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* @ZIO_FLAG_SCAN_THREAD, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %241
  %247 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %339

251:                                              ; preds = %246, %241, %236
  %252 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %329

258:                                              ; preds = %251
  %259 = load i64, i64* %9, align 8
  store i64 %259, i64* %15, align 8
  %260 = load i32, i32* %12, align 4
  %261 = load i32, i32* @ZIO_FLAG_SCAN_THREAD, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %280

264:                                              ; preds = %258
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %267 = and i32 %265, %266
  %268 = call i32 @ASSERT(i32 %267)
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %270 = call i32 @spa_sync_pass(%struct.TYPE_23__* %269)
  %271 = icmp eq i32 %270, 1
  %272 = zext i1 %271 to i32
  %273 = call i32 @ASSERT(i32 %272)
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %275 = load i32, i32* @DTL_SCRUB, align 4
  %276 = load i64, i64* %9, align 8
  %277 = call i32 @vdev_dtl_dirty(%struct.TYPE_21__* %274, i32 %275, i64 %276, i32 1)
  %278 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %279 = call i64 @spa_syncing_txg(%struct.TYPE_23__* %278)
  store i64 %279, i64* %15, align 8
  br label %293

280:                                              ; preds = %258
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %280
  %286 = load i32, i32* %12, align 4
  %287 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %288 = and i32 %286, %287
  %289 = call i32 @ASSERT(i32 %288)
  %290 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %291 = call i64 @spa_first_txg(%struct.TYPE_23__* %290)
  store i64 %291, i64* %15, align 8
  br label %292

292:                                              ; preds = %285, %280
  br label %293

293:                                              ; preds = %292, %264
  %294 = load i64, i64* %15, align 8
  %295 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %296 = call i64 @spa_syncing_txg(%struct.TYPE_23__* %295)
  %297 = icmp sge i64 %294, %296
  %298 = zext i1 %297 to i32
  %299 = call i32 @ASSERT(i32 %298)
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %301 = load i32, i32* @DTL_MISSING, align 4
  %302 = load i64, i64* %9, align 8
  %303 = call i64 @vdev_dtl_contains(%struct.TYPE_21__* %300, i32 %301, i64 %302, i32 1)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %293
  br label %339

306:                                              ; preds = %293
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %307, %struct.TYPE_21__** %8, align 8
  br label %308

308:                                              ; preds = %317, %306
  %309 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %311 = icmp ne %struct.TYPE_21__* %309, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %308
  %313 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %314 = load i32, i32* @DTL_PARTIAL, align 4
  %315 = load i64, i64* %9, align 8
  %316 = call i32 @vdev_dtl_dirty(%struct.TYPE_21__* %313, i32 %314, i64 %315, i32 1)
  br label %317

317:                                              ; preds = %312
  %318 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 1
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %319, align 8
  store %struct.TYPE_21__* %320, %struct.TYPE_21__** %8, align 8
  br label %308

321:                                              ; preds = %308
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %323 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @VDD_DTL, align 4
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %327 = load i64, i64* %15, align 8
  %328 = call i32 @vdev_dirty(i32 %324, i32 %325, %struct.TYPE_21__* %326, i64 %327)
  br label %329

329:                                              ; preds = %321, %251
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %332 = icmp ne %struct.TYPE_21__* %330, %331
  br i1 %332, label %333, label %338

333:                                              ; preds = %329
  %334 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %335 = load i32, i32* @DTL_MISSING, align 4
  %336 = load i64, i64* %9, align 8
  %337 = call i32 @vdev_dtl_dirty(%struct.TYPE_21__* %334, i32 %335, i64 %336, i32 1)
  br label %338

338:                                              ; preds = %333, %329
  br label %339

339:                                              ; preds = %49, %59, %72, %125, %151, %165, %178, %305, %338, %246, %233, %229, %220
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @atomic_add_64(i64*, i64) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_21__*) #1

declare dso_local i32 @spa_sync_pass(%struct.TYPE_23__*) #1

declare dso_local i32 @vdev_dtl_dirty(%struct.TYPE_21__*, i32, i64, i32) #1

declare dso_local i64 @spa_syncing_txg(%struct.TYPE_23__*) #1

declare dso_local i64 @spa_first_txg(%struct.TYPE_23__*) #1

declare dso_local i64 @vdev_dtl_contains(%struct.TYPE_21__*, i32, i64, i32) #1

declare dso_local i32 @vdev_dirty(i32, i32, %struct.TYPE_21__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
