; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_vdev_remove_make_hole_and_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_removal.c_vdev_remove_make_hole_and_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }

@spa_namespace_lock = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@vdev_hole_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @vdev_remove_make_hole_and_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_remove_make_hole_and_free(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %4, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = icmp eq i32 %16, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = load i64, i64* @SCL_ALL, align 8
  %27 = load i32, i32* @RW_WRITER, align 4
  %28 = call i64 @spa_config_held(%struct.TYPE_14__* %25, i64 %26, i32 %27)
  %29 = load i64, i64* @SCL_ALL, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %34 = call i32 @vdev_free(%struct.TYPE_13__* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %39 = call i32 @vdev_compact_children(%struct.TYPE_13__* %38)
  br label %47

40:                                               ; preds = %1
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call %struct.TYPE_13__* @vdev_alloc_common(%struct.TYPE_14__* %41, i32 %42, i32 0, i32* @vdev_hole_ops)
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %2, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = call i32 @vdev_add_child(%struct.TYPE_13__* %44, %struct.TYPE_13__* %45)
  br label %47

47:                                               ; preds = %40, %37
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %49 = call i32 @vdev_config_dirty(%struct.TYPE_13__* %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %51 = call i32 @vdev_reopen(%struct.TYPE_13__* %50)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_14__*, i64, i32) #1

declare dso_local i32 @vdev_free(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_compact_children(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @vdev_alloc_common(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @vdev_add_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @vdev_config_dirty(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
