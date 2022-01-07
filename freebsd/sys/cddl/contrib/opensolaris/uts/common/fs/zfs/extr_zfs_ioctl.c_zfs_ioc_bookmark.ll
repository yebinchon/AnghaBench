; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_bookmark.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_bookmark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_bookmark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_bookmark(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32* @nvlist_next_nvpair(i32* %11, i32* null)
  store i32* %12, i32** %8, align 8
  br label %13

13:                                               ; preds = %46, %3
  %14 = load i32*, i32** %8, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @nvpair_value_string(i32* %17, i8** %9)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @SET_ERROR(i32 %21)
  store i32 %22, i32* %4, align 4
  br label %54

23:                                               ; preds = %16
  %24 = load i32*, i32** %6, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32* @nvlist_next_nvpair(i32* %24, i32* %25)
  store i32* %26, i32** %10, align 8
  br label %27

27:                                               ; preds = %41, %23
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @nvpair_name(i32* %31)
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @nvpair_name(i32* %33)
  %35 = call i64 @strcmp(i32 %32, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %54

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @nvlist_next_nvpair(i32* %42, i32* %43)
  store i32* %44, i32** %10, align 8
  br label %27

45:                                               ; preds = %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32* @nvlist_next_nvpair(i32* %47, i32* %48)
  store i32* %49, i32** %8, align 8
  br label %13

50:                                               ; preds = %13
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @dsl_bookmark_create(i32* %51, i32* %52)
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %37, %20
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @dsl_bookmark_create(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
