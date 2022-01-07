; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_spa_vdev_remove_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@ESRCH = common dso_local global i32 0, align 4
@spa_vdev_remove_cancel_check = common dso_local global i32 0, align 4
@spa_vdev_remove_cancel_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_EXTRA_RESERVED = common dso_local global i32 0, align 4
@SCL_ALLOC = common dso_local global i32 0, align 4
@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_vdev_remove_cancel(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = call i32 @spa_vdev_remove_suspend(%struct.TYPE_12__* %7)
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = icmp eq %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ESRCH, align 4
  store i32 %14, i32* %2, align 4
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @spa_vdev_remove_cancel_check, align 4
  %25 = load i32, i32* @spa_vdev_remove_cancel_sync, align 4
  %26 = load i32, i32* @ZFS_SPACE_CHECK_EXTRA_RESERVED, align 4
  %27 = call i32 @dsl_sync_task(i32 %23, i32 %24, i32 %25, i32* null, i32 0, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %15
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = load i32, i32* @SCL_ALLOC, align 4
  %33 = load i32, i32* @SCL_VDEV, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @FTAG, align 4
  %36 = load i32, i32* @RW_WRITER, align 4
  %37 = call i32 @spa_config_enter(%struct.TYPE_12__* %31, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call %struct.TYPE_11__* @vdev_lookup_top(%struct.TYPE_12__* %38, i32 %39)
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %6, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @metaslab_group_activate(i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %46 = load i32, i32* @SCL_ALLOC, align 4
  %47 = load i32, i32* @SCL_VDEV, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @spa_config_exit(%struct.TYPE_12__* %45, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %30, %15
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %13
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @spa_vdev_remove_suspend(%struct.TYPE_12__*) #1

declare dso_local i32 @dsl_sync_task(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @vdev_lookup_top(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @metaslab_group_activate(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
