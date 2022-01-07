; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_already_in_a_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_already_in_a_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i64*, i32*, i8*, i32*)* @already_in_a_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @already_in_a_tree_conflict(i64* %0, i64* %1, i32* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load i8*, i8** %9, align 8
  store i8* %14, i8** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = call i32* @svn_pool_create(i32* %15)
  store i32* %16, i32** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = call i32 @svn_dirent_is_absolute(i8* %17)
  %19 = call i32 @SVN_ERR_ASSERT(i32 %18)
  %20 = load i64, i64* @FALSE, align 8
  %21 = load i64*, i64** %7, align 8
  store i64 %20, i64* %21, align 8
  %22 = load i64*, i64** %6, align 8
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %54, %5
  %24 = load i64, i64* @TRUE, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @svn_pool_clear(i32* %27)
  %29 = load i64*, i64** %6, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i64, i64* @TRUE, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @svn_wc__conflicted_for_update_p(i64* %29, i64* %30, i32* %31, i8* %32, i64 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i64*, i64** %6, align 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %26
  %41 = load i64*, i64** %7, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %26
  br label %58

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @svn_wc__db_is_wcroot(i64* %13, i32* %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %58

54:                                               ; preds = %45
  %55 = load i8*, i8** %11, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i8* @svn_dirent_dirname(i8* %55, i32* %56)
  store i8* %57, i8** %11, align 8
  br label %23

58:                                               ; preds = %53, %44, %23
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @svn_pool_destroy(i32* %59)
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %61
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflicted_for_update_p(i64*, i64*, i32*, i8*, i64, i32*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
