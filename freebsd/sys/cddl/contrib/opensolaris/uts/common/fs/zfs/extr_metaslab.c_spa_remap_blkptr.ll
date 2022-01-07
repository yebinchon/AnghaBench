; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_spa_remap_blkptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_spa_remap_blkptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i8*, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_14__*)* }

@zfs_remap_blkptr_enable = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@SPA_FEATURE_OBSOLETE_COUNTS = common dso_local global i32 0, align 4
@remap_blkptr_cb = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_remap_blkptr(i32* %0, %struct.TYPE_15__* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_14__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* @zfs_remap_blkptr_enable, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @B_FALSE, align 4
  store i32 %18, i32* %5, align 4
  br label %100

19:                                               ; preds = %4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @SPA_FEATURE_OBSOLETE_COUNTS, align 4
  %22 = call i32 @spa_feature_is_enabled(i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @B_FALSE, align 4
  store i32 %25, i32* %5, align 4
  br label %100

26:                                               ; preds = %19
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = call i64 @BP_GET_DEDUP(%struct.TYPE_15__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @B_FALSE, align 4
  store i32 %31, i32* %5, align 4
  br label %100

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = call i64 @BP_IS_GANG(%struct.TYPE_15__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @B_FALSE, align 4
  store i32 %37, i32* %5, align 4
  br label %100

38:                                               ; preds = %32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = call i32 @BP_GET_NDVAS(%struct.TYPE_15__* %39)
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @B_FALSE, align 4
  store i32 %43, i32* %5, align 4
  br label %100

44:                                               ; preds = %38
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32* %48, i32** %11, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @DVA_GET_OFFSET(i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @DVA_GET_ASIZE(i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = call i64 @DVA_GET_VDEV(i32* %54)
  %56 = call %struct.TYPE_13__* @vdev_lookup_top(i32* %53, i64 %55)
  store %struct.TYPE_13__* %56, %struct.TYPE_13__** %14, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32 (%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_14__*)** %60, align 8
  %62 = icmp eq i32 (%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_14__*)* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %44
  %64 = load i32, i32* @B_FALSE, align 4
  store i32 %64, i32* %5, align 4
  br label %100

65:                                               ; preds = %44
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 4
  store i32 %68, i32* %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  store %struct.TYPE_13__* %70, %struct.TYPE_13__** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  store i8* %74, i8** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_14__*)*, i32 (%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_14__*)** %79, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @remap_blkptr_cb, align 4
  %85 = call i32 %80(%struct.TYPE_13__* %81, i32 %82, i32 %83, i32 %84, %struct.TYPE_14__* %10)
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = call i64 @DVA_GET_VDEV(i32* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %65
  %97 = load i32, i32* @B_FALSE, align 4
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %65
  %99 = load i32, i32* @B_TRUE, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %96, %63, %42, %36, %30, %24, %17
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @spa_feature_is_enabled(i32*, i32) #1

declare dso_local i64 @BP_GET_DEDUP(%struct.TYPE_15__*) #1

declare dso_local i64 @BP_IS_GANG(%struct.TYPE_15__*) #1

declare dso_local i32 @BP_GET_NDVAS(%struct.TYPE_15__*) #1

declare dso_local i32 @DVA_GET_OFFSET(i32*) #1

declare dso_local i32 @DVA_GET_ASIZE(i32*) #1

declare dso_local %struct.TYPE_13__* @vdev_lookup_top(i32*, i64) #1

declare dso_local i64 @DVA_GET_VDEV(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
