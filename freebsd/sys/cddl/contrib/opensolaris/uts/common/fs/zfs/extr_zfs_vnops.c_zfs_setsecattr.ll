; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_setsecattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_setsecattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i64 }

@ATTR_NOACLCHECK = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_setsecattr(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call %struct.TYPE_10__* @VTOZ(i32* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %11, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ATTR_NOACLCHECK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @B_TRUE, align 4
  br label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @B_FALSE, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %14, align 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %15, align 8
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %35 = call i32 @ZFS_ENTER(%struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %37 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @zfs_setacl(%struct.TYPE_10__* %38, i32* %39, i32 %40, i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @zil_commit(i32* %51, i32 0)
  br label %53

53:                                               ; preds = %50, %29
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = call i32 @ZFS_EXIT(%struct.TYPE_11__* %54)
  %56 = load i32, i32* %13, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_10__* @VTOZ(i32*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_11__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_10__*) #1

declare dso_local i32 @zfs_setacl(%struct.TYPE_10__*, i32*, i32, i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
