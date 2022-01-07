; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_open_by_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_open_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.g_provider = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Found provider by name %s.\00", align 1
@FULL_MATCH = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_consumer* (%struct.TYPE_5__*, i32)* @vdev_geom_open_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_consumer* @vdev_geom_open_by_path(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @g_topology_assert()
  store %struct.g_consumer* null, %struct.g_consumer** %6, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 6
  %13 = sub i64 %12, 1
  %14 = trunc i64 %13 to i32
  %15 = call %struct.g_provider* @g_provider_by_name(i32 %14)
  store %struct.g_provider* %15, %struct.g_provider** %5, align 8
  %16 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %17 = icmp ne %struct.g_provider* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ZFS_LOG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %27 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %28 = call i64 @vdev_attach_ok(%struct.TYPE_5__* %26, %struct.g_provider* %27)
  %29 = load i64, i64* @FULL_MATCH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %18
  %32 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = load i32, i32* @B_FALSE, align 4
  %35 = call %struct.g_consumer* @vdev_geom_attach(%struct.g_provider* %32, %struct.TYPE_5__* %33, i32 %34)
  store %struct.g_consumer* %35, %struct.g_consumer** %6, align 8
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  ret %struct.g_consumer* %38
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local %struct.g_provider* @g_provider_by_name(i32) #1

declare dso_local i32 @ZFS_LOG(i32, i8*, i32) #1

declare dso_local i64 @vdev_attach_ok(%struct.TYPE_5__*, %struct.g_provider*) #1

declare dso_local %struct.g_consumer* @vdev_geom_attach(%struct.g_provider*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
