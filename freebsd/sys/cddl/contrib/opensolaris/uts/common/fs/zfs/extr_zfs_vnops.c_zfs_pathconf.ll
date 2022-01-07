; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_pathconf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_pathconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32* }

@LONG_MAX = common dso_local global i32 0, align 4
@ZFS_LINK_MAX = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i64 0, align 8
@ACL_MAX_ENTRIES = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@VFSFT_ACCESS_FILTER = common dso_local global i32 0, align 4
@VFSFT_SYSATTR_VIEWS = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@ZEXISTS = common dso_local global i32 0, align 4
@ZSHARED = common dso_local global i32 0, align 4
@ZXATTR = common dso_local global i32 0, align 4
@_ACL_ACE_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*, i32*, i32*)* @zfs_pathconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_pathconf(%struct.TYPE_12__* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %8, align 4
  switch i32 %16, label %35 [
    i32 133, label %17
    i32 134, label %22
    i32 132, label %24
    i32 137, label %28
    i32 136, label %30
    i32 135, label %32
  ]

17:                                               ; preds = %5
  %18 = load i32, i32* @LONG_MAX, align 4
  %19 = load i32, i32* @ZFS_LINK_MAX, align 4
  %20 = call i32 @MIN(i32 %18, i32 %19)
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %6, align 4
  br label %37

22:                                               ; preds = %5
  %23 = load i32*, i32** %9, align 8
  store i32 64, i32* %23, align 4
  store i32 0, i32* %6, align 4
  br label %37

24:                                               ; preds = %5
  %25 = load i64, i64* @SPA_MINBLOCKSIZE, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32*, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  store i32 0, i32* %6, align 4
  br label %37

28:                                               ; preds = %5
  %29 = load i32*, i32** %9, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %6, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load i32*, i32** %9, align 8
  store i32 1, i32* %31, align 4
  store i32 0, i32* %6, align 4
  br label %37

32:                                               ; preds = %5
  %33 = load i32, i32* @ACL_MAX_ENTRIES, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %6, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %32, %30, %28, %24, %22, %17
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
