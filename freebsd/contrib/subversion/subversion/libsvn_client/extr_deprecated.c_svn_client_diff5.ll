; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_diff5.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_deprecated.c_svn_client_diff5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_diff5(i32* %0, i8* %1, i32* %2, i8* %3, i32* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i8* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17) #0 {
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  store i32* %0, i32** %19, align 8
  store i8* %1, i8** %20, align 8
  store i32* %2, i32** %21, align 8
  store i8* %3, i8** %22, align 8
  store i32* %4, i32** %23, align 8
  store i8* %5, i8** %24, align 8
  store i32 %6, i32* %25, align 4
  store i32 %7, i32* %26, align 4
  store i32 %8, i32* %27, align 4
  store i32 %9, i32* %28, align 4
  store i32 %10, i32* %29, align 4
  store i32 %11, i32* %30, align 4
  store i8* %12, i8** %31, align 8
  store i32* %13, i32** %32, align 8
  store i32* %14, i32** %33, align 8
  store i32* %15, i32** %34, align 8
  store i32* %16, i32** %35, align 8
  store i32* %17, i32** %36, align 8
  %39 = load i32*, i32** %32, align 8
  %40 = load i32, i32* @TRUE, align 4
  %41 = load i32*, i32** %36, align 8
  %42 = call i32* @svn_stream_from_aprfile2(i32* %39, i32 %40, i32* %41)
  store i32* %42, i32** %37, align 8
  %43 = load i32*, i32** %33, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %36, align 8
  %46 = call i32* @svn_stream_from_aprfile2(i32* %43, i32 %44, i32* %45)
  store i32* %46, i32** %38, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = load i8*, i8** %20, align 8
  %49 = load i32*, i32** %21, align 8
  %50 = load i8*, i8** %22, align 8
  %51 = load i32*, i32** %23, align 8
  %52 = load i8*, i8** %24, align 8
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* %26, align 4
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32, i32* %27, align 4
  %57 = load i32, i32* %28, align 4
  %58 = load i32, i32* %29, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = load i32, i32* @FALSE, align 4
  %61 = load i32, i32* %30, align 4
  %62 = load i8*, i8** %31, align 8
  %63 = load i32*, i32** %37, align 8
  %64 = load i32*, i32** %38, align 8
  %65 = load i32*, i32** %34, align 8
  %66 = load i32*, i32** %35, align 8
  %67 = load i32*, i32** %36, align 8
  %68 = call i32* @svn_client_diff6(i32* %47, i8* %48, i32* %49, i8* %50, i32* %51, i8* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i8* %62, i32* %63, i32* %64, i32* %65, i32* %66, i32* %67)
  ret i32* %68
}

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @svn_client_diff6(i32*, i8*, i32*, i8*, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
