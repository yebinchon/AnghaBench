; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_rangelist__merge_many.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_rangelist__merge_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_rangelist__merge_many(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @apr_hash_count(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32* @svn_pool_create(i32* %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32* @apr_hash_first(i32* %18, i32 %19)
  store i32* %20, i32** %10, align 8
  br label %21

21:                                               ; preds = %35, %15
  %22 = load i32*, i32** %10, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @apr_hash_this_val(i32* %25)
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @svn_pool_clear(i32* %27)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @svn_rangelist_merge2(i32* %29, i32* %30, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32*, i32** %10, align 8
  %37 = call i32* @apr_hash_next(i32* %36)
  store i32* %37, i32** %10, align 8
  br label %21

38:                                               ; preds = %21
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @svn_pool_destroy(i32* %39)
  br label %41

41:                                               ; preds = %38, %4
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %42
}

declare dso_local i64 @apr_hash_count(i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_rangelist_merge2(i32*, i32*, i32*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
