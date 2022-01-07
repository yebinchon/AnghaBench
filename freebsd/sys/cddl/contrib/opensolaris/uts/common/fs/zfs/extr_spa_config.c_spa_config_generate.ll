; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i8* }
%struct.TYPE_21__ = type { i64, i32, i8*, i32*, i32*, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_20__*, i64, i64 }

@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@SCL_CONFIG = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZFS_IMPORT_TEMP_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_COMMENT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HOSTNAME = common dso_local global i32 0, align 4
@utsname = common dso_local global %struct.TYPE_22__ zeroinitializer, align 8
@ZPOOL_CONFIG_TOP_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_SPARE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPLIT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS = common dso_local global i32 0, align 4
@VDEV_CONFIG_MOS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPLIT_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FEATURES_FOR_READ = common dso_local global i32 0, align 4
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DDT_HISTOGRAM = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DDT_OBJ_STATS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DDT_STATS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @spa_config_generate(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 6
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %11, align 8
  store i64 0, i64* %12, align 8
  %23 = load i64, i64* @B_FALSE, align 8
  store i64 %23, i64* %13, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %25 = icmp eq %struct.TYPE_20__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %6, align 8
  %28 = load i64, i64* @B_TRUE, align 8
  store i64 %28, i64* %13, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %30 = load i32, i32* @SCL_CONFIG, align 4
  %31 = load i32, i32* @SCL_STATE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @FTAG, align 4
  %34 = load i32, i32* @RW_READER, align 4
  %35 = call i32 @spa_config_enter(%struct.TYPE_21__* %29, i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = load i32, i32* @SCL_CONFIG, align 4
  %39 = load i32, i32* @SCL_STATE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @RW_READER, align 4
  %42 = call i32 @spa_config_held(%struct.TYPE_21__* %37, i32 %40, i32 %41)
  %43 = load i32, i32* @SCL_CONFIG, align 4
  %44 = load i32, i32* @SCL_STATE, align 4
  %45 = or i32 %43, %44
  %46 = icmp eq i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %51, %36
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ZFS_IMPORT_TEMP_NAME, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %67 = call i8* @fnvlist_lookup_string(i32 %65, i32 %66)
  store i8* %67, i8** %15, align 8
  br label %71

68:                                               ; preds = %55
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %70 = call i8* @spa_name(%struct.TYPE_21__* %69)
  store i8* %70, i8** %15, align 8
  br label %71

71:                                               ; preds = %68, %62
  %72 = call i32* (...) @fnvlist_alloc()
  store i32* %72, i32** %9, align 8
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = call i64 @spa_version(%struct.TYPE_21__* %75)
  %77 = call i32 @fnvlist_add_uint64(i32* %73, i32 %74, i64 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @fnvlist_add_string(i32* %78, i32 %79, i8* %80)
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %85 = call i64 @spa_state(%struct.TYPE_21__* %84)
  %86 = call i32 @fnvlist_add_uint64(i32* %82, i32 %83, i64 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @fnvlist_add_uint64(i32* %87, i32 %88, i64 %89)
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %94 = call i64 @spa_guid(%struct.TYPE_21__* %93)
  %95 = call i32 @fnvlist_add_uint64(i32* %91, i32 %92, i64 %94)
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %71
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* @ZPOOL_CONFIG_COMMENT, align 4
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @fnvlist_add_string(i32* %101, i32 %102, i8* %105)
  br label %107

107:                                              ; preds = %100, %71
  %108 = call i64 @zone_get_hostid(i32* null)
  store i64 %108, i64* %12, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %107
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* @ZPOOL_CONFIG_HOSTID, align 4
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @fnvlist_add_uint64(i32* %112, i32 %113, i64 %114)
  br label %116

116:                                              ; preds = %111, %107
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* @ZPOOL_CONFIG_HOSTNAME, align 4
  %119 = load i8*, i8** getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @utsname, i32 0, i32 0), align 8
  %120 = call i32 @fnvlist_add_string(i32* %117, i32 %118, i8* %119)
  store i32 0, i32* %16, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %123 = icmp ne %struct.TYPE_20__* %121, %122
  br i1 %123, label %124, label %160

124:                                              ; preds = %116
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* @ZPOOL_CONFIG_TOP_GUID, align 4
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @fnvlist_add_uint64(i32* %125, i32 %126, i64 %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @fnvlist_add_uint64(i32* %133, i32 %134, i64 %137)
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %124
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* @ZPOOL_CONFIG_IS_SPARE, align 4
  %146 = call i32 @fnvlist_add_uint64(i32* %144, i32 %145, i64 1)
  br label %147

147:                                              ; preds = %143, %124
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32*, i32** %9, align 8
  %154 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %155 = call i32 @fnvlist_add_uint64(i32* %153, i32 %154, i64 1)
  br label %156

156:                                              ; preds = %152, %147
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  store %struct.TYPE_20__* %159, %struct.TYPE_20__** %6, align 8
  br label %179

160:                                              ; preds = %116
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load i32*, i32** %9, align 8
  %167 = load i32, i32* @ZPOOL_CONFIG_SPLIT, align 4
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @fnvlist_add_nvlist(i32* %166, i32 %167, i32* %170)
  br label %172

172:                                              ; preds = %165, %160
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* @ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS, align 4
  %175 = call i32 @fnvlist_add_boolean(i32* %173, i32 %174)
  %176 = load i32, i32* @VDEV_CONFIG_MOS, align 4
  %177 = load i32, i32* %16, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %16, align 4
  br label %179

179:                                              ; preds = %172, %156
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 @vdev_top_config_generate(%struct.TYPE_21__* %180, i32* %181)
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %179
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 4
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* @ZPOOL_CONFIG_SPLIT_GUID, align 4
  %192 = call i64 @nvlist_lookup_uint64(i32* %190, i32 %191, i64* %14)
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load i32*, i32** %9, align 8
  %196 = load i32, i32* @ZPOOL_CONFIG_SPLIT_GUID, align 4
  %197 = load i64, i64* %14, align 8
  %198 = call i32 @fnvlist_add_uint64(i32* %195, i32 %196, i64 %197)
  br label %199

199:                                              ; preds = %194, %187, %179
  %200 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %202 = load i32, i32* %8, align 4
  %203 = load i32, i32* %16, align 4
  %204 = call i32* @vdev_config_generate(%struct.TYPE_21__* %200, %struct.TYPE_20__* %201, i32 %202, i32 %203)
  store i32* %204, i32** %10, align 8
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = call i32 @fnvlist_add_nvlist(i32* %205, i32 %206, i32* %207)
  %209 = load i32*, i32** %10, align 8
  %210 = call i32 @nvlist_free(i32* %209)
  %211 = load i32*, i32** %9, align 8
  %212 = load i32, i32* @ZPOOL_CONFIG_FEATURES_FOR_READ, align 4
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %213, i32 0, i32 3
  %215 = load i32*, i32** %214, align 8
  %216 = call i32 @fnvlist_add_nvlist(i32* %211, i32 %212, i32* %215)
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %261

219:                                              ; preds = %199
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %221 = call i64 @spa_load_state(%struct.TYPE_21__* %220)
  %222 = load i64, i64* @SPA_LOAD_NONE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %261

224:                                              ; preds = %219
  %225 = load i32, i32* @KM_SLEEP, align 4
  %226 = call i32* @kmem_zalloc(i32 4, i32 %225)
  store i32* %226, i32** %17, align 8
  %227 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %228 = load i32*, i32** %17, align 8
  %229 = call i32 @ddt_get_dedup_histogram(%struct.TYPE_21__* %227, i32* %228)
  %230 = load i32*, i32** %9, align 8
  %231 = load i32, i32* @ZPOOL_CONFIG_DDT_HISTOGRAM, align 4
  %232 = load i32*, i32** %17, align 8
  %233 = bitcast i32* %232 to i64*
  %234 = call i32 @fnvlist_add_uint64_array(i32* %230, i32 %231, i64* %233, i32 0)
  %235 = load i32*, i32** %17, align 8
  %236 = call i32 @kmem_free(i32* %235, i32 4)
  %237 = load i32, i32* @KM_SLEEP, align 4
  %238 = call i32* @kmem_zalloc(i32 4, i32 %237)
  store i32* %238, i32** %19, align 8
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %240 = load i32*, i32** %19, align 8
  %241 = call i32 @ddt_get_dedup_object_stats(%struct.TYPE_21__* %239, i32* %240)
  %242 = load i32*, i32** %9, align 8
  %243 = load i32, i32* @ZPOOL_CONFIG_DDT_OBJ_STATS, align 4
  %244 = load i32*, i32** %19, align 8
  %245 = bitcast i32* %244 to i64*
  %246 = call i32 @fnvlist_add_uint64_array(i32* %242, i32 %243, i64* %245, i32 0)
  %247 = load i32*, i32** %19, align 8
  %248 = call i32 @kmem_free(i32* %247, i32 4)
  %249 = load i32, i32* @KM_SLEEP, align 4
  %250 = call i32* @kmem_zalloc(i32 4, i32 %249)
  store i32* %250, i32** %18, align 8
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %252 = load i32*, i32** %18, align 8
  %253 = call i32 @ddt_get_dedup_stats(%struct.TYPE_21__* %251, i32* %252)
  %254 = load i32*, i32** %9, align 8
  %255 = load i32, i32* @ZPOOL_CONFIG_DDT_STATS, align 4
  %256 = load i32*, i32** %18, align 8
  %257 = bitcast i32* %256 to i64*
  %258 = call i32 @fnvlist_add_uint64_array(i32* %254, i32 %255, i64* %257, i32 0)
  %259 = load i32*, i32** %18, align 8
  %260 = call i32 @kmem_free(i32* %259, i32 4)
  br label %261

261:                                              ; preds = %224, %219, %199
  %262 = load i64, i64* %13, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %266 = load i32, i32* @SCL_CONFIG, align 4
  %267 = load i32, i32* @SCL_STATE, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @FTAG, align 4
  %270 = call i32 @spa_config_exit(%struct.TYPE_21__* %265, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %264, %261
  %272 = load i32*, i32** %9, align 8
  ret i32* %272
}

declare dso_local i32 @spa_config_enter(%struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_config_held(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i8* @fnvlist_lookup_string(i32, i32) #1

declare dso_local i8* @spa_name(%struct.TYPE_21__*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @spa_version(%struct.TYPE_21__*) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i64 @spa_state(%struct.TYPE_21__*) #1

declare dso_local i64 @spa_guid(%struct.TYPE_21__*) #1

declare dso_local i64 @zone_get_hostid(i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i32) #1

declare dso_local i32 @vdev_top_config_generate(%struct.TYPE_21__*, i32*) #1

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i32* @vdev_config_generate(%struct.TYPE_21__*, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @spa_load_state(%struct.TYPE_21__*) #1

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ddt_get_dedup_histogram(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @fnvlist_add_uint64_array(i32*, i32, i64*, i32) #1

declare dso_local i32 @kmem_free(i32*, i32) #1

declare dso_local i32 @ddt_get_dedup_object_stats(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @ddt_get_dedup_stats(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
