; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_dirent_is_under_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_dirent_is_under_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@APR_FILEPATH_NOTABOVEROOT = common dso_local global i32 0, align 4
@APR_FILEPATH_SECUREROOTTEST = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_EABOVEROOT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_dirent_is_under_root(i32* %0, i8** %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @FALSE, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i8**, i8*** %8, align 8
  %17 = icmp ne i8** %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i8**, i8*** %8, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i8*, i8** %9, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = load i32, i32* @APR_FILEPATH_NOTABOVEROOT, align 4
  %24 = load i32, i32* @APR_FILEPATH_SECUREROOTTEST, align 4
  %25 = or i32 %23, %24
  %26 = load i32*, i32** %11, align 8
  %27 = call i64 @apr_filepath_merge(i8** %13, i8* %21, i8* %22, i32 %25, i32* %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @APR_SUCCESS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = load i8**, i8*** %8, align 8
  %33 = icmp ne i8** %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i8* @svn_dirent_canonicalize(i8* %35, i32* %36)
  %38 = load i8**, i8*** %8, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %6, align 8
  br label %55

43:                                               ; preds = %20
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @APR_EABOVEROOT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %6, align 8
  br label %55

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %12, align 8
  %54 = call i32* @svn_error_wrap_apr(i64 %53, i32* null)
  store i32* %54, i32** %6, align 8
  br label %55

55:                                               ; preds = %52, %47, %39
  %56 = load i32*, i32** %6, align 8
  ret i32* %56
}

declare dso_local i64 @apr_filepath_merge(i8**, i8*, i8*, i32, i32*) #1

declare dso_local i8* @svn_dirent_canonicalize(i8*, i32*) #1

declare dso_local i32* @svn_error_wrap_apr(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
