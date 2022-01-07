; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__get_pristine_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_files.c_svn_wc__get_pristine_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_INVALID_FILESIZE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Can only get the pristine contents of files; '%s' is not a file\00", align 1
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Cannot get the pristine contents of '%s' because its delete is already committed\00", align 1
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [77 x i8] c"Cannot get the pristine contents of '%s' because it has an unexpected status\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_pristine_contents(i32** %0, i32* %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %6
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = call i32 @svn_wc__db_read_pristine_info(i64* %14, i64* %15, i32* null, i32* null, i32* null, i32* null, i32** %16, i32* null, i32* null, i32* null, i32* %23, i8* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @svn_node_file, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %22
  %33 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %34 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %11, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = call i32 @svn_dirent_local_style(i8* %35, i32* %36)
  %38 = call i32* @svn_error_createf(i32 %33, i32* null, i32 %34, i32 %37)
  store i32* %38, i32** %7, align 8
  br label %98

39:                                               ; preds = %22
  %40 = load i64, i64* %14, align 8
  %41 = load i64, i64* @svn_wc__db_status_added, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32*, i32** %16, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i32**, i32*** %8, align 8
  store i32* null, i32** %47, align 8
  %48 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %48, i32** %7, align 8
  br label %98

49:                                               ; preds = %43, %39
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %55 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @svn_dirent_local_style(i8* %56, i32* %57)
  %59 = call i32* @svn_error_createf(i32 %54, i32* null, i32 %55, i32 %58)
  store i32* %59, i32** %7, align 8
  br label %98

60:                                               ; preds = %49
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %72, label %64

64:                                               ; preds = %60
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %68, %64, %60
  %73 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i8*, i8** %11, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @svn_dirent_local_style(i8* %75, i32* %76)
  %78 = call i32* @svn_error_createf(i32 %73, i32* null, i32 %74, i32 %77)
  store i32* %78, i32** %7, align 8
  br label %98

79:                                               ; preds = %68
  br label %80

80:                                               ; preds = %79
  br label %81

81:                                               ; preds = %80
  %82 = load i32*, i32** %16, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32**, i32*** %8, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i32*, i32** %10, align 8
  %88 = load i8*, i8** %11, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @svn_wc__db_pristine_read(i32** %85, i32* %86, i32* %87, i8* %88, i32* %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  br label %96

94:                                               ; preds = %81
  %95 = load i32**, i32*** %8, align 8
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %94, %84
  %97 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %97, i32** %7, align 8
  br label %98

98:                                               ; preds = %96, %72, %53, %46, %32
  %99 = load i32*, i32** %7, align 8
  ret i32* %99
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_pristine_info(i64*, i64*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_read(i32**, i32*, i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
