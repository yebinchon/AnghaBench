; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_set_physpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_set_physpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }
%struct.g_consumer = type { i32 }

@B_FALSE = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"GEOM::physpath\00", align 1
@SPA_ASYNC_CONFIG_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.g_consumer*, i32)* @vdev_geom_set_physpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_geom_set_physpath(%struct.TYPE_3__* %0, %struct.g_consumer* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @B_FALSE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @MAXPATHLEN, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i8* @g_malloc(i32 %14, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @g_io_getattr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %19, i32* %10, i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %3
  %25 = call i32 (...) @g_topology_assert()
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @spa_strdup(i8* %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load i8*, i8** %11, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @strcmp(i8* %36, i8* %39)
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @spa_strfree(i8* %43)
  br label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %45, %35
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @g_free(i8* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SPA_ASYNC_CONFIG_UPDATE, align 4
  %58 = call i32 @spa_async_request(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %48
  ret void
}

declare dso_local i8* @g_malloc(i32, i32) #1

declare dso_local i32 @g_io_getattr(i8*, %struct.g_consumer*, i32*, i8*) #1

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i8* @spa_strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @spa_strfree(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @spa_async_request(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
