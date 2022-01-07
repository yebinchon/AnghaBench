; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_file_ev2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_export.c_export_file_ev2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { i8* }
%struct.TYPE_3__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Destination file '%s' exists, and will not be overwritten unless forced\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"Destination '%s' exists. Cannot overwrite directory with non-directory\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.edit_baton*, %struct.TYPE_3__*, i32*, i32, i32*)* @export_file_ev2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @export_file_ev2(i8* %0, i8* %1, %struct.edit_baton* %2, %struct.TYPE_3__* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store %struct.edit_baton* %2, %struct.edit_baton** %11, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @svn_path_is_url(i8* %19)
  %21 = call i32 @SVN_ERR_ASSERT(i32 %20)
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @svn_path_is_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %7
  %26 = load i8*, i8** %9, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = call i8* @svn_uri_basename(i8* %26, i32* %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %31 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  br label %41

32:                                               ; preds = %7
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = load i32*, i32** %15, align 8
  %36 = call i32 @append_basename_if_dir(i8** %10, i8* %33, i32 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %40 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %32, %25
  %42 = load i8*, i8** %10, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @svn_io_check_path(i8* %42, i64* %18, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %18, align 8
  %47 = load i64, i64* @svn_node_file, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %41
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* @svn_node_unknown, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %49, %41
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %59 = load i8*, i8** %10, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = call i32 @svn_dirent_local_style(i8* %59, i32* %60)
  %62 = call i32* @svn_error_createf(i32 %57, i32* null, i32 %58, i32 %61)
  store i32* %62, i32** %8, align 8
  br label %94

63:                                               ; preds = %53, %49
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* @svn_node_dir, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %69 = call i32 @_(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i8*, i8** %10, align 8
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @svn_dirent_local_style(i8* %70, i32* %71)
  %73 = call i32* @svn_error_createf(i32 %68, i32* null, i32 %69, i32 %72)
  store i32* %73, i32** %8, align 8
  br label %94

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** %15, align 8
  %77 = call i32* @svn_stream_buffered(i32* %76)
  store i32* %77, i32** %17, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %17, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @svn_ra_get_file(i32* %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32* %82, i32* null, i32** %16, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @add_file_ev2(%struct.edit_baton* %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* null, i32* %87, i32* %88, i32 %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %8, align 8
  br label %94

94:                                               ; preds = %75, %67, %56
  %95 = load i32*, i32** %8, align 8
  ret i32* %95
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i8* @svn_uri_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @append_basename_if_dir(i8**, i8*, i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_stream_buffered(i32*) #1

declare dso_local i32 @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @add_file_ev2(%struct.edit_baton*, i8*, i32*, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
