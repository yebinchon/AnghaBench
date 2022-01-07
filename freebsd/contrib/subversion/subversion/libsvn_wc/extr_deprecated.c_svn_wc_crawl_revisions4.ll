; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crawl_revisions4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crawl_revisions4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_crawl_revisions4(i8* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  store i8* %0, i8** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store i8* %3, i8** %17, align 8
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = call i32* @svn_wc__adm_get_db(i32* %30)
  store i32* %31, i32** %28, align 8
  %32 = load i32*, i32** %28, align 8
  %33 = load i32*, i32** %26, align 8
  %34 = call i32 @svn_wc__context_create_with_db(i32** %27, i32* null, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i8*, i8** %14, align 8
  %37 = load i32*, i32** %26, align 8
  %38 = call i32 @svn_dirent_get_absolute(i8** %29, i8* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load i32*, i32** %27, align 8
  %41 = load i8*, i8** %29, align 8
  %42 = load i32*, i32** %16, align 8
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %21, align 4
  %48 = load i32, i32* %22, align 4
  %49 = load i32, i32* %23, align 4
  %50 = load i8*, i8** %24, align 8
  %51 = load i32*, i32** %26, align 8
  %52 = call i32 @svn_wc_crawl_revisions5(i32* %40, i8* %41, i32* %42, i8* %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32* null, i32* null, i32 %49, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %25, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %67

56:                                               ; preds = %13
  %57 = load i32*, i32** %27, align 8
  %58 = load i8*, i8** %29, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i32, i32* %19, align 4
  %61 = load i32*, i32** %25, align 8
  %62 = load i32, i32* @TRUE, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32*, i32** %26, align 8
  %65 = call i32 @gather_traversal_info(i32* %57, i8* %58, i8* %59, i32 %60, i32* %61, i32 %62, i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  br label %67

67:                                               ; preds = %56, %13
  %68 = load i32*, i32** %27, align 8
  %69 = call i32 @svn_wc_context_destroy(i32* %68)
  %70 = call i32* @svn_error_trace(i32 %69)
  ret i32* %70
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_crawl_revisions5(i32*, i8*, i32*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @gather_traversal_info(i32*, i8*, i8*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
