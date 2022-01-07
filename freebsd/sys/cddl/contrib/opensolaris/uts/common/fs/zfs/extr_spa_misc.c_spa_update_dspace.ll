; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_misc.c_spa_update_dspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_misc.c_spa_update_dspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }

@SCL_VDEV = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_update_dspace(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %4 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %5 = call i32 @spa_normal_class(%struct.TYPE_16__* %4)
  %6 = call i64 @metaslab_class_get_dspace(i32 %5)
  %7 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %8 = call i64 @ddt_get_dedup_dspace(%struct.TYPE_16__* %7)
  %9 = add nsw i64 %6, %8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i64 %9, i64* %11, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %52

16:                                               ; preds = %1
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %18 = load i32, i32* @SCL_VDEV, align 4
  %19 = load i32, i32* @FTAG, align 4
  %20 = load i32, i32* @RW_READER, align 4
  %21 = call i32 @spa_config_enter(%struct.TYPE_16__* %17, i32 %18, i32 %19, i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_15__* @vdev_lookup_top(%struct.TYPE_16__* %22, i32 %27)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %3, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = call i64 @spa_deflate(%struct.TYPE_16__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %16
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  br label %42

37:                                               ; preds = %16
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i64 [ %36, %32 ], [ %41, %37 ]
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = load i32, i32* @SCL_VDEV, align 4
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32 @spa_config_exit(%struct.TYPE_16__* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %42, %1
  ret void
}

declare dso_local i64 @metaslab_class_get_dspace(i32) #1

declare dso_local i32 @spa_normal_class(%struct.TYPE_16__*) #1

declare dso_local i64 @ddt_get_dedup_dspace(%struct.TYPE_16__*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_16__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @vdev_lookup_top(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @spa_deflate(%struct.TYPE_16__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
