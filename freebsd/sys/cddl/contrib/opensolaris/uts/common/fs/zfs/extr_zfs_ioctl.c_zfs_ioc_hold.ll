; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"holds\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"cleanup_fd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_hold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_hold(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %12, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @nvlist_lookup_nvlist(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %9)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @SET_ERROR(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %71

21:                                               ; preds = %3
  %22 = load i32*, i32** %9, align 8
  %23 = call i32* @nvlist_next_nvpair(i32* %22, i32* null)
  store i32* %23, i32** %8, align 8
  br label %24

24:                                               ; preds = %43, %21
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @nvpair_value_string(i32* %28, i8** %13)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %71

35:                                               ; preds = %27
  %36 = load i8*, i8** %13, align 8
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %4, align 4
  br label %71

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @nvlist_next_nvpair(i32* %44, i32* %45)
  store i32* %46, i32** %8, align 8
  br label %24

47:                                               ; preds = %24
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @nvlist_lookup_int32(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %10)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @zfs_onexit_fd_hold(i32 %52, i64* %12)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %71

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32*, i32** %9, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @dsl_dataset_user_hold(i32* %60, i64 %61, i32* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i64, i64* %12, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @zfs_onexit_fd_rele(i32 %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %56, %39, %32, %18
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @nvlist_lookup_int32(i32*, i8*, i32*) #1

declare dso_local i32 @zfs_onexit_fd_hold(i32, i64*) #1

declare dso_local i32 @dsl_dataset_user_hold(i32*, i64, i32*) #1

declare dso_local i32 @zfs_onexit_fd_rele(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
