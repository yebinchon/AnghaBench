; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { i64, %struct.TYPE_26__, %struct.TYPE_26__, i32*, %struct.TYPE_27__, %struct.TYPE_28__*, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_28__ = type { i64, i64, i64, %struct.TYPE_28__**, i64, %struct.TYPE_30__* }

@VDEV_ALLOC_ADD = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@vdev_raidz_ops = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@vdev_mirror_ops = common dso_local global %struct.TYPE_30__ zeroinitializer, align 4
@B_TRUE = common dso_local global i8* null, align 8
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_POOL = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_add(%struct.TYPE_29__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_28__*, %struct.TYPE_28__** %21, align 8
  store %struct.TYPE_28__* %22, %struct.TYPE_28__** %9, align 8
  %23 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %24 = call i32 @spa_writeable(%struct.TYPE_29__* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %27 = call i64 @spa_vdev_enter(%struct.TYPE_29__* %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @VDEV_ALLOC_ADD, align 4
  %31 = call i32 @spa_config_parse(%struct.TYPE_29__* %28, %struct.TYPE_28__** %10, i32* %29, i32* null, i32 0, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %34, %struct.TYPE_28__* null, i64 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %301

38:                                               ; preds = %2
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i32 0, i32 5
  store %struct.TYPE_28__* %39, %struct.TYPE_28__** %41, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %44 = call i64 @nvlist_lookup_nvlist_array(i32* %42, i32 %43, i32*** %12, i64* %14)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i64 0, i64* %14, align 8
  br label %47

47:                                               ; preds = %46, %38
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %50 = call i64 @nvlist_lookup_nvlist_array(i32* %48, i32 %49, i32*** %13, i64* %15)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64 0, i64* %15, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load i64, i64* %14, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i64, i64* %15, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %66 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %65, %struct.TYPE_28__* %66, i64 %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %301

70:                                               ; preds = %61, %58, %53
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* @B_FALSE, align 4
  %79 = call i32 @vdev_create(%struct.TYPE_28__* %76, i64 %77, i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %82, %struct.TYPE_28__* %83, i64 %84, i32 %85)
  store i32 %86, i32* %3, align 4
  br label %301

87:                                               ; preds = %75, %70
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %89 = load i32*, i32** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* @VDEV_ALLOC_ADD, align 4
  %92 = call i32 @spa_validate_aux(%struct.TYPE_29__* %88, i32* %89, i64 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %97 = load i64, i64* %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %95, %struct.TYPE_28__* %96, i64 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  br label %301

100:                                              ; preds = %87
  %101 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %197

111:                                              ; preds = %105, %100
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %193, %111
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %114, %117
  br i1 %118, label %119, label %196

119:                                              ; preds = %112
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %121, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %122, i64 %124
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %125, align 8
  store %struct.TYPE_28__* %126, %struct.TYPE_28__** %11, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %145

131:                                              ; preds = %119
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %131
  %140 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %142 = load i64, i64* %6, align 8
  %143 = load i32, i32* @EINVAL, align 4
  %144 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %140, %struct.TYPE_28__* %141, i64 %142, i32 %143)
  store i32 %144, i32* %3, align 4
  br label %301

145:                                              ; preds = %131, %119
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %147, align 8
  %149 = icmp eq %struct.TYPE_30__* %148, @vdev_raidz_ops
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %152 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i32, i32* @EINVAL, align 4
  %155 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %151, %struct.TYPE_28__* %152, i64 %153, i32 %154)
  store i32 %155, i32* %3, align 4
  br label %301

156:                                              ; preds = %145
  %157 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %157, i32 0, i32 5
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %158, align 8
  %160 = icmp eq %struct.TYPE_30__* %159, @vdev_mirror_ops
  br i1 %160, label %161, label %192

161:                                              ; preds = %156
  store i64 0, i64* %17, align 8
  br label %162

162:                                              ; preds = %188, %161
  %163 = load i64, i64* %17, align 8
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp ult i64 %163, %166
  br i1 %167, label %168, label %191

168:                                              ; preds = %162
  %169 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %170, align 8
  %172 = load i64, i64* %17, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %171, i64 %172
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %173, align 8
  store %struct.TYPE_28__* %174, %struct.TYPE_28__** %18, align 8
  %175 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %176 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %175, i32 0, i32 5
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %168
  %182 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %184 = load i64, i64* %6, align 8
  %185 = load i32, i32* @EINVAL, align 4
  %186 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %182, %struct.TYPE_28__* %183, i64 %184, i32 %185)
  store i32 %186, i32* %3, align 4
  br label %301

187:                                              ; preds = %168
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %17, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %17, align 8
  br label %162

191:                                              ; preds = %162
  br label %192

192:                                              ; preds = %191, %156
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %16, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %16, align 4
  br label %112

196:                                              ; preds = %112
  br label %197

197:                                              ; preds = %196, %105
  store i32 0, i32* %19, align 4
  br label %198

198:                                              ; preds = %253, %197
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp slt i64 %200, %203
  br i1 %204, label %205, label %256

205:                                              ; preds = %198
  store i64 0, i64* %7, align 8
  br label %206

206:                                              ; preds = %231, %205
  %207 = load i64, i64* %7, align 8
  %208 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ult i64 %207, %210
  br i1 %211, label %212, label %234

212:                                              ; preds = %206
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 3
  %215 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %214, align 8
  %216 = load i64, i64* %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %215, i64 %216
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %230

222:                                              ; preds = %212
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %224, align 8
  %226 = load i64, i64* %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %225, i64 %226
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %227, align 8
  %229 = call i32 @vdev_free(%struct.TYPE_28__* %228)
  br label %234

230:                                              ; preds = %212
  br label %231

231:                                              ; preds = %230
  %232 = load i64, i64* %7, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %7, align 8
  br label %206

234:                                              ; preds = %222, %206
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 3
  %237 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %236, align 8
  %238 = load i32, i32* %19, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %237, i64 %239
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %240, align 8
  store %struct.TYPE_28__* %241, %struct.TYPE_28__** %11, align 8
  %242 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %243 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %244 = call i32 @vdev_remove_child(%struct.TYPE_28__* %242, %struct.TYPE_28__* %243)
  %245 = load i64, i64* %7, align 8
  %246 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 2
  store i64 %245, i64* %247, align 8
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %249 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %250 = call i32 @vdev_add_child(%struct.TYPE_28__* %248, %struct.TYPE_28__* %249)
  %251 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %252 = call i32 @vdev_config_dirty(%struct.TYPE_28__* %251)
  br label %253

253:                                              ; preds = %234
  %254 = load i32, i32* %19, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %19, align 4
  br label %198

256:                                              ; preds = %198
  %257 = load i64, i64* %14, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %272

259:                                              ; preds = %256
  %260 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %260, i32 0, i32 2
  %262 = load i32**, i32*** %12, align 8
  %263 = load i64, i64* %14, align 8
  %264 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %265 = call i32 @spa_set_aux_vdevs(%struct.TYPE_26__* %261, i32** %262, i64 %263, i32 %264)
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %267 = call i32 @spa_load_spares(%struct.TYPE_29__* %266)
  %268 = load i8*, i8** @B_TRUE, align 8
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %270, i32 0, i32 0
  store i8* %268, i8** %271, align 8
  br label %272

272:                                              ; preds = %259, %256
  %273 = load i64, i64* %15, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %288

275:                                              ; preds = %272
  %276 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %276, i32 0, i32 1
  %278 = load i32**, i32*** %13, align 8
  %279 = load i64, i64* %15, align 8
  %280 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %281 = call i32 @spa_set_aux_vdevs(%struct.TYPE_26__* %277, i32** %278, i64 %279, i32 %280)
  %282 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %283 = call i32 @spa_load_l2cache(%struct.TYPE_29__* %282)
  %284 = load i8*, i8** @B_TRUE, align 8
  %285 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  store i8* %284, i8** %287, align 8
  br label %288

288:                                              ; preds = %275, %272
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %291 = load i64, i64* %6, align 8
  %292 = call i32 @spa_vdev_exit(%struct.TYPE_29__* %289, %struct.TYPE_28__* %290, i64 %291, i32 0)
  %293 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %295 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %296 = call i32 @spa_config_update(%struct.TYPE_29__* %294, i32 %295)
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %298 = load i32, i32* @ESC_ZFS_VDEV_ADD, align 4
  %299 = call i32 @spa_event_notify(%struct.TYPE_29__* %297, i32* null, i32* null, i32 %298)
  %300 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  store i32 0, i32* %3, align 4
  br label %301

301:                                              ; preds = %288, %181, %150, %139, %94, %81, %64, %33
  %302 = load i32, i32* %3, align 4
  ret i32 %302
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_29__*) #1

declare dso_local i64 @spa_vdev_enter(%struct.TYPE_29__*) #1

declare dso_local i32 @spa_config_parse(%struct.TYPE_29__*, %struct.TYPE_28__**, i32*, i32*, i32, i32) #1

declare dso_local i32 @spa_vdev_exit(%struct.TYPE_29__*, %struct.TYPE_28__*, i64, i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i64*) #1

declare dso_local i32 @vdev_create(%struct.TYPE_28__*, i64, i32) #1

declare dso_local i32 @spa_validate_aux(%struct.TYPE_29__*, i32*, i64, i32) #1

declare dso_local i32 @vdev_free(%struct.TYPE_28__*) #1

declare dso_local i32 @vdev_remove_child(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @vdev_add_child(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_set_aux_vdevs(%struct.TYPE_26__*, i32**, i64, i32) #1

declare dso_local i32 @spa_load_spares(%struct.TYPE_29__*) #1

declare dso_local i32 @spa_load_l2cache(%struct.TYPE_29__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_config_update(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_29__*, i32*, i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
