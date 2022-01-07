; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt__arg_canonicalize_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_opt.c_svn_opt__arg_canonicalize_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@APR_FILEPATH_TRUENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error resolving case of '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_opt__arg_canonicalize_path(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @svn_path_cstring_from_utf8(i8** %8, i8* %11, i32* %12)
  %14 = call i32 @SVN_ERR(i32 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @APR_FILEPATH_TRUENAME, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @apr_filepath_merge(i8** %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16, i32* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %3
  %22 = load i8*, i8** %9, align 8
  store i8* %22, i8** %8, align 8
  br label %36

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = call i64 @APR_STATUS_IS_ENOENT(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %35

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @svn_dirent_local_style(i8* %31, i32* %32)
  %34 = call i32* @svn_error_createf(i32 %29, i32* null, i32 %30, i32 %33)
  store i32* %34, i32** %4, align 8
  br label %48

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %21
  %37 = load i8**, i8*** %5, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @svn_path_cstring_to_utf8(i8** %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i8* @svn_dirent_canonicalize(i8* %43, i32* %44)
  %46 = load i8**, i8*** %5, align 8
  store i8* %45, i8** %46, align 8
  %47 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %36, %28
  %49 = load i32*, i32** %4, align 8
  ret i32* %49
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_path_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @apr_filepath_merge(i8**, i8*, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

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
