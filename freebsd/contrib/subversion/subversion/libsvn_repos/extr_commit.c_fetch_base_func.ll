; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_fetch_base_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_fetch_base_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.edit_baton = type { i32, i32 }

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
  %14 = alloca %struct.edit_baton*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  store i8** %0, i8*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = bitcast i8* %20 to %struct.edit_baton*
  store %struct.edit_baton* %21, %struct.edit_baton** %14, align 8
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @SVN_IS_VALID_REVNUM(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %6
  %26 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %27 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @svn_fs_txn_base_revision(i32 %28)
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %25, %6
  %31 = load %struct.edit_baton*, %struct.edit_baton** %14, align 8
  %32 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @svn_fs_revision_root(i32** %18, i32 %33, i32 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load i32*, i32** %18, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32*, i32** %13, align 8
  %41 = call %struct.TYPE_8__* @svn_fs_file_contents(i32** %15, i32* %38, i8* %39, i32* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %19, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %30
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %52 = call i32 @svn_error_clear(%struct.TYPE_8__* %51)
  %53 = load i8**, i8*** %8, align 8
  store i8* null, i8** %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %7, align 8
  br label %78

55:                                               ; preds = %44, %30
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %57 = icmp ne %struct.TYPE_8__* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %60 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %59)
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %7, align 8
  br label %78

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %64 = load i32*, i32** %13, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = call i32 @svn_stream_open_unique(i32** %16, i8** %17, i32* null, i32 %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %15, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = call i32 @svn_stream_copy3(i32* %68, i32* %69, i32* null, i32* null, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32*, i32** %12, align 8
  %74 = load i8*, i8** %17, align 8
  %75 = call i8* @apr_pstrdup(i32* %73, i8* %74)
  %76 = load i8**, i8*** %8, align 8
  store i8* %75, i8** %76, align 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %7, align 8
  br label %78

78:                                               ; preds = %62, %58, %50
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  ret %struct.TYPE_8__* %79
}

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_fs_txn_base_revision(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32, i32, i32*) #1

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
