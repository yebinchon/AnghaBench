; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_async_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_async_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32*, i32, i32, i32 }

@SPA_ASYNC_REMOVE = common dso_local global i32 0, align 4
@SPA_ASYNC_CONFIG_UPDATE = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"vdev online\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"pool '%s' size: %llu(+%llu)\00", align 1
@SPA_ASYNC_AUTOEXPAND = common dso_local global i32 0, align 4
@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@SPA_ASYNC_PROBE = common dso_local global i32 0, align 4
@SCL_NONE = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER_DONE = common dso_local global i32 0, align 4
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4
@SPA_ASYNC_INITIALIZE_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spa_async_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_async_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %3, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %15 = call i32 @mutex_enter(i32* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @SPA_ASYNC_REMOVE, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 1
  %26 = call i32 @mutex_exit(i32* %25)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @SPA_ASYNC_CONFIG_UPDATE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %1
  %32 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = call i32 @spa_normal_class(%struct.TYPE_14__* %33)
  %35 = call i64 @metaslab_class_get_space(i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %38 = call i32 @spa_config_update(%struct.TYPE_14__* %36, i32 %37)
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = call i32 @spa_normal_class(%struct.TYPE_14__* %39)
  %41 = call i64 @metaslab_class_get_space(i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %31
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = call i32 @spa_name(%struct.TYPE_14__* %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub nsw i64 %51, %52
  %54 = call i32 @spa_history_log_internal(%struct.TYPE_14__* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49, i64 %50, i64 %53)
  br label %55

55:                                               ; preds = %46, %31
  br label %56

56:                                               ; preds = %55, %1
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SPA_ASYNC_AUTOEXPAND, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %56
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = call i32 @spa_suspended(%struct.TYPE_14__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = load i32, i32* @SCL_CONFIG, align 4
  %68 = load i32, i32* @FTAG, align 4
  %69 = load i32, i32* @RW_READER, align 4
  %70 = call i32 @spa_config_enter(%struct.TYPE_14__* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @spa_async_autoexpand(%struct.TYPE_14__* %71, i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = load i32, i32* @SCL_CONFIG, align 4
  %78 = load i32, i32* @FTAG, align 4
  %79 = call i32 @spa_config_exit(%struct.TYPE_14__* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %65, %61, %56
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @SPA_ASYNC_PROBE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %87 = load i32, i32* @SCL_NONE, align 4
  %88 = call i32 @spa_vdev_state_enter(%struct.TYPE_14__* %86, i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @spa_async_probe(%struct.TYPE_14__* %89, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = call i32 @spa_vdev_state_exit(%struct.TYPE_14__* %94, i32* null, i32 0)
  br label %96

96:                                               ; preds = %85, %80
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @SPA_ASYNC_RESILVER_DONE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %103 = call i32 @spa_vdev_resilver_done(%struct.TYPE_14__* %102)
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dsl_resilver_restart(i32 %112, i32 0)
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @SPA_ASYNC_INITIALIZE_RESTART, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %135

119:                                              ; preds = %114
  %120 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %122 = load i32, i32* @SCL_CONFIG, align 4
  %123 = load i32, i32* @FTAG, align 4
  %124 = load i32, i32* @RW_READER, align 4
  %125 = call i32 @spa_config_enter(%struct.TYPE_14__* %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @vdev_initialize_restart(i32 %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %131 = load i32, i32* @SCL_CONFIG, align 4
  %132 = load i32, i32* @FTAG, align 4
  %133 = call i32 @spa_config_exit(%struct.TYPE_14__* %130, i32 %131, i32 %132)
  %134 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  br label %135

135:                                              ; preds = %119, %114
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 1
  %138 = call i32 @mutex_enter(i32* %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  store i32* null, i32** %140, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 2
  %143 = call i32 @cv_broadcast(i32* %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = call i32 @mutex_exit(i32* %145)
  %147 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i64 @metaslab_class_get_space(i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_14__*) #1

declare dso_local i32 @spa_config_update(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spa_history_log_internal(%struct.TYPE_14__*, i8*, i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @spa_name(%struct.TYPE_14__*) #1

declare dso_local i32 @spa_suspended(%struct.TYPE_14__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @spa_async_autoexpand(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @spa_vdev_state_enter(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spa_async_probe(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spa_vdev_state_exit(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @spa_vdev_resilver_done(%struct.TYPE_14__*) #1

declare dso_local i32 @dsl_resilver_restart(i32, i32) #1

declare dso_local i32 @vdev_initialize_restart(i32) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
