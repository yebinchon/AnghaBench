; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_merge4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_merge4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_merge4(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32* %8, i32* %9, i32 %10, i8* %11, i32* %12, i32* %13, i32 %14, i8* %15, i32 %16, i8* %17, i32* %18) #0 {
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  store i32* %0, i32** %20, align 8
  store i32* %1, i32** %21, align 8
  store i8* %2, i8** %22, align 8
  store i8* %3, i8** %23, align 8
  store i8* %4, i8** %24, align 8
  store i8* %5, i8** %25, align 8
  store i8* %6, i8** %26, align 8
  store i8* %7, i8** %27, align 8
  store i32* %8, i32** %28, align 8
  store i32* %9, i32** %29, align 8
  store i32 %10, i32* %30, align 4
  store i8* %11, i8** %31, align 8
  store i32* %12, i32** %32, align 8
  store i32* %13, i32** %33, align 8
  store i32 %14, i32* %34, align 4
  store i8* %15, i8** %35, align 8
  store i32 %16, i32* %36, align 4
  store i8* %17, i8** %37, align 8
  store i32* %18, i32** %38, align 8
  %39 = load i32*, i32** %20, align 8
  %40 = load i32*, i32** %21, align 8
  %41 = load i8*, i8** %22, align 8
  %42 = load i8*, i8** %23, align 8
  %43 = load i8*, i8** %24, align 8
  %44 = load i8*, i8** %25, align 8
  %45 = load i8*, i8** %26, align 8
  %46 = load i8*, i8** %27, align 8
  %47 = load i32*, i32** %28, align 8
  %48 = load i32*, i32** %29, align 8
  %49 = load i32, i32* %30, align 4
  %50 = load i8*, i8** %31, align 8
  %51 = load i32*, i32** %32, align 8
  %52 = load i32*, i32** %33, align 8
  %53 = load i32, i32* %34, align 4
  %54 = load i8*, i8** %35, align 8
  %55 = load i32, i32* %36, align 4
  %56 = load i8*, i8** %37, align 8
  %57 = load i32*, i32** %38, align 8
  %58 = call i32 @svn_wc_merge5(i32* %39, i32* null, i32* %40, i8* %41, i8* %42, i8* %43, i8* %44, i8* %45, i8* %46, i32* %47, i32* %48, i32 %49, i8* %50, i32* %51, i32* null, i32* %52, i32 %53, i8* %54, i32 %55, i8* %56, i32* %57)
  %59 = call i32* @svn_error_trace(i32 %58)
  ret i32* %59
}

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_merge5(i32*, i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32, i8*, i32*, i32*, i32*, i32, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
