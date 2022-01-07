; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i8*, i32, i32* }
%struct.TYPE_21__ = type { i8*, i32, i32* }
%struct.TYPE_23__ = type { i64 }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@ZFS_ERR_CHECKPOINT_EXISTS = common dso_local global i32 0, align 4
@ZFS_ERR_DISCARDING_CHECKPOINT = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vdev remove\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s vdev (%s) %s\00", align 1
@VDEV_TYPE_SPARE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@ESC_ZFS_VDEV_REMOVE_AUX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@VDEV_TYPE_L2CACHE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_remove(%struct.TYPE_24__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %20 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  store i32 %20, i32* %16, align 4
  store i32* null, i32** %17, align 8
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %22 = call i32 @spa_writeable(%struct.TYPE_24__* %21)
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load i32, i32* %16, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %28 = call i32 @spa_vdev_enter(%struct.TYPE_24__* %27)
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %26, %3
  %30 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %33 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %34 = call i64 @spa_feature_is_active(%struct.TYPE_24__* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %29
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %38 = call i64 @spa_has_checkpoint(%struct.TYPE_24__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @ZFS_ERR_CHECKPOINT_EXISTS, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @ZFS_ERR_DISCARDING_CHECKPOINT, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @spa_vdev_exit(%struct.TYPE_24__* %49, i32* null, i32 %50, i32 %51)
  store i32 %52, i32* %4, align 4
  br label %235

53:                                               ; preds = %44
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %4, align 4
  br label %235

55:                                               ; preds = %29
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i8*, i8** @B_FALSE, align 8
  %59 = call %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__* %56, i32 %57, i8* %58)
  store %struct.TYPE_23__* %59, %struct.TYPE_23__** %8, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %126

65:                                               ; preds = %55
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %71 = call i64 @nvlist_lookup_nvlist_array(i32 %69, i32 %70, i32*** %9, i32* %13)
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %65
  %74 = load i32**, i32*** %9, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32* @spa_nvlist_lookup_by_guid(i32** %74, i32 %75, i32 %76)
  store i32* %77, i32** %11, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %126

79:                                               ; preds = %73
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %81 = icmp eq %struct.TYPE_23__* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %82, %79
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %88 = call i8* @fnvlist_lookup_string(i32* %86, i32 %87)
  store i8* %88, i8** %18, align 8
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %91 = call i32 @spa_name(%struct.TYPE_24__* %90)
  %92 = load i32, i32* @VDEV_TYPE_SPARE, align 4
  %93 = load i8*, i8** %18, align 8
  %94 = call i32 @spa_history_log_internal(%struct.TYPE_24__* %89, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %92, i8* %93)
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %96 = icmp eq %struct.TYPE_23__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %85
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i8*, i8** @B_TRUE, align 8
  %101 = call %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__* %98, i32 %99, i8* %100)
  store %struct.TYPE_23__* %101, %struct.TYPE_23__** %8, align 8
  br label %102

102:                                              ; preds = %97, %85
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %105 = load i32, i32* @ESC_ZFS_VDEV_REMOVE_AUX, align 4
  %106 = call i32* @spa_event_create(%struct.TYPE_24__* %103, %struct.TYPE_23__* %104, i32* null, i32 %105)
  store i32* %106, i32** %17, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %112 = load i32**, i32*** %9, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = call i32 @spa_vdev_remove_aux(i32 %110, i32 %111, i32** %112, i32 %113, i32* %114)
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %117 = call i32 @spa_load_spares(%struct.TYPE_24__* %116)
  %118 = load i8*, i8** @B_TRUE, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  store i8* %118, i8** %121, align 8
  br label %125

122:                                              ; preds = %82
  %123 = load i32, i32* @EBUSY, align 4
  %124 = call i32 @SET_ERROR(i32 %123)
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %122, %102
  br label %212

126:                                              ; preds = %73, %65, %55
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %179

132:                                              ; preds = %126
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %138 = call i64 @nvlist_lookup_nvlist_array(i32 %136, i32 %137, i32*** %10, i32* %14)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %179

140:                                              ; preds = %132
  %141 = load i32**, i32*** %10, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %6, align 4
  %144 = call i32* @spa_nvlist_lookup_by_guid(i32** %141, i32 %142, i32 %143)
  store i32* %144, i32** %11, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %179

146:                                              ; preds = %140
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %149 = call i8* @fnvlist_lookup_string(i32* %147, i32 %148)
  store i8* %149, i8** %19, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %152 = call i32 @spa_name(%struct.TYPE_24__* %151)
  %153 = load i32, i32* @VDEV_TYPE_L2CACHE, align 4
  %154 = load i8*, i8** %19, align 8
  %155 = call i32 @spa_history_log_internal(%struct.TYPE_24__* %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %153, i8* %154)
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %157 = load i32, i32* %6, align 4
  %158 = load i8*, i8** @B_TRUE, align 8
  %159 = call %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__* %156, i32 %157, i8* %158)
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %8, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %161 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %162 = load i32, i32* @ESC_ZFS_VDEV_REMOVE_AUX, align 4
  %163 = call i32* @spa_event_create(%struct.TYPE_24__* %160, %struct.TYPE_23__* %161, i32* null, i32 %162)
  store i32* %163, i32** %17, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %169 = load i32**, i32*** %10, align 8
  %170 = load i32, i32* %14, align 4
  %171 = load i32*, i32** %11, align 8
  %172 = call i32 @spa_vdev_remove_aux(i32 %167, i32 %168, i32** %169, i32 %170, i32* %171)
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %174 = call i32 @spa_load_l2cache(%struct.TYPE_24__* %173)
  %175 = load i8*, i8** @B_TRUE, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  store i8* %175, i8** %178, align 8
  br label %211

179:                                              ; preds = %140, %132, %126
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %181 = icmp ne %struct.TYPE_23__* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %179
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %182
  %188 = load i32, i32* %16, align 4
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @ASSERT(i32 %191)
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %194 = call i32 @spa_vdev_remove_log(%struct.TYPE_23__* %193, i32* %12)
  store i32 %194, i32* %15, align 4
  br label %210

195:                                              ; preds = %182, %179
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %197 = icmp ne %struct.TYPE_23__* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i32 @ASSERT(i32 %202)
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %205 = call i32 @spa_vdev_remove_top(%struct.TYPE_23__* %204, i32* %12)
  store i32 %205, i32* %15, align 4
  br label %209

206:                                              ; preds = %195
  %207 = load i32, i32* @ENOENT, align 4
  %208 = call i32 @SET_ERROR(i32 %207)
  store i32 %208, i32* %15, align 4
  br label %209

209:                                              ; preds = %206, %198
  br label %210

210:                                              ; preds = %209, %187
  br label %211

211:                                              ; preds = %210, %146
  br label %212

212:                                              ; preds = %211, %125
  %213 = load i32, i32* %16, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %220, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %217 = load i32, i32* %12, align 4
  %218 = load i32, i32* %15, align 4
  %219 = call i32 @spa_vdev_exit(%struct.TYPE_24__* %216, i32* null, i32 %217, i32 %218)
  store i32 %219, i32* %15, align 4
  br label %220

220:                                              ; preds = %215, %212
  %221 = load i32*, i32** %17, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %233

223:                                              ; preds = %220
  %224 = load i32, i32* %15, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32*, i32** %17, align 8
  %228 = call i32 @spa_event_discard(i32* %227)
  br label %232

229:                                              ; preds = %223
  %230 = load i32*, i32** %17, align 8
  %231 = call i32 @spa_event_post(i32* %230)
  br label %232

232:                                              ; preds = %229, %226
  br label %233

233:                                              ; preds = %232, %220
  %234 = load i32, i32* %15, align 4
  store i32 %234, i32* %4, align 4
  br label %235

235:                                              ; preds = %233, %53, %48
  %236 = load i32, i32* %4, align 4
  ret i32 %236
}

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_vdev_enter(%struct.TYPE_24__*) #1

declare dso_local i64 @spa_feature_is_active(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @spa_has_checkpoint(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_vdev_exit(%struct.TYPE_24__*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_23__* @spa_lookup_by_guid(%struct.TYPE_24__*, i32, i8*) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32, i32, i32***, i32*) #1

declare dso_local i32* @spa_nvlist_lookup_by_guid(i32**, i32, i32) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_24__*, i8*, i32*, i8*, i32, i32, i8*) #1

declare dso_local i32 @spa_name(%struct.TYPE_24__*) #1

declare dso_local i32* @spa_event_create(%struct.TYPE_24__*, %struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @spa_vdev_remove_aux(i32, i32, i32**, i32, i32*) #1

declare dso_local i32 @spa_load_spares(%struct.TYPE_24__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @spa_load_l2cache(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_vdev_remove_log(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @spa_vdev_remove_top(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @spa_event_discard(i32*) #1

declare dso_local i32 @spa_event_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
