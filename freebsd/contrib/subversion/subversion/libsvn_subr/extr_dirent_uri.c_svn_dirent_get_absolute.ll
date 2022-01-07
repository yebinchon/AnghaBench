; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_dirent_get_absolute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_dirent_uri.c_svn_dirent_get_absolute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_FILEPATH_NOTRELATIVE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_BAD_FILENAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't determine absolute path of '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_dirent_get_absolute(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @svn_path_is_url(i8* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @SVN_ERR_ASSERT(i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @svn_path_cstring_from_utf8(i8** %10, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8*, i8** %10, align 8
  %22 = load i32, i32* @APR_FILEPATH_NOTRELATIVE, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @apr_filepath_merge(i8** %8, i32* null, i8* %21, i32 %22, i32* %23)
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @svn_dirent_is_absolute(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @svn_dirent_is_canonical(i8* %32, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @svn_path_is_backpath_present(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i32*, i32** %7, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @apr_pstrdup(i32* %41, i8* %42)
  %44 = load i8**, i8*** %5, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %4, align 8
  br label %67

46:                                               ; preds = %36, %31, %27
  %47 = load i32, i32* @SVN_ERR_BAD_FILENAME, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @svn_error_create(i64 %48, i32* null, i32* null)
  %50 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @svn_dirent_local_style(i8* %51, i32* %52)
  %54 = call i32* @svn_error_createf(i32 %47, i32 %49, i32 %50, i32 %53)
  store i32* %54, i32** %4, align 8
  br label %67

55:                                               ; preds = %3
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @svn_path_cstring_to_utf8(i8** %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i8**, i8*** %5, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i8* @svn_dirent_canonicalize(i8* %62, i32* %63)
  %65 = load i8**, i8*** %5, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %4, align 8
  br label %67

67:                                               ; preds = %55, %46, %40
  %68 = load i32*, i32** %4, align 8
  ret i32* %68
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_path_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @apr_filepath_merge(i8**, i32*, i8*, i32, i32*) #1

declare dso_local i64 @svn_dirent_is_absolute(i8*) #1

declare dso_local i64 @svn_dirent_is_canonical(i8*, i32*) #1

declare dso_local i32 @svn_path_is_backpath_present(i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @svn_error_create(i64, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_path_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i8* @svn_dirent_canonicalize(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
