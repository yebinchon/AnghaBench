; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_log_history.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_log_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zfs_allow_log_key = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"message\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPA_VERSION_ZPOOL_HISTORY = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_log_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_log_history(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* @zfs_allow_log_key, align 4
  %13 = call i8* @tsd_get(i32 %12)
  store i8* %13, i8** %11, align 8
  %14 = load i32, i32* @zfs_allow_log_key, align 4
  %15 = call i32 @tsd_set(i32 %14, i32* null)
  %16 = load i8*, i8** %11, align 8
  %17 = load i32, i32* @FTAG, align 4
  %18 = call i32 @spa_open(i8* %16, i32** %9, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i8*, i8** %11, align 8
  %20 = call i32 @strfree(i8* %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @nvlist_lookup_string(i32* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %8)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @spa_close(i32* %30, i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %25
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @spa_version(i32* %36)
  %38 = load i64, i64* @SPA_VERSION_ZPOOL_HISTORY, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @FTAG, align 4
  %43 = call i32 @spa_close(i32* %41, i32 %42)
  %44 = load i32, i32* @ENOTSUP, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %4, align 4
  br label %54

46:                                               ; preds = %35
  %47 = load i32*, i32** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @spa_history_log(i32* %47, i8* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* @FTAG, align 4
  %52 = call i32 @spa_close(i32* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %46, %40, %29, %23
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i8* @tsd_get(i32) #1

declare dso_local i32 @tsd_set(i32, i32*) #1

declare dso_local i32 @spa_open(i8*, i32**, i32) #1

declare dso_local i32 @strfree(i8*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @spa_close(i32*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_history_log(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
