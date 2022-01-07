; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__, i32*, i8*, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i64, i32, i64, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8*, i8* }
%struct.TYPE_27__ = type { i32 }

@dsl_scan_done.old_names = internal global [9 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [15 x i8] c"scrub_bookmark\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"scrub_ddt_bookmark\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"scrub_ddt_class_max\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"scrub_queue\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"scrub_min_txg\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"scrub_max_txg\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"scrub_func\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"scrub_errors\00", align 1
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DSF_SCRUB_PAUSED = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@DSS_FINISHED = common dso_local global i32 0, align 4
@DSS_CANCELED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"scan aborted, restarting\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"errors=%llu\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"scan cancelled\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"scan done\00", align 1
@SPA_FEATURE_POOL_CHECKPOINT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ESC_ZFS_RESILVER_FINISH = common dso_local global i32 0, align 4
@ESC_ZFS_SCRUB_FINISH = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)* @dsl_scan_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_scan_done(%struct.TYPE_25__* %0, i64 %1, %struct.TYPE_27__* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %6, align 8
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  store %struct.TYPE_26__* %12, %struct.TYPE_26__** %7, align 8
  %13 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %33, %3
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [9 x i8*], [9 x i8*]* @dsl_scan_done.old_names, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [9 x i8*], [9 x i8*]* @dsl_scan_done.old_names, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %32 = call i32 @zap_remove(i32 %25, i32 %26, i8* %30, %struct.TYPE_27__* %31)
  br label %33

33:                                               ; preds = %22
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %51 = call i32 @dmu_object_free(i32 %45, i64 %49, %struct.TYPE_27__* %50)
  %52 = call i32 @VERIFY0(i32 %51)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %42, %36
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %58 = call i32 @scan_ds_queue_clear(%struct.TYPE_25__* %57)
  %59 = load i32, i32* @DSF_SCRUB_PAUSED, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %60
  store i32 %65, i32* %63, align 8
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %67 = call i32 @dsl_scan_is_running(%struct.TYPE_25__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %56
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 @ASSERT(i32 %75)
  br label %208

77:                                               ; preds = %56
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %84 = call i32 @scan_io_queues_destroy(%struct.TYPE_25__* %83)
  %85 = load i8*, i8** @B_FALSE, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @taskq_destroy(i32* %95)
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %97, i32 0, i32 1
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %92, %82
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @DSS_FINISHED, align 4
  br label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @DSS_CANCELED, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 4
  store i32 %108, i32* %111, align 4
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %114 = call i64 @dsl_scan_restarting(%struct.TYPE_25__* %112, %struct.TYPE_27__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %120 = call i32 @spa_get_errlog_size(%struct.TYPE_24__* %119)
  %121 = call i32 @spa_history_log_internal(%struct.TYPE_24__* %117, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_27__* %118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %120)
  br label %138

122:                                              ; preds = %107
  %123 = load i64, i64* %5, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = call i32 @spa_get_errlog_size(%struct.TYPE_24__* %128)
  %130 = call i32 @spa_history_log_internal(%struct.TYPE_24__* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.TYPE_27__* %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %129)
  br label %137

131:                                              ; preds = %122
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %133 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %135 = call i32 @spa_get_errlog_size(%struct.TYPE_24__* %134)
  %136 = call i32 @spa_history_log_internal(%struct.TYPE_24__* %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), %struct.TYPE_27__* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %131, %125
  br label %138

138:                                              ; preds = %137, %116
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %140 = call i64 @DSL_SCAN_IS_SCRUB_RESILVER(%struct.TYPE_25__* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %197

142:                                              ; preds = %138
  %143 = load i8*, i8** @B_FALSE, align 8
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load i8*, i8** @B_FALSE, align 8
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  %149 = load i64, i64* %5, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %182

151:                                              ; preds = %142
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %153 = load i32, i32* @SPA_FEATURE_POOL_CHECKPOINT, align 4
  %154 = call i32 @spa_feature_is_active(%struct.TYPE_24__* %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %182, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @B_TRUE, align 4
  %168 = call i32 @vdev_dtl_reassess(i32 %159, i32 %162, i32 %166, i32 %167)
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %156
  %176 = load i32, i32* @ESC_ZFS_RESILVER_FINISH, align 4
  br label %179

177:                                              ; preds = %156
  %178 = load i32, i32* @ESC_ZFS_SCRUB_FINISH, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = call i32 @spa_event_notify(%struct.TYPE_24__* %169, i32* null, i32* null, i32 %180)
  br label %191

182:                                              ; preds = %151, %142
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @B_TRUE, align 4
  %190 = call i32 @vdev_dtl_reassess(i32 %185, i32 %188, i32 0, i32 %189)
  br label %191

191:                                              ; preds = %182, %179
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %193 = call i32 @spa_errlog_rotate(%struct.TYPE_24__* %192)
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %195 = load i32, i32* @SPA_ASYNC_RESILVER_DONE, align 4
  %196 = call i32 @spa_async_request(%struct.TYPE_24__* %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %138
  %198 = call i32 (...) @gethrestime_sec()
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %203 = call i32 @dsl_scan_is_running(%struct.TYPE_25__* %202)
  %204 = icmp ne i32 %203, 0
  %205 = xor i1 %204, true
  %206 = zext i1 %205 to i32
  %207 = call i32 @ASSERT(i32 %206)
  br label %208

208:                                              ; preds = %197, %69
  ret void
}

declare dso_local i32 @zap_remove(i32, i32, i8*, %struct.TYPE_27__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_object_free(i32, i64, %struct.TYPE_27__*) #1

declare dso_local i32 @scan_ds_queue_clear(%struct.TYPE_25__*) #1

declare dso_local i32 @dsl_scan_is_running(%struct.TYPE_25__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @scan_io_queues_destroy(%struct.TYPE_25__*) #1

declare dso_local i32 @taskq_destroy(i32*) #1

declare dso_local i64 @dsl_scan_restarting(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_24__*, i8*, %struct.TYPE_27__*, i8*, i32) #1

declare dso_local i32 @spa_get_errlog_size(%struct.TYPE_24__*) #1

declare dso_local i64 @DSL_SCAN_IS_SCRUB_RESILVER(%struct.TYPE_25__*) #1

declare dso_local i32 @spa_feature_is_active(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @vdev_dtl_reassess(i32, i32, i32, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_24__*, i32*, i32*, i32) #1

declare dso_local i32 @spa_errlog_rotate(%struct.TYPE_24__*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @gethrestime_sec(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
