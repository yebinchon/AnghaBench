; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt__arg_canonicalize_url.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt__arg_canonicalize_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_PATH_LOCAL_SEPARATOR = common dso_local global i8 0, align 1
@SVN_ERR_BAD_URL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"URL '%s' contains a '..' element\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_opt__arg_canonicalize_url(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i8* @svn_path_uri_from_iri(i8* %10, i32* %11)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i8* @svn_path_uri_autoescape(i8* %13, i32* %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = load i8, i8* @SVN_PATH_LOCAL_SEPARATOR, align 1
  %18 = call i64 @strchr(i8* %16, i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = call i8* @apr_pstrdup(i32* %21, i8* %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  store i8* %24, i8** %8, align 8
  br label %25

25:                                               ; preds = %40, %20
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load i8*, i8** %9, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @SVN_PATH_LOCAL_SEPARATOR, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i8*, i8** %9, align 8
  store i8 47, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  br label %25

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43, %3
  %45 = load i8*, i8** %8, align 8
  %46 = call i64 @svn_path_is_backpath_present(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* @SVN_ERR_BAD_URL, align 4
  %50 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** %8, align 8
  %52 = call i32* @svn_error_createf(i32 %49, i32 0, i32 %50, i8* %51)
  store i32* %52, i32** %4, align 8
  br label %60

53:                                               ; preds = %44
  %54 = load i8*, i8** %8, align 8
  %55 = load i32*, i32** %7, align 8
  %56 = call i8* @svn_uri_canonicalize(i8* %54, i32* %55)
  store i8* %56, i8** %8, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8**, i8*** %5, align 8
  store i8* %57, i8** %58, align 8
  %59 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %59, i32** %4, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i32*, i32** %4, align 8
  ret i32* %61
}

declare dso_local i8* @svn_path_uri_from_iri(i8*, i32*) #1

declare dso_local i8* @svn_path_uri_autoescape(i8*, i32*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i64 @svn_path_is_backpath_present(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_uri_canonicalize(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
