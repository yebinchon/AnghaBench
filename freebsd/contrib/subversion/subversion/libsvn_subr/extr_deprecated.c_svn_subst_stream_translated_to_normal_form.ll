; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_stream_translated_to_normal_form.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_stream_translated_to_normal_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@SVN_ERR_IO_UNKNOWN_EOL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_subst_stream_translated_to_normal_form(i32** %0, i32* %1, i64 %2, i8* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @svn_subst_eol_style_native, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  store i8* %20, i8** %12, align 8
  br label %33

21:                                               ; preds = %7
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @svn_subst_eol_style_none, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @SVN_ERR_IO_UNKNOWN_EOL, align 4
  %31 = call i32* @svn_error_create(i32 %30, i32* null, i32* null)
  store i32* %31, i32** %8, align 8
  br label %51

32:                                               ; preds = %25, %21
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %13, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi i1 [ true, %33 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = call i32* @svn_subst_stream_translated(i32* %34, i8* %35, i32 %44, i32* %45, i32 %46, i32* %47)
  %49 = load i32**, i32*** %9, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %42, %29
  %52 = load i32*, i32** %8, align 8
  ret i32* %52
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
