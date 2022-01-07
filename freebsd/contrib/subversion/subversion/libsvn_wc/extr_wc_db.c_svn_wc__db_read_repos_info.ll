; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_repos_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_repos_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INVALID_REPOS_ID = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_read_repos_info(i32* %0, i8** %1, i8** %2, i8** %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i8** %2, i8*** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32, i32* @INVALID_REPOS_ID, align 4
  store i32 %20, i32* %19, align 4
  %21 = load i8*, i8** %14, align 8
  %22 = call i32 @svn_dirent_is_absolute(i8* %21)
  %23 = call i32 @SVN_ERR_ASSERT(i32 %22)
  %24 = load i32*, i32** %13, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = load i32*, i32** %16, align 8
  %27 = load i32*, i32** %16, align 8
  %28 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %17, i8** %18, i32* %24, i8* %25, i32* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load i32*, i32** %17, align 8
  %31 = call i32 @VERIFY_USABLE_WCROOT(i32* %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i8**, i8*** %10, align 8
  %34 = load i8**, i8*** %11, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %8
  %37 = load i8**, i8*** %12, align 8
  %38 = icmp ne i8** %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %8
  br label %41

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %39
  %42 = phi i32* [ %19, %39 ], [ null, %40 ]
  %43 = load i32*, i32** %17, align 8
  %44 = load i8*, i8** %18, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @db_read_repos_info(i32* %32, i8** %33, i32* %42, i32* %43, i8* %44, i32* %45, i32* %46)
  %48 = load i8**, i8*** %11, align 8
  %49 = load i8**, i8*** %12, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = load i32, i32* %19, align 4
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @svn_wc__db_fetch_repos_info(i8** %48, i8** %49, i32* %50, i32 %51, i32* %52)
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  %55 = load i32*, i32** @SVN_NO_ERROR, align 8
  %56 = load i32*, i32** %17, align 8
  %57 = call i32 @SVN_WC__DB_WITH_TXN4(i32 %47, i32 %53, i32* %54, i32* %55, i32* %56)
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN4(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @db_read_repos_info(i32*, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i8**, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
