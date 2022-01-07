; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i32*, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@SCL_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@VDEV_STATE_FAULTED = common dso_local global i32 0, align 4
@VDEV_STATE_DEGRADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_fault(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* @SCL_NONE, align 4
  %12 = call i32 @spa_vdev_state_enter(i32* %10, i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @B_TRUE, align 4
  %16 = call %struct.TYPE_10__* @spa_lookup_by_guid(i32* %13, i32 %14, i32 %15)
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @ENODEV, align 4
  %21 = call i32 @spa_vdev_state_exit(i32* %19, %struct.TYPE_10__* null, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %86

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 7
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @ENOTSUP, align 4
  %32 = call i32 @spa_vdev_state_exit(i32* %30, %struct.TYPE_10__* null, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %86

33:                                               ; preds = %22
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 6
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  store %struct.TYPE_10__* %36, %struct.TYPE_10__** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @B_FALSE, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i64 1, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = load i32, i32* @B_FALSE, align 4
  %49 = load i32, i32* @VDEV_STATE_FAULTED, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @vdev_set_state(%struct.TYPE_10__* %47, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %82, label %56

56:                                               ; preds = %33
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %82

61:                                               ; preds = %56
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = call i64 @vdev_dtl_required(%struct.TYPE_10__* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i64 1, i64* %67, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = call i32 @vdev_reopen(%struct.TYPE_10__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %73 = call i64 @vdev_readable(%struct.TYPE_10__* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = load i32, i32* @VDEV_STATE_DEGRADED, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @vdev_set_state(%struct.TYPE_10__* %76, i32 %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %65
  br label %82

82:                                               ; preds = %81, %61, %56, %33
  %83 = load i32*, i32** %5, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = call i32 @spa_vdev_state_exit(i32* %83, %struct.TYPE_10__* %84, i32 0)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %29, %18
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @spa_vdev_state_enter(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @spa_lookup_by_guid(i32*, i32, i32) #1

declare dso_local i32 @spa_vdev_state_exit(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @vdev_set_state(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i64 @vdev_dtl_required(%struct.TYPE_10__*) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_10__*) #1

declare dso_local i64 @vdev_readable(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
