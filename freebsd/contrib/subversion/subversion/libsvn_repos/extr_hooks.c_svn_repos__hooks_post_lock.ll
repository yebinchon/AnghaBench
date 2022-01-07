; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_post_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_post_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_REPOS__HOOK_POST_LOCK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__hooks_post_lock(i32* %0, i32* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [5 x i8*], align 16
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i8* @svn_repos_post_lock_hook(i32* %17, i32* %18)
  store i8* %19, i8** %12, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i8* @check_hook_cmd(i8* %20, i64* %13, i32* %21)
  store i8* %22, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i64, i64* %13, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %12, align 8
  %29 = call i32* @hook_symlink_error(i8* %28)
  store i32* %29, i32** %6, align 8
  br label %71

30:                                               ; preds = %24, %5
  %31 = load i8*, i8** %12, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %68

33:                                               ; preds = %30
  store i32* null, i32** %15, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @svn_cstring_join2(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %35, i32* %36)
  %38 = load i32*, i32** %11, align 8
  %39 = call i32* @svn_string_create(i32 %37, i32* %38)
  store i32* %39, i32** %16, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @create_temp_file(i32** %15, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i8*, i8** %12, align 8
  %45 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  store i8* %44, i8** %45, align 16
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @svn_repos_path(i32* %46, i32* %47)
  %49 = load i32*, i32** %11, align 8
  %50 = call i8* @svn_dirent_local_style(i32 %48, i32* %49)
  %51 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 1
  store i8* %50, i8** %51, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 2
  store i8* %52, i8** %53, align 16
  %54 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 3
  store i8* null, i8** %54, align 8
  %55 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 4
  store i8* null, i8** %55, align 16
  %56 = load i32, i32* @SVN_REPOS__HOOK_POST_LOCK, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds [5 x i8*], [5 x i8*]* %14, i64 0, i64 0
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @run_hook_cmd(i32* null, i32 %56, i8* %57, i8** %58, i32* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %15, align 8
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @svn_io_file_close(i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %33, %30
  br label %69

69:                                               ; preds = %68
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %70, i32** %6, align 8
  br label %71

71:                                               ; preds = %69, %27
  %72 = load i32*, i32** %6, align 8
  ret i32* %72
}

declare dso_local i8* @svn_repos_post_lock_hook(i32*, i32*) #1

declare dso_local i8* @check_hook_cmd(i8*, i64*, i32*) #1

declare dso_local i32* @hook_symlink_error(i8*) #1

declare dso_local i32* @svn_string_create(i32, i32*) #1

declare dso_local i32 @svn_cstring_join2(i32*, i8*, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_temp_file(i32**, i32*, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_repos_path(i32*, i32*) #1

declare dso_local i32 @run_hook_cmd(i32*, i32, i8*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
