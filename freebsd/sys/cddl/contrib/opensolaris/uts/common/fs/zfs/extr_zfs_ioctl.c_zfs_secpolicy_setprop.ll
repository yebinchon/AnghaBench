; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_setprop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_setprop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curthread = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"jailed\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @zfs_secpolicy_setprop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_setprop(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %58 [
    i32 128, label %16
    i32 130, label %24
    i32 132, label %24
    i32 129, label %24
    i32 131, label %56
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* @curthread, align 4
  %18 = call i32 @INGLOBALZONE(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @EPERM, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %16
  br label %58

24:                                               ; preds = %4, %4, %4
  %25 = load i32, i32* @curthread, align 4
  %26 = call i32 @INGLOBALZONE(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @dsl_prop_get_integer(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %11, i8* %32)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EPERM, align 4
  %38 = call i32 @SET_ERROR(i32 %37)
  store i32 %38, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %51

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = call i32 @strlen(i8* %32)
  %46 = icmp sle i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42, %39
  %48 = load i32, i32* @EPERM, align 4
  %49 = call i32 @SET_ERROR(i32 %48)
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %50, %47, %36
  %52 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %14, align 4
  switch i32 %53, label %66 [
    i32 0, label %54
    i32 1, label %64
  ]

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %54, %24
  br label %58

56:                                               ; preds = %4
  %57 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %57, i32* %5, align 4
  br label %64

58:                                               ; preds = %4, %55, %23
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @zfs_prop_to_name(i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @zfs_secpolicy_write_perms(i8* %59, i32 %61, i32* %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %56, %51, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65

66:                                               ; preds = %51
  unreachable
}

declare dso_local i32 @INGLOBALZONE(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dsl_prop_get_integer(i8*, i8*, i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @zfs_secpolicy_write_perms(i8*, i32, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
