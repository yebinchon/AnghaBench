; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_translate_to_normal_form.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_translate_to_normal_form.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@SVN_ERR_IO_UNKNOWN_EOL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_subst_translate_to_normal_form(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* @svn_subst_eol_style_native, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %8
  %22 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  store i8* %22, i8** %13, align 8
  br label %35

23:                                               ; preds = %8
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @svn_subst_eol_style_none, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @SVN_ERR_IO_UNKNOWN_EOL, align 4
  %33 = call i32* @svn_error_create(i32 %32, i32* null, i32* null)
  store i32* %33, i32** %9, align 8
  br label %54

34:                                               ; preds = %27, %23
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i8*, i8** %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i64, i64* %14, align 8
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %42, %35
  %46 = phi i1 [ true, %35 ], [ %44, %42 ]
  %47 = zext i1 %46 to i32
  %48 = load i32*, i32** %15, align 8
  %49 = load i32, i32* @FALSE, align 4
  %50 = load i64, i64* %16, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 @svn_subst_copy_and_translate3(i8* %36, i8* %37, i8* %38, i32 %47, i32* %48, i32 %49, i64 %50, i32* %51)
  %53 = call i32* @svn_error_trace(i32 %52)
  store i32* %53, i32** %9, align 8
  br label %54

54:                                               ; preds = %45, %31
  %55 = load i32*, i32** %9, align 8
  ret i32* %55
}

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_subst_copy_and_translate3(i8*, i8*, i8*, i32, i32*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
