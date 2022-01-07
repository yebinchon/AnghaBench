; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_hold_ds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_bookmark.c_dsl_bookmark_hold_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32**, i8*, i8**)* @dsl_bookmark_hold_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_bookmark_hold_ds(i32* %0, i8* %1, i32** %2, i8* %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8** %4, i8*** %11, align 8
  %16 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %60

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = call i8* @strchr(i8* %28, i8 signext 35)
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @SET_ERROR(i32 %33)
  store i32 %34, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %60

35:                                               ; preds = %27
  %36 = load i8*, i8** %14, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8**, i8*** %11, align 8
  store i8* %37, i8** %38, align 8
  %39 = load i8**, i8*** %11, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @zfs_component_namecheck(i8* %40, i32* null, i32* null)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %60

46:                                               ; preds = %35
  %47 = load i8*, i8** %8, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i32 @strlcpy(i8* %19, i8* %47, i32 %54)
  %56 = load i32*, i32** %7, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = load i32**, i32*** %9, align 8
  %59 = call i32 @dsl_dataset_hold(i32* %56, i8* %19, i8* %57, i32** %58)
  store i32 %59, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %60

60:                                               ; preds = %46, %43, %32, %24
  %61 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @zfs_component_namecheck(i8*, i32*, i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i8*, i32**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
