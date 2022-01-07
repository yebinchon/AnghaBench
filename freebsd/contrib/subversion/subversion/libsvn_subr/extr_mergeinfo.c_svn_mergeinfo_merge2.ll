; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_merge2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_merge2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_mergeinfo_merge2(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @apr_hash_count(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %20, i32** %5, align 8
  br label %63

21:                                               ; preds = %4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32* @svn_pool_create(i32* %22)
  store i32* %23, i32** %11, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32* @apr_hash_first(i32* %24, i32 %25)
  store i32* %26, i32** %10, align 8
  br label %27

27:                                               ; preds = %56, %21
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %59

30:                                               ; preds = %27
  %31 = load i32*, i32** %10, align 8
  %32 = bitcast i32** %14 to i8*
  %33 = call i32 @apr_hash_this(i32* %31, i8** %12, i32* %13, i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32* @apr_hash_get(i32 %34, i8* %35, i32 %36)
  store i32* %37, i32** %15, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = load i32*, i32** %15, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @svn_rangelist_merge2(i32* %41, i32* %42, i32* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @svn_pool_clear(i32* %47)
  br label %55

49:                                               ; preds = %30
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @apr_hash_set(i32 %50, i8* %51, i32 %52, i32* %53)
  br label %55

55:                                               ; preds = %49, %40
  br label %56

56:                                               ; preds = %55
  %57 = load i32*, i32** %10, align 8
  %58 = call i32* @apr_hash_next(i32* %57)
  store i32* %58, i32** %10, align 8
  br label %27

59:                                               ; preds = %27
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @svn_pool_destroy(i32* %60)
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %5, align 8
  br label %63

63:                                               ; preds = %59, %19
  %64 = load i32*, i32** %5, align 8
  ret i32* %64
}

declare dso_local i32 @apr_hash_count(i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8*) #1

declare dso_local i32* @apr_hash_get(i32, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_rangelist_merge2(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_set(i32, i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
