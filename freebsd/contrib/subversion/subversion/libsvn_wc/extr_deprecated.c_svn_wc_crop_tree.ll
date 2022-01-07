; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crop_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_crop_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_depth_exclude = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_crop_tree(i32* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = call i32* @svn_wc__adm_get_db(i32* %20)
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @svn_wc__adm_access_abspath(i32* %22)
  %24 = load i8*, i8** %10, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = call i8* @svn_dirent_join(i32 %23, i8* %24, i32* %25)
  store i8* %26, i8** %19, align 8
  %27 = load i32*, i32** %18, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = call i32 @svn_wc__context_create_with_db(i32** %17, i32* null, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @svn_depth_exclude, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %8
  %35 = load i32*, i32** %17, align 8
  %36 = load i8*, i8** %19, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i8*, i8** %15, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = load i32*, i32** %16, align 8
  %42 = call i32 @svn_wc_exclude(i32* %35, i8* %36, i32 %37, i8* %38, i32 %39, i8* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  br label %55

44:                                               ; preds = %8
  %45 = load i32*, i32** %17, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i8*, i8** %15, align 8
  %50 = load i32, i32* %12, align 4
  %51 = load i8*, i8** %13, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = call i32 @svn_wc_crop_tree2(i32* %45, i8* %46, i32 %47, i32 %48, i8* %49, i32 %50, i8* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  br label %55

55:                                               ; preds = %44, %34
  %56 = load i32*, i32** %17, align 8
  %57 = call i32 @svn_wc_context_destroy(i32* %56)
  %58 = call i32* @svn_error_trace(i32 %57)
  ret i32* %58
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__adm_access_abspath(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc_exclude(i32*, i8*, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc_crop_tree2(i32*, i8*, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
