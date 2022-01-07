; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i32 }
%struct.TYPE_40__ = type { i64, i32, i32*, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { i32, i32, i64, i64, i8*, i8*, i32, %struct.TYPE_38__*, %struct.TYPE_38__*, i32, %struct.TYPE_39__*, i64, i32, i64, %struct.TYPE_38__** }

@B_FALSE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@ZFS_ERR_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4
@ZFS_ERR_DISCARDING_CHECKPOINT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@VDEV_ALLOC_ATTACH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vdev_mirror_ops = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@vdev_root_ops = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@vdev_spare_ops = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@vdev_replacing_ops = common dso_local global %struct.TYPE_39__ zeroinitializer, align 4
@SPA_VERSION_MULTI_REPLACE = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@EDOM = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@TXG_CONCURRENT_STATES = common dso_local global i64 0, align 8
@DTL_MISSING = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i64 0, align 8
@ESC_ZFS_VDEV_SPARE = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4
@ESC_ZFS_BOOTFS_VDEV_ATTACH = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_ATTACH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"vdev attach\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s vdev=%s %s vdev=%s\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"spare in\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"attach\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"to\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_attach(%struct.TYPE_40__* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_38__*, align 8
  %13 = alloca %struct.TYPE_38__*, align 8
  %14 = alloca %struct.TYPE_38__*, align 8
  %15 = alloca %struct.TYPE_38__*, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca %struct.TYPE_39__*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_38__*, %struct.TYPE_38__** %24, align 8
  store %struct.TYPE_38__* %25, %struct.TYPE_38__** %12, align 8
  %26 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %27 = call i32 @spa_writeable(%struct.TYPE_40__* %26)
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %30 = call i64 @spa_vdev_enter(%struct.TYPE_40__* %29)
  store i64 %30, i64* %10, align 8
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* @B_FALSE, align 4
  %34 = call %struct.TYPE_38__* @spa_lookup_by_guid(%struct.TYPE_40__* %31, i64 %32, i32 %33)
  store %struct.TYPE_38__* %34, %struct.TYPE_38__** %13, align 8
  %35 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %38 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %39 = call i64 @spa_feature_is_active(%struct.TYPE_40__* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %4
  %42 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %43 = call i64 @spa_has_checkpoint(%struct.TYPE_40__* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %22, align 4
  %51 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %52 = load i64, i64* %10, align 8
  %53 = load i32, i32* %22, align 4
  %54 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %51, %struct.TYPE_38__* null, i64 %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %474

55:                                               ; preds = %4
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @EBUSY, align 4
  %64 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %61, %struct.TYPE_38__* null, i64 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %474

65:                                               ; preds = %55
  %66 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %67 = icmp eq %struct.TYPE_38__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32, i32* @ENODEV, align 4
  %72 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %69, %struct.TYPE_38__* null, i64 %70, i32 %71)
  store i32 %72, i32* %5, align 4
  br label %474

73:                                               ; preds = %65
  %74 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %74, i32 0, i32 10
  %76 = load %struct.TYPE_39__*, %struct.TYPE_39__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i32, i32* @ENOTSUP, align 4
  %84 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %81, %struct.TYPE_38__* null, i64 %82, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %474

85:                                               ; preds = %73
  %86 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_38__*, %struct.TYPE_38__** %87, align 8
  store %struct.TYPE_38__* %88, %struct.TYPE_38__** %16, align 8
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* @VDEV_ALLOC_ATTACH, align 4
  %92 = call i32 @spa_config_parse(%struct.TYPE_40__* %89, %struct.TYPE_38__** %15, i32* %90, i32* null, i32 0, i32 %91)
  store i32 %92, i32* %22, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i32, i32* @EINVAL, align 4
  %98 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %95, %struct.TYPE_38__* null, i64 %96, i32 %97)
  store i32 %98, i32* %5, align 4
  br label %474

99:                                               ; preds = %85
  %100 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 1
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %106 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* @EINVAL, align 4
  %109 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %105, %struct.TYPE_38__* %106, i64 %107, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %474

110:                                              ; preds = %99
  %111 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %111, i32 0, i32 14
  %113 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_38__*, %struct.TYPE_38__** %113, i64 0
  %115 = load %struct.TYPE_38__*, %struct.TYPE_38__** %114, align 8
  store %struct.TYPE_38__* %115, %struct.TYPE_38__** %14, align 8
  %116 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %116, i32 0, i32 10
  %118 = load %struct.TYPE_39__*, %struct.TYPE_39__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %110
  %123 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i32, i32* @EINVAL, align 4
  %127 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %123, %struct.TYPE_38__* %124, i64 %125, i32 %126)
  store i32 %127, i32* %5, align 4
  br label %474

128:                                              ; preds = %110
  %129 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %130 = load i64, i64* %10, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @vdev_create(%struct.TYPE_38__* %129, i64 %130, i32 %131)
  store i32 %132, i32* %22, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %136 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i32, i32* %22, align 4
  %139 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %135, %struct.TYPE_38__* %136, i64 %137, i32 %138)
  store i32 %139, i32* %5, align 4
  br label %474

140:                                              ; preds = %128
  %141 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_38__*, %struct.TYPE_38__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %143, i32 0, i32 13
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %140
  %148 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %154 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %155 = load i64, i64* %10, align 8
  %156 = load i32, i32* @ENOTSUP, align 4
  %157 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %153, %struct.TYPE_38__* %154, i64 %155, i32 %156)
  store i32 %157, i32* %5, align 4
  br label %474

158:                                              ; preds = %147, %140
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %178, label %161

161:                                              ; preds = %158
  %162 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %163 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %162, i32 0, i32 10
  %164 = load %struct.TYPE_39__*, %struct.TYPE_39__** %163, align 8
  %165 = icmp ne %struct.TYPE_39__* %164, @vdev_mirror_ops
  br i1 %165, label %166, label %177

166:                                              ; preds = %161
  %167 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %167, i32 0, i32 10
  %169 = load %struct.TYPE_39__*, %struct.TYPE_39__** %168, align 8
  %170 = icmp ne %struct.TYPE_39__* %169, @vdev_root_ops
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %174 = load i64, i64* %10, align 8
  %175 = load i32, i32* @ENOTSUP, align 4
  %176 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %172, %struct.TYPE_38__* %173, i64 %174, i32 %175)
  store i32 %176, i32* %5, align 4
  br label %474

177:                                              ; preds = %166, %161
  store %struct.TYPE_39__* @vdev_mirror_ops, %struct.TYPE_39__** %18, align 8
  br label %245

178:                                              ; preds = %158
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 10
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %180, align 8
  %182 = icmp eq %struct.TYPE_39__* %181, @vdev_spare_ops
  br i1 %182, label %183, label %201

183:                                              ; preds = %178
  %184 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %183
  %189 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %190 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %191 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %190, i32 0, i32 12
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @spa_has_spare(%struct.TYPE_40__* %189, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %201, label %195

195:                                              ; preds = %188
  %196 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %197 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %198 = load i64, i64* %10, align 8
  %199 = load i32, i32* @ENOTSUP, align 4
  %200 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %196, %struct.TYPE_38__* %197, i64 %198, i32 %199)
  store i32 %200, i32* %5, align 4
  br label %474

201:                                              ; preds = %188, %183, %178
  %202 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %203 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %202, i32 0, i32 10
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %203, align 8
  %205 = icmp eq %struct.TYPE_39__* %204, @vdev_replacing_ops
  br i1 %205, label %206, label %217

206:                                              ; preds = %201
  %207 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %208 = call i64 @spa_version(%struct.TYPE_40__* %207)
  %209 = load i64, i64* @SPA_VERSION_MULTI_REPLACE, align 8
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %214 = load i64, i64* %10, align 8
  %215 = load i32, i32* @ENOTSUP, align 4
  %216 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %212, %struct.TYPE_38__* %213, i64 %214, i32 %215)
  store i32 %216, i32* %5, align 4
  br label %474

217:                                              ; preds = %206, %201
  %218 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %219 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %218, i32 0, i32 10
  %220 = load %struct.TYPE_39__*, %struct.TYPE_39__** %219, align 8
  %221 = icmp eq %struct.TYPE_39__* %220, @vdev_spare_ops
  br i1 %221, label %222, label %236

222:                                              ; preds = %217
  %223 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %225, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %222
  %231 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %232 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %233 = load i64, i64* %10, align 8
  %234 = load i32, i32* @ENOTSUP, align 4
  %235 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %231, %struct.TYPE_38__* %232, i64 %233, i32 %234)
  store i32 %235, i32* %5, align 4
  br label %474

236:                                              ; preds = %222, %217
  br label %237

237:                                              ; preds = %236
  %238 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  store %struct.TYPE_39__* @vdev_spare_ops, %struct.TYPE_39__** %18, align 8
  br label %244

243:                                              ; preds = %237
  store %struct.TYPE_39__* @vdev_replacing_ops, %struct.TYPE_39__** %18, align 8
  br label %244

244:                                              ; preds = %243, %242
  br label %245

245:                                              ; preds = %244, %177
  %246 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %250 = call i64 @vdev_get_min_asize(%struct.TYPE_38__* %249)
  %251 = icmp slt i64 %248, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %245
  %253 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %254 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %255 = load i64, i64* %10, align 8
  %256 = load i32, i32* @EOVERFLOW, align 4
  %257 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %253, %struct.TYPE_38__* %254, i64 %255, i32 %256)
  store i32 %257, i32* %5, align 4
  br label %474

258:                                              ; preds = %245
  %259 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %259, i32 0, i32 3
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %262, i32 0, i32 8
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %261, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %258
  %269 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %270 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %271 = load i64, i64* %10, align 8
  %272 = load i32, i32* @EDOM, align 4
  %273 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %269, %struct.TYPE_38__* %270, i64 %271, i32 %272)
  store i32 %273, i32* %5, align 4
  br label %474

274:                                              ; preds = %258
  %275 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %275, i32 0, i32 4
  %277 = load i8*, i8** %276, align 8
  %278 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %278, i32 0, i32 4
  %280 = load i8*, i8** %279, align 8
  %281 = call i64 @strcmp(i8* %277, i8* %280)
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %316

283:                                              ; preds = %274
  %284 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %284, i32 0, i32 4
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @spa_strfree(i8* %286)
  %288 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %288, i32 0, i32 4
  %290 = load i8*, i8** %289, align 8
  %291 = call i64 @strlen(i8* %290)
  %292 = add nsw i64 %291, 5
  %293 = load i32, i32* @KM_SLEEP, align 4
  %294 = call i8* @kmem_alloc(i64 %292, i32 %293)
  %295 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %295, i32 0, i32 4
  store i8* %294, i8** %296, align 8
  %297 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %297, i32 0, i32 4
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %301 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %300, i32 0, i32 4
  %302 = load i8*, i8** %301, align 8
  %303 = call i32 @sprintf(i8* %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %302, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %304 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %305 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %304, i32 0, i32 5
  %306 = load i8*, i8** %305, align 8
  %307 = icmp ne i8* %306, null
  br i1 %307, label %308, label %315

308:                                              ; preds = %283
  %309 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %310 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %309, i32 0, i32 5
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @spa_strfree(i8* %311)
  %313 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %314 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %313, i32 0, i32 5
  store i8* null, i8** %314, align 8
  br label %315

315:                                              ; preds = %308, %283
  br label %316

316:                                              ; preds = %315, %274
  %317 = load i64, i64* %10, align 8
  %318 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %318, i32 0, i32 11
  store i64 %317, i64* %319, align 8
  %320 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %321 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %320, i32 0, i32 10
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %321, align 8
  %323 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %324 = icmp ne %struct.TYPE_39__* %322, %323
  br i1 %324, label %325, label %329

325:                                              ; preds = %316
  %326 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %327 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %328 = call %struct.TYPE_38__* @vdev_add_parent(%struct.TYPE_38__* %326, %struct.TYPE_39__* %327)
  store %struct.TYPE_38__* %328, %struct.TYPE_38__** %16, align 8
  br label %329

329:                                              ; preds = %325, %316
  %330 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %331 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %330, i32 0, i32 8
  %332 = load %struct.TYPE_38__*, %struct.TYPE_38__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %332, i32 0, i32 7
  %334 = load %struct.TYPE_38__*, %struct.TYPE_38__** %333, align 8
  %335 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %336 = icmp eq %struct.TYPE_38__* %334, %335
  %337 = zext i1 %336 to i32
  %338 = call i32 @ASSERT(i32 %337)
  %339 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %340 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %339, i32 0, i32 10
  %341 = load %struct.TYPE_39__*, %struct.TYPE_39__** %340, align 8
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %18, align 8
  %343 = icmp eq %struct.TYPE_39__* %341, %342
  %344 = zext i1 %343 to i32
  %345 = call i32 @ASSERT(i32 %344)
  %346 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %346, i32 0, i32 7
  %348 = load %struct.TYPE_38__*, %struct.TYPE_38__** %347, align 8
  %349 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %350 = icmp eq %struct.TYPE_38__* %348, %349
  %351 = zext i1 %350 to i32
  %352 = call i32 @ASSERT(i32 %351)
  %353 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %354 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %355 = call i32 @vdev_remove_child(%struct.TYPE_38__* %353, %struct.TYPE_38__* %354)
  %356 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %357 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %360 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %359, i32 0, i32 6
  store i32 %358, i32* %360, align 8
  %361 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %362 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %361, i32 0, i32 9
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %365 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %364, i32 0, i32 9
  store i32 %363, i32* %365, align 8
  %366 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %367 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %368 = call i32 @vdev_add_child(%struct.TYPE_38__* %366, %struct.TYPE_38__* %367)
  %369 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %370 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %369, i32 0, i32 8
  %371 = load %struct.TYPE_38__*, %struct.TYPE_38__** %370, align 8
  store %struct.TYPE_38__* %371, %struct.TYPE_38__** %17, align 8
  %372 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %373 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %372, i32 0, i32 8
  %374 = load %struct.TYPE_38__*, %struct.TYPE_38__** %373, align 8
  %375 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %376 = icmp eq %struct.TYPE_38__* %374, %375
  %377 = zext i1 %376 to i32
  %378 = call i32 @ASSERT(i32 %377)
  %379 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %380 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %379, i32 0, i32 7
  %381 = load %struct.TYPE_38__*, %struct.TYPE_38__** %380, align 8
  %382 = load %struct.TYPE_38__*, %struct.TYPE_38__** %12, align 8
  %383 = icmp eq %struct.TYPE_38__* %381, %382
  %384 = zext i1 %383 to i32
  %385 = call i32 @ASSERT(i32 %384)
  %386 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %387 = call i32 @vdev_config_dirty(%struct.TYPE_38__* %386)
  %388 = load i64, i64* %10, align 8
  %389 = load i64, i64* @TXG_CONCURRENT_STATES, align 8
  %390 = add nsw i64 %388, %389
  store i64 %390, i64* %11, align 8
  %391 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %392 = load i32, i32* @DTL_MISSING, align 4
  %393 = load i64, i64* @TXG_INITIAL, align 8
  %394 = load i64, i64* %11, align 8
  %395 = load i64, i64* @TXG_INITIAL, align 8
  %396 = sub nsw i64 %394, %395
  %397 = call i32 @vdev_dtl_dirty(%struct.TYPE_38__* %391, i32 %392, i64 %393, i64 %396)
  %398 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %399 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %409

402:                                              ; preds = %329
  %403 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %404 = call i32 @spa_spare_activate(%struct.TYPE_38__* %403)
  %405 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %406 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %407 = load i32, i32* @ESC_ZFS_VDEV_SPARE, align 4
  %408 = call i32 @spa_event_notify(%struct.TYPE_40__* %405, %struct.TYPE_38__* %406, i32* null, i32 %407)
  br label %409

409:                                              ; preds = %402, %329
  %410 = load %struct.TYPE_38__*, %struct.TYPE_38__** %13, align 8
  %411 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %410, i32 0, i32 4
  %412 = load i8*, i8** %411, align 8
  %413 = call i8* @spa_strdup(i8* %412)
  store i8* %413, i8** %19, align 8
  %414 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %415 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %414, i32 0, i32 4
  %416 = load i8*, i8** %415, align 8
  %417 = call i8* @spa_strdup(i8* %416)
  store i8* %417, i8** %20, align 8
  %418 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* %21, align 4
  %421 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %422 = load i32, i32* @VDD_DTL, align 4
  %423 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %424 = load i64, i64* %10, align 8
  %425 = call i32 @vdev_dirty(%struct.TYPE_38__* %421, i32 %422, %struct.TYPE_38__* %423, i64 %424)
  %426 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = load i64, i64* %11, align 8
  %430 = call i32 @dsl_resilver_restart(i32 %428, i64 %429)
  %431 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %440

435:                                              ; preds = %409
  %436 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %437 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %438 = load i32, i32* @ESC_ZFS_BOOTFS_VDEV_ATTACH, align 4
  %439 = call i32 @spa_event_notify(%struct.TYPE_40__* %436, %struct.TYPE_38__* %437, i32* null, i32 %438)
  br label %440

440:                                              ; preds = %435, %409
  %441 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %442 = load %struct.TYPE_38__*, %struct.TYPE_38__** %14, align 8
  %443 = load i32, i32* @ESC_ZFS_VDEV_ATTACH, align 4
  %444 = call i32 @spa_event_notify(%struct.TYPE_40__* %441, %struct.TYPE_38__* %442, i32* null, i32 %443)
  %445 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %446 = load %struct.TYPE_38__*, %struct.TYPE_38__** %15, align 8
  %447 = load i64, i64* %11, align 8
  %448 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %445, %struct.TYPE_38__* %446, i64 %447, i32 0)
  %449 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %450 = load i32, i32* %9, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %440
  %453 = load i32, i32* %21, align 4
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %452
  br label %461

456:                                              ; preds = %452, %440
  %457 = load i32, i32* %9, align 4
  %458 = icmp ne i32 %457, 0
  %459 = zext i1 %458 to i64
  %460 = select i1 %458, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  br label %461

461:                                              ; preds = %456, %455
  %462 = phi i8* [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), %455 ], [ %460, %456 ]
  %463 = load i8*, i8** %20, align 8
  %464 = load i32, i32* %9, align 4
  %465 = icmp ne i32 %464, 0
  %466 = zext i1 %465 to i64
  %467 = select i1 %465, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %468 = load i8*, i8** %19, align 8
  %469 = call i32 @spa_history_log_internal(%struct.TYPE_40__* %449, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %462, i8* %463, i8* %467, i8* %468)
  %470 = load i8*, i8** %19, align 8
  %471 = call i32 @spa_strfree(i8* %470)
  %472 = load i8*, i8** %20, align 8
  %473 = call i32 @spa_strfree(i8* %472)
  store i32 0, i32* %5, align 4
  br label %474

474:                                              ; preds = %461, %268, %252, %230, %211, %195, %171, %152, %134, %122, %104, %94, %80, %68, %60, %49
  %475 = load i32, i32* %5, align 4
  ret i32 %475
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_40__*) #1

declare dso_local i64 @spa_vdev_enter(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_38__* @spa_lookup_by_guid(%struct.TYPE_40__*, i64, i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @spa_has_checkpoint(%struct.TYPE_40__*) #1

declare dso_local i32 @spa_vdev_exit(%struct.TYPE_40__*, %struct.TYPE_38__*, i64, i32) #1

declare dso_local i32 @spa_config_parse(%struct.TYPE_40__*, %struct.TYPE_38__**, i32*, i32*, i32, i32) #1

declare dso_local i32 @vdev_create(%struct.TYPE_38__*, i64, i32) #1

declare dso_local i32 @spa_has_spare(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_40__*) #1

declare dso_local i64 @vdev_get_min_asize(%struct.TYPE_38__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @spa_strfree(i8*) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_38__* @vdev_add_parent(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @vdev_remove_child(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @vdev_add_child(%struct.TYPE_38__*, %struct.TYPE_38__*) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_38__*) #1

declare dso_local i32 @vdev_dtl_dirty(%struct.TYPE_38__*, i32, i64, i64) #1

declare dso_local i32 @spa_spare_activate(%struct.TYPE_38__*) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_40__*, %struct.TYPE_38__*, i32*, i32) #1

declare dso_local i8* @spa_strdup(i8*) #1

declare dso_local i32 @vdev_dirty(%struct.TYPE_38__*, i32, %struct.TYPE_38__*, i64) #1

declare dso_local i32 @dsl_resilver_restart(i32, i64) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_40__*, i8*, i32*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
