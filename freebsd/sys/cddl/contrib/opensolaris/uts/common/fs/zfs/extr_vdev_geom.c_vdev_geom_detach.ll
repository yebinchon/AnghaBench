; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i64, i64, %struct.TYPE_2__*, i32, %struct.g_geom* }
%struct.TYPE_2__ = type { i8* }
%struct.g_geom = type { i8*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Detaching from %s.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Destroying consumer for %s.\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Destroyed geom %s.\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*, i64)* @vdev_geom_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_geom_detach(%struct.g_consumer* %0, i64 %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.g_geom*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %8 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %13 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %20 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  br label %25

24:                                               ; preds = %11, %2
  br label %25

25:                                               ; preds = %24, %18
  %26 = phi i8* [ %23, %18 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %24 ]
  %27 = call i32 @ZFS_LOG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %29 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %28, i32 0, i32 4
  %30 = load %struct.g_geom*, %struct.g_geom** %29, align 8
  store %struct.g_geom* %30, %struct.g_geom** %5, align 8
  %31 = load i64, i64* %4, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %35 = call i32 @g_access(%struct.g_consumer* %34, i32 -1, i32 0, i32 -1)
  br label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %38 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %85

41:                                               ; preds = %36
  %42 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %43 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %85

46:                                               ; preds = %41
  %47 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %48 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %53 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %54 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 0, %55
  %57 = call i32 @g_access(%struct.g_consumer* %52, i32 0, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %51, %46
  %59 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %60 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = icmp ne %struct.TYPE_2__* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %65 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %72 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  br label %77

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %70
  %78 = phi i8* [ %75, %70 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %76 ]
  %79 = call i32 @ZFS_LOG(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %78)
  %80 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %81 = call i32 @g_detach(%struct.g_consumer* %80)
  br label %82

82:                                               ; preds = %77, %58
  %83 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %84 = call i32 @g_destroy_consumer(%struct.g_consumer* %83)
  br label %85

85:                                               ; preds = %82, %41, %36
  %86 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %87 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %86, i32 0, i32 1
  %88 = call i64 @LIST_EMPTY(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %85
  %91 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %92 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @ZFS_LOG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %93)
  %95 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %96 = load i32, i32* @ENXIO, align 4
  %97 = call i32 @g_wither_geom(%struct.g_geom* %95, i32 %96)
  br label %98

98:                                               ; preds = %90, %85
  ret void
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @ZFS_LOG(i32, i8*, i8*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_detach(%struct.g_consumer*) #1

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #1

declare dso_local i64 @LIST_EMPTY(i32*) #1

declare dso_local i32 @g_wither_geom(%struct.g_geom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
