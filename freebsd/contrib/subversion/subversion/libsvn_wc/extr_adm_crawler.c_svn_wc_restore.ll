; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_svn_wc_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_svn_wc_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"The existing node '%s' can not be restored.\00", align 1
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"The node '%s' can not be restored.\00", align 1
@svn_node_symlink = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_restore(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @svn_io_check_path(i8* %14, i64* %12, i32* %15)
  %17 = call i32 @SVN_ERR(i32 %16)
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @svn_node_none, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @SVN_ERR_WC_PATH_FOUND, align 4
  %23 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = load i8*, i8** %7, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @svn_dirent_local_style(i8* %24, i32* %25)
  %27 = call i32* @svn_error_createf(i32 %22, i32* null, i32 %23, i32 %26)
  store i32* %27, i32** %5, align 8
  br label %92

28:                                               ; preds = %4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_wc__db_read_info(i64* %10, i64* %11, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %13, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %31, i8* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @svn_wc__db_status_normal, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %28
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @svn_wc__db_status_added, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44, %40
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @svn_node_dir, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %48
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @svn_node_file, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32*, i32** %13, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %56, %52, %44
  %60 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i8*, i8** %7, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @svn_dirent_local_style(i8* %62, i32* %63)
  %65 = call i32* @svn_error_createf(i32 %60, i32* null, i32 %61, i32 %64)
  store i32* %65, i32** %5, align 8
  br label %92

66:                                               ; preds = %56, %48, %28
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* @svn_node_file, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* %11, align 8
  %72 = load i64, i64* @svn_node_symlink, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70, %66
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @FALSE, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @restore_file(i32 %77, i8* %78, i32 %79, i32 %80, i32* null, i32* null, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  br label %90

84:                                               ; preds = %70
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @APR_OS_DEFAULT, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = call i32 @svn_io_dir_make(i8* %85, i32 %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  br label %90

90:                                               ; preds = %84, %74
  %91 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %91, i32** %5, align 8
  br label %92

92:                                               ; preds = %90, %59, %21
  %93 = load i32*, i32** %5, align 8
  ret i32* %93
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @restore_file(i32, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
