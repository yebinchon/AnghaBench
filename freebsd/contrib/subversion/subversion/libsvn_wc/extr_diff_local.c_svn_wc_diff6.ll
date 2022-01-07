; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_svn_wc_diff6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_local.c_svn_wc_diff6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_diff6(i32* %0, i8* %1, i32* %2, i8* %3, i32 %4, i64 %5, i64 %6, i64 %7, i32* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32* %2, i32** %15, align 8
  store i8* %3, i8** %16, align 8
  store i32 %4, i32* %17, align 4
  store i64 %5, i64* %18, align 8
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store i32* %8, i32** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %26 = load i32*, i32** %15, align 8
  %27 = load i8*, i8** %16, align 8
  %28 = load i64, i64* @TRUE, align 8
  %29 = load i32*, i32** %24, align 8
  %30 = load i32*, i32** %24, align 8
  %31 = call i32 @svn_wc__wrap_diff_callbacks(i32** %25, i32* %26, i8* %27, i64 %28, i32* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i64, i64* %20, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %12
  %36 = load i64, i64* @TRUE, align 8
  store i64 %36, i64* %19, align 8
  br label %37

37:                                               ; preds = %35, %12
  %38 = load i64, i64* %19, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i64, i64* @FALSE, align 8
  store i64 %41, i64* %18, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* %19, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* %20, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load i32*, i32** %25, align 8
  %50 = load i32*, i32** %24, align 8
  %51 = call i32* @svn_diff__tree_processor_copy_as_changed_create(i32* %49, i32* %50)
  store i32* %51, i32** %25, align 8
  br label %52

52:                                               ; preds = %48, %45, %42
  %53 = load i32*, i32** %13, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i64, i64* %18, align 8
  %57 = load i32*, i32** %21, align 8
  %58 = load i32*, i32** %25, align 8
  %59 = load i32, i32* %22, align 4
  %60 = load i8*, i8** %23, align 8
  %61 = load i32*, i32** %24, align 8
  %62 = load i32*, i32** %24, align 8
  %63 = call i32 @svn_wc__diff7(i32* null, i32* null, i32* %53, i8* %54, i32 %55, i64 %56, i32* %57, i32* %58, i32 %59, i8* %60, i32* %61, i32* %62)
  %64 = call i32* @svn_error_trace(i32 %63)
  ret i32* %64
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__wrap_diff_callbacks(i32**, i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32* @svn_diff__tree_processor_copy_as_changed_create(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__diff7(i32*, i32*, i32*, i8*, i32, i64, i32*, i32*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
