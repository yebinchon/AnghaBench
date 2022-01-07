; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_revprop_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_revprop_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NULL_DEVICE_NAME = common dso_local global i32 0, align 4
@APR_READ = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_REPOS__HOOK_PRE_REVPROP_CHANGE = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_DISABLED_FEATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [122 x i8] c"Repository has not been enabled to accept revision propchanges;\0Aask the administrator to create a pre-revprop-change hook\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__hooks_pre_revprop_change(i32* %0, i32* %1, i32 %2, i8* %3, i8* %4, i32* %5, i8 signext %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8, align 1
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [7 x i8*], align 16
  %21 = alloca i32*, align 8
  %22 = alloca [2 x i8], align 1
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8 %6, i8* %16, align 1
  store i32* %7, i32** %17, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = call i8* @svn_repos_pre_revprop_change_hook(i32* %23, i32* %24)
  store i8* %25, i8** %18, align 8
  %26 = load i8*, i8** %18, align 8
  %27 = load i32*, i32** %17, align 8
  %28 = call i8* @check_hook_cmd(i8* %26, i64* %19, i32* %27)
  store i8* %28, i8** %18, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %8
  %31 = load i64, i64* %19, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i8*, i8** %18, align 8
  %35 = call i32* @hook_symlink_error(i8* %34)
  store i32* %35, i32** %9, align 8
  br label %102

36:                                               ; preds = %30, %8
  %37 = load i8*, i8** %18, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %95

39:                                               ; preds = %36
  store i32* null, i32** %21, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32*, i32** %15, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = call i32 @create_temp_file(i32** %21, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @SVN_NULL_DEVICE_NAME, align 4
  %49 = load i32, i32* @APR_READ, align 4
  %50 = load i32, i32* @APR_OS_DEFAULT, align 4
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 @svn_io_file_open(i32** %21, i32 %48, i32 %49, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %47, %42
  %55 = load i8, i8* %16, align 1
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 1
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %18, align 8
  %59 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 0
  store i8* %58, i8** %59, align 16
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = call i32 @svn_repos_path(i32* %60, i32* %61)
  %63 = load i32*, i32** %17, align 8
  %64 = call i8* @svn_dirent_local_style(i32 %62, i32* %63)
  %65 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 1
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = load i32, i32* %12, align 4
  %68 = call i8* @apr_psprintf(i32* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 2
  store i8* %68, i8** %69, align 16
  %70 = load i8*, i8** %13, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %54
  %73 = load i8*, i8** %13, align 8
  br label %75

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %72
  %76 = phi i8* [ %73, %72 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %74 ]
  %77 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 3
  store i8* %76, i8** %77, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 4
  store i8* %78, i8** %79, align 16
  %80 = getelementptr inbounds [2 x i8], [2 x i8]* %22, i64 0, i64 0
  %81 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 5
  store i8* %80, i8** %81, align 8
  %82 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 6
  store i8* null, i8** %82, align 16
  %83 = load i32, i32* @SVN_REPOS__HOOK_PRE_REVPROP_CHANGE, align 4
  %84 = load i8*, i8** %18, align 8
  %85 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 0
  %86 = load i32*, i32** %11, align 8
  %87 = load i32*, i32** %21, align 8
  %88 = load i32*, i32** %17, align 8
  %89 = call i32 @run_hook_cmd(i32* null, i32 %83, i8* %84, i8** %85, i32* %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %21, align 8
  %92 = load i32*, i32** %17, align 8
  %93 = call i32 @svn_io_file_close(i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %99

95:                                               ; preds = %36
  %96 = load i32, i32* @SVN_ERR_REPOS_DISABLED_FEATURE, align 4
  %97 = call i32 @_(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.2, i64 0, i64 0))
  %98 = call i32* @svn_error_create(i32 %96, i32* null, i32 %97)
  store i32* %98, i32** %9, align 8
  br label %102

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %9, align 8
  br label %102

102:                                              ; preds = %100, %95, %33
  %103 = load i32*, i32** %9, align 8
  ret i32* %103
}

declare dso_local i8* @svn_repos_pre_revprop_change_hook(i32*, i32*) #1

declare dso_local i8* @check_hook_cmd(i8*, i64*, i32*) #1

declare dso_local i32* @hook_symlink_error(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_temp_file(i32**, i32*, i32*) #1

declare dso_local i32 @svn_io_file_open(i32**, i32, i32, i32, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_repos_path(i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @run_hook_cmd(i32*, i32, i8*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
