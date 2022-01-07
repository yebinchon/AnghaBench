; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_start_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_start_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_REPOS__HOOK_START_COMMIT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__hooks_start_commit(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [6 x i8*], align 16
  %17 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %13, align 8
  %20 = call i8* @svn_repos_start_commit_hook(i32* %18, i32* %19)
  store i8* %20, i8** %14, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = load i32*, i32** %13, align 8
  %23 = call i8* @check_hook_cmd(i8* %21, i64* %15, i32* %22)
  store i8* %23, i8** %14, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %6
  %26 = load i64, i64* %15, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8*, i8** %14, align 8
  %30 = call i32* @hook_symlink_error(i8* %29)
  store i32* %30, i32** %7, align 8
  br label %77

31:                                               ; preds = %25, %6
  %32 = load i8*, i8** %14, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %74

34:                                               ; preds = %31
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = call i8* @svn_cstring_join2(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %39, i32* %40)
  store i8* %41, i8** %17, align 8
  br label %45

42:                                               ; preds = %34
  %43 = load i32*, i32** %13, align 8
  %44 = call i8* @apr_pstrdup(i32* %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %44, i8** %17, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  store i8* %46, i8** %47, align 16
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @svn_repos_path(i32* %48, i32* %49)
  %51 = load i32*, i32** %13, align 8
  %52 = call i8* @svn_dirent_local_style(i32 %50, i32* %51)
  %53 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 1
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i8*, i8** %10, align 8
  br label %59

58:                                               ; preds = %45
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %58 ]
  %61 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 2
  store i8* %60, i8** %61, align 16
  %62 = load i8*, i8** %17, align 8
  %63 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 3
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 4
  store i8* %64, i8** %65, align 16
  %66 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 5
  store i8* null, i8** %66, align 8
  %67 = load i32, i32* @SVN_REPOS__HOOK_START_COMMIT, align 4
  %68 = load i8*, i8** %14, align 8
  %69 = getelementptr inbounds [6 x i8*], [6 x i8*]* %16, i64 0, i64 0
  %70 = load i32*, i32** %9, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @run_hook_cmd(i32* null, i32 %67, i8* %68, i8** %69, i32* %70, i32* null, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %74

74:                                               ; preds = %59, %31
  br label %75

75:                                               ; preds = %74
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %7, align 8
  br label %77

77:                                               ; preds = %75, %28
  %78 = load i32*, i32** %7, align 8
  ret i32* %78
}

declare dso_local i8* @svn_repos_start_commit_hook(i32*, i32*) #1

declare dso_local i8* @check_hook_cmd(i8*, i64*, i32*) #1

declare dso_local i32* @hook_symlink_error(i8*) #1

declare dso_local i8* @svn_cstring_join2(i32*, i8*, i32, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_repos_path(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @run_hook_cmd(i32*, i32, i8*, i8**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
