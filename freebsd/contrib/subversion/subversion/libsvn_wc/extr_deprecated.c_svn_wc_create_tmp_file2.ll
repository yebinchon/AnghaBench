; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_create_tmp_file2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_create_tmp_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_create_tmp_file2(i32** %0, i8** %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32**, i32*** %7, align 8
  %17 = icmp ne i32** %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i8**, i8*** %8, align 8
  %20 = icmp ne i8** %19, null
  br label %21

21:                                               ; preds = %18, %5
  %22 = phi i1 [ true, %5 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @svn_wc_context_create(i32** %12, i32* null, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %9, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @svn_dirent_get_absolute(i8** %13, i8* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %12, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = call i32* @svn_wc__get_tmpdir(i8** %14, i32* %33, i8* %34, i32* %35, i32* %36)
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32 @svn_wc_context_destroy(i32* %39)
  %41 = call i32* @svn_error_compose_create(i32* %38, i32 %40)
  store i32* %41, i32** %15, align 8
  %42 = load i32*, i32** %15, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %21
  %45 = load i32*, i32** %15, align 8
  %46 = call i32* @svn_error_trace(i32* %45)
  store i32* %46, i32** %6, align 8
  br label %57

47:                                               ; preds = %21
  %48 = load i32**, i32*** %7, align 8
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @svn_io_open_unique_file3(i32** %48, i8** %49, i8* %50, i32 %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %6, align 8
  br label %57

57:                                               ; preds = %47, %44
  %58 = load i32*, i32** %6, align 8
  ret i32* %58
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc_context_create(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32* @svn_wc__get_tmpdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32**, i8**, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
