; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_read_info(i32* %0, i32* %1, i32* %2, i8** %3, i8** %4, i8** %5, i32* %6, i32* %7, i8** %8, i32* %9, i32** %10, i8** %11, i8** %12, i8** %13, i8** %14, i32* %15, i32** %16, i32* %17, i32* %18, i8** %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i8* %28, i32* %29, i32* %30) #0 {
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i8**, align 8
  %36 = alloca i8**, align 8
  %37 = alloca i8**, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i8**, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32**, align 8
  %43 = alloca i8**, align 8
  %44 = alloca i8**, align 8
  %45 = alloca i8**, align 8
  %46 = alloca i8**, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32**, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i8**, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32*, align 8
  %55 = alloca i32*, align 8
  %56 = alloca i32*, align 8
  %57 = alloca i32*, align 8
  %58 = alloca i32*, align 8
  %59 = alloca i32*, align 8
  %60 = alloca i8*, align 8
  %61 = alloca i32*, align 8
  %62 = alloca i32*, align 8
  %63 = alloca i32*, align 8
  %64 = alloca i8*, align 8
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  store i32* %0, i32** %32, align 8
  store i32* %1, i32** %33, align 8
  store i32* %2, i32** %34, align 8
  store i8** %3, i8*** %35, align 8
  store i8** %4, i8*** %36, align 8
  store i8** %5, i8*** %37, align 8
  store i32* %6, i32** %38, align 8
  store i32* %7, i32** %39, align 8
  store i8** %8, i8*** %40, align 8
  store i32* %9, i32** %41, align 8
  store i32** %10, i32*** %42, align 8
  store i8** %11, i8*** %43, align 8
  store i8** %12, i8*** %44, align 8
  store i8** %13, i8*** %45, align 8
  store i8** %14, i8*** %46, align 8
  store i32* %15, i32** %47, align 8
  store i32** %16, i32*** %48, align 8
  store i32* %17, i32** %49, align 8
  store i32* %18, i32** %50, align 8
  store i8** %19, i8*** %51, align 8
  store i32* %20, i32** %52, align 8
  store i32* %21, i32** %53, align 8
  store i32* %22, i32** %54, align 8
  store i32* %23, i32** %55, align 8
  store i32* %24, i32** %56, align 8
  store i32* %25, i32** %57, align 8
  store i32* %26, i32** %58, align 8
  store i32* %27, i32** %59, align 8
  store i8* %28, i8** %60, align 8
  store i32* %29, i32** %61, align 8
  store i32* %30, i32** %62, align 8
  %67 = load i8*, i8** %60, align 8
  %68 = call i32 @svn_dirent_is_absolute(i8* %67)
  %69 = call i32 @SVN_ERR_ASSERT(i32 %68)
  %70 = load i32*, i32** %59, align 8
  %71 = load i8*, i8** %60, align 8
  %72 = load i32*, i32** %62, align 8
  %73 = load i32*, i32** %62, align 8
  %74 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %63, i8** %64, i32* %70, i8* %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %63, align 8
  %77 = call i32 @VERIFY_USABLE_WCROOT(i32* %76)
  %78 = load i32*, i32** %32, align 8
  %79 = load i32*, i32** %33, align 8
  %80 = load i32*, i32** %34, align 8
  %81 = load i8**, i8*** %35, align 8
  %82 = load i32*, i32** %38, align 8
  %83 = load i32*, i32** %39, align 8
  %84 = load i8**, i8*** %40, align 8
  %85 = load i32*, i32** %41, align 8
  %86 = load i32**, i32*** %42, align 8
  %87 = load i8**, i8*** %43, align 8
  %88 = load i8**, i8*** %44, align 8
  %89 = load i32*, i32** %47, align 8
  %90 = load i32**, i32*** %48, align 8
  %91 = load i32*, i32** %49, align 8
  %92 = load i32*, i32** %50, align 8
  %93 = load i8**, i8*** %51, align 8
  %94 = load i32*, i32** %52, align 8
  %95 = load i32*, i32** %53, align 8
  %96 = load i32*, i32** %54, align 8
  %97 = load i32*, i32** %55, align 8
  %98 = load i32*, i32** %56, align 8
  %99 = load i32*, i32** %57, align 8
  %100 = load i32*, i32** %58, align 8
  %101 = load i32*, i32** %63, align 8
  %102 = load i8*, i8** %64, align 8
  %103 = load i32*, i32** %61, align 8
  %104 = load i32*, i32** %62, align 8
  %105 = call i32 @read_info(i32* %78, i32* %79, i32* %80, i8** %81, i32* %65, i32* %82, i32* %83, i8** %84, i32* %85, i32** %86, i8** %87, i8** %88, i32* %66, i32* %89, i32** %90, i32* %91, i32* %92, i8** %93, i32* %94, i32* %95, i32* %96, i32* %97, i32* %98, i32* %99, i32* %100, i32* %101, i8* %102, i32* %103, i32* %104)
  %106 = load i8**, i8*** %36, align 8
  %107 = load i8**, i8*** %37, align 8
  %108 = load i32*, i32** %63, align 8
  %109 = load i32, i32* %65, align 4
  %110 = load i32*, i32** %61, align 8
  %111 = call i32 @svn_wc__db_fetch_repos_info(i8** %106, i8** %107, i32* %108, i32 %109, i32* %110)
  %112 = load i8**, i8*** %45, align 8
  %113 = load i8**, i8*** %46, align 8
  %114 = load i32*, i32** %63, align 8
  %115 = load i32, i32* %66, align 4
  %116 = load i32*, i32** %61, align 8
  %117 = call i32 @svn_wc__db_fetch_repos_info(i8** %112, i8** %113, i32* %114, i32 %115, i32* %116)
  %118 = load i32*, i32** @SVN_NO_ERROR, align 8
  %119 = load i32*, i32** %63, align 8
  %120 = call i32 @SVN_WC__DB_WITH_TXN4(i32 %105, i32 %111, i32 %117, i32* %118, i32* %119)
  %121 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %121
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN4(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @read_info(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i8**, i32*, i32**, i8**, i8**, i32*, i32*, i32**, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i8**, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
