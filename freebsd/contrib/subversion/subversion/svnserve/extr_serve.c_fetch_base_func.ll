; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_fetch_base_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svnserve/extr_serve.c_fetch_base_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
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
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = call i8* @get_normalized_repo_rel_path(i8* %19, i8* %20, i32* %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @get_revision_root(i32** %17, i8* %23, i32 %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %17, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call %struct.TYPE_8__* @svn_fs_file_contents(i32** %14, i32* %28, i8* %29, i32* %30)
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %18, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %33 = icmp ne %struct.TYPE_8__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %6
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %42 = call i32 @svn_error_clear(%struct.TYPE_8__* %41)
  %43 = load i8**, i8*** %8, align 8
  store i8* null, i8** %43, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %7, align 8
  br label %68

45:                                               ; preds = %34, %6
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %50 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %49)
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %7, align 8
  br label %68

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = call i32 @svn_stream_open_unique(i32** %15, i8** %16, i32* null, i32 %53, i32* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @svn_stream_copy3(i32* %58, i32* %59, i32* null, i32* null, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %12, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = call i8* @apr_pstrdup(i32* %63, i8* %64)
  %66 = load i8**, i8*** %8, align 8
  store i8* %65, i8** %66, align 8
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %7, align 8
  br label %68

68:                                               ; preds = %52, %48, %40
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %69
}

declare dso_local i8* @get_normalized_repo_rel_path(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_revision_root(i32**, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_fs_file_contents(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
