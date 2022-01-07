; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_get_props.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_get_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i32*, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_CHECKSUM_SALT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"unable to retrieve checksum salt from MOS [error=%d]\00", align 1
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DMU_POOL_SYNC_BPOBJ = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"error opening deferred-frees bpobj [error=%d]\00", align 1
@DMU_POOL_DEFLATE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@DMU_POOL_CREATION_VERSION = common dso_local global i32 0, align 4
@DMU_POOL_ERRLOG_LAST = common dso_local global i32 0, align 4
@DMU_POOL_ERRLOG_SCRUB = common dso_local global i32 0, align 4
@DMU_POOL_HISTORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to retrieve MOS config\00", align 1
@DMU_POOL_VDEV_ZAP_MAP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS = common dso_local global i32 0, align 4
@AVZ_ACTION_INITIALIZE = common dso_local global i32 0, align 4
@AVZ_ACTION_DESTROY = common dso_local global i32 0, align 4
@ZPOOL_PROP_DELEGATION = common dso_local global i32 0, align 4
@DMU_POOL_PROPS = common dso_local global i32 0, align 4
@ZPOOL_PROP_BOOTFS = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOREPLACE = common dso_local global i32 0, align 4
@ZPOOL_PROP_FAILUREMODE = common dso_local global i32 0, align 4
@ZPOOL_PROP_AUTOEXPAND = common dso_local global i32 0, align 4
@ZPOOL_PROP_DEDUPDITTO = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_CONTINUE = common dso_local global i64 0, align 8
@SPA_LOAD_TRYIMPORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"forcing failmode to 'continue' as some top level vdevs are missing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @spa_ld_get_props to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_get_props(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 15
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 18
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %16 = load i32, i32* @DMU_POOL_CHECKSUM_SALT, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 20
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @zap_lookup(i32 %14, i32 %15, i32 %16, i32 1, i32 4, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENOENT, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 20
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @random_get_pseudo_bytes(i32 %29, i32 4)
  br label %43

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %40 = load i32, i32* @EIO, align 4
  %41 = call i32 @spa_vdev_err(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %311

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = load i32, i32* @DMU_POOL_SYNC_BPOBJ, align 4
  %46 = load i32, i32* @B_TRUE, align 4
  %47 = call i32 @spa_dir_prop(%struct.TYPE_10__* %44, i32 %45, i64* %5, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %52 = load i32, i32* @EIO, align 4
  %53 = call i32 @spa_vdev_err(i32* %50, i32 %51, i32 %52)
  store i32 %53, i32* %2, align 4
  br label %311

54:                                               ; preds = %43
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 19
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 18
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @bpobj_open(i32* %56, i32 %59, i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %65, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %70 = load i32, i32* @EIO, align 4
  %71 = call i32 @spa_vdev_err(i32* %68, i32 %69, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %311

72:                                               ; preds = %54
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = load i32, i32* @DMU_POOL_DEFLATE, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = call i32 @spa_dir_prop(%struct.TYPE_10__* %73, i32 %74, i64* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %72
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @ENOENT, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %88 = load i32, i32* @EIO, align 4
  %89 = call i32 @spa_vdev_err(i32* %86, i32 %87, i32 %88)
  store i32 %89, i32* %2, align 4
  br label %311

90:                                               ; preds = %81, %72
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = load i32, i32* @DMU_POOL_CREATION_VERSION, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = call i32 @spa_dir_prop(%struct.TYPE_10__* %91, i32 %92, i64* %94, i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @ENOENT, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %106 = load i32, i32* @EIO, align 4
  %107 = call i32 @spa_vdev_err(i32* %104, i32 %105, i32 %106)
  store i32 %107, i32* %2, align 4
  br label %311

108:                                              ; preds = %99, %90
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = load i32, i32* @DMU_POOL_ERRLOG_LAST, align 4
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 2
  %113 = load i32, i32* @B_FALSE, align 4
  %114 = call i32 @spa_dir_prop(%struct.TYPE_10__* %109, i32 %110, i64* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @ENOENT, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %124 = load i32, i32* @EIO, align 4
  %125 = call i32 @spa_vdev_err(i32* %122, i32 %123, i32 %124)
  store i32 %125, i32* %2, align 4
  br label %311

126:                                              ; preds = %117, %108
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %128 = load i32, i32* @DMU_POOL_ERRLOG_SCRUB, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 3
  %131 = load i32, i32* @B_FALSE, align 4
  %132 = call i32 @spa_dir_prop(%struct.TYPE_10__* %127, i32 %128, i64* %130, i32 %131)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %126
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @ENOENT, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %135
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %142 = load i32, i32* @EIO, align 4
  %143 = call i32 @spa_vdev_err(i32* %140, i32 %141, i32 %142)
  store i32 %143, i32* %2, align 4
  br label %311

144:                                              ; preds = %135, %126
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = load i32, i32* @DMU_POOL_HISTORY, align 4
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 4
  %149 = load i32, i32* @B_FALSE, align 4
  %150 = call i32 @spa_dir_prop(%struct.TYPE_10__* %145, i32 %146, i64* %148, i32 %149)
  store i32 %150, i32* %4, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %144
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @ENOENT, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %160 = load i32, i32* @EIO, align 4
  %161 = call i32 @spa_vdev_err(i32* %158, i32 %159, i32 %160)
  store i32 %161, i32* %2, align 4
  br label %311

162:                                              ; preds = %153, %144
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 17
  %166 = load i32, i32* %165, align 4
  %167 = call i64 @load_nvlist(%struct.TYPE_10__* %163, i32 %166, i32** %7)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %162
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %174 = load i32, i32* @EIO, align 4
  %175 = call i32 @spa_vdev_err(i32* %172, i32 %173, i32 %174)
  store i32 %175, i32* %2, align 4
  br label %311

176:                                              ; preds = %162
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %178 = load i32, i32* @DMU_POOL_VDEV_ZAP_MAP, align 4
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 5
  %181 = load i32, i32* @B_FALSE, align 4
  %182 = call i32 @spa_dir_prop(%struct.TYPE_10__* %177, i32 %178, i64* %180, i32 %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @ENOENT, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %176
  %187 = load i32*, i32** %7, align 8
  %188 = load i32, i32* @ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS, align 4
  %189 = call i32 @nvlist_exists(i32* %187, i32 %188)
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = call i32 @VERIFY(i32 %192)
  %194 = load i32, i32* @AVZ_ACTION_INITIALIZE, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 16
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 15
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @vdev_count_verify_zaps(i32* %199)
  %201 = call i32 @ASSERT0(i32 %200)
  br label %226

202:                                              ; preds = %176
  %203 = load i32, i32* %4, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i32*, i32** %6, align 8
  %207 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %208 = load i32, i32* @EIO, align 4
  %209 = call i32 @spa_vdev_err(i32* %206, i32 %207, i32 %208)
  store i32 %209, i32* %2, align 4
  br label %311

210:                                              ; preds = %202
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* @ZPOOL_CONFIG_HAS_PER_VDEV_ZAPS, align 4
  %213 = call i32 @nvlist_exists(i32* %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* @AVZ_ACTION_DESTROY, align 4
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 16
  store i32 %216, i32* %218, align 8
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 15
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @vdev_count_verify_zaps(i32* %221)
  %223 = call i32 @ASSERT0(i32 %222)
  br label %224

224:                                              ; preds = %215, %210
  br label %225

225:                                              ; preds = %224
  br label %226

226:                                              ; preds = %225, %186
  %227 = load i32*, i32** %7, align 8
  %228 = call i32 @nvlist_free(i32* %227)
  %229 = load i32, i32* @ZPOOL_PROP_DELEGATION, align 4
  %230 = call i64 @zpool_prop_default_numeric(i32 %229)
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %231, i32 0, i32 6
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %234 = load i32, i32* @DMU_POOL_PROPS, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 7
  %237 = load i32, i32* @B_FALSE, align 4
  %238 = call i32 @spa_dir_prop(%struct.TYPE_10__* %233, i32 %234, i64* %236, i32 %237)
  store i32 %238, i32* %4, align 4
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %226
  %242 = load i32, i32* %4, align 4
  %243 = load i32, i32* @ENOENT, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i32*, i32** %6, align 8
  %247 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %248 = load i32, i32* @EIO, align 4
  %249 = call i32 @spa_vdev_err(i32* %246, i32 %247, i32 %248)
  store i32 %249, i32* %2, align 4
  br label %311

250:                                              ; preds = %241, %226
  %251 = load i32, i32* %4, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %287

253:                                              ; preds = %250
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %255 = load i32, i32* @ZPOOL_PROP_BOOTFS, align 4
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 8
  %258 = call i32 @spa_prop_find(%struct.TYPE_10__* %254, i32 %255, i64* %257)
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %260 = load i32, i32* @ZPOOL_PROP_AUTOREPLACE, align 4
  %261 = call i32 @spa_prop_find(%struct.TYPE_10__* %259, i32 %260, i64* %8)
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %263 = load i32, i32* @ZPOOL_PROP_DELEGATION, align 4
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 6
  %266 = call i32 @spa_prop_find(%struct.TYPE_10__* %262, i32 %263, i64* %265)
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %268 = load i32, i32* @ZPOOL_PROP_FAILUREMODE, align 4
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 9
  %271 = call i32 @spa_prop_find(%struct.TYPE_10__* %267, i32 %268, i64* %270)
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %273 = load i32, i32* @ZPOOL_PROP_AUTOEXPAND, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 10
  %276 = call i32 @spa_prop_find(%struct.TYPE_10__* %272, i32 %273, i64* %275)
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %278 = load i32, i32* @ZPOOL_PROP_DEDUPDITTO, align 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 11
  %281 = call i32 @spa_prop_find(%struct.TYPE_10__* %277, i32 %278, i64* %280)
  %282 = load i64, i64* %8, align 8
  %283 = icmp ne i64 %282, 0
  %284 = zext i1 %283 to i32
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 12
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %253, %250
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 13
  %290 = load i64, i64* %289, align 8
  %291 = icmp sgt i64 %290, 0
  br i1 %291, label %292, label %310

292:                                              ; preds = %287
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 9
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @ZIO_FAILURE_MODE_CONTINUE, align 8
  %297 = icmp ne i64 %295, %296
  br i1 %297, label %298, label %310

298:                                              ; preds = %292
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 14
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @SPA_LOAD_TRYIMPORT, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %306 = call i32 @spa_load_note(%struct.TYPE_10__* %305, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0))
  %307 = load i64, i64* @ZIO_FAILURE_MODE_CONTINUE, align 8
  %308 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 9
  store i64 %307, i64* %309, align 8
  br label %310

310:                                              ; preds = %304, %298, %292, %287
  store i32 0, i32* %2, align 4
  br label %311

311:                                              ; preds = %310, %245, %205, %169, %157, %139, %121, %103, %85, %64, %49, %34
  %312 = load i32, i32* %2, align 4
  ret i32 %312
}

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @random_get_pseudo_bytes(i32, i32) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

declare dso_local i32 @spa_dir_prop(%struct.TYPE_10__*, i32, i64*, i32) #1

declare dso_local i32 @bpobj_open(i32*, i32, i64) #1

declare dso_local i64 @load_nvlist(%struct.TYPE_10__*, i32, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @nvlist_exists(i32*, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @vdev_count_verify_zaps(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i64 @zpool_prop_default_numeric(i32) #1

declare dso_local i32 @spa_prop_find(%struct.TYPE_10__*, i32, i64*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
