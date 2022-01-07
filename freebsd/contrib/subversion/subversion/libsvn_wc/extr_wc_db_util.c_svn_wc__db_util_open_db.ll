; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_util.c_svn_wc__db_util_open_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_util.c_svn_wc__db_util_open_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_sqlite__mode_rwcreate = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@APR_ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Working copy database '%s' not found\00", align 1
@statements = common dso_local global i8** null, align 8
@STMT_PRAGMA_LOCKING_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"relpath_depth\00", align 1
@TRUE = common dso_local global i32 0, align 4
@relpath_depth_sqlite = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_util_open_db(i32** %0, i8* %1, i8* %2, i32 %3, i64 %4, i32 %5, i8** %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  store i32** %0, i32*** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store i64 %4, i64* %15, align 8
  store i32 %5, i32* %16, align 4
  store i8** %6, i8*** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i32*, i32** %19, align 8
  %25 = call i8* @svn_wc__adm_child(i8* %22, i8* %23, i32* %24)
  store i8* %25, i8** %20, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @svn_sqlite__mode_rwcreate, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %9
  %30 = load i8*, i8** %20, align 8
  %31 = load i32*, i32** %19, align 8
  %32 = call i32 @svn_io_check_path(i8* %30, i64* %21, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* @svn_node_file, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load i32, i32* @APR_ENOENT, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %40 = load i8*, i8** %20, align 8
  %41 = load i32*, i32** %19, align 8
  %42 = call i32 @svn_dirent_local_style(i8* %40, i32* %41)
  %43 = call i32* @svn_error_createf(i32 %38, i32* null, i32 %39, i32 %42)
  store i32* %43, i32** %10, align 8
  br label %78

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %9
  %46 = load i32**, i32*** %11, align 8
  %47 = load i8*, i8** %20, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i8**, i8*** %17, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i8**, i8*** %17, align 8
  br label %55

53:                                               ; preds = %45
  %54 = load i8**, i8*** @statements, align 8
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i8** [ %52, %51 ], [ %54, %53 ]
  %57 = load i32, i32* %16, align 4
  %58 = load i32*, i32** %18, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = call i32 @svn_sqlite__open(i32** %46, i8* %47, i32 %48, i8** %56, i32 0, i32* null, i32 %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %15, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %55
  %65 = load i32**, i32*** %11, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* @STMT_PRAGMA_LOCKING_MODE, align 4
  %68 = call i32 @svn_sqlite__exec_statements(i32* %66, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %64, %55
  %71 = load i32**, i32*** %11, align 8
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = load i32, i32* @relpath_depth_sqlite, align 4
  %75 = call i32 @svn_sqlite__create_scalar_function(i32* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %73, i32 %74, i32* null)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %10, align 8
  br label %78

78:                                               ; preds = %70, %37
  %79 = load i32*, i32** %10, align 8
  ret i32* %79
}

declare dso_local i8* @svn_wc__adm_child(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_sqlite__open(i32**, i8*, i32, i8**, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32*, i32) #1

declare dso_local i32 @svn_sqlite__create_scalar_function(i32*, i8*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
