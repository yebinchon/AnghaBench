; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove_top.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove_top.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }

@TXG_CONCURRENT_STATES = common dso_local global i64 0, align 8
@TXG_DEFER_SIZE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i32 0, align 4
@SPA_ASYNC_INITIALIZE_RESTART = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@VDD_DTL = common dso_local global i32 0, align 4
@vdev_remove_initiate_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i64*)* @spa_vdev_remove_top to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_vdev_remove_top(%struct.TYPE_12__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = call i32 @spa_vdev_remove_top_check(%struct.TYPE_12__* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @metaslab_group_passivate(i32* %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TXG_CONCURRENT_STATES, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i64, i64* @TXG_DEFER_SIZE, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32 @spa_vdev_config_exit(%struct.TYPE_13__* %25, i32* null, i64 %31, i32 0, i32 %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = call i32 @spa_reset_logs(%struct.TYPE_13__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = load i32, i32* @VDEV_INITIALIZE_ACTIVE, align 4
  %38 = call i32 @vdev_initialize_stop_all(%struct.TYPE_12__* %36, i32 %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = call i64 @spa_vdev_config_enter(%struct.TYPE_13__* %39)
  %41 = load i64*, i64** %5, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %19
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i32 @spa_vdev_remove_top_check(%struct.TYPE_12__* %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %19
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @metaslab_group_activate(i32* %51)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = load i32, i32* @SPA_ASYNC_INITIALIZE_RESTART, align 4
  %55 = call i32 @spa_async_request(%struct.TYPE_13__* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %47
  %58 = load i32, i32* @B_TRUE, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %62 = load i32, i32* @VDD_DTL, align 4
  %63 = load i64*, i64** %5, align 8
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @vdev_dirty_leaves(%struct.TYPE_12__* %61, i32 %62, i64 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = call i32 @vdev_config_dirty(%struct.TYPE_12__* %66)
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64*, i64** %5, align 8
  %72 = load i64, i64* %71, align 8
  %73 = call i32* @dmu_tx_create_assigned(i32 %70, i64 %72)
  store i32* %73, i32** %9, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @vdev_remove_initiate_sync, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @dsl_sync_task_nowait(i32 %76, i32 %77, i8* %81, i32 0, i32 %82, i32* %83)
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @dmu_tx_commit(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %57, %50, %17
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @spa_vdev_remove_top_check(%struct.TYPE_12__*) #1

declare dso_local i32 @metaslab_group_passivate(i32*) #1

declare dso_local i32 @spa_vdev_config_exit(%struct.TYPE_13__*, i32*, i64, i32, i32) #1

declare dso_local i32 @spa_reset_logs(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_initialize_stop_all(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @spa_vdev_config_enter(%struct.TYPE_13__*) #1

declare dso_local i32 @metaslab_group_activate(i32*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vdev_dirty_leaves(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_12__*) #1

declare dso_local i32* @dmu_tx_create_assigned(i32, i64) #1

declare dso_local i32 @dsl_sync_task_nowait(i32, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
