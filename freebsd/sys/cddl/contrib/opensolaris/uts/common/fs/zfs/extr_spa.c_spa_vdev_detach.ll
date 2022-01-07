; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_41__ = type { i32 }
%struct.TYPE_40__ = type { i64, i64, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64, i32, i64, i8*, i32, i8*, i32, %struct.TYPE_39__*, %struct.TYPE_39__*, i8*, %struct.TYPE_41__*, %struct.TYPE_39__** }

@B_FALSE = common dso_local global i8* null, align 8
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@ZFS_ERR_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4
@ZFS_ERR_DISCARDING_CHECKPOINT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@vdev_replacing_ops = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@vdev_spare_ops = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@SPA_VERSION_SPARES = common dso_local global i64 0, align 8
@vdev_mirror_ops = common dso_local global %struct.TYPE_41__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"/old\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@VDEV_LABEL_REMOVE = common dso_local global i32 0, align 4
@TXG_SIZE = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4
@ESC_ZFS_VDEV_REMOVE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"detach\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"vdev=%s\00", align 1
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_detach(%struct.TYPE_40__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_40__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_39__*, align 8
  %13 = alloca %struct.TYPE_39__*, align 8
  %14 = alloca %struct.TYPE_39__*, align 8
  %15 = alloca %struct.TYPE_39__*, align 8
  %16 = alloca %struct.TYPE_39__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_40__* %0, %struct.TYPE_40__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_39__*, %struct.TYPE_39__** %25, align 8
  store %struct.TYPE_39__* %26, %struct.TYPE_39__** %12, align 8
  %27 = load i8*, i8** @B_FALSE, align 8
  store i8* %27, i8** %17, align 8
  store i64 0, i64* %18, align 8
  %28 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %29 = call i32 @spa_writeable(%struct.TYPE_40__* %28)
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %32 = call i64 @spa_vdev_enter(%struct.TYPE_40__* %31)
  store i64 %32, i64* %10, align 8
  %33 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i8*, i8** @B_FALSE, align 8
  %36 = call %struct.TYPE_39__* @spa_lookup_by_guid(%struct.TYPE_40__* %33, i64 %34, i8* %35)
  store %struct.TYPE_39__* %36, %struct.TYPE_39__** %13, align 8
  %37 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %40 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %41 = call i64 @spa_feature_is_active(%struct.TYPE_40__* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %4
  %44 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %45 = call i64 @spa_has_checkpoint(%struct.TYPE_40__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %11, align 4
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %53, %struct.TYPE_39__* null, i64 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %429

57:                                               ; preds = %4
  %58 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %59 = icmp eq %struct.TYPE_39__* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @ENODEV, align 4
  %64 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %61, %struct.TYPE_39__* null, i64 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  br label %429

65:                                               ; preds = %57
  %66 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %66, i32 0, i32 10
  %68 = load %struct.TYPE_41__*, %struct.TYPE_41__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %65
  %73 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* @ENOTSUP, align 4
  %76 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %73, %struct.TYPE_39__* null, i64 %74, i32 %75)
  store i32 %76, i32* %5, align 4
  br label %429

77:                                               ; preds = %65
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_39__*, %struct.TYPE_39__** %79, align 8
  store %struct.TYPE_39__* %80, %struct.TYPE_39__** %14, align 8
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %91 = load i64, i64* %10, align 8
  %92 = load i32, i32* @EBUSY, align 4
  %93 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %90, %struct.TYPE_39__* null, i64 %91, i32 %92)
  store i32 %93, i32* %5, align 4
  br label %429

94:                                               ; preds = %86, %77
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %98, i32 0, i32 10
  %100 = load %struct.TYPE_41__*, %struct.TYPE_41__** %99, align 8
  %101 = icmp ne %struct.TYPE_41__* %100, @vdev_replacing_ops
  br i1 %101, label %102, label %112

102:                                              ; preds = %97
  %103 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %103, i32 0, i32 10
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %104, align 8
  %106 = icmp ne %struct.TYPE_41__* %105, @vdev_spare_ops
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i32, i32* @ENOTSUP, align 4
  %111 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %108, %struct.TYPE_39__* null, i64 %109, i32 %110)
  store i32 %111, i32* %5, align 4
  br label %429

112:                                              ; preds = %102, %97, %94
  %113 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %113, i32 0, i32 10
  %115 = load %struct.TYPE_41__*, %struct.TYPE_41__** %114, align 8
  %116 = icmp ne %struct.TYPE_41__* %115, @vdev_spare_ops
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %119 = call i64 @spa_version(%struct.TYPE_40__* %118)
  %120 = load i64, i64* @SPA_VERSION_SPARES, align 8
  %121 = icmp sge i64 %119, %120
  br label %122

122:                                              ; preds = %117, %112
  %123 = phi i1 [ true, %112 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  %125 = call i32 @ASSERT(i32 %124)
  %126 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %126, i32 0, i32 10
  %128 = load %struct.TYPE_41__*, %struct.TYPE_41__** %127, align 8
  %129 = icmp ne %struct.TYPE_41__* %128, @vdev_replacing_ops
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %132 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %131, i32 0, i32 10
  %133 = load %struct.TYPE_41__*, %struct.TYPE_41__** %132, align 8
  %134 = icmp ne %struct.TYPE_41__* %133, @vdev_mirror_ops
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %136, i32 0, i32 10
  %138 = load %struct.TYPE_41__*, %struct.TYPE_41__** %137, align 8
  %139 = icmp ne %struct.TYPE_41__* %138, @vdev_spare_ops
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %142 = load i64, i64* %10, align 8
  %143 = load i32, i32* @ENOTSUP, align 4
  %144 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %141, %struct.TYPE_39__* null, i64 %142, i32 %143)
  store i32 %144, i32* %5, align 4
  br label %429

145:                                              ; preds = %135, %130, %122
  %146 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %147 = call i64 @vdev_dtl_required(%struct.TYPE_39__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %145
  %150 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %151 = load i64, i64* %10, align 8
  %152 = load i32, i32* @EBUSY, align 4
  %153 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %150, %struct.TYPE_39__* null, i64 %151, i32 %152)
  store i32 %153, i32* %5, align 4
  br label %429

154:                                              ; preds = %145
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp sge i32 %157, 2
  %159 = zext i1 %158 to i32
  %160 = call i32 @ASSERT(i32 %159)
  %161 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %161, i32 0, i32 10
  %163 = load %struct.TYPE_41__*, %struct.TYPE_41__** %162, align 8
  %164 = icmp eq %struct.TYPE_41__* %163, @vdev_replacing_ops
  br i1 %164, label %165, label %237

165:                                              ; preds = %154
  %166 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %237

170:                                              ; preds = %165
  %171 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %171, i32 0, i32 3
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %237

175:                                              ; preds = %170
  %176 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %176, i32 0, i32 3
  %178 = load i8*, i8** %177, align 8
  %179 = call i64 @strlen(i8* %178)
  store i64 %179, i64* %20, align 8
  store i32 0, i32* %21, align 4
  br label %180

180:                                              ; preds = %233, %175
  %181 = load i32, i32* %21, align 4
  %182 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp slt i32 %181, %184
  br i1 %185, label %186, label %236

186:                                              ; preds = %180
  %187 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %187, i32 0, i32 11
  %189 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %188, align 8
  %190 = load i32, i32* %21, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %189, i64 %191
  %193 = load %struct.TYPE_39__*, %struct.TYPE_39__** %192, align 8
  store %struct.TYPE_39__* %193, %struct.TYPE_39__** %15, align 8
  %194 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %195 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %196 = icmp eq %struct.TYPE_39__* %194, %195
  br i1 %196, label %202, label %197

197:                                              ; preds = %186
  %198 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %199 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %198, i32 0, i32 3
  %200 = load i8*, i8** %199, align 8
  %201 = icmp eq i8* %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %197, %186
  br label %233

203:                                              ; preds = %197
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %205 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %204, i32 0, i32 3
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %207, i32 0, i32 3
  %209 = load i8*, i8** %208, align 8
  %210 = load i64, i64* %20, align 8
  %211 = call i64 @strncmp(i8* %206, i8* %209, i64 %210)
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %232

213:                                              ; preds = %203
  %214 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %214, i32 0, i32 3
  %216 = load i8*, i8** %215, align 8
  %217 = load i64, i64* %20, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  %219 = call i64 @strcmp(i8* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %213
  %222 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %223 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %222, i32 0, i32 3
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @spa_strfree(i8* %224)
  %226 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %226, i32 0, i32 3
  %228 = load i8*, i8** %227, align 8
  %229 = call i8* @spa_strdup(i8* %228)
  %230 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %231 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %230, i32 0, i32 3
  store i8* %229, i8** %231, align 8
  br label %236

232:                                              ; preds = %213, %203
  br label %233

233:                                              ; preds = %232, %202
  %234 = load i32, i32* %21, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %21, align 4
  br label %180

236:                                              ; preds = %221, %180
  br label %237

237:                                              ; preds = %236, %170, %165, %154
  %238 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %238, i32 0, i32 10
  %240 = load %struct.TYPE_41__*, %struct.TYPE_41__** %239, align 8
  %241 = icmp eq %struct.TYPE_41__* %240, @vdev_spare_ops
  br i1 %241, label %242, label %263

242:                                              ; preds = %237
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %244 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %263

247:                                              ; preds = %242
  %248 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %248, i32 0, i32 11
  %250 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %249, align 8
  %251 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %250, i64 %255
  %257 = load %struct.TYPE_39__*, %struct.TYPE_39__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %247
  %262 = load i8*, i8** @B_TRUE, align 8
  store i8* %262, i8** %17, align 8
  br label %263

263:                                              ; preds = %261, %247, %242, %237
  %264 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %265 = load i32, i32* @VDEV_LABEL_REMOVE, align 4
  %266 = call i32 @vdev_label_init(%struct.TYPE_39__* %264, i32 0, i32 %265)
  store i32 %266, i32* %11, align 4
  %267 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %268 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %269 = call i32 @vdev_remove_child(%struct.TYPE_39__* %267, %struct.TYPE_39__* %268)
  %270 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %271 = call i32 @vdev_compact_children(%struct.TYPE_39__* %270)
  %272 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %272, i32 0, i32 11
  %274 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %273, align 8
  %275 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %274, i64 %279
  %281 = load %struct.TYPE_39__*, %struct.TYPE_39__** %280, align 8
  store %struct.TYPE_39__* %281, %struct.TYPE_39__** %15, align 8
  %282 = load i8*, i8** %17, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %301

284:                                              ; preds = %263
  %285 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %286 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @ASSERT(i32 %287)
  %289 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %290 = call i32 @spa_spare_remove(%struct.TYPE_39__* %289)
  %291 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %292 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  store i64 %293, i64* %18, align 8
  %294 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %295 = load i64, i64* %18, align 8
  %296 = load i8*, i8** @B_TRUE, align 8
  %297 = call i32 @spa_vdev_remove(%struct.TYPE_40__* %294, i64 %295, i8* %296)
  %298 = load i8*, i8** @B_TRUE, align 8
  %299 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %299, i32 0, i32 9
  store i8* %298, i8** %300, align 8
  br label %301

301:                                              ; preds = %284, %263
  %302 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %318

306:                                              ; preds = %301
  %307 = load %struct.TYPE_39__*, %struct.TYPE_39__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %307, i32 0, i32 10
  %309 = load %struct.TYPE_41__*, %struct.TYPE_41__** %308, align 8
  %310 = icmp eq %struct.TYPE_41__* %309, @vdev_spare_ops
  br i1 %310, label %311, label %315

311:                                              ; preds = %306
  %312 = load i8*, i8** @B_FALSE, align 8
  %313 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %314 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %313, i32 0, i32 9
  store i8* %312, i8** %314, align 8
  br label %315

315:                                              ; preds = %311, %306
  %316 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %317 = call i32 @vdev_remove_parent(%struct.TYPE_39__* %316)
  br label %318

318:                                              ; preds = %315, %301
  %319 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %320 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %319, i32 0, i32 8
  %321 = load %struct.TYPE_39__*, %struct.TYPE_39__** %320, align 8
  store %struct.TYPE_39__* %321, %struct.TYPE_39__** %16, align 8
  %322 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %323 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %322, i32 0, i32 7
  %324 = load %struct.TYPE_39__*, %struct.TYPE_39__** %323, align 8
  %325 = load %struct.TYPE_39__*, %struct.TYPE_39__** %12, align 8
  %326 = icmp eq %struct.TYPE_39__* %324, %325
  %327 = zext i1 %326 to i32
  %328 = call i32 @ASSERT(i32 %327)
  %329 = load %struct.TYPE_39__*, %struct.TYPE_39__** %15, align 8
  %330 = call i32 @vdev_propagate_state(%struct.TYPE_39__* %329)
  %331 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %331, i32 0, i32 1
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %341

335:                                              ; preds = %318
  %336 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %337 = call i32 @vdev_reopen(%struct.TYPE_39__* %336)
  %338 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %339 = load i64, i64* %10, align 8
  %340 = call i32 @vdev_expand(%struct.TYPE_39__* %338, i64 %339)
  br label %341

341:                                              ; preds = %335, %318
  %342 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %343 = call i32 @vdev_config_dirty(%struct.TYPE_39__* %342)
  %344 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %344, i32 0, i32 3
  %346 = load i8*, i8** %345, align 8
  %347 = call i8* @spa_strdup(i8* %346)
  store i8* %347, i8** %19, align 8
  store i32 0, i32* %22, align 4
  br label %348

348:                                              ; preds = %358, %341
  %349 = load i32, i32* %22, align 4
  %350 = load i32, i32* @TXG_SIZE, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %361

352:                                              ; preds = %348
  %353 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %354 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %353, i32 0, i32 6
  %355 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %356 = load i32, i32* %22, align 4
  %357 = call i32 @txg_list_remove_this(i32* %354, %struct.TYPE_39__* %355, i32 %356)
  br label %358

358:                                              ; preds = %352
  %359 = load i32, i32* %22, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %22, align 4
  br label %348

361:                                              ; preds = %348
  %362 = load i8*, i8** @B_TRUE, align 8
  %363 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %364 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %363, i32 0, i32 5
  store i8* %362, i8** %364, align 8
  %365 = load %struct.TYPE_39__*, %struct.TYPE_39__** %16, align 8
  %366 = load i32, i32* @VDD_DTL, align 4
  %367 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %368 = load i64, i64* %10, align 8
  %369 = call i32 @vdev_dirty(%struct.TYPE_39__* %365, i32 %366, %struct.TYPE_39__* %367, i64 %368)
  %370 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %371 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %372 = load i32, i32* @ESC_ZFS_VDEV_REMOVE, align 4
  %373 = call i32 @spa_event_notify(%struct.TYPE_40__* %370, %struct.TYPE_39__* %371, i32* null, i32 %372)
  %374 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %375 = load i32, i32* @FTAG, align 4
  %376 = call i32 @spa_open_ref(%struct.TYPE_40__* %374, i32 %375)
  %377 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %378 = load %struct.TYPE_39__*, %struct.TYPE_39__** %13, align 8
  %379 = load i64, i64* %10, align 8
  %380 = call i32 @spa_vdev_exit(%struct.TYPE_40__* %377, %struct.TYPE_39__* %378, i64 %379, i32 0)
  store i32 %380, i32* %11, align 4
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %382 = load i8*, i8** %19, align 8
  %383 = call i32 @spa_history_log_internal(%struct.TYPE_40__* %381, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %382)
  %384 = load i8*, i8** %19, align 8
  %385 = call i32 @spa_strfree(i8* %384)
  %386 = load i8*, i8** %17, align 8
  %387 = icmp ne i8* %386, null
  br i1 %387, label %388, label %422

388:                                              ; preds = %361
  store %struct.TYPE_40__* null, %struct.TYPE_40__** %23, align 8
  %389 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  br label %390

390:                                              ; preds = %405, %404, %388
  %391 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %392 = call %struct.TYPE_40__* @spa_next(%struct.TYPE_40__* %391)
  store %struct.TYPE_40__* %392, %struct.TYPE_40__** %23, align 8
  %393 = icmp ne %struct.TYPE_40__* %392, null
  br i1 %393, label %394, label %418

394:                                              ; preds = %390
  %395 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %396 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %399 = icmp ne i64 %397, %398
  br i1 %399, label %404, label %400

400:                                              ; preds = %394
  %401 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %402 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %403 = icmp eq %struct.TYPE_40__* %401, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %400, %394
  br label %390

405:                                              ; preds = %400
  %406 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %407 = load i32, i32* @FTAG, align 4
  %408 = call i32 @spa_open_ref(%struct.TYPE_40__* %406, i32 %407)
  %409 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %410 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %411 = load i64, i64* %18, align 8
  %412 = load i8*, i8** @B_TRUE, align 8
  %413 = call i32 @spa_vdev_remove(%struct.TYPE_40__* %410, i64 %411, i8* %412)
  %414 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %415 = load %struct.TYPE_40__*, %struct.TYPE_40__** %23, align 8
  %416 = load i32, i32* @FTAG, align 4
  %417 = call i32 @spa_close(%struct.TYPE_40__* %415, i32 %416)
  br label %390

418:                                              ; preds = %390
  %419 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %420 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %421 = call i32 @spa_vdev_resilver_done(%struct.TYPE_40__* %420)
  br label %422

422:                                              ; preds = %418, %361
  %423 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %424 = load %struct.TYPE_40__*, %struct.TYPE_40__** %6, align 8
  %425 = load i32, i32* @FTAG, align 4
  %426 = call i32 @spa_close(%struct.TYPE_40__* %424, i32 %425)
  %427 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %428 = load i32, i32* %11, align 4
  store i32 %428, i32* %5, align 4
  br label %429

429:                                              ; preds = %422, %149, %140, %107, %89, %72, %60, %51
  %430 = load i32, i32* %5, align 4
  ret i32 %430
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_40__*) #1

declare dso_local i64 @spa_vdev_enter(%struct.TYPE_40__*) #1

declare dso_local %struct.TYPE_39__* @spa_lookup_by_guid(%struct.TYPE_40__*, i64, i8*) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_40__*, i32) #1

declare dso_local i64 @spa_has_checkpoint(%struct.TYPE_40__*) #1

declare dso_local i32 @spa_vdev_exit(%struct.TYPE_40__*, %struct.TYPE_39__*, i64, i32) #1

declare dso_local i64 @spa_version(%struct.TYPE_40__*) #1

declare dso_local i64 @vdev_dtl_required(%struct.TYPE_39__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @spa_strfree(i8*) #1

declare dso_local i8* @spa_strdup(i8*) #1

declare dso_local i32 @vdev_label_init(%struct.TYPE_39__*, i32, i32) #1

declare dso_local i32 @vdev_remove_child(%struct.TYPE_39__*, %struct.TYPE_39__*) #1

declare dso_local i32 @vdev_compact_children(%struct.TYPE_39__*) #1

declare dso_local i32 @spa_spare_remove(%struct.TYPE_39__*) #1

declare dso_local i32 @spa_vdev_remove(%struct.TYPE_40__*, i64, i8*) #1

declare dso_local i32 @vdev_remove_parent(%struct.TYPE_39__*) #1

declare dso_local i32 @vdev_propagate_state(%struct.TYPE_39__*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_39__*) #1

declare dso_local i32 @vdev_expand(%struct.TYPE_39__*, i64) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_39__*) #1

declare dso_local i32 @txg_list_remove_this(i32*, %struct.TYPE_39__*, i32) #1

declare dso_local i32 @vdev_dirty(%struct.TYPE_39__*, i32, %struct.TYPE_39__*, i64) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_40__*, %struct.TYPE_39__*, i32*, i32) #1

declare dso_local i32 @spa_open_ref(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_40__*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_40__* @spa_next(%struct.TYPE_40__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_close(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @spa_vdev_resilver_done(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
