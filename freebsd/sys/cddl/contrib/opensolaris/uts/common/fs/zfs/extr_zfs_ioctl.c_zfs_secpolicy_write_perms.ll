; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_write_perms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_secpolicy_write_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curthread = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32*)* @zfs_secpolicy_write_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_secpolicy_write_perms(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @curthread, align 4
  %12 = call i64 @INGLOBALZONE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  %16 = call i64 @secpolicy_zfs(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %52

19:                                               ; preds = %14, %3
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @dsl_pool_hold(i8* %20, i32 %21, i32** %10)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %19
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @FTAG, align 4
  %31 = call i32 @dsl_dataset_hold(i32* %28, i8* %29, i32 %30, i32** %9)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @dsl_pool_rele(i32* %35, i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %27
  %40 = load i8*, i8** %5, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @zfs_secpolicy_write_perms_ds(i8* %40, i32* %41, i8* %42, i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* @FTAG, align 4
  %47 = call i32 @dsl_dataset_rele(i32* %45, i32 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @FTAG, align 4
  %50 = call i32 @dsl_pool_rele(i32* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %39, %34, %25, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @INGLOBALZONE(i32) #1

declare dso_local i64 @secpolicy_zfs(i32*) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, i32**) #1

declare dso_local i32 @dsl_pool_rele(i32*, i32) #1

declare dso_local i32 @zfs_secpolicy_write_perms_ds(i8*, i32*, i8*, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
