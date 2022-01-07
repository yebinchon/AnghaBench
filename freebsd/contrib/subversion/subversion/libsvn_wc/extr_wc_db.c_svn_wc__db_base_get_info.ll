; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@INVALID_REPOS_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_base_get_info(i32* %0, i32* %1, i32* %2, i8** %3, i8** %4, i8** %5, i32* %6, i32* %7, i8** %8, i32* %9, i32** %10, i8** %11, i32** %12, i32* %13, i32** %14, i32* %15, i32* %16, i8* %17, i32* %18, i32* %19) #0 {
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8**, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32**, align 8
  %32 = alloca i8**, align 8
  %33 = alloca i32**, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32**, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i64, align 8
  store i32* %0, i32** %21, align 8
  store i32* %1, i32** %22, align 8
  store i32* %2, i32** %23, align 8
  store i8** %3, i8*** %24, align 8
  store i8** %4, i8*** %25, align 8
  store i8** %5, i8*** %26, align 8
  store i32* %6, i32** %27, align 8
  store i32* %7, i32** %28, align 8
  store i8** %8, i8*** %29, align 8
  store i32* %9, i32** %30, align 8
  store i32** %10, i32*** %31, align 8
  store i8** %11, i8*** %32, align 8
  store i32** %12, i32*** %33, align 8
  store i32* %13, i32** %34, align 8
  store i32** %14, i32*** %35, align 8
  store i32* %15, i32** %36, align 8
  store i32* %16, i32** %37, align 8
  store i8* %17, i8** %38, align 8
  store i32* %18, i32** %39, align 8
  store i32* %19, i32** %40, align 8
  %44 = load i8*, i8** %38, align 8
  %45 = call i32 @svn_dirent_is_absolute(i8* %44)
  %46 = call i32 @SVN_ERR_ASSERT(i32 %45)
  %47 = load i32*, i32** %37, align 8
  %48 = load i8*, i8** %38, align 8
  %49 = load i32*, i32** %40, align 8
  %50 = load i32*, i32** %40, align 8
  %51 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %41, i8** %42, i32* %47, i8* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %41, align 8
  %54 = call i32 @VERIFY_USABLE_WCROOT(i32* %53)
  %55 = load i32*, i32** %21, align 8
  %56 = load i32*, i32** %22, align 8
  %57 = load i32*, i32** %23, align 8
  %58 = load i8**, i8*** %24, align 8
  %59 = load i32*, i32** %27, align 8
  %60 = load i32*, i32** %28, align 8
  %61 = load i8**, i8*** %29, align 8
  %62 = load i32*, i32** %30, align 8
  %63 = load i32**, i32*** %31, align 8
  %64 = load i8**, i8*** %32, align 8
  %65 = load i32**, i32*** %33, align 8
  %66 = load i32*, i32** %34, align 8
  %67 = load i32**, i32*** %35, align 8
  %68 = load i32*, i32** %36, align 8
  %69 = load i32*, i32** %41, align 8
  %70 = load i8*, i8** %42, align 8
  %71 = load i32*, i32** %39, align 8
  %72 = load i32*, i32** %40, align 8
  %73 = call i32 @svn_wc__db_base_get_info_internal(i32* %55, i32* %56, i32* %57, i8** %58, i64* %43, i32* %59, i32* %60, i8** %61, i32* %62, i32** %63, i8** %64, i32** %65, i32* %66, i32** %67, i32* %68, i32* %69, i8* %70, i32* %71, i32* %72)
  %74 = load i8**, i8*** %25, align 8
  %75 = load i8**, i8*** %26, align 8
  %76 = load i32*, i32** %41, align 8
  %77 = load i64, i64* %43, align 8
  %78 = load i32*, i32** %39, align 8
  %79 = call i32 @svn_wc__db_fetch_repos_info(i8** %74, i8** %75, i32* %76, i64 %77, i32* %78)
  %80 = load i32*, i32** @SVN_NO_ERROR, align 8
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  %82 = load i32*, i32** %41, align 8
  %83 = call i32 @SVN_WC__DB_WITH_TXN4(i32 %73, i32 %79, i32* %80, i32* %81, i32* %82)
  %84 = load i64, i64* %43, align 8
  %85 = load i64, i64* @INVALID_REPOS_ID, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @SVN_ERR_ASSERT(i32 %87)
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN4(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i64*, i32*, i32*, i8**, i32*, i32**, i8**, i32**, i32*, i32**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i8**, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
