; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @zfs_secpolicy_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_release(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @nvlist_next_nvpair(i32* %13, i32* null)
  store i32* %14, i32** %8, align 8
  br label %15

15:                                               ; preds = %43, %3
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %15
  %19 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @nvpair_name(i32* %23)
  %25 = call i32 @dmu_fsname(i32 %24, i8* %22)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %39

30:                                               ; preds = %18
  %31 = load i32, i32* @ZFS_DELEG_PERM_RELEASE, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @zfs_secpolicy_write_perms(i8* %22, i32 %31, i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %36, %28
  %40 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %40)
  %41 = load i32, i32* %12, align 4
  switch i32 %41, label %50 [
    i32 0, label %42
    i32 1, label %48
  ]

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @nvlist_next_nvpair(i32* %44, i32* %45)
  store i32* %46, i32** %8, align 8
  br label %15

47:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %4, align 4
  ret i32 %49

50:                                               ; preds = %39
  unreachable
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dmu_fsname(i32, i8*) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
