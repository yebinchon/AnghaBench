; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_zfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfsmount = type { i64, i32, i32* }

@.str = private unnamed_addr constant [33 x i8] c"ZFS: can't find root filesystem\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"ZFS: can't open root filesystem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.zfsmount*)* @zfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_mount(i32* %0, i64 %1, %struct.zfsmount* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.zfsmount*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.zfsmount* %2, %struct.zfsmount** %7, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.zfsmount*, %struct.zfsmount** %7, align 8
  %10 = getelementptr inbounds %struct.zfsmount, %struct.zfsmount* %9, i32 0, i32 2
  store i32* %8, i32** %10, align 8
  %11 = load i64, i64* %6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @zfs_get_root(i32* %14, i64* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %13, %3
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.zfsmount*, %struct.zfsmount** %7, align 8
  %24 = getelementptr inbounds %struct.zfsmount, %struct.zfsmount* %23, i32 0, i32 1
  %25 = call i64 @zfs_mount_dataset(i32* %21, i64 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  store i32 %29, i32* %4, align 4
  br label %34

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.zfsmount*, %struct.zfsmount** %7, align 8
  %33 = getelementptr inbounds %struct.zfsmount, %struct.zfsmount* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %27, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i64 @zfs_get_root(i32*, i64*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @zfs_mount_dataset(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
