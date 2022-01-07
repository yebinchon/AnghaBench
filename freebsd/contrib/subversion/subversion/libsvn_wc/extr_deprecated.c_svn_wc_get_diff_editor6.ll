; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_diff_editor6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_diff_editor6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_get_diff_editor6(i32** %0, i8** %1, i32* %2, i8* %3, i8* %4, i32 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i32* %12, i32* %13, i8* %14, i32 %15, i8* %16, i32* %17, i32* %18) #0 {
  %20 = alloca i32**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store i32** %0, i32*** %20, align 8
  store i8** %1, i8*** %21, align 8
  store i32* %2, i32** %22, align 8
  store i8* %3, i8** %23, align 8
  store i8* %4, i8** %24, align 8
  store i32 %5, i32* %25, align 4
  store i64 %6, i64* %26, align 8
  store i64 %7, i64* %27, align 8
  store i64 %8, i64* %28, align 8
  store i64 %9, i64* %29, align 8
  store i64 %10, i64* %30, align 8
  store i64 %11, i64* %31, align 8
  store i32* %12, i32** %32, align 8
  store i32* %13, i32** %33, align 8
  store i8* %14, i8** %34, align 8
  store i32 %15, i32* %35, align 4
  store i8* %16, i8** %36, align 8
  store i32* %17, i32** %37, align 8
  store i32* %18, i32** %38, align 8
  %40 = load i64, i64* %28, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %19
  %43 = load i64, i64* @TRUE, align 8
  store i64 %43, i64* %27, align 8
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i64, i64* %27, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i64, i64* @FALSE, align 8
  store i64 %48, i64* %26, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32*, i32** %33, align 8
  %51 = load i8*, i8** %34, align 8
  %52 = load i64, i64* @TRUE, align 8
  %53 = load i32*, i32** %37, align 8
  %54 = load i32*, i32** %38, align 8
  %55 = call i32 @svn_wc__wrap_diff_callbacks(i32** %39, i32* %50, i8* %51, i64 %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %30, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32*, i32** %39, align 8
  %61 = load i32*, i32** %37, align 8
  %62 = call i32* @svn_diff__tree_processor_reverse_create(i32* %60, i32* null, i32* %61)
  store i32* %62, i32** %39, align 8
  br label %63

63:                                               ; preds = %59, %49
  %64 = load i64, i64* %27, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %39, align 8
  %68 = load i32*, i32** %37, align 8
  %69 = call i32* @svn_diff__tree_processor_copy_as_changed_create(i32* %67, i32* %68)
  store i32* %69, i32** %39, align 8
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32**, i32*** %20, align 8
  %72 = load i8**, i8*** %21, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = load i8*, i8** %23, align 8
  %75 = load i8*, i8** %24, align 8
  %76 = load i32, i32* %25, align 4
  %77 = load i64, i64* %26, align 8
  %78 = load i64, i64* %29, align 8
  %79 = load i64, i64* %30, align 8
  %80 = load i64, i64* %31, align 8
  %81 = load i32*, i32** %32, align 8
  %82 = load i32*, i32** %39, align 8
  %83 = load i32, i32* %35, align 4
  %84 = load i8*, i8** %36, align 8
  %85 = load i32*, i32** %37, align 8
  %86 = load i32*, i32** %38, align 8
  %87 = call i32 @svn_wc__get_diff_editor(i32** %71, i8** %72, i32* %73, i8* %74, i8* %75, i32 %76, i64 %77, i64 %78, i64 %79, i64 %80, i32* %81, i32* %82, i32 %83, i8* %84, i32* %85, i32* %86)
  %88 = call i32* @svn_error_trace(i32 %87)
  ret i32* %88
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__wrap_diff_callbacks(i32**, i32*, i8*, i64, i32*, i32*) #1

declare dso_local i32* @svn_diff__tree_processor_reverse_create(i32*, i32*, i32*) #1

declare dso_local i32* @svn_diff__tree_processor_copy_as_changed_create(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__get_diff_editor(i32**, i8**, i32*, i8*, i8*, i32, i64, i64, i64, i64, i32*, i32*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
