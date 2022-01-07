; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_post_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_post_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_REPOS__HOOK_POST_COMMIT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__hooks_post_commit(i32* %0, i32* %1, i32 %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [5 x i8*], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call i8* @svn_repos_post_commit_hook(i32* %15, i32* %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i8* @check_hook_cmd(i8* %18, i64* %13, i32* %19)
  store i8* %20, i8** %12, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %5
  %23 = load i64, i64* %13, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i8*, i8** %12, align 8
  %27 = call i32* @hook_symlink_error(i8* %26)
  store i32* %27, i32** %6, align 8
  br label %57

28:                                               ; preds = %22, %5
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  store i8* %32, i8** %33, align 16
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_repos_path(i32* %34, i32* %35)
  %37 = load i32*, i32** %11, align 8
  %38 = call i8* @svn_dirent_local_style(i32 %36, i32* %37)
  %39 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 1
  store i8* %38, i8** %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @apr_psprintf(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 2
  store i8* %42, i8** %43, align 16
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 3
  store i8* %44, i8** %45, align 8
  %46 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 4
  store i8* null, i8** %46, align 16
  %47 = load i32, i32* @SVN_REPOS__HOOK_POST_COMMIT, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  %50 = load i32*, i32** %8, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @run_hook_cmd(i32* null, i32 %47, i8* %48, i8** %49, i32* %50, i32* null, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %54

54:                                               ; preds = %31, %28
  br label %55

55:                                               ; preds = %54
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %6, align 8
  br label %57

57:                                               ; preds = %55, %25
  %58 = load i32*, i32** %6, align 8
  ret i32* %58
}

declare dso_local i8* @svn_repos_post_commit_hook(i32*, i32*) #1

declare dso_local i8* @check_hook_cmd(i8*, i64*, i32*) #1

declare dso_local i32* @hook_symlink_error(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_repos_path(i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @run_hook_cmd(i32*, i32, i8*, i8**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
