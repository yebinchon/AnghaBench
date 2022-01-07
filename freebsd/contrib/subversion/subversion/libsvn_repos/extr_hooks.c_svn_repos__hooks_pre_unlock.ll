; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_REPOS__HOOK_PRE_UNLOCK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__hooks_pre_unlock(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [7 x i8*], align 16
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %15, align 8
  %21 = call i8* @svn_repos_pre_unlock_hook(i32* %19, i32* %20)
  store i8* %21, i8** %16, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = call i8* @check_hook_cmd(i8* %22, i64* %17, i32* %23)
  store i8* %24, i8** %16, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %7
  %27 = load i64, i64* %17, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i8*, i8** %16, align 8
  %31 = call i32* @hook_symlink_error(i8* %30)
  store i32* %31, i32** %8, align 8
  br label %78

32:                                               ; preds = %26, %7
  %33 = load i8*, i8** %16, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %75

35:                                               ; preds = %32
  %36 = load i8*, i8** %16, align 8
  %37 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 0
  store i8* %36, i8** %37, align 16
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = call i32 @svn_repos_path(i32* %38, i32* %39)
  %41 = load i32*, i32** %15, align 8
  %42 = call i8* @svn_dirent_local_style(i32 %40, i32* %41)
  %43 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 1
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 2
  store i8* %44, i8** %45, align 16
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i8*, i8** %12, align 8
  br label %51

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %50 ]
  %53 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 3
  store i8* %52, i8** %53, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i8*, i8** %13, align 8
  br label %59

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %58 ]
  %61 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 4
  store i8* %60, i8** %61, align 16
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %66 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 5
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 6
  store i8* null, i8** %67, align 16
  %68 = load i32, i32* @SVN_REPOS__HOOK_PRE_UNLOCK, align 4
  %69 = load i8*, i8** %16, align 8
  %70 = getelementptr inbounds [7 x i8*], [7 x i8*]* %18, i64 0, i64 0
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = call i32 @run_hook_cmd(i32* null, i32 %68, i8* %69, i8** %70, i32* %71, i32* null, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  br label %75

75:                                               ; preds = %59, %32
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %8, align 8
  br label %78

78:                                               ; preds = %76, %29
  %79 = load i32*, i32** %8, align 8
  ret i32* %79
}

declare dso_local i8* @svn_repos_pre_unlock_hook(i32*, i32*) #1

declare dso_local i8* @check_hook_cmd(i8*, i64*, i32*) #1

declare dso_local i32* @hook_symlink_error(i8*) #1

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
