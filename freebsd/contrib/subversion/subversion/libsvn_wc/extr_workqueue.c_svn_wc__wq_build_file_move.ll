; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_svn_wc__wq_build_file_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_svn_wc__wq_build_file_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"'%s' not found\00", align 1
@OP_FILE_MOVE = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__wq_build_file_move(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = call i32* @svn_skel__make_empty_list(i32* %18)
  %20 = load i32**, i32*** %9, align 8
  store i32* %19, i32** %20, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @svn_dirent_is_absolute(i8* %21)
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @svn_dirent_is_absolute(i8* %24)
  %26 = call i32 @SVN_ERR_ASSERT(i32 %25)
  %27 = load i8*, i8** %13, align 8
  %28 = call i32 @svn_dirent_is_absolute(i8* %27)
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load i8*, i8** %12, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @svn_io_check_path(i8* %30, i64* %16, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %16, align 8
  %35 = load i64, i64* @svn_node_none, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %7
  %38 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** %12, align 8
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @svn_dirent_local_style(i8* %40, i32* %41)
  %43 = call i32* @svn_error_createf(i32 %38, i32* null, i32 %39, i32 %42)
  store i32* %43, i32** %8, align 8
  br label %75

44:                                               ; preds = %7
  %45 = load i32*, i32** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @svn_wc__db_to_relpath(i8** %17, i32* %45, i8* %46, i8* %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i8*, i8** %17, align 8
  %53 = load i32**, i32*** %9, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = call i32 @svn_skel__prepend_str(i8* %52, i32* %54, i32* %55)
  %57 = load i32*, i32** %10, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @svn_wc__db_to_relpath(i8** %17, i32* %57, i8* %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i8*, i8** %17, align 8
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @svn_skel__prepend_str(i8* %64, i32* %66, i32* %67)
  %69 = load i8*, i8** @OP_FILE_MOVE, align 8
  %70 = load i32**, i32*** %9, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = load i32*, i32** %14, align 8
  %73 = call i32 @svn_skel__prepend_str(i8* %69, i32* %71, i32* %72)
  %74 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %74, i32** %8, align 8
  br label %75

75:                                               ; preds = %44, %37
  %76 = load i32*, i32** %8, align 8
  ret i32* %76
}

declare dso_local i32* @svn_skel__make_empty_list(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_to_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_skel__prepend_str(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
