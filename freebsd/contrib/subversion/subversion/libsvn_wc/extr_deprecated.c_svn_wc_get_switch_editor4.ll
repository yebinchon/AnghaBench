; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_switch_editor4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_get_switch_editor4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_get_switch_editor4(i32** %0, i8** %1, i32* %2, i32* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8* %12, i32* %13, i32 %14, i8* %15, i32 %16, i8* %17, i32 %18, i8* %19, i32 %20, i8* %21, i32 %22, i8* %23, i32* %24, i32* %25) #0 {
  %27 = alloca i32**, align 8
  %28 = alloca i8**, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  %49 = alloca i32, align 4
  %50 = alloca i8*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  store i32** %0, i32*** %27, align 8
  store i8** %1, i8*** %28, align 8
  store i32* %2, i32** %29, align 8
  store i32* %3, i32** %30, align 8
  store i8* %4, i8** %31, align 8
  store i8* %5, i8** %32, align 8
  store i8* %6, i8** %33, align 8
  store i32 %7, i32* %34, align 4
  store i32 %8, i32* %35, align 4
  store i32 %9, i32* %36, align 4
  store i32 %10, i32* %37, align 4
  store i32 %11, i32* %38, align 4
  store i8* %12, i8** %39, align 8
  store i32* %13, i32** %40, align 8
  store i32 %14, i32* %41, align 4
  store i8* %15, i8** %42, align 8
  store i32 %16, i32* %43, align 4
  store i8* %17, i8** %44, align 8
  store i32 %18, i32* %45, align 4
  store i8* %19, i8** %46, align 8
  store i32 %20, i32* %47, align 4
  store i8* %21, i8** %48, align 8
  store i32 %22, i32* %49, align 4
  store i8* %23, i8** %50, align 8
  store i32* %24, i32** %51, align 8
  store i32* %25, i32** %52, align 8
  %53 = load i32**, i32*** %27, align 8
  %54 = load i8**, i8*** %28, align 8
  %55 = load i32*, i32** %29, align 8
  %56 = load i32*, i32** %30, align 8
  %57 = load i8*, i8** %31, align 8
  %58 = load i8*, i8** %32, align 8
  %59 = load i8*, i8** %33, align 8
  %60 = load i32, i32* %34, align 4
  %61 = load i32, i32* %35, align 4
  %62 = load i32, i32* %36, align 4
  %63 = load i32, i32* %37, align 4
  %64 = load i32, i32* %38, align 4
  %65 = load i8*, i8** %39, align 8
  %66 = load i32*, i32** %40, align 8
  %67 = load i32, i32* %41, align 4
  %68 = load i8*, i8** %42, align 8
  %69 = load i32, i32* %43, align 4
  %70 = load i8*, i8** %44, align 8
  %71 = load i32, i32* %45, align 4
  %72 = load i8*, i8** %46, align 8
  %73 = load i32, i32* %47, align 4
  %74 = load i8*, i8** %48, align 8
  %75 = load i32, i32* %49, align 4
  %76 = load i8*, i8** %50, align 8
  %77 = load i32*, i32** %51, align 8
  %78 = load i32*, i32** %52, align 8
  %79 = call i32 @svn_wc__get_switch_editor(i32** %53, i8** %54, i32* %55, i32* %56, i8* %57, i8* %58, i8* %59, i32* null, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i8* %65, i32* %66, i32 %67, i8* %68, i32 %69, i8* %70, i32 %71, i8* %72, i32 %73, i8* %74, i32 %75, i8* %76, i32* %77, i32* %78)
  %80 = call i32* @svn_error_trace(i32 %79)
  ret i32* %80
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc__get_switch_editor(i32**, i8**, i32*, i32*, i8*, i8*, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
