; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_fetch_base_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_repos_diff.c_fetch_base_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.edit_baton = type { i32, i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8**, i8*, i8*, i32, i32*, i32*)* @fetch_base_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @fetch_base_func(i8** %0, i8* %1, i8* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %struct.edit_baton*
  store %struct.edit_baton* %18, %struct.edit_baton** %14, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @SVN_IS_VALID_REVNUM(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %24 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %22, %6
  %27 = load i8**, i8*** %8, align 8
  %28 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %29 = load i32*, i32** %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @svn_stream_open_unique(i32** %15, i8** %27, i32* null, i32 %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %34 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call %struct.TYPE_8__* @svn_ra_get_file(i32 %35, i8* %36, i32 %37, i32* %38, i32* null, i32* null, i32* %39)
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %16, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %43, label %57

43:                                               ; preds = %26
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = call i32 @svn_error_clear(%struct.TYPE_8__* %50)
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @svn_stream_close(i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i8**, i8*** %8, align 8
  store i8* null, i8** %55, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %7, align 8
  br label %69

57:                                               ; preds = %43, %26
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %59 = icmp ne %struct.TYPE_8__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %62 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %61)
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %7, align 8
  br label %69

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %15, align 8
  %66 = call i32 @svn_stream_close(i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %7, align 8
  br label %69

69:                                               ; preds = %64, %60, %49
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %70
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_ra_get_file(i32, i8*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
