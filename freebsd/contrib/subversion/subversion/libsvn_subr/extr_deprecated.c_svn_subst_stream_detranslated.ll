; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_stream_detranslated.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_deprecated.c_svn_subst_stream_detranslated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_subst_stream_detranslated(i32** %0, i8* %1, i32 %2, i8* %3, i64 %4, i32* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32** %0, i32*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i64, i64* %16, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %8
  %22 = load i32**, i32*** %10, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i32*, i32** %17, align 8
  %25 = load i32*, i32** %17, align 8
  %26 = call i32* @svn_subst_read_specialfile(i32** %22, i8* %23, i32* %24, i32* %25)
  store i32* %26, i32** %9, align 8
  br label %42

27:                                               ; preds = %8
  %28 = load i8*, i8** %11, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = load i32*, i32** %17, align 8
  %31 = call i32 @svn_stream_open_readonly(i32** %18, i8* %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32**, i32*** %10, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i32*, i32** %17, align 8
  %40 = call i32 @svn_subst_stream_translated_to_normal_form(i32** %33, i32* %34, i32 %35, i8* %36, i64 %37, i32* %38, i32* %39)
  %41 = call i32* @svn_error_trace(i32 %40)
  store i32* %41, i32** %9, align 8
  br label %42

42:                                               ; preds = %27, %21
  %43 = load i32*, i32** %9, align 8
  ret i32* %43
}

declare dso_local i32* @svn_subst_read_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_subst_stream_translated_to_normal_form(i32**, i32*, i32, i8*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
