; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@ZFSCTL_INO_ROOT = common dso_local global i32 0, align 4
@ZFSCTL_INO_SNAPDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".zfs\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfsctl_create(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = icmp eq %struct.TYPE_7__* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load i32, i32* @ZFSCTL_INO_ROOT, align 4
  %14 = load i32, i32* @ZFSCTL_INO_SNAPDIR, align 4
  %15 = call i32* @sfs_alloc_node(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32, i32* @ZFSCTL_INO_ROOT, align 4
  %17 = call i32* @sfs_alloc_node(i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %16)
  %18 = bitcast i32* %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %3, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @LK_EXCLUSIVE, align 4
  %26 = call i64 @VFS_ROOT(i32 %24, i32 %25, i32** %5)
  %27 = icmp eq i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @VERIFY(i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call %struct.TYPE_8__* @VTOZ(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = call i32 @SA_ZPL_CRTIME(%struct.TYPE_6__* %34)
  %36 = bitcast [2 x i32]* %6 to i32**
  %37 = call i64 @sa_lookup(i32 %33, i32 %35, i32** %36, i32 8)
  %38 = icmp eq i64 0, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @VERIFY(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %44 = call i32 @ZFS_TIME_DECODE(i32* %42, i32* %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @vput(i32* %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %49, align 8
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @sfs_alloc_node(i32, i8*, i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @VFS_ROOT(i32, i32, i32**) #1

declare dso_local i64 @sa_lookup(i32, i32, i32**, i32) #1

declare dso_local %struct.TYPE_8__* @VTOZ(i32*) #1

declare dso_local i32 @SA_ZPL_CRTIME(%struct.TYPE_6__*) #1

declare dso_local i32 @ZFS_TIME_DECODE(i32*, i32*) #1

declare dso_local i32 @vput(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
