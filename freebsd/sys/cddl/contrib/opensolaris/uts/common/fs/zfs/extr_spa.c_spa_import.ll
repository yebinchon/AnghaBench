; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32, %struct.TYPE_27__, %struct.TYPE_27__, i64, i32, i64, i64, i32 }
%struct.TYPE_27__ = type { i8*, i32* }
%struct.TYPE_26__ = type { i32, i64 }

@SPA_LOAD_IMPORT = common dso_local global i64 0, align 8
@spa_mode_global = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ZPOOL_PROP_ALTROOT = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@ZFS_IMPORT_VERBATIM = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ESC_ZFS_POOL_IMPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"spa_import: verbatim import of %s\00", align 1
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4
@SPA_LOAD_RECOVER = common dso_local global i64 0, align 8
@SPA_CONFIG_SRC_TRYIMPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"spa_import: importing %s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"spa_import: importing %s, max_txg=%lld (RECOVERY MODE)\00", align 1
@ZPOOL_CONFIG_LOAD_INFO = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@VDEV_ALLOC_SPARE = common dso_local global i32 0, align 4
@VDEV_ALLOC_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_POOL = common dso_local global i32 0, align 4
@SPA_ASYNC_AUTOEXPAND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"import\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_import(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32**, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* null, i8** %11, align 8
  %22 = load i64, i64* @SPA_LOAD_IMPORT, align 8
  store i64 %22, i64* %12, align 8
  %23 = load i32, i32* @spa_mode_global, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @B_FALSE, align 4
  store i32 %24, i32* %15, align 4
  %25 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %26 = load i8*, i8** %6, align 8
  %27 = call i32* @spa_lookup(i8* %26)
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %31 = load i32, i32* @EEXIST, align 4
  %32 = call i32 @SET_ERROR(i32 %31)
  store i32 %32, i32* %5, align 4
  br label %377

33:                                               ; preds = %4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @ZPOOL_PROP_ALTROOT, align 4
  %36 = call i32 @zpool_prop_to_name(i32 %35)
  %37 = call i32 @nvlist_lookup_string(i32* %34, i32 %36, i8** %11)
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %40 = call i32 @zpool_prop_to_name(i32 %39)
  %41 = call i32 @nvlist_lookup_uint64(i32* %38, i32 %40, i32* %15)
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @FREAD, align 4
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i8*, i8** %6, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call %struct.TYPE_28__* @spa_add(i8* %47, i32* %48, i8* %49)
  store %struct.TYPE_28__* %50, %struct.TYPE_28__** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ZFS_IMPORT_VERBATIM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %46
  %61 = load i32*, i32** %8, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* @B_FALSE, align 4
  %67 = call i32 @spa_configfile_set(%struct.TYPE_28__* %64, i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %60
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %70 = load i32, i32* @B_FALSE, align 4
  %71 = load i8*, i8** @B_TRUE, align 8
  %72 = call i32 @spa_write_cachefile(%struct.TYPE_28__* %69, i32 %70, i8* %71)
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %74 = load i32, i32* @ESC_ZFS_POOL_IMPORT, align 4
  %75 = call i32 @spa_event_notify(%struct.TYPE_28__* %73, i32* null, i32* null, i32 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %76)
  %78 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  store i32 0, i32* %5, align 4
  br label %377

79:                                               ; preds = %46
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @spa_activate(%struct.TYPE_28__* %80, i32 %81)
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %84 = call i32 @spa_async_suspend(%struct.TYPE_28__* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @zpool_get_load_policy(i32* %85, %struct.TYPE_26__* %13)
  %87 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %92, %79
  %95 = load i32, i32* @SPA_CONFIG_SRC_TRYIMPORT, align 4
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* @SPA_LOAD_RECOVER, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %94
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %104, i32 0, i32 6
  store i64 0, i64* %105, align 8
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  br label %114

108:                                              ; preds = %94
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i32 (i8*, i8*, ...) @zfs_dbgmsg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %109, i32 %112)
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %116 = load i64, i64* %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @spa_load_best(%struct.TYPE_28__* %115, i64 %116, i64 %118, i32 %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* @ZPOOL_CONFIG_LOAD_INFO, align 4
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @nvlist_add_nvlist(i32* %122, i32 %123, i32 %126)
  %128 = icmp eq i64 %127, 0
  %129 = zext i1 %128 to i32
  %130 = call i32 @VERIFY(i32 %129)
  %131 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %132 = load i32, i32* @SCL_ALL, align 4
  %133 = load i32, i32* @FTAG, align 4
  %134 = load i32, i32* @RW_WRITER, align 4
  %135 = call i32 @spa_config_enter(%struct.TYPE_28__* %131, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %152

141:                                              ; preds = %114
  %142 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @nvlist_free(i32* %145)
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 1
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %151 = call i32 @spa_load_spares(%struct.TYPE_28__* %150)
  br label %152

152:                                              ; preds = %141, %114
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @nvlist_free(i32* %162)
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 1
  store i32* null, i32** %166, align 8
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %168 = call i32 @spa_load_l2cache(%struct.TYPE_28__* %167)
  br label %169

169:                                              ; preds = %158, %152
  %170 = load i32*, i32** %7, align 8
  %171 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %172 = call i64 @nvlist_lookup_nvlist(i32* %170, i32 %171, i32** %17)
  %173 = icmp eq i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @VERIFY(i32 %174)
  %176 = load i32, i32* %16, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %180 = load i32*, i32** %17, align 8
  %181 = load i32, i32* @VDEV_ALLOC_SPARE, align 4
  %182 = call i32 @spa_validate_aux(%struct.TYPE_28__* %179, i32* %180, i64 -1, i32 %181)
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %178, %169
  %184 = load i32, i32* %16, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %188 = load i32*, i32** %17, align 8
  %189 = load i32, i32* @VDEV_ALLOC_L2CACHE, align 4
  %190 = call i32 @spa_validate_aux(%struct.TYPE_28__* %187, i32* %188, i64 -1, i32 %189)
  store i32 %190, i32* %16, align 4
  br label %191

191:                                              ; preds = %186, %183
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %193 = load i32, i32* @SCL_ALL, align 4
  %194 = load i32, i32* @FTAG, align 4
  %195 = call i32 @spa_config_exit(%struct.TYPE_28__* %192, i32 %193, i32 %194)
  %196 = load i32*, i32** %8, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %191
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = load i32, i32* @B_FALSE, align 4
  %202 = call i32 @spa_configfile_set(%struct.TYPE_28__* %199, i32* %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %191
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %203
  %207 = load i32*, i32** %8, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %227

209:                                              ; preds = %206
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %211 = call i64 @spa_writeable(%struct.TYPE_28__* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %209
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %215 = load i32*, i32** %8, align 8
  %216 = call i32 @spa_prop_set(%struct.TYPE_28__* %214, i32* %215)
  store i32 %216, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %213, %203
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %220 = call i32 @spa_unload(%struct.TYPE_28__* %219)
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %222 = call i32 @spa_deactivate(%struct.TYPE_28__* %221)
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %224 = call i32 @spa_remove(%struct.TYPE_28__* %223)
  %225 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %226 = load i32, i32* %16, align 4
  store i32 %226, i32* %5, align 4
  br label %377

227:                                              ; preds = %213, %209, %206
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %229 = call i32 @spa_async_resume(%struct.TYPE_28__* %228)
  %230 = load i32*, i32** %17, align 8
  %231 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %232 = call i64 @nvlist_lookup_nvlist_array(i32* %230, i32 %231, i32*** %18, i32* %20)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %288

234:                                              ; preds = %227
  %235 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %251

240:                                              ; preds = %234
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %246 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %247 = call i64 @nvlist_remove(i32* %244, i32 %245, i32 %246)
  %248 = icmp eq i64 %247, 0
  %249 = zext i1 %248 to i32
  %250 = call i32 @VERIFY(i32 %249)
  br label %261

251:                                              ; preds = %234
  %252 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %253 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %252, i32 0, i32 2
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 1
  %255 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %256 = load i32, i32* @KM_SLEEP, align 4
  %257 = call i64 @nvlist_alloc(i32** %254, i32 %255, i32 %256)
  %258 = icmp eq i64 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @VERIFY(i32 %259)
  br label %261

261:                                              ; preds = %251, %240
  %262 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 1
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %267 = load i32**, i32*** %18, align 8
  %268 = load i32, i32* %20, align 4
  %269 = call i64 @nvlist_add_nvlist_array(i32* %265, i32 %266, i32** %267, i32 %268)
  %270 = icmp eq i64 %269, 0
  %271 = zext i1 %270 to i32
  %272 = call i32 @VERIFY(i32 %271)
  %273 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %274 = load i32, i32* @SCL_ALL, align 4
  %275 = load i32, i32* @FTAG, align 4
  %276 = load i32, i32* @RW_WRITER, align 4
  %277 = call i32 @spa_config_enter(%struct.TYPE_28__* %273, i32 %274, i32 %275, i32 %276)
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %279 = call i32 @spa_load_spares(%struct.TYPE_28__* %278)
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %281 = load i32, i32* @SCL_ALL, align 4
  %282 = load i32, i32* @FTAG, align 4
  %283 = call i32 @spa_config_exit(%struct.TYPE_28__* %280, i32 %281, i32 %282)
  %284 = load i8*, i8** @B_TRUE, align 8
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 0
  store i8* %284, i8** %287, align 8
  br label %288

288:                                              ; preds = %261, %227
  %289 = load i32*, i32** %17, align 8
  %290 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %291 = call i64 @nvlist_lookup_nvlist_array(i32* %289, i32 %290, i32*** %19, i32* %21)
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %347

293:                                              ; preds = %288
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %295 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %310

299:                                              ; preds = %293
  %300 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i32 0, i32 1
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %305 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %306 = call i64 @nvlist_remove(i32* %303, i32 %304, i32 %305)
  %307 = icmp eq i64 %306, 0
  %308 = zext i1 %307 to i32
  %309 = call i32 @VERIFY(i32 %308)
  br label %320

310:                                              ; preds = %293
  %311 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %312, i32 0, i32 1
  %314 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %315 = load i32, i32* @KM_SLEEP, align 4
  %316 = call i64 @nvlist_alloc(i32** %313, i32 %314, i32 %315)
  %317 = icmp eq i64 %316, 0
  %318 = zext i1 %317 to i32
  %319 = call i32 @VERIFY(i32 %318)
  br label %320

320:                                              ; preds = %310, %299
  %321 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %326 = load i32**, i32*** %19, align 8
  %327 = load i32, i32* %21, align 4
  %328 = call i64 @nvlist_add_nvlist_array(i32* %324, i32 %325, i32** %326, i32 %327)
  %329 = icmp eq i64 %328, 0
  %330 = zext i1 %329 to i32
  %331 = call i32 @VERIFY(i32 %330)
  %332 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %333 = load i32, i32* @SCL_ALL, align 4
  %334 = load i32, i32* @FTAG, align 4
  %335 = load i32, i32* @RW_WRITER, align 4
  %336 = call i32 @spa_config_enter(%struct.TYPE_28__* %332, i32 %333, i32 %334, i32 %335)
  %337 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %338 = call i32 @spa_load_l2cache(%struct.TYPE_28__* %337)
  %339 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %340 = load i32, i32* @SCL_ALL, align 4
  %341 = load i32, i32* @FTAG, align 4
  %342 = call i32 @spa_config_exit(%struct.TYPE_28__* %339, i32 %340, i32 %341)
  %343 = load i8*, i8** @B_TRUE, align 8
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %345, i32 0, i32 0
  store i8* %343, i8** %346, align 8
  br label %347

347:                                              ; preds = %320, %288
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %349 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %348, i32 0, i32 3
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %354 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %353, i32 0, i32 2
  %355 = call i32 @spa_aux_check_removed(%struct.TYPE_27__* %354)
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %357 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %356, i32 0, i32 1
  %358 = call i32 @spa_aux_check_removed(%struct.TYPE_27__* %357)
  br label %359

359:                                              ; preds = %352, %347
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %361 = call i64 @spa_writeable(%struct.TYPE_28__* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %365 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %366 = call i32 @spa_config_update(%struct.TYPE_28__* %364, i32 %365)
  br label %367

367:                                              ; preds = %363, %359
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %369 = load i32, i32* @SPA_ASYNC_AUTOEXPAND, align 4
  %370 = call i32 @spa_async_request(%struct.TYPE_28__* %368, i32 %369)
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %372 = call i32 @spa_history_log_version(%struct.TYPE_28__* %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %373 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %374 = load i32, i32* @ESC_ZFS_POOL_IMPORT, align 4
  %375 = call i32 @spa_event_notify(%struct.TYPE_28__* %373, i32* null, i32* null, i32 %374)
  %376 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  store i32 0, i32* %5, align 4
  br label %377

377:                                              ; preds = %367, %218, %68, %29
  %378 = load i32, i32* %5, align 4
  ret i32 %378
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @spa_lookup(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_28__* @spa_add(i8*, i32*, i8*) #1

declare dso_local i32 @spa_configfile_set(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_28__*, i32, i8*) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_28__*, i32*, i32*, i32) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i8*, ...) #1

declare dso_local i32 @spa_activate(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spa_async_suspend(%struct.TYPE_28__*) #1

declare dso_local i32 @zpool_get_load_policy(i32*, %struct.TYPE_26__*) #1

declare dso_local i32 @spa_load_best(%struct.TYPE_28__*, i64, i64, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_28__*, i32, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @spa_load_spares(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_load_l2cache(%struct.TYPE_28__*) #1

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @spa_validate_aux(%struct.TYPE_28__*, i32*, i64, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i64 @spa_writeable(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_prop_set(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @spa_unload(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_deactivate(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_remove(%struct.TYPE_28__*) #1

declare dso_local i32 @spa_async_resume(%struct.TYPE_28__*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

declare dso_local i64 @nvlist_remove(i32*, i32, i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @spa_aux_check_removed(%struct.TYPE_27__*) #1

declare dso_local i32 @spa_config_update(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @spa_history_log_version(%struct.TYPE_28__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
