; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_resilver_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_vdev_resilver_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_10__**, i32*, i64, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i64 }

@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global i32 0, align 4
@vdev_replacing_ops = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @spa_vdev_resilver_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_vdev_resilver_done(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = load i32, i32* @SCL_ALL, align 4
  %12 = load i32, i32* @FTAG, align 4
  %13 = load i32, i32* @RW_WRITER, align 4
  %14 = call i32 @spa_config_enter(%struct.TYPE_12__* %10, i32 %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %101, %1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.TYPE_11__* @spa_vdev_resilver_done_hunt(i32 %18)
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %107

21:                                               ; preds = %15
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %23, align 8
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %4, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  store %struct.TYPE_11__* %27, %struct.TYPE_11__** %5, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %9, align 8
  store i64 0, i64* %7, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, @vdev_spare_ops
  br i1 %40, label %41, label %65

41:                                               ; preds = %21
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %41
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, @vdev_replacing_ops
  %56 = zext i1 %55 to i32
  %57 = call i32 @ASSERT(i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %60, i64 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %51, %46, %41, %21
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %72 = call i32 @vdev_dtl_required(%struct.TYPE_11__* %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i1 [ true, %65 ], [ %74, %70 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %80 = load i32, i32* @SCL_ALL, align 4
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @spa_config_exit(%struct.TYPE_12__* %79, i32 %80, i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* @B_TRUE, align 4
  %87 = call i64 @spa_vdev_detach(%struct.TYPE_12__* %83, i64 %84, i64 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %75
  br label %112

90:                                               ; preds = %75
  %91 = load i64, i64* %7, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i32, i32* @B_TRUE, align 4
  %98 = call i64 @spa_vdev_detach(%struct.TYPE_12__* %94, i64 %95, i64 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  br label %112

101:                                              ; preds = %93, %90
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %103 = load i32, i32* @SCL_ALL, align 4
  %104 = load i32, i32* @FTAG, align 4
  %105 = load i32, i32* @RW_WRITER, align 4
  %106 = call i32 @spa_config_enter(%struct.TYPE_12__* %102, i32 %103, i32 %104, i32 %105)
  br label %15

107:                                              ; preds = %15
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %109 = load i32, i32* @SCL_ALL, align 4
  %110 = load i32, i32* @FTAG, align 4
  %111 = call i32 @spa_config_exit(%struct.TYPE_12__* %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %100, %89
  ret void
}

declare dso_local i32 @spa_config_enter(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_11__* @spa_vdev_resilver_done_hunt(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vdev_dtl_required(%struct.TYPE_11__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @spa_vdev_detach(%struct.TYPE_12__*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
