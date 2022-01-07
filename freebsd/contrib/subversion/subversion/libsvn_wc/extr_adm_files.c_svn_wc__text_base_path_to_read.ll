; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__text_base_path_to_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__text_base_path_to_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Can only get the pristine contents of files; '%s' is not a file\00", align 1
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Cannot get the pristine contents of '%s' because its delete is already committed\00", align 1
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Cannot get the pristine contents of '%s' because it has an unexpected status\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Node '%s' has no pristine text\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__text_base_path_to_read(i8** %0, i32* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i8** %0, i8*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @svn_wc__db_read_pristine_info(i64* %12, i64* %13, i32* null, i32* null, i32* null, i32* null, i32** %14, i32* null, i32* null, i32* null, i32* %15, i8* %16, i32* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* @svn_node_file, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %26 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @svn_dirent_local_style(i8* %27, i32* %28)
  %30 = call i32* @svn_error_createf(i32 %25, i32* null, i32 %26, i32 %29)
  store i32* %30, i32** %6, align 8
  br label %82

31:                                               ; preds = %5
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %37 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i8*, i8** %9, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_dirent_local_style(i8* %38, i32* %39)
  %41 = call i32* @svn_error_createf(i32 %36, i32* null, i32 %37, i32 %40)
  store i32* %41, i32** %6, align 8
  br label %82

42:                                               ; preds = %31
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %50, %46, %42
  %55 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %56 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8*, i8** %9, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @svn_dirent_local_style(i8* %57, i32* %58)
  %60 = call i32* @svn_error_createf(i32 %55, i32* null, i32 %56, i32 %59)
  store i32* %60, i32** %6, align 8
  br label %82

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32*, i32** %14, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i8*, i8** %9, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @svn_dirent_local_style(i8* %68, i32* %69)
  %71 = call i32* @svn_error_createf(i32 %66, i32* null, i32 %67, i32 %70)
  store i32* %71, i32** %6, align 8
  br label %82

72:                                               ; preds = %62
  %73 = load i8**, i8*** %7, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = call i32 @svn_wc__db_pristine_get_path(i8** %73, i32* %74, i8* %75, i32* %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %6, align 8
  br label %82

82:                                               ; preds = %72, %65, %54, %35, %24
  %83 = load i32*, i32** %6, align 8
  ret i32* %83
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_pristine_info(i64*, i64*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
