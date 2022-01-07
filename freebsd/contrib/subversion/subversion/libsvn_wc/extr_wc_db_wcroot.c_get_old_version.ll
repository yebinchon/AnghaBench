; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_get_old_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_get_old_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_WC__ADM_ENTRIES = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@SVN_ERR_BAD_VERSION_FILE_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_WC_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"'%s' does not exist\00", align 1
@SVN_WC__ADM_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i32*, i8*, i32*)* @get_old_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @get_old_version(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @SVN_WC__ADM_ENTRIES, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i8* @svn_wc__adm_child(i8* %11, i32 %12, i32* %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_io_check_path(i8* %15, i64* %10, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @svn_node_none, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  store i32 0, i32* %23, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %4, align 8
  br label %80

25:                                               ; preds = %3
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_8__* @svn_io_read_version_file(i32* %26, i8* %27, i32* %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %8, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %31 = icmp eq %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %4, align 8
  br label %80

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SVN_ERR_BAD_VERSION_FILE_FORMAT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @APR_STATUS_IS_ENOENT(i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @APR_STATUS_IS_ENOTDIR(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* @SVN_ERR_WC_MISSING, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %55 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = load i8*, i8** %6, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_dirent_local_style(i8* %56, i32* %57)
  %59 = call %struct.TYPE_8__* @svn_error_createf(i32 %53, %struct.TYPE_8__* %54, i32 %55, i32 %58)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %4, align 8
  br label %80

60:                                               ; preds = %46, %40, %34
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = call i32 @svn_error_clear(%struct.TYPE_8__* %61)
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* @SVN_WC__ADM_FORMAT, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i8* @svn_wc__adm_child(i8* %63, i32 %64, i32* %65)
  store i8* %66, i8** %9, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call %struct.TYPE_8__* @svn_io_read_version_file(i32* %67, i8* %68, i32* %69)
  store %struct.TYPE_8__* %70, %struct.TYPE_8__** %8, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = icmp eq %struct.TYPE_8__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %4, align 8
  br label %80

75:                                               ; preds = %60
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %77 = call i32 @svn_error_clear(%struct.TYPE_8__* %76)
  %78 = load i32*, i32** %5, align 8
  store i32 0, i32* %78, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %4, align 8
  br label %80

80:                                               ; preds = %75, %73, %52, %32, %22
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %81
}

declare dso_local i8* @svn_wc__adm_child(i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_io_read_version_file(i32*, i8*, i32*) #1

declare dso_local i32 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local i32 @APR_STATUS_IS_ENOTDIR(i64) #1

declare dso_local %struct.TYPE_8__* @svn_error_createf(i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
