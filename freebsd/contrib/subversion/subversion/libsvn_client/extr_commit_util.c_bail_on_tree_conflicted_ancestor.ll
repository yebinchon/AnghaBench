; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_bail_on_tree_conflicted_ancestor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_commit_util.c_bail_on_tree_conflicted_ancestor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_wc_notify_failed_conflict = common dso_local global i32 0, align 4
@SVN_ERR_WC_FOUND_CONFLICT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Aborting commit: '%s' remains in tree-conflict\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32 (i8*, i32, i32*)*, i8*, i32*)* @bail_on_tree_conflicted_ancestor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bail_on_tree_conflicted_ancestor(i32* %0, i8* %1, i32 (i8*, i32, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i32, i32*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 (i8*, i32, i32*)* %2, i32 (i8*, i32, i32*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = call i32 @svn_wc__get_wcroot(i8** %12, i32* %14, i8* %15, i32* %16, i32* %17)
  %19 = call i32 @SVN_ERR(i32 %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i8* @svn_dirent_dirname(i8* %20, i32* %21)
  store i8* %22, i8** %8, align 8
  br label %23

23:                                               ; preds = %66, %5
  %24 = load i8*, i8** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = call i64 @svn_dirent_is_ancestor(i8* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %67

28:                                               ; preds = %23
  %29 = load i32*, i32** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @svn_wc_conflicted_p3(i32* null, i32* null, i64* %13, i32* %29, i8* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %9, align 8
  %38 = icmp ne i32 (i8*, i32, i32*)* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* @svn_wc_notify_failed_conflict, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_wc_create_notify(i8* %42, i32 %43, i32* %44)
  %46 = load i32*, i32** %11, align 8
  %47 = call i32 %40(i8* %41, i32 %45, i32* %46)
  br label %48

48:                                               ; preds = %39, %36
  %49 = load i32, i32* @SVN_ERR_WC_FOUND_CONFLICT, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** %8, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @svn_dirent_local_style(i8* %51, i32* %52)
  %54 = call i32* @svn_error_createf(i32 %49, i32* null, i32 %50, i32 %53)
  store i32* %54, i32** %6, align 8
  br label %69

55:                                               ; preds = %28
  %56 = load i8*, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = call i64 @svn_dirent_is_root(i8* %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %67

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i8* @svn_dirent_dirname(i8* %63, i32* %64)
  store i8* %65, i8** %8, align 8
  br label %66

66:                                               ; preds = %62
  br label %23

67:                                               ; preds = %61, %23
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %6, align 8
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i32*, i32** %6, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i64 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_wc_conflicted_p3(i32*, i32*, i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
