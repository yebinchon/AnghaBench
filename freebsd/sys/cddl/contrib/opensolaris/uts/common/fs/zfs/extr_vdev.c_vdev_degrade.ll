; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_degrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_degrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@SCL_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@VDEV_STATE_DEGRADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_degrade(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* @SCL_NONE, align 4
  %11 = call i32 @spa_vdev_state_enter(i32* %9, i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @B_TRUE, align 4
  %15 = call %struct.TYPE_8__* @spa_lookup_by_guid(i32* %12, i32 %13, i32 %14)
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %8, align 8
  %16 = icmp eq %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ENODEV, align 4
  %20 = call i32 @spa_vdev_state_exit(i32* %18, %struct.TYPE_8__* null, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @ENOTSUP, align 4
  %31 = call i32 @spa_vdev_state_exit(i32* %29, %struct.TYPE_8__* null, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %61

32:                                               ; preds = %21
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @spa_vdev_state_exit(i32* %43, %struct.TYPE_8__* null, i32 0)
  store i32 %44, i32* %4, align 4
  br label %61

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i64 1, i64* %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = call i32 @vdev_is_dead(%struct.TYPE_8__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = load i32, i32* @B_FALSE, align 4
  %54 = load i32, i32* @VDEV_STATE_DEGRADED, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @vdev_set_state(%struct.TYPE_8__* %52, i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load i32*, i32** %5, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %60 = call i32 @spa_vdev_state_exit(i32* %58, %struct.TYPE_8__* %59, i32 0)
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %42, %28, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @spa_vdev_state_enter(i32*, i32) #1

declare dso_local %struct.TYPE_8__* @spa_lookup_by_guid(i32*, i32, i32) #1

declare dso_local i32 @spa_vdev_state_exit(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_8__*) #1

declare dso_local i32 @vdev_set_state(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
