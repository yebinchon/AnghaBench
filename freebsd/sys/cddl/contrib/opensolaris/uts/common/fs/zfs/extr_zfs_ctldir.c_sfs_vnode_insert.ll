; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_vnode_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_vnode_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"sfs_vnode_insert with NULL v_data\00", align 1
@curthread = common dso_local global i32 0, align 4
@sfs_compare_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i64, i64, %struct.vnode**)* @sfs_vnode_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfs_vnode_insert(%struct.vnode* %0, i32 %1, i64 %2, i64 %3, %struct.vnode** %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vnode**, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.vnode** %4, %struct.vnode*** %10, align 8
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @curthread, align 4
  %23 = load %struct.vnode**, %struct.vnode*** %10, align 8
  %24 = load i32, i32* @sfs_compare_ids, align 4
  %25 = load %struct.vnode*, %struct.vnode** %6, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @vfs_hash_insert(%struct.vnode* %18, i32 %20, i32 %21, i32 %22, %struct.vnode** %23, i32 %24, i32* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  ret i32 %29
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vfs_hash_insert(%struct.vnode*, i32, i32, i32, %struct.vnode**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
