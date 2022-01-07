; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_sync_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_sync_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i64, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@vdev_label_sync_ignore_done = common dso_local global i32 0, align 4
@vdev_label_sync_top_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_label_sync_list(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32* %16, i32** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32* @zio_root(%struct.TYPE_12__* %17, i32* null, i32* null, i32 %18)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call %struct.TYPE_11__* @list_head(i32* %20)
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %10, align 8
  br label %22

22:                                               ; preds = %64, %4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = icmp ne %struct.TYPE_11__* %23, null
  br i1 %24, label %25, label %68

25:                                               ; preds = %22
  %26 = load i32, i32* @KM_SLEEP, align 4
  %27 = call i32* @kmem_zalloc(i32 4, i32 %26)
  store i32* %27, i32** %13, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %25
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %25
  %47 = load i32, i32* @vdev_label_sync_ignore_done, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @vdev_label_sync_top_done, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32*, i32** %13, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32* @zio_null(i32* %35, %struct.TYPE_12__* %36, i32* null, i32 %51, i32* %52, i32 %53)
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @vdev_label_sync(i32* %55, i32* %56, %struct.TYPE_11__* %57, i32 %58, i32 %59, i32 %60)
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @zio_nowait(i32* %62)
  br label %64

64:                                               ; preds = %50
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = call %struct.TYPE_11__* @list_next(i32* %65, %struct.TYPE_11__* %66)
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %10, align 8
  br label %22

68:                                               ; preds = %22
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @zio_wait(i32* %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = call i32* @zio_root(%struct.TYPE_12__* %71, i32* null, i32* null, i32 %72)
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call %struct.TYPE_11__* @list_head(i32* %74)
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %10, align 8
  br label %76

76:                                               ; preds = %83, %68
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %78 = icmp ne %struct.TYPE_11__* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %82 = call i32 @zio_flush(i32* %80, %struct.TYPE_11__* %81)
  br label %83

83:                                               ; preds = %79
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %86 = call %struct.TYPE_11__* @list_next(i32* %84, %struct.TYPE_11__* %85)
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %10, align 8
  br label %76

87:                                               ; preds = %76
  %88 = load i32*, i32** %11, align 8
  %89 = call i32 @zio_wait(i32* %88)
  %90 = load i32, i32* %12, align 4
  ret i32 %90
}

declare dso_local i32* @zio_root(%struct.TYPE_12__*, i32*, i32*, i32) #1

declare dso_local %struct.TYPE_11__* @list_head(i32*) #1

declare dso_local i32* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @zio_null(i32*, %struct.TYPE_12__*, i32*, i32, i32*, i32) #1

declare dso_local i32 @vdev_label_sync(i32*, i32*, %struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @zio_nowait(i32*) #1

declare dso_local %struct.TYPE_11__* @list_next(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @zio_flush(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
