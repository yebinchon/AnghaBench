; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }

@SCL_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@POOL_SCAN_SCRUB = common dso_local global i64 0, align 8
@POOL_SCRUB_NORMAL = common dso_local global i32 0, align 4
@ESC_ZFS_SCRUB_RESUME = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i32 0, align 4
@dsl_scan_setup_check = common dso_local global i32 0, align 4
@dsl_scan_setup_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_EXTRA_RESERVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_scan(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %6, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load i32, i32* @SCL_NONE, align 4
  %17 = call i32 @spa_vdev_state_enter(%struct.TYPE_10__* %15, i32 %16)
  %18 = load i32, i32* @B_TRUE, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @vdev_reopen(i32 %23)
  %25 = load i32, i32* @B_FALSE, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = call i32 @spa_vdev_state_exit(%struct.TYPE_10__* %28, i32* null, i32 0)
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %2
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %35 = call i64 @dsl_scan_is_paused_scrub(%struct.TYPE_11__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @POOL_SCRUB_NORMAL, align 4
  %42 = call i32 @dsl_scrub_set_pause_resume(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %47 = load i32, i32* @ESC_ZFS_SCRUB_RESUME, align 4
  %48 = call i32 @spa_event_notify(%struct.TYPE_10__* %46, i32* null, i32* null, i32 %47)
  %49 = load i32, i32* @ECANCELED, align 4
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %60

53:                                               ; preds = %33, %2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call i32 @spa_name(%struct.TYPE_10__* %54)
  %56 = load i32, i32* @dsl_scan_setup_check, align 4
  %57 = load i32, i32* @dsl_scan_setup_sync, align 4
  %58 = load i32, i32* @ZFS_SPACE_CHECK_EXTRA_RESERVED, align 4
  %59 = call i32 @dsl_sync_task(i32 %55, i32 %56, i32 %57, i64* %5, i32 0, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %50, %45
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @spa_vdev_state_enter(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @vdev_reopen(i32) #1

declare dso_local i32 @spa_vdev_state_exit(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i64 @dsl_scan_is_paused_scrub(%struct.TYPE_11__*) #1

declare dso_local i32 @dsl_scrub_set_pause_resume(i32, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_10__*, i32*, i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_sync_task(i32, i32, i32, i64*, i32, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
