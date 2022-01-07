; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i8*, i8*, i32, %struct.TYPE_17__, i32, %struct.TYPE_21__*, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i8* }
%struct.TYPE_16__ = type { i32 }

@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@ZPOOL_PROP_NAME = common dso_local global i32 0, align 4
@ZPOOL_PROP_SIZE = common dso_local global i32 0, align 4
@ZPOOL_PROP_ALLOCATED = common dso_local global i32 0, align 4
@ZPOOL_PROP_FREE = common dso_local global i32 0, align 4
@ZPOOL_PROP_CHECKPOINT = common dso_local global i32 0, align 4
@ZPOOL_PROP_FRAGMENTATION = common dso_local global i32 0, align 4
@ZPOOL_PROP_EXPANDSZ = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@FREAD = common dso_local global i64 0, align 8
@ZPOOL_PROP_CAPACITY = common dso_local global i32 0, align 4
@ZPOOL_PROP_DEDUPRATIO = common dso_local global i32 0, align 4
@ZPOOL_PROP_HEALTH = common dso_local global i32 0, align 4
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@ZPROP_SRC_DEFAULT = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ZPOOL_PROP_FREEING = common dso_local global i32 0, align 4
@ZPOOL_PROP_LEAKED = common dso_local global i32 0, align 4
@ZPOOL_PROP_GUID = common dso_local global i32 0, align 4
@ZPOOL_PROP_COMMENT = common dso_local global i32 0, align 4
@ZPOOL_PROP_ALTROOT = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_BLOCKS = common dso_local global i32 0, align 4
@ZPOOL_PROP_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@zfs_max_recordsize = common dso_local global i32 0, align 4
@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@SPA_FEATURE_LARGE_DNODE = common dso_local global i32 0, align 4
@ZPOOL_PROP_MAXDNODESIZE = common dso_local global i32 0, align 4
@DNODE_MAX_SIZE = common dso_local global i32 0, align 4
@DNODE_MIN_SIZE = common dso_local global i32 0, align 4
@ZPOOL_PROP_CACHEFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@spa_config_path = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i32**)* @spa_prop_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_prop_get_config(%struct.TYPE_19__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 6
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %5, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %6, align 8
  %20 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = call i32* @spa_normal_class(%struct.TYPE_19__* %21)
  store i32* %22, i32** %13, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 4
  %25 = call i32 @MUTEX_HELD(i32* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %144

29:                                               ; preds = %2
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = call i32* @spa_normal_class(%struct.TYPE_19__* %30)
  %32 = call i32 @metaslab_class_get_alloc(i32* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = call i32* @spa_normal_class(%struct.TYPE_19__* %33)
  %35 = call i32 @metaslab_class_get_space(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32**, i32*** %4, align 8
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @ZPOOL_PROP_NAME, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %40 = call i8* @spa_name(%struct.TYPE_19__* %39)
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @spa_prop_add_list(i32* %37, i32 %38, i8* %40, i32 0, i32 %41)
  %43 = load i32**, i32*** %4, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @ZPOOL_PROP_SIZE, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @spa_prop_add_list(i32* %44, i32 %45, i8* null, i32 %46, i32 %47)
  %49 = load i32**, i32*** %4, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @ZPOOL_PROP_ALLOCATED, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @spa_prop_add_list(i32* %50, i32 %51, i8* null, i32 %52, i32 %53)
  %55 = load i32**, i32*** %4, align 8
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @ZPOOL_PROP_FREE, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @spa_prop_add_list(i32* %56, i32 %57, i8* null, i32 %60, i32 %61)
  %63 = load i32**, i32*** %4, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @ZPOOL_PROP_CHECKPOINT, align 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @spa_prop_add_list(i32* %64, i32 %65, i8* null, i32 %69, i32 %70)
  %72 = load i32**, i32*** %4, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @ZPOOL_PROP_FRAGMENTATION, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @metaslab_class_fragmentation(i32* %75)
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @spa_prop_add_list(i32* %73, i32 %74, i8* null, i32 %76, i32 %77)
  %79 = load i32**, i32*** %4, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* @ZPOOL_PROP_EXPANDSZ, align 4
  %82 = load i32*, i32** %13, align 8
  %83 = call i32 @metaslab_class_expandable_space(i32* %82)
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @spa_prop_add_list(i32* %80, i32 %81, i8* null, i32 %83, i32 %84)
  %86 = load i32**, i32*** %4, align 8
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = call i64 @spa_mode(%struct.TYPE_19__* %89)
  %91 = load i64, i64* @FREAD, align 8
  %92 = icmp eq i64 %90, %91
  %93 = zext i1 %92 to i32
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @spa_prop_add_list(i32* %87, i32 %88, i8* null, i32 %93, i32 %94)
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %29
  br label %104

99:                                               ; preds = %29
  %100 = load i32, i32* %8, align 4
  %101 = mul nsw i32 %100, 100
  %102 = load i32, i32* %7, align 4
  %103 = sdiv i32 %101, %102
  br label %104

104:                                              ; preds = %99, %98
  %105 = phi i32 [ 0, %98 ], [ %103, %99 ]
  store i32 %105, i32* %9, align 4
  %106 = load i32**, i32*** %4, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* @ZPOOL_PROP_CAPACITY, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @spa_prop_add_list(i32* %107, i32 %108, i8* null, i32 %109, i32 %110)
  %112 = load i32**, i32*** %4, align 8
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ZPOOL_PROP_DEDUPRATIO, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = call i32 @ddt_get_pool_dedup_ratio(%struct.TYPE_19__* %115)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @spa_prop_add_list(i32* %113, i32 %114, i8* null, i32 %116, i32 %117)
  %119 = load i32**, i32*** %4, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* @ZPOOL_PROP_HEALTH, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @spa_prop_add_list(i32* %120, i32 %121, i8* null, i32 %124, i32 %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = call i32 @spa_version(%struct.TYPE_19__* %127)
  store i32 %128, i32* %10, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %131 = call i32 @zpool_prop_default_numeric(i32 %130)
  %132 = icmp eq i32 %129, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %104
  %134 = load i32, i32* @ZPROP_SRC_DEFAULT, align 4
  store i32 %134, i32* %11, align 4
  br label %137

135:                                              ; preds = %104
  %136 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %136, i32* %11, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = load i32**, i32*** %4, align 8
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @spa_prop_add_list(i32* %139, i32 %140, i8* null, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %137, %2
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %146 = icmp ne %struct.TYPE_21__* %145, null
  br i1 %146, label %147, label %194

147:                                              ; preds = %144
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %164

152:                                              ; preds = %147
  %153 = load i32**, i32*** %4, align 8
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @ZPOOL_PROP_FREEING, align 4
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = call %struct.TYPE_16__* @dsl_dir_phys(i32* %158)
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @spa_prop_add_list(i32* %154, i32 %155, i8* null, i32 %161, i32 %162)
  br label %170

164:                                              ; preds = %147
  %165 = load i32**, i32*** %4, align 8
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @ZPOOL_PROP_FREEING, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @spa_prop_add_list(i32* %166, i32 %167, i8* null, i32 0, i32 %168)
  br label %170

170:                                              ; preds = %164, %152
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = load i32**, i32*** %4, align 8
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @ZPOOL_PROP_LEAKED, align 4
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call %struct.TYPE_16__* @dsl_dir_phys(i32* %181)
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @spa_prop_add_list(i32* %177, i32 %178, i8* null, i32 %184, i32 %185)
  br label %193

187:                                              ; preds = %170
  %188 = load i32**, i32*** %4, align 8
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* @ZPOOL_PROP_LEAKED, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @spa_prop_add_list(i32* %189, i32 %190, i8* null, i32 0, i32 %191)
  br label %193

193:                                              ; preds = %187, %175
  br label %194

194:                                              ; preds = %193, %144
  %195 = load i32**, i32*** %4, align 8
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* @ZPOOL_PROP_GUID, align 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %199 = call i32 @spa_guid(%struct.TYPE_19__* %198)
  %200 = load i32, i32* %11, align 4
  %201 = call i32 @spa_prop_add_list(i32* %196, i32 %197, i8* null, i32 %199, i32 %200)
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %194
  %207 = load i32**, i32*** %4, align 8
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* @ZPOOL_PROP_COMMENT, align 4
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %214 = call i32 @spa_prop_add_list(i32* %208, i32 %209, i8* %212, i32 0, i32 %213)
  br label %215

215:                                              ; preds = %206, %194
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load i32**, i32*** %4, align 8
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* @ZPOOL_PROP_ALTROOT, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %228 = call i32 @spa_prop_add_list(i32* %222, i32 %223, i8* %226, i32 0, i32 %227)
  br label %229

229:                                              ; preds = %220, %215
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %231 = load i32, i32* @SPA_FEATURE_LARGE_BLOCKS, align 4
  %232 = call i64 @spa_feature_is_enabled(%struct.TYPE_19__* %230, i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %229
  %235 = load i32**, i32*** %4, align 8
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* @ZPOOL_PROP_MAXBLOCKSIZE, align 4
  %238 = load i32, i32* @zfs_max_recordsize, align 4
  %239 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %240 = call i32 @MIN(i32 %238, i32 %239)
  %241 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %242 = call i32 @spa_prop_add_list(i32* %236, i32 %237, i8* null, i32 %240, i32 %241)
  br label %250

243:                                              ; preds = %229
  %244 = load i32**, i32*** %4, align 8
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* @ZPOOL_PROP_MAXBLOCKSIZE, align 4
  %247 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %248 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %249 = call i32 @spa_prop_add_list(i32* %245, i32 %246, i8* null, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %243, %234
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %252 = load i32, i32* @SPA_FEATURE_LARGE_DNODE, align 4
  %253 = call i64 @spa_feature_is_enabled(%struct.TYPE_19__* %251, i32 %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %262

255:                                              ; preds = %250
  %256 = load i32**, i32*** %4, align 8
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* @ZPOOL_PROP_MAXDNODESIZE, align 4
  %259 = load i32, i32* @DNODE_MAX_SIZE, align 4
  %260 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %261 = call i32 @spa_prop_add_list(i32* %257, i32 %258, i8* null, i32 %259, i32 %260)
  br label %269

262:                                              ; preds = %250
  %263 = load i32**, i32*** %4, align 8
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* @ZPOOL_PROP_MAXDNODESIZE, align 4
  %266 = load i32, i32* @DNODE_MIN_SIZE, align 4
  %267 = load i32, i32* @ZPROP_SRC_NONE, align 4
  %268 = call i32 @spa_prop_add_list(i32* %264, i32 %265, i8* null, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %262, %255
  %270 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %270, i32 0, i32 2
  %272 = call %struct.TYPE_20__* @list_head(i32* %271)
  store %struct.TYPE_20__* %272, %struct.TYPE_20__** %12, align 8
  %273 = icmp ne %struct.TYPE_20__* %272, null
  br i1 %273, label %274, label %303

274:                                              ; preds = %269
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = icmp eq i8* %277, null
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = load i32**, i32*** %4, align 8
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %283 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %284 = call i32 @spa_prop_add_list(i32* %281, i32 %282, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i32 %283)
  br label %302

285:                                              ; preds = %274
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* @spa_config_path, align 4
  %290 = call i64 @strcmp(i8* %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %285
  %293 = load i32**, i32*** %4, align 8
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %300 = call i32 @spa_prop_add_list(i32* %294, i32 %295, i8* %298, i32 0, i32 %299)
  br label %301

301:                                              ; preds = %292, %285
  br label %302

302:                                              ; preds = %301, %279
  br label %303

303:                                              ; preds = %302, %269
  ret void
}

declare dso_local i32* @spa_normal_class(%struct.TYPE_19__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @metaslab_class_get_alloc(i32*) #1

declare dso_local i32 @metaslab_class_get_space(i32*) #1

declare dso_local i32 @spa_prop_add_list(i32*, i32, i8*, i32, i32) #1

declare dso_local i8* @spa_name(%struct.TYPE_19__*) #1

declare dso_local i32 @metaslab_class_fragmentation(i32*) #1

declare dso_local i32 @metaslab_class_expandable_space(i32*) #1

declare dso_local i64 @spa_mode(%struct.TYPE_19__*) #1

declare dso_local i32 @ddt_get_pool_dedup_ratio(%struct.TYPE_19__*) #1

declare dso_local i32 @spa_version(%struct.TYPE_19__*) #1

declare dso_local i32 @zpool_prop_default_numeric(i32) #1

declare dso_local %struct.TYPE_16__* @dsl_dir_phys(i32*) #1

declare dso_local i32 @spa_guid(%struct.TYPE_19__*) #1

declare dso_local i64 @spa_feature_is_enabled(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_20__* @list_head(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
