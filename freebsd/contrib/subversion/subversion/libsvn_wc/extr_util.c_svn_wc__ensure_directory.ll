; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc__ensure_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_util.c_svn_wc__ensure_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_none = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@APR_ENOTDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"'%s' is not a directory\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__ensure_directory(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @svn_io_check_path(i8* %7, i64* %6, i32* %8)
  %10 = call i32 @SVN_ERR(i32 %9)
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @svn_node_none, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @svn_node_dir, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @APR_ENOTDIR, align 4
  %20 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i8*, i8** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32 @svn_dirent_local_style(i8* %21, i32* %22)
  %24 = call i32* @svn_error_createf(i32 %19, i32* null, i32 %20, i32 %23)
  store i32* %24, i32** %3, align 8
  br label %43

25:                                               ; preds = %14, %2
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @svn_node_none, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @svn_io_make_dir_recursively(i8* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  br label %40

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @svn_node_dir, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %3, align 8
  br label %43

43:                                               ; preds = %41, %18
  %44 = load i32*, i32** %3, align 8
  ret i32* %44
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
