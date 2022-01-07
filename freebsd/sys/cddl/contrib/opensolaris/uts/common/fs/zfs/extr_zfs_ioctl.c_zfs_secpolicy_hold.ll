; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"holds\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_DELEG_PERM_HOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*)* @zfs_secpolicy_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_hold(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @nvlist_lookup_nvlist(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %9)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @SET_ERROR(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %57

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = call i32* @nvlist_next_nvpair(i32* %22, i32* null)
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %52, %21
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %11, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %12, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @nvpair_name(i32* %32)
  %34 = call i32 @dmu_fsname(i32 %33, i8* %31)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %48

39:                                               ; preds = %27
  %40 = load i32, i32* @ZFS_DELEG_PERM_HOLD, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @zfs_secpolicy_write_perms(i8* %31, i32 %40, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %47, %45, %37
  %49 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %13, align 4
  switch i32 %50, label %59 [
    i32 0, label %51
    i32 1, label %57
  ]

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51
  %53 = load i32*, i32** %9, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32* @nvlist_next_nvpair(i32* %53, i32* %54)
  store i32* %55, i32** %8, align 8
  br label %24

56:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %48, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58

59:                                               ; preds = %48
  unreachable
}

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @SET_ERROR(i32) #1

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
