; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra/extr_deprecated.c_svn_ra_do_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_do_diff(i32* %0, i32** %1, i8** %2, i32 %3, i8* %4, i32 %5, i32 %6, i8* %7, i32* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32** %1, i32*** %13, align 8
  store i8** %2, i8*** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i8* %7, i8** %19, align 8
  store i32* %8, i32** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = call i64 @svn_path_is_empty(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %11
  %27 = load i8*, i8** %16, align 8
  %28 = call i64 @svn_path_is_single_path_component(i8* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %11
  %31 = phi i1 [ true, %11 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @SVN_ERR_ASSERT(i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i32**, i32*** %13, align 8
  %36 = load i8**, i8*** %14, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load i8*, i8** %16, align 8
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @TRUE, align 4
  %42 = load i8*, i8** %19, align 8
  %43 = load i32*, i32** %20, align 8
  %44 = load i8*, i8** %21, align 8
  %45 = load i32*, i32** %22, align 8
  %46 = call i32* @svn_ra_do_diff2(i32* %34, i32** %35, i8** %36, i32 %37, i8* %38, i32 %39, i32 %40, i32 %41, i8* %42, i32* %43, i8* %44, i32* %45)
  ret i32* %46
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i64 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32* @svn_ra_do_diff2(i32*, i32**, i8**, i32, i8*, i32, i32, i32, i8*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
