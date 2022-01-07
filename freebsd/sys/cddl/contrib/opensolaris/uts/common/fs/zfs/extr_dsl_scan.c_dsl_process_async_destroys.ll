; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_process_async_destroys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_process_async_destroys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32*, i32, i32*, i32*, i32, i32, i64, i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, i64, i32, i8*, i64, i32* }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32 }

@zfs_free_bpobj_enabled = common dso_local global i64 0, align 8
@SPA_VERSION_DEADLISTS = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i8* null, align 8
@zfs_free_min_time_ms = common dso_local global i32 0, align 4
@ZIO_FLAG_MUSTSUCCEED = common dso_local global i32 0, align 4
@dsl_scan_free_block_cb = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error %u from bpobj_iterate()\00", align 1
@SPA_FEATURE_ASYNC_DESTROY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error %u from traverse_dataset_destroyed()\00", align 1
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_BPTREE_OBJ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"freed %llu blocks in %llums from free_bpobj/bptree txg %llu; err=%d\00", align 1
@zfs_free_leak_on_eio = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@LEAK_DIR_NAME = common dso_local global i32 0, align 4
@DD_USED_HEAD = common dso_local global i32 0, align 4
@DMU_POOL_OBSOLETE_BPOBJ = common dso_local global i32 0, align 4
@SPA_FEATURE_OBSOLETE_COUNTS = common dso_local global i32 0, align 4
@zfs_obsolete_min_time_ms = common dso_local global i32 0, align 4
@dsl_scan_obsolete_block_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_23__*)* @dsl_process_async_destroys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_process_async_destroys(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 9
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  store %struct.TYPE_21__* %11, %struct.TYPE_21__** %7, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i64 @spa_suspend_async_destroy(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %422

19:                                               ; preds = %2
  %20 = load i64, i64* @zfs_free_bpobj_enabled, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = call i64 @spa_version(i32* %23)
  %25 = load i64, i64* @SPA_VERSION_DEADLISTS, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %22
  %28 = load i8*, i8** @B_FALSE, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 4
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @zfs_free_min_time_ms, align 4
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* @ZIO_FLAG_MUSTSUCCEED, align 4
  %36 = call i8* @zio_root(i32* %34, i32* null, i32* null, i32 %35)
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 6
  store i32* %37, i32** %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 8
  %42 = load i32, i32* @dsl_scan_free_block_cb, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %45 = call i32 @bpobj_iterate(i32* %41, i32 %42, %struct.TYPE_21__* %43, %struct.TYPE_23__* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @zio_wait(i32* %48)
  %50 = call i32 @VERIFY0(i32 %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 6
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %27
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @ERESTART, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @zfs_panic_recover(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %59, %55, %27
  br label %63

63:                                               ; preds = %62, %22, %19
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %179

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %69 = call i32 @spa_feature_is_active(i32* %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %179

71:                                               ; preds = %66
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i8*, i8** @B_TRUE, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @ZIO_FLAG_MUSTSUCCEED, align 4
  %81 = call i8* @zio_root(i32* %79, i32* null, i32* null, i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 6
  store i32* %82, i32** %84, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = load i8*, i8** @B_TRUE, align 8
  %92 = load i32, i32* @dsl_scan_free_block_cb, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %95 = call i32 @bptree_iterate(i32 %87, i64 %90, i8* %91, i32 %92, %struct.TYPE_21__* %93, %struct.TYPE_23__* %94)
  store i32 %95, i32* %6, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @zio_wait(i32* %98)
  %100 = call i32 @VERIFY0(i32 %99)
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 6
  store i32* null, i32** %102, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @EIO, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %71
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ECKSUM, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %71
  store i32 0, i32* %6, align 4
  br label %122

111:                                              ; preds = %106
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @ERESTART, align 4
  %117 = icmp ne i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @zfs_panic_recover(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %114, %111
  br label %122

122:                                              ; preds = %121, %110
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 7
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @bptree_is_empty(i32 %125, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %170

131:                                              ; preds = %122
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %135 = call i32 @spa_feature_decr(i32* %132, i32 %133, %struct.TYPE_23__* %134)
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* @SPA_FEATURE_ASYNC_DESTROY, align 4
  %138 = call i32 @spa_feature_is_active(i32* %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i32 @ASSERT(i32 %141)
  %143 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %147 = load i32, i32* @DMU_POOL_BPTREE_OBJ, align 4
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %149 = call i32 @zap_remove(i32 %145, i32 %146, i32 %147, %struct.TYPE_23__* %148)
  %150 = call i32 @VERIFY0(i32 %149)
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %158 = call i32 @bptree_free(i32 %153, i64 %156, %struct.TYPE_23__* %157)
  %159 = call i32 @VERIFY0(i32 %158)
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 7
  store i64 0, i64* %161, align 8
  %162 = load i8*, i8** @B_FALSE, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load i8*, i8** @B_FALSE, align 8
  %167 = ptrtoint i8* %166 to i32
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %178

170:                                              ; preds = %122
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %170, %131
  br label %179

179:                                              ; preds = %178, %66, %63
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %179
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = call i64 (...) @gethrtime()
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = sub nsw i64 %189, %192
  %194 = call i64 @NSEC2MSEC(i64 %193)
  %195 = trunc i64 %194 to i32
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = trunc i64 %198 to i32
  %200 = load i32, i32* %6, align 4
  %201 = call i32 @zfs_dbgmsg(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %188, i32 %195, i32 %199, i32 %200)
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 2
  store i64 0, i64* %203, align 8
  %204 = load i32*, i32** %8, align 8
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @ddt_sync(i32* %204, i64 %207)
  br label %209

209:                                              ; preds = %184, %179
  %210 = load i32, i32* %6, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = load i32, i32* %6, align 4
  store i32 %213, i32* %3, align 4
  br label %422

214:                                              ; preds = %209
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %219, label %331

219:                                              ; preds = %214
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %331, label %224

224:                                              ; preds = %219
  %225 = load i64, i64* @zfs_free_leak_on_eio, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %331

227:                                              ; preds = %224
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %230)
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %251, label %235

235:                                              ; preds = %227
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %238)
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %251, label %243

243:                                              ; preds = %235
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %246)
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %331

251:                                              ; preds = %243, %235, %227
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %279

256:                                              ; preds = %251
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 5
  %259 = load i32, i32* @RW_WRITER, align 4
  %260 = load i32, i32* @FTAG, align 4
  %261 = call i32 @rrw_enter(i32* %258, i32 %259, i32 %260)
  %262 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @LEAK_DIR_NAME, align 4
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %268 = call i32 @dsl_dir_create_sync(%struct.TYPE_22__* %262, i32 %265, i32 %266, %struct.TYPE_23__* %267)
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %270 = load i32, i32* @LEAK_DIR_NAME, align 4
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 4
  %273 = call i32 @dsl_pool_open_special_dir(%struct.TYPE_22__* %269, i32 %270, i32** %272)
  %274 = call i32 @VERIFY0(i32 %273)
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 5
  %277 = load i32, i32* @FTAG, align 4
  %278 = call i32 @rrw_exit(i32* %276, i32 %277)
  br label %279

279:                                              ; preds = %256, %251
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 4
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* @DD_USED_HEAD, align 4
  %284 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %286)
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 3
  %292 = load i32*, i32** %291, align 8
  %293 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %292)
  %294 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %298)
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %303 = call i32 @dsl_dir_diduse_space(i32* %282, i32 %283, i32 %289, i32 %295, i32 %301, %struct.TYPE_23__* %302)
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* @DD_USED_HEAD, align 4
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 3
  %310 = load i32*, i32** %309, align 8
  %311 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %310)
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 0, %313
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 3
  %317 = load i32*, i32** %316, align 8
  %318 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %317)
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = sub nsw i32 0, %320
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 3
  %324 = load i32*, i32** %323, align 8
  %325 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %324)
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = sub nsw i32 0, %327
  %329 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %330 = call i32 @dsl_dir_diduse_space(i32* %306, i32 %307, i32 %314, i32 %321, i32 %328, %struct.TYPE_23__* %329)
  br label %331

331:                                              ; preds = %279, %243, %224, %219, %214
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 3
  %334 = load i32*, i32** %333, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %363

336:                                              ; preds = %331
  %337 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %363, label %341

341:                                              ; preds = %336
  %342 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %343 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %342, i32 0, i32 3
  %344 = load i32*, i32** %343, align 8
  %345 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %344)
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @ASSERT0(i32 %347)
  %349 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i32 0, i32 3
  %351 = load i32*, i32** %350, align 8
  %352 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %351)
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @ASSERT0(i32 %354)
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 3
  %358 = load i32*, i32** %357, align 8
  %359 = call %struct.TYPE_20__* @dsl_dir_phys(i32* %358)
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @ASSERT0(i32 %361)
  br label %363

363:                                              ; preds = %341, %336, %331
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 0
  %366 = call i64 @bpobj_is_open(i32* %365)
  %367 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %371 = load i32, i32* @DMU_POOL_OBSOLETE_BPOBJ, align 4
  %372 = call i64 @zap_contains(i32 %369, i32 %370, i32 %371)
  %373 = icmp eq i64 0, %372
  %374 = zext i1 %373 to i32
  %375 = call i32 @EQUIV(i64 %366, i32 %374)
  %376 = load i32, i32* %6, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %421

378:                                              ; preds = %363
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 0
  %381 = call i64 @bpobj_is_open(i32* %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %421

383:                                              ; preds = %378
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 1
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* @SPA_FEATURE_OBSOLETE_COUNTS, align 4
  %388 = call i32 @spa_feature_is_active(i32* %386, i32 %387)
  %389 = call i32 @ASSERT(i32 %388)
  %390 = load i8*, i8** @B_FALSE, align 8
  %391 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %391, i32 0, i32 4
  store i8* %390, i8** %392, align 8
  %393 = load i32, i32* @zfs_obsolete_min_time_ms, align 4
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 3
  store i32 %393, i32* %395, align 8
  %396 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %397 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %396, i32 0, i32 0
  %398 = load i32, i32* @dsl_scan_obsolete_block_cb, align 4
  %399 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %400 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %401 = call i32 @bpobj_iterate(i32* %397, i32 %398, %struct.TYPE_21__* %399, %struct.TYPE_23__* %400)
  store i32 %401, i32* %6, align 4
  %402 = load i32, i32* %6, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %411

404:                                              ; preds = %383
  %405 = load i32, i32* %6, align 4
  %406 = load i32, i32* @ERESTART, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %411

408:                                              ; preds = %404
  %409 = load i32, i32* %6, align 4
  %410 = call i32 @zfs_panic_recover(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %409)
  br label %411

411:                                              ; preds = %408, %404, %383
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %412, i32 0, i32 0
  %414 = call i64 @bpobj_is_empty(i32* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %419 = call i32 @dsl_pool_destroy_obsolete_bpobj(%struct.TYPE_22__* %417, %struct.TYPE_23__* %418)
  br label %420

420:                                              ; preds = %416, %411
  br label %421

421:                                              ; preds = %420, %378, %363
  store i32 0, i32* %3, align 4
  br label %422

422:                                              ; preds = %421, %212, %18
  %423 = load i32, i32* %3, align 4
  ret i32 %423
}

declare dso_local i64 @spa_suspend_async_destroy(i32*) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i8* @zio_root(i32*, i32*, i32*, i32) #1

declare dso_local i32 @bpobj_iterate(i32*, i32, %struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @zfs_panic_recover(i8*, i32) #1

declare dso_local i32 @spa_feature_is_active(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @bptree_iterate(i32, i64, i8*, i32, %struct.TYPE_21__*, %struct.TYPE_23__*) #1

declare dso_local i64 @bptree_is_empty(i32, i64) #1

declare dso_local i32 @spa_feature_decr(i32*, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @zap_remove(i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @bptree_free(i32, i64, %struct.TYPE_23__*) #1

declare dso_local i32 @zfs_dbgmsg(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @NSEC2MSEC(i64) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @ddt_sync(i32*, i64) #1

declare dso_local %struct.TYPE_20__* @dsl_dir_phys(i32*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @dsl_dir_create_sync(%struct.TYPE_22__*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @dsl_pool_open_special_dir(%struct.TYPE_22__*, i32, i32**) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @dsl_dir_diduse_space(i32*, i32, i32, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @EQUIV(i64, i32) #1

declare dso_local i64 @bpobj_is_open(i32*) #1

declare dso_local i64 @zap_contains(i32, i32, i32) #1

declare dso_local i64 @bpobj_is_empty(i32*) #1

declare dso_local i32 @dsl_pool_destroy_obsolete_bpobj(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
