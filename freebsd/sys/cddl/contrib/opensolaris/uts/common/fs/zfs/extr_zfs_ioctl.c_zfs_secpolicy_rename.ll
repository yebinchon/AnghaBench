; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@ZFS_DELEG_PERM_RENAME = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_BOOKMARK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*, i32*)* @zfs_secpolicy_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_rename(%struct.TYPE_3__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %8, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @strchr(i32 %13, i8 signext 35)
  store i8* %14, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i8*, i8** %9, align 8
  store i8 0, i8* %17, align 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ZFS_DELEG_PERM_RENAME, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @zfs_secpolicy_write_perms(i32 %20, i32 %21, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ZFS_DELEG_PERM_BOOKMARK, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @zfs_secpolicy_write_perms(i32 %29, i32 %30, i32* %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %26, %16
  %34 = load i8*, i8** %9, align 8
  store i8 35, i8* %34, align 1
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %68

36:                                               ; preds = %3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @strchr(i32 %45, i8 signext 64)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %68

51:                                               ; preds = %42
  %52 = load i8*, i8** %8, align 8
  store i8 0, i8* %52, align 1
  br label %53

53:                                               ; preds = %51, %36
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @zfs_secpolicy_rename_perms(i32 %56, i32 %59, i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i8*, i8** %8, align 8
  store i8 64, i8* %65, align 1
  br label %66

66:                                               ; preds = %64, %53
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %49, %33
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i8* @strchr(i32, i8 signext) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i32, i32, i32*) #1

declare dso_local i32 @zfs_secpolicy_rename_perms(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
