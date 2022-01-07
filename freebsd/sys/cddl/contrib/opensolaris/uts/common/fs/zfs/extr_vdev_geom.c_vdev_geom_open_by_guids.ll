; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_open_by_guids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_open_by_guids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_6__ = type { i8*, i64, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Searching by guids [%ju:%ju].\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Attach by guid [%ju:%ju] succeeded, provider %s.\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Search by guid [%ju:%ju] failed.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_consumer* (%struct.TYPE_6__*)* @vdev_geom_open_by_guids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_consumer* @vdev_geom_open_by_guids(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %6 = call i32 (...) @g_topology_assert()
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @spa_guid(i32 %9)
  %11 = trunc i64 %10 to i32
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32, i8*, i32, i32, ...) @ZFS_LOG(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %18 = call %struct.g_consumer* @vdev_geom_attach_by_guids(%struct.TYPE_6__* %17)
  store %struct.g_consumer* %18, %struct.g_consumer** %3, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %20 = icmp ne %struct.g_consumer* %19, null
  br i1 %20, label %21, label %65

21:                                               ; preds = %1
  %22 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %23 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = add nsw i32 %27, %28
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @KM_SLEEP, align 4
  %34 = call i8* @kmem_alloc(i64 %32, i32 %33)
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %38 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @spa_strfree(i8* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @spa_guid(i32 %52)
  %54 = trunc i64 %53 to i32
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %60 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 (i32, i8*, i32, i32, ...) @ZFS_LOG(i32 1, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %58, i8* %63)
  br label %76

65:                                               ; preds = %1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @spa_guid(i32 %68)
  %70 = trunc i64 %69 to i32
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i32, i8*, i32, i32, ...) @ZFS_LOG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %65, %21
  %77 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  ret %struct.g_consumer* %77
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @ZFS_LOG(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @spa_guid(i32) #1

declare dso_local %struct.g_consumer* @vdev_geom_attach_by_guids(%struct.TYPE_6__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @spa_strfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
