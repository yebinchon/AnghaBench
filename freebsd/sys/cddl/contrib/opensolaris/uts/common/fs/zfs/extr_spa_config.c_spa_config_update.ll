; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_config.c_spa_config_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i64, i64, %struct.TYPE_13__** }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_POOL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@SPA_CONFIG_UPDATE_VDEVS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_config_update(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %11, %struct.TYPE_13__** %5, align 8
  %12 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = load i32, i32* @SCL_ALL, align 4
  %16 = load i32, i32* @FTAG, align 4
  %17 = load i32, i32* @RW_WRITER, align 4
  %18 = call i32 @spa_config_enter(%struct.TYPE_14__* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = call i64 @spa_last_synced_txg(%struct.TYPE_14__* %19)
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %27 = call i32 @vdev_config_dirty(%struct.TYPE_13__* %26)
  br label %75

28:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %71, %28
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %38, i64 %40
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %44 = call i32 @vdev_is_concrete(%struct.TYPE_13__* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %35
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51, %35
  br label %71

57:                                               ; preds = %51, %46
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = call i32 @vdev_ashift_optimize(%struct.TYPE_13__* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %66 = call i32 @vdev_metaslab_set_size(%struct.TYPE_13__* %65)
  br label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @vdev_expand(%struct.TYPE_13__* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %56
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %29

74:                                               ; preds = %29
  br label %75

75:                                               ; preds = %74, %25
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = load i32, i32* @SCL_ALL, align 4
  %78 = load i32, i32* @FTAG, align 4
  %79 = call i32 @spa_config_exit(%struct.TYPE_14__* %76, i32 %77, i32 %78)
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = call i32 @txg_wait_synced(i32 %82, i64 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = load i32, i32* @B_FALSE, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %89 = icmp ne i32 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @spa_write_cachefile(%struct.TYPE_14__* %85, i32 %86, i32 %90)
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @SPA_CONFIG_UPDATE_POOL, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %75
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = load i32, i32* @SPA_CONFIG_UPDATE_VDEVS, align 4
  call void @spa_config_update(%struct.TYPE_14__* %96, i32 %97)
  br label %98

98:                                               ; preds = %95, %75
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i64 @spa_last_synced_txg(%struct.TYPE_14__*) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_ashift_optimize(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_metaslab_set_size(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_expand(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i64) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_14__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
