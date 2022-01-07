; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_l2cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_l2cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32*, %struct.TYPE_31__** }
%struct.TYPE_31__ = type { i64, i32, %struct.TYPE_33__*, %struct.TYPE_31__* }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@VDEV_ALLOC_L2CACHE = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_CONFIG_L2CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_load_l2cache(%struct.TYPE_32__* %0) #0 {
  %2 = alloca %struct.TYPE_32__*, align 8
  %3 = alloca %struct.TYPE_31__**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca %struct.TYPE_31__**, align 8
  %11 = alloca %struct.TYPE_31__**, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %2, align 8
  %14 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  store %struct.TYPE_33__* %15, %struct.TYPE_33__** %12, align 8
  %16 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %17 = call i32 @spa_writeable(%struct.TYPE_32__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %319

20:                                               ; preds = %1
  %21 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %22 = load i64, i64* @SCL_ALL, align 8
  %23 = load i32, i32* @RW_WRITER, align 4
  %24 = call i64 @spa_config_held(%struct.TYPE_32__* %21, i64 %22, i32 %23)
  %25 = load i64, i64* @SCL_ALL, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %20
  %34 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %38 = call i64 @nvlist_lookup_nvlist_array(i32* %36, i32 %37, %struct.TYPE_31__*** %3, i32* %4)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @VERIFY(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* @KM_SLEEP, align 4
  %47 = call %struct.TYPE_31__** @kmem_alloc(i32 %45, i32 %46)
  store %struct.TYPE_31__** %47, %struct.TYPE_31__*** %11, align 8
  br label %49

48:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %11, align 8
  br label %49

49:                                               ; preds = %48, %33
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %51, align 8
  store %struct.TYPE_31__** %52, %struct.TYPE_31__*** %10, align 8
  %53 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 2
  store %struct.TYPE_31__** null, %struct.TYPE_31__*** %57, align 8
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %165, %49
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %168

64:                                               ; preds = %60
  %65 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %65, i64 %67
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %68, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %71 = call i64 @nvlist_lookup_uint64(%struct.TYPE_31__* %69, i32 %70, i64* %8)
  %72 = icmp eq i64 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @VERIFY(i32 %73)
  %75 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %75, i64 %77
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %78, align 8
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %108, %64
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %84, i64 %86
  %88 = load %struct.TYPE_31__*, %struct.TYPE_31__** %87, align 8
  store %struct.TYPE_31__* %88, %struct.TYPE_31__** %9, align 8
  %89 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %90 = icmp ne %struct.TYPE_31__* %89, null
  br i1 %90, label %91, label %107

91:                                               ; preds = %83
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %99 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %99, i64 %101
  store %struct.TYPE_31__* %98, %struct.TYPE_31__** %102, align 8
  %103 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %103, i64 %105
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %106, align 8
  br label %111

107:                                              ; preds = %91, %83
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %79

111:                                              ; preds = %97, %79
  %112 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %112, i64 %114
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %115, align 8
  %117 = icmp eq %struct.TYPE_31__* %116, null
  br i1 %117, label %118, label %164

118:                                              ; preds = %111
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %120 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %120, i64 %122
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %123, align 8
  %125 = load i32, i32* @VDEV_ALLOC_L2CACHE, align 4
  %126 = call i64 @spa_config_parse(%struct.TYPE_32__* %119, %struct.TYPE_31__** %9, %struct.TYPE_31__* %124, i32* null, i32 0, i32 %125)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @VERIFY(i32 %128)
  %130 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %131 = icmp ne %struct.TYPE_31__* %130, null
  %132 = zext i1 %131 to i32
  %133 = call i32 @ASSERT(i32 %132)
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %135 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %135, i64 %137
  store %struct.TYPE_31__* %134, %struct.TYPE_31__** %138, align 8
  %139 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %140 = call i32 @spa_l2cache_add(%struct.TYPE_31__* %139)
  %141 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %142 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 3
  store %struct.TYPE_31__* %141, %struct.TYPE_31__** %143, align 8
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 2
  store %struct.TYPE_33__* %144, %struct.TYPE_33__** %146, align 8
  %147 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %148 = call i32 @spa_l2cache_activate(%struct.TYPE_31__* %147)
  %149 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %150 = call i64 @vdev_open(%struct.TYPE_31__* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %118
  br label %165

153:                                              ; preds = %118
  %154 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %155 = call i32 @vdev_validate_aux(%struct.TYPE_31__* %154)
  %156 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %157 = call i32 @vdev_is_dead(%struct.TYPE_31__* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %153
  %160 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %161 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %162 = call i32 @l2arc_add_vdev(%struct.TYPE_32__* %160, %struct.TYPE_31__* %161)
  br label %163

163:                                              ; preds = %159, %153
  br label %164

164:                                              ; preds = %163, %111
  br label %165

165:                                              ; preds = %164, %152
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %60

168:                                              ; preds = %60
  store i32 0, i32* %5, align 4
  br label %169

169:                                              ; preds = %207, %168
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %7, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %210

173:                                              ; preds = %169
  %174 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %175 = load i32, i32* %5, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %174, i64 %176
  %178 = load %struct.TYPE_31__*, %struct.TYPE_31__** %177, align 8
  store %struct.TYPE_31__* %178, %struct.TYPE_31__** %9, align 8
  %179 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %180 = icmp ne %struct.TYPE_31__* %179, null
  br i1 %180, label %181, label %206

181:                                              ; preds = %173
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ASSERT(i32 %184)
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = call i64 @spa_l2cache_exists(i64 %188, i64* %13)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %181
  %192 = load i64, i64* %13, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %196 = call i64 @l2arc_vdev_present(%struct.TYPE_31__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %194
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %200 = call i32 @l2arc_remove_vdev(%struct.TYPE_31__* %199)
  br label %201

201:                                              ; preds = %198, %194, %191, %181
  %202 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %203 = call i32 @vdev_clear_stats(%struct.TYPE_31__* %202)
  %204 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %205 = call i32 @vdev_free(%struct.TYPE_31__* %204)
  br label %206

206:                                              ; preds = %201, %173
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %169

210:                                              ; preds = %169
  %211 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %212 = icmp ne %struct.TYPE_31__** %211, null
  br i1 %212, label %213, label %220

213:                                              ; preds = %210
  %214 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  %215 = load i32, i32* %7, align 4
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 8
  %218 = trunc i64 %217 to i32
  %219 = call i32 @kmem_free(%struct.TYPE_31__** %214, i32 %218)
  br label %220

220:                                              ; preds = %213, %210
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %226

225:                                              ; preds = %220
  br label %288

226:                                              ; preds = %220
  %227 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %11, align 8
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %229 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %228, i32 0, i32 2
  store %struct.TYPE_31__** %227, %struct.TYPE_31__*** %229, align 8
  %230 = load i32, i32* %4, align 4
  %231 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %232 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %237 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %238 = call i64 @nvlist_remove(i32* %235, i32 %236, i32 %237)
  %239 = icmp eq i64 %238, 0
  %240 = zext i1 %239 to i32
  %241 = call i32 @VERIFY(i32 %240)
  %242 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = sext i32 %244 to i64
  %246 = mul i64 %245, 8
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* @KM_SLEEP, align 4
  %249 = call %struct.TYPE_31__** @kmem_alloc(i32 %247, i32 %248)
  store %struct.TYPE_31__** %249, %struct.TYPE_31__*** %3, align 8
  store i32 0, i32* %5, align 4
  br label %250

250:                                              ; preds = %272, %226
  %251 = load i32, i32* %5, align 4
  %252 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp slt i32 %251, %254
  br i1 %255, label %256, label %275

256:                                              ; preds = %250
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %2, align 8
  %258 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %260, i64 %262
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %263, align 8
  %265 = load i32, i32* @B_TRUE, align 4
  %266 = load i32, i32* @VDEV_CONFIG_L2CACHE, align 4
  %267 = call %struct.TYPE_31__* @vdev_config_generate(%struct.TYPE_32__* %257, %struct.TYPE_31__* %264, i32 %265, i32 %266)
  %268 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %269 = load i32, i32* %5, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %268, i64 %270
  store %struct.TYPE_31__* %267, %struct.TYPE_31__** %271, align 8
  br label %272

272:                                              ; preds = %256
  %273 = load i32, i32* %5, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %5, align 4
  br label %250

275:                                              ; preds = %250
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %280 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @nvlist_add_nvlist_array(i32* %278, i32 %279, %struct.TYPE_31__** %280, i32 %283)
  %285 = icmp eq i64 %284, 0
  %286 = zext i1 %285 to i32
  %287 = call i32 @VERIFY(i32 %286)
  br label %288

288:                                              ; preds = %275, %225
  store i32 0, i32* %5, align 4
  br label %289

289:                                              ; preds = %302, %288
  %290 = load i32, i32* %5, align 4
  %291 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = icmp slt i32 %290, %293
  br i1 %294, label %295, label %305

295:                                              ; preds = %289
  %296 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %297 = load i32, i32* %5, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %296, i64 %298
  %300 = load %struct.TYPE_31__*, %struct.TYPE_31__** %299, align 8
  %301 = call i32 @nvlist_free(%struct.TYPE_31__* %300)
  br label %302

302:                                              ; preds = %295
  %303 = load i32, i32* %5, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %5, align 4
  br label %289

305:                                              ; preds = %289
  %306 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %307 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %319

310:                                              ; preds = %305
  %311 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %3, align 8
  %312 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %313 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = sext i32 %314 to i64
  %316 = mul i64 %315, 8
  %317 = trunc i64 %316 to i32
  %318 = call i32 @kmem_free(%struct.TYPE_31__** %311, i32 %317)
  br label %319

319:                                              ; preds = %19, %310, %305
  ret void
}

declare dso_local i32 @spa_writeable(%struct.TYPE_32__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_32__*, i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, %struct.TYPE_31__***, i32*) #1

declare dso_local %struct.TYPE_31__** @kmem_alloc(i32, i32) #1

declare dso_local i64 @nvlist_lookup_uint64(%struct.TYPE_31__*, i32, i64*) #1

declare dso_local i64 @spa_config_parse(%struct.TYPE_32__*, %struct.TYPE_31__**, %struct.TYPE_31__*, i32*, i32, i32) #1

declare dso_local i32 @spa_l2cache_add(%struct.TYPE_31__*) #1

declare dso_local i32 @spa_l2cache_activate(%struct.TYPE_31__*) #1

declare dso_local i64 @vdev_open(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_validate_aux(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_31__*) #1

declare dso_local i32 @l2arc_add_vdev(%struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i64 @spa_l2cache_exists(i64, i64*) #1

declare dso_local i64 @l2arc_vdev_present(%struct.TYPE_31__*) #1

declare dso_local i32 @l2arc_remove_vdev(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_clear_stats(%struct.TYPE_31__*) #1

declare dso_local i32 @vdev_free(%struct.TYPE_31__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_31__**, i32) #1

declare dso_local i64 @nvlist_remove(i32*, i32, i32) #1

declare dso_local %struct.TYPE_31__* @vdev_config_generate(%struct.TYPE_32__*, %struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, %struct.TYPE_31__**, i32) #1

declare dso_local i32 @nvlist_free(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
