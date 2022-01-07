; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*)* @zfs_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_readlink(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.TYPE_6__* @VTOZ(i32* %12)
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @ZFS_ENTER(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_6__* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @SA_ZPL_SYMLINK(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @sa_lookup_uio(i32 %28, i32 %30, i32* %31)
  store i32 %32, i32* %11, align 4
  br label %37

33:                                               ; preds = %4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @zfs_sa_readlink(%struct.TYPE_6__* %34, i32* %35)
  store i32 %36, i32* %11, align 4
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32*, i32** %10, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = call i32 @ZFS_ACCESSTIME_STAMP(i32* %38, %struct.TYPE_6__* %39)
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @ZFS_EXIT(i32* %41)
  %43 = load i32, i32* %11, align 4
  ret i32 %43
}

declare dso_local %struct.TYPE_6__* @VTOZ(i32*) #1

declare dso_local i32 @ZFS_ENTER(i32*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_6__*) #1

declare dso_local i32 @sa_lookup_uio(i32, i32, i32*) #1

declare dso_local i32 @SA_ZPL_SYMLINK(i32*) #1

declare dso_local i32 @zfs_sa_readlink(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @ZFS_ACCESSTIME_STAMP(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @ZFS_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
