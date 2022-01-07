; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_queue.c_vdev_queue_class_to_issue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_queue.c_vdev_queue_class_to_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@zfs_vdev_max_active = common dso_local global i64 0, align 8
@ZIO_PRIORITY_NUM_QUEUEABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*)* @vdev_queue_class_to_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vdev_queue_class_to_issue(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = call i32 @MUTEX_HELD(i32* %12)
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = call i64 @avl_numnodes(i32* %16)
  %18 = load i64, i64* @zfs_vdev_max_active, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  store i64 %21, i64* %2, align 8
  br label %81

22:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %23

23:                                               ; preds = %47, %22
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %50

27:                                               ; preds = %23
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32* @vdev_queue_class_tree(%struct.TYPE_8__* %28, i64 %29)
  %31 = call i64 @avl_numnodes(i32* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @vdev_queue_class_min_active(i64 %41)
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i64, i64* %5, align 8
  store i64 %45, i64* %2, align 8
  br label %81

46:                                               ; preds = %33, %27
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  br label %23

50:                                               ; preds = %23
  store i64 0, i64* %5, align 8
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32* @vdev_queue_class_tree(%struct.TYPE_8__* %56, i64 %57)
  %59 = call i64 @avl_numnodes(i32* %58)
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i32*, i32** %4, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @vdev_queue_class_max_active(i32* %69, i64 %70)
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i64, i64* %5, align 8
  store i64 %74, i64* %2, align 8
  br label %81

75:                                               ; preds = %61, %55
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %5, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %5, align 8
  br label %51

79:                                               ; preds = %51
  %80 = load i64, i64* @ZIO_PRIORITY_NUM_QUEUEABLE, align 8
  store i64 %80, i64* %2, align 8
  br label %81

81:                                               ; preds = %79, %73, %44, %20
  %82 = load i64, i64* %2, align 8
  ret i64 %82
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local i32* @vdev_queue_class_tree(%struct.TYPE_8__*, i64) #1

declare dso_local i64 @vdev_queue_class_min_active(i64) #1

declare dso_local i64 @vdev_queue_class_max_active(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
