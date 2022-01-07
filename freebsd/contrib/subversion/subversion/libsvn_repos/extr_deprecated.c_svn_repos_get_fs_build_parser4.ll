; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_get_fs_build_parser4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_deprecated.c_svn_repos_get_fs_build_parser4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_get_fs_build_parser4(i32** %0, i8** %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i8* %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  store i32** %0, i32*** %13, align 8
  store i8** %1, i8*** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i8* %8, i8** %21, align 8
  store i32 %9, i32* %22, align 4
  store i8* %10, i8** %23, align 8
  store i32* %11, i32** %24, align 8
  %25 = load i32**, i32*** %13, align 8
  %26 = load i8**, i8*** %14, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = load i32, i32* %16, align 4
  %29 = load i32, i32* %17, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* %19, align 4
  %32 = load i32, i32* %20, align 4
  %33 = load i8*, i8** %21, align 8
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32, i32* %22, align 4
  %38 = load i8*, i8** %23, align 8
  %39 = load i32*, i32** %24, align 8
  %40 = call i32 @svn_repos_get_fs_build_parser5(i32** %25, i8** %26, i32* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i8* %33, i32 %34, i32 %35, i32 %36, i32 %37, i8* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %42
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_repos_get_fs_build_parser5(i32**, i8**, i32*, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
