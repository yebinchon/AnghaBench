; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_alloc_dva.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_alloc_dva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32, i32, i64, %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i64, i64, i64, i64, i32, %struct.TYPE_14__, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i64, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@metaslab_force_ganging = common dso_local global i64 0, align 8
@TRACE_FORCE_GANG = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@METASLAB_HINTBP_AVOID = common dso_local global i32 0, align 4
@SCL_ZIO = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@TRACE_NOT_ALLOCATABLE = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@TRACE_VDEV_ERROR = common dso_local global i32 0, align 4
@ditto_same_vdev_distance_shift = common dso_local global i64 0, align 8
@metaslab_bias_enabled = common dso_local global i64 0, align 8
@METASLAB_GANG_HEADER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@TRACE_ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @metaslab_alloc_dva(i32* %0, %struct.TYPE_16__* %1, i64 %2, i32* %3, i32 %4, i32* %5, i64 %6, i32 %7, i32* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_15__*, align 8
  %23 = alloca %struct.TYPE_15__*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca %struct.TYPE_14__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i32 %9, i32* %21, align 4
  %33 = load i64, i64* @B_FALSE, align 8
  store i64 %33, i64* %25, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @DVA_IS_VALID(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* @metaslab_force_ganging, align 8
  %45 = icmp sge i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %10
  %47 = call i32 (...) @ddi_get_lbolt()
  %48 = and i32 %47, 3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32*, i32** %20, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @TRACE_FORCE_GANG, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i32 @metaslab_trace_add(i32* %51, %struct.TYPE_15__* null, i32* null, i64 %52, i32 %53, i32 %54, i32 %55)
  %57 = load i32, i32* @ENOSPC, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %11, align 4
  br label %415

59:                                               ; preds = %46, %10
  %60 = load i32*, i32** %17, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load i32*, i32** %12, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* %16, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @DVA_GET_VDEV(i32* %67)
  %69 = call %struct.TYPE_13__* @vdev_lookup_top(i32* %63, i32 %68)
  store %struct.TYPE_13__* %69, %struct.TYPE_13__** %24, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %71 = icmp ne %struct.TYPE_13__* %70, null
  br i1 %71, label %72, label %95

72:                                               ; preds = %62
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 7
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = icmp ne %struct.TYPE_15__* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %72
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %22, align 8
  %81 = load i32, i32* %19, align 4
  %82 = load i32, i32* @METASLAB_HINTBP_AVOID, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %87, align 8
  %89 = icmp ne %struct.TYPE_15__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %22, align 8
  br label %94

94:                                               ; preds = %90, %85, %77
  br label %99

95:                                               ; preds = %72, %62
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %97, align 8
  store %struct.TYPE_15__* %98, %struct.TYPE_15__** %22, align 8
  br label %99

99:                                               ; preds = %95, %94
  br label %122

100:                                              ; preds = %59
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32*, i32** %12, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = call i32 @DVA_GET_VDEV(i32* %109)
  %111 = call %struct.TYPE_13__* @vdev_lookup_top(i32* %104, i32 %110)
  store %struct.TYPE_13__* %111, %struct.TYPE_13__** %24, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 7
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  store %struct.TYPE_15__* %116, %struct.TYPE_15__** %22, align 8
  br label %121

117:                                              ; preds = %100
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  store %struct.TYPE_15__* %120, %struct.TYPE_15__** %22, align 8
  br label %121

121:                                              ; preds = %117, %103
  br label %122

122:                                              ; preds = %121, %99
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %124, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %127 = icmp ne %struct.TYPE_16__* %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %122
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp sle i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128, %122
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %135, align 8
  store %struct.TYPE_15__* %136, %struct.TYPE_15__** %22, align 8
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %138, %struct.TYPE_15__** %23, align 8
  br label %139

139:                                              ; preds = %398, %137
  br label %140

140:                                              ; preds = %389, %139
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  %145 = zext i1 %144 to i32
  %146 = call i32 @ASSERT(i32 %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 6
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %24, align 8
  %150 = load i64, i64* %25, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %140
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* @SCL_ZIO, align 4
  %155 = load i32, i32* @FTAG, align 4
  %156 = load i32, i32* @RW_READER, align 4
  %157 = call i32 @spa_config_enter(i32* %153, i32 %154, i32 %155, i32 %156)
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %159 = call i64 @vdev_allocatable(%struct.TYPE_13__* %158)
  store i64 %159, i64* %26, align 8
  %160 = load i32*, i32** %12, align 8
  %161 = load i32, i32* @SCL_ZIO, align 4
  %162 = load i32, i32* @FTAG, align 4
  %163 = call i32 @spa_config_exit(i32* %160, i32 %161, i32 %162)
  br label %167

164:                                              ; preds = %140
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %166 = call i64 @vdev_allocatable(%struct.TYPE_13__* %165)
  store i64 %166, i64* %26, align 8
  br label %167

167:                                              ; preds = %164, %152
  %168 = load i64, i64* %26, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %184

170:                                              ; preds = %167
  %171 = load i32, i32* %19, align 4
  %172 = call i32 @GANG_ALLOCATION(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %184, label %174

174:                                              ; preds = %170
  %175 = load i64, i64* %25, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %180 = load i64, i64* %14, align 8
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %16, align 4
  %183 = call i64 @metaslab_group_allocatable(%struct.TYPE_15__* %178, %struct.TYPE_15__* %179, i64 %180, i32 %181, i32 %182)
  store i64 %183, i64* %26, align 8
  br label %184

184:                                              ; preds = %177, %174, %170, %167
  %185 = load i64, i64* %26, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %195, label %187

187:                                              ; preds = %184
  %188 = load i32*, i32** %20, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load i32, i32* %16, align 4
  %192 = load i32, i32* @TRACE_NOT_ALLOCATABLE, align 4
  %193 = load i32, i32* %21, align 4
  %194 = call i32 @metaslab_trace_add(i32* %188, %struct.TYPE_15__* %189, i32* null, i64 %190, i32 %191, i32 %192, i32 %193)
  br label %381

195:                                              ; preds = %184
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @ASSERT(i32 %198)
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp sgt i64 %203, 0
  br i1 %204, label %211, label %205

205:                                              ; preds = %195
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %211, label %230

211:                                              ; preds = %205, %195
  %212 = load i32, i32* %16, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %211
  %215 = load i64, i64* %25, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %230, label %217

217:                                              ; preds = %214
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %217
  %223 = load i32*, i32** %20, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %225 = load i64, i64* %14, align 8
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* @TRACE_VDEV_ERROR, align 4
  %228 = load i32, i32* %21, align 4
  %229 = call i32 @metaslab_trace_add(i32* %223, %struct.TYPE_15__* %224, i32* null, i64 %225, i32 %226, i32 %227, i32 %228)
  br label %381

230:                                              ; preds = %217, %214, %211, %205
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %235 = icmp eq %struct.TYPE_16__* %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @ASSERT(i32 %236)
  store i64 0, i64* %27, align 8
  %238 = load i64, i64* %25, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %254, label %240

240:                                              ; preds = %230
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @ditto_same_vdev_distance_shift, align 8
  %245 = ashr i64 %243, %244
  store i64 %245, i64* %27, align 8
  %246 = load i64, i64* %27, align 8
  %247 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = shl i64 1, %249
  %251 = icmp ule i64 %246, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %240
  store i64 0, i64* %27, align 8
  br label %253

253:                                              ; preds = %252, %240
  br label %254

254:                                              ; preds = %253, %230
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %256 = load i64, i64* %14, align 8
  %257 = call i64 @vdev_psize_to_asize(%struct.TYPE_13__* %255, i64 %256)
  store i64 %257, i64* %28, align 8
  %258 = load i64, i64* %28, align 8
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 4
  %261 = load i64, i64* %260, align 8
  %262 = shl i64 1, %261
  %263 = call i64 @P2PHASE(i64 %258, i64 %262)
  %264 = icmp eq i64 %263, 0
  %265 = zext i1 %264 to i32
  %266 = call i32 @ASSERT(i32 %265)
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %268 = load i32*, i32** %20, align 8
  %269 = load i64, i64* %28, align 8
  %270 = load i64, i64* %18, align 8
  %271 = load i64, i64* %27, align 8
  %272 = load i32*, i32** %15, align 8
  %273 = load i32, i32* %16, align 4
  %274 = load i32, i32* %21, align 4
  %275 = call i64 @metaslab_group_alloc(%struct.TYPE_15__* %267, i32* %268, i64 %269, i64 %270, i64 %271, i32* %272, i32 %273, i32 %274)
  store i64 %275, i64* %29, align 8
  %276 = load i64, i64* %29, align 8
  %277 = icmp ne i64 %276, -1
  br i1 %277, label %278, label %380

278:                                              ; preds = %254
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %318

283:                                              ; preds = %278
  %284 = load i64, i64* @metaslab_bias_enabled, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %318

286:                                              ; preds = %283
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 6
  store %struct.TYPE_14__* %288, %struct.TYPE_14__** %30, align 8
  %289 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 8
  %292 = mul nsw i32 %291, 100
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  %297 = sdiv i32 %292, %296
  store i32 %297, i32* %31, align 4
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = mul nsw i32 %300, 100
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  %306 = sdiv i32 %301, %305
  store i32 %306, i32* %32, align 4
  %307 = load i32, i32* %32, align 4
  %308 = load i32, i32* %31, align 4
  %309 = sub nsw i32 %307, %308
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = trunc i64 %312 to i32
  %314 = mul nsw i32 %309, %313
  %315 = sdiv i32 %314, 100
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 2
  store i32 %315, i32* %317, align 8
  br label %325

318:                                              ; preds = %283, %278
  %319 = load i64, i64* @metaslab_bias_enabled, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %324, label %321

321:                                              ; preds = %318
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %323 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %322, i32 0, i32 2
  store i32 0, i32* %323, align 8
  br label %324

324:                                              ; preds = %321, %318
  br label %325

325:                                              ; preds = %324, %286
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 0
  %328 = load i64, i64* %28, align 8
  %329 = call i64 @atomic_add_64_nv(i64* %327, i64 %328)
  %330 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %331 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %330, i32 0, i32 3
  %332 = load i64, i64* %331, align 8
  %333 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %334 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  %336 = sext i32 %335 to i64
  %337 = add nsw i64 %332, %336
  %338 = icmp sge i64 %329, %337
  br i1 %338, label %339, label %347

339:                                              ; preds = %325
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 4
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** %341, align 8
  %343 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %343, i32 0, i32 3
  store %struct.TYPE_15__* %342, %struct.TYPE_15__** %344, align 8
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 0
  store i64 0, i64* %346, align 8
  br label %347

347:                                              ; preds = %339, %325
  %348 = load i32*, i32** %15, align 8
  %349 = load i32, i32* %16, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 5
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @DVA_SET_VDEV(i32* %351, i32 %354)
  %356 = load i32*, i32** %15, align 8
  %357 = load i32, i32* %16, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %356, i64 %358
  %360 = load i64, i64* %29, align 8
  %361 = call i32 @DVA_SET_OFFSET(i32* %359, i64 %360)
  %362 = load i32*, i32** %15, align 8
  %363 = load i32, i32* %16, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %19, align 4
  %367 = load i32, i32* @METASLAB_GANG_HEADER, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  %370 = xor i1 %369, true
  %371 = xor i1 %370, true
  %372 = zext i1 %371 to i32
  %373 = call i32 @DVA_SET_GANG(i32* %365, i32 %372)
  %374 = load i32*, i32** %15, align 8
  %375 = load i32, i32* %16, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i64, i64* %28, align 8
  %379 = call i32 @DVA_SET_ASIZE(i32* %377, i64 %378)
  store i32 0, i32* %11, align 4
  br label %415

380:                                              ; preds = %254
  br label %381

381:                                              ; preds = %380, %222, %187
  %382 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %383 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %382, i32 0, i32 4
  %384 = load %struct.TYPE_15__*, %struct.TYPE_15__** %383, align 8
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %385, i32 0, i32 3
  store %struct.TYPE_15__* %384, %struct.TYPE_15__** %386, align 8
  %387 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i32 0, i32 0
  store i64 0, i64* %388, align 8
  br label %389

389:                                              ; preds = %381
  %390 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %391 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %390, i32 0, i32 4
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %391, align 8
  store %struct.TYPE_15__* %392, %struct.TYPE_15__** %22, align 8
  %393 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %394 = icmp ne %struct.TYPE_15__* %392, %393
  br i1 %394, label %140, label %395

395:                                              ; preds = %389
  %396 = load i64, i64* %25, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %400, label %398

398:                                              ; preds = %395
  %399 = load i64, i64* @B_TRUE, align 8
  store i64 %399, i64* %25, align 8
  br label %139

400:                                              ; preds = %395
  %401 = load i32*, i32** %15, align 8
  %402 = load i32, i32* %16, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %401, i64 %403
  %405 = call i32 @bzero(i32* %404, i32 4)
  %406 = load i32*, i32** %20, align 8
  %407 = load %struct.TYPE_15__*, %struct.TYPE_15__** %23, align 8
  %408 = load i64, i64* %14, align 8
  %409 = load i32, i32* %16, align 4
  %410 = load i32, i32* @TRACE_ENOSPC, align 4
  %411 = load i32, i32* %21, align 4
  %412 = call i32 @metaslab_trace_add(i32* %406, %struct.TYPE_15__* %407, i32* null, i64 %408, i32 %409, i32 %410, i32 %411)
  %413 = load i32, i32* @ENOSPC, align 4
  %414 = call i32 @SET_ERROR(i32 %413)
  store i32 %414, i32* %11, align 4
  br label %415

415:                                              ; preds = %400, %347, %50
  %416 = load i32, i32* %11, align 4
  ret i32 %416
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DVA_IS_VALID(i32*) #1

declare dso_local i32 @ddi_get_lbolt(...) #1

declare dso_local i32 @metaslab_trace_add(i32*, %struct.TYPE_15__*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_13__* @vdev_lookup_top(i32*, i32) #1

declare dso_local i32 @DVA_GET_VDEV(i32*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i64 @vdev_allocatable(%struct.TYPE_13__*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @GANG_ALLOCATION(i32) #1

declare dso_local i64 @metaslab_group_allocatable(%struct.TYPE_15__*, %struct.TYPE_15__*, i64, i32, i32) #1

declare dso_local i64 @vdev_psize_to_asize(%struct.TYPE_13__*, i64) #1

declare dso_local i64 @P2PHASE(i64, i64) #1

declare dso_local i64 @metaslab_group_alloc(%struct.TYPE_15__*, i32*, i64, i64, i64, i32*, i32, i32) #1

declare dso_local i64 @atomic_add_64_nv(i64*, i64) #1

declare dso_local i32 @DVA_SET_VDEV(i32*, i32) #1

declare dso_local i32 @DVA_SET_OFFSET(i32*, i64) #1

declare dso_local i32 @DVA_SET_GANG(i32*, i32) #1

declare dso_local i32 @DVA_SET_ASIZE(i32*, i64) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
