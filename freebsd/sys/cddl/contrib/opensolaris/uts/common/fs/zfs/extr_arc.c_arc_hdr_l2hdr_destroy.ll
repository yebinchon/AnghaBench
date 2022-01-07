; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_hdr_l2hdr_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_hdr_l2hdr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@arcstat_l2_psize = common dso_local global i32 0, align 4
@arcstat_l2_lsize = common dso_local global i32 0, align 4
@ARC_FLAG_HAS_L2HDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @arc_hdr_l2hdr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_hdr_l2hdr_destroy(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store %struct.TYPE_12__* %7, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %12 = call i32 @arc_hdr_size(%struct.TYPE_13__* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  %15 = call i32 @MUTEX_HELD(i32* %14)
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %18 = call i32 @HDR_HAS_L2HDR(%struct.TYPE_13__* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = call i32 @list_remove(i32* %21, %struct.TYPE_13__* %22)
  %24 = load i32, i32* @arcstat_l2_psize, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @ARCSTAT_INCR(i32 %24, i32 %26)
  %28 = load i32, i32* @arcstat_l2_lsize, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %30 = call i32 @HDR_GET_LSIZE(%struct.TYPE_13__* %29)
  %31 = sub nsw i32 0, %30
  %32 = call i32 @ARCSTAT_INCR(i32 %28, i32 %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sub nsw i32 0, %36
  %38 = call i32 @vdev_space_update(i32 %35, i32 %37, i32 0, i32 0)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %43 = call i32 @zfs_refcount_remove_many(i32* %40, i32 %41, %struct.TYPE_13__* %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %45 = load i32, i32* @ARC_FLAG_HAS_L2HDR, align 4
  %46 = call i32 @arc_hdr_clear_flags(%struct.TYPE_13__* %44, i32 %45)
  ret void
}

declare dso_local i32 @arc_hdr_size(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @HDR_HAS_L2HDR(%struct.TYPE_13__*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @ARCSTAT_INCR(i32, i32) #1

declare dso_local i32 @HDR_GET_LSIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @vdev_space_update(i32, i32, i32, i32) #1

declare dso_local i32 @zfs_refcount_remove_many(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @arc_hdr_clear_flags(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
