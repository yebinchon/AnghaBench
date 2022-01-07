; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_can_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs/extr_editor.c_can_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"'%s' already exists, so may be out of date; try updating\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*)* @can_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @can_create(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @svn_fs_check_path(i64* %8, i32* %11, i8* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @svn_node_none, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %4, align 8
  br label %48

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %9, align 8
  br label %23

23:                                               ; preds = %39, %21
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %43

27:                                               ; preds = %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @svn_fs_node_created_rev(i32* %10, i32* %28, i8* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @SVN_IS_VALID_REVNUM(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %4, align 8
  br label %48

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %9, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i8* @svn_fspath__dirname(i8* %40, i32* %41)
  store i8* %42, i8** %9, align 8
  br label %23

43:                                               ; preds = %23
  %44 = load i32, i32* @SVN_ERR_FS_OUT_OF_DATE, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %46 = load i8*, i8** %6, align 8
  %47 = call i32* @svn_error_createf(i32 %44, i32* null, i32 %45, i8* %46)
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %43, %36, %19
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @svn_fs_node_created_rev(i32*, i32*, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i8* @svn_fspath__dirname(i8*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
