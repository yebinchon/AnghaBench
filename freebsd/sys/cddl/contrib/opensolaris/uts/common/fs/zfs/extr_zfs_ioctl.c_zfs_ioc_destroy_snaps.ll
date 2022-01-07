; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_destroy_snaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_destroy_snaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"defer\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_destroy_snaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_destroy_snaps(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i64 @nvlist_lookup_nvlist(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32** %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @SET_ERROR(i32 %18)
  store i32 %19, i32* %4, align 4
  br label %70

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @nvlist_exists(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %22, i32* %12, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @nvlist_next_nvpair(i32* %25, i32* null)
  store i32* %26, i32** %11, align 8
  br label %27

27:                                               ; preds = %61, %20
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load i32*, i32** %11, align 8
  %32 = call i8* @nvpair_name(i32* %31)
  store i8* %32, i8** %13, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @strncmp(i8* %33, i8* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 47
  br i1 %45, label %46, label %57

46:                                               ; preds = %38
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 64
  br i1 %53, label %54, label %57

54:                                               ; preds = %46, %30
  %55 = load i32, i32* @EXDEV, align 4
  %56 = call i32 @SET_ERROR(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %70

57:                                               ; preds = %46, %38
  %58 = load i32*, i32** %11, align 8
  %59 = call i8* @nvpair_name(i32* %58)
  %60 = call i32 @zfs_unmount_snap(i8* %59)
  br label %61

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @nvlist_next_nvpair(i32* %62, i32* %63)
  store i32* %64, i32** %11, align 8
  br label %27

65:                                               ; preds = %27
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @dsl_destroy_snapshots_nvl(i32* %66, i32 %67, i32* %68)
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %65, %54, %17
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @zfs_unmount_snap(i8*) #1

declare dso_local i32 @dsl_destroy_snapshots_nvl(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
