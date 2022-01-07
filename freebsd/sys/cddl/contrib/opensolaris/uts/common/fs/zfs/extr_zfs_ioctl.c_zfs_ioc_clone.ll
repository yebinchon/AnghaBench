; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_clone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"props\00", align 1
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_clone(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i64 @nvlist_lookup_string(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = call i32 @SET_ERROR(i32 %15)
  store i32 %16, i32* %4, align 4
  br label %62

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @nvlist_lookup_nvlist(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %9)
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strchr(i8* %20, i8 signext 64)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load i8*, i8** %5, align 8
  %25 = call i64 @strchr(i8* %24, i8 signext 37)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23, %17
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @SET_ERROR(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %62

30:                                               ; preds = %23
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @dataset_namecheck(i8* %31, i32* null, i32* null)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = call i32 @SET_ERROR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %62

37:                                               ; preds = %30
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @dmu_objset_clone(i8* %38, i8* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @zfs_set_prop_nvlist(i8* %49, i32 %50, i32* %51, i32* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @dsl_destroy_head(i8* %57)
  br label %59

59:                                               ; preds = %56, %48
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %43, %34, %27, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i64 @dataset_namecheck(i8*, i32*, i32*) #1

declare dso_local i32 @dmu_objset_clone(i8*, i8*) #1

declare dso_local i32 @zfs_set_prop_nvlist(i8*, i32, i32*, i32*) #1

declare dso_local i32 @dsl_destroy_head(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
