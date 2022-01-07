; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@SVN_NULL_DEVICE_NAME = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_REPOS__HOOK_PRE_COMMIT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__hooks_pre_commit(%struct.TYPE_5__* %0, i32* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [4 x i8*], align 16
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i8* @svn_repos_pre_commit_hook(%struct.TYPE_5__* %16, i32* %17)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i8* @check_hook_cmd(i8* %19, i64* %11, i32* %20)
  store i8* %21, i8** %10, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i8*, i8** %10, align 8
  %28 = call i32* @hook_symlink_error(i8* %27)
  store i32* %28, i32** %5, align 8
  br label %85

29:                                               ; preds = %23, %4
  %30 = load i8*, i8** %10, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %82

32:                                               ; preds = %29
  store i32* null, i32** %14, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  store i8* %33, i8** %34, align 16
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @svn_repos_path(%struct.TYPE_5__* %35, i32* %36)
  %38 = load i32*, i32** %9, align 8
  %39 = call i8* @svn_dirent_local_style(i32 %37, i32* %38)
  %40 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 1
  store i8* %39, i8** %40, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 2
  store i8* %41, i8** %42, align 16
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 3
  store i8* null, i8** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @svn_fs_get_access(i32** %13, i32 %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load i32*, i32** %13, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %63

51:                                               ; preds = %32
  %52 = load i32*, i32** %13, align 8
  %53 = call i32* @svn_fs__access_get_lock_tokens(i32* %52)
  store i32* %53, i32** %15, align 8
  %54 = load i32*, i32** %15, align 8
  %55 = call i64 @apr_hash_count(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32*, i32** %15, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @lock_token_content(i32** %14, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %57, %51
  br label %63

63:                                               ; preds = %62, %32
  %64 = load i32*, i32** %14, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @SVN_NULL_DEVICE_NAME, align 4
  %68 = load i32, i32* @APR_READ, align 4
  %69 = load i32, i32* @APR_OS_DEFAULT, align 4
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @svn_io_file_open(i32** %14, i32 %67, i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %73

73:                                               ; preds = %66, %63
  %74 = load i32, i32* @SVN_REPOS__HOOK_PRE_COMMIT, align 4
  %75 = load i8*, i8** %10, align 8
  %76 = getelementptr inbounds [4 x i8*], [4 x i8*]* %12, i64 0, i64 0
  %77 = load i32*, i32** %7, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @run_hook_cmd(i32* null, i32 %74, i8* %75, i8** %76, i32* %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %73, %29
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %84, i32** %5, align 8
  br label %85

85:                                               ; preds = %83, %26
  %86 = load i32*, i32** %5, align 8
  ret i32* %86
}

declare dso_local i8* @svn_repos_pre_commit_hook(%struct.TYPE_5__*, i32*) #1

declare dso_local i8* @check_hook_cmd(i8*, i64*, i32*) #1

declare dso_local i32* @hook_symlink_error(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_repos_path(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_get_access(i32**, i32) #1

declare dso_local i32* @svn_fs__access_get_lock_tokens(i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @lock_token_content(i32**, i32*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i32 @run_hook_cmd(i32*, i32, i8*, i8**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
