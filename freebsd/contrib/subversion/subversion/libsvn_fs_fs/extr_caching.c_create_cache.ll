; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_create_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_caching.c_create_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_and_fail_on_cache_errors = common dso_local global i32* null, align 8
@SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY = common dso_local global i64 0, align 8
@warn_and_continue_on_cache_errors = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i64, i64, i32, i32, i32, i8*, i64, i64, i32*, i64, i32*, i32*)* @create_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_cache(i32** %0, i32* %1, i32* %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i8* %8, i64 %9, i64 %10, i32* %11, i64 %12, i32* %13, i32* %14) #0 {
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store i32** %0, i32*** %16, align 8
  store i32* %1, i32** %17, align 8
  store i32* %2, i32** %18, align 8
  store i64 %3, i64* %19, align 8
  store i64 %4, i64* %20, align 8
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i8* %8, i8** %24, align 8
  store i64 %9, i64* %25, align 8
  store i64 %10, i64* %26, align 8
  store i32* %11, i32** %27, align 8
  store i64 %12, i64* %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  %32 = load i64, i64* %28, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %15
  br label %37

35:                                               ; preds = %15
  %36 = load i32*, i32** @warn_and_fail_on_cache_errors, align 8
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32* [ null, %34 ], [ %36, %35 ]
  store i32* %38, i32** %31, align 8
  %39 = load i64, i64* %25, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 8
  store i64 %42, i64* %25, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32*, i32** %17, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i32**, i32*** %16, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %22, align 4
  %51 = load i32, i32* %23, align 4
  %52 = load i8*, i8** %24, align 8
  %53 = load i32*, i32** %29, align 8
  %54 = call i32 @svn_cache__create_memcache(i32** %47, i32* %48, i32 %49, i32 %50, i32 %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i64, i64* %28, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %61

59:                                               ; preds = %46
  %60 = load i32*, i32** @warn_and_continue_on_cache_errors, align 8
  br label %61

61:                                               ; preds = %59, %58
  %62 = phi i32* [ null, %58 ], [ %60, %59 ]
  store i32* %62, i32** %31, align 8
  br label %99

63:                                               ; preds = %43
  %64 = load i32*, i32** %18, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %80

66:                                               ; preds = %63
  %67 = load i32**, i32*** %16, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %23, align 4
  %72 = load i8*, i8** %24, align 8
  %73 = load i64, i64* %25, align 8
  %74 = load i32, i32* @FALSE, align 4
  %75 = load i64, i64* %26, align 8
  %76 = load i32*, i32** %29, align 8
  %77 = load i32*, i32** %30, align 8
  %78 = call i32 @svn_cache__create_membuffer_cache(i32** %67, i32* %68, i32 %69, i32 %70, i32 %71, i8* %72, i64 %73, i32 %74, i64 %75, i32* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %98

80:                                               ; preds = %63
  %81 = load i64, i64* %19, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32**, i32*** %16, align 8
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %22, align 4
  %87 = load i32, i32* %23, align 4
  %88 = load i64, i64* %19, align 8
  %89 = load i64, i64* %20, align 8
  %90 = load i32, i32* @FALSE, align 4
  %91 = load i8*, i8** %24, align 8
  %92 = load i32*, i32** %29, align 8
  %93 = call i32 @svn_cache__create_inprocess(i32** %84, i32 %85, i32 %86, i32 %87, i64 %88, i64 %89, i32 %90, i8* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  br label %97

95:                                               ; preds = %80
  %96 = load i32**, i32*** %16, align 8
  store i32* null, i32** %96, align 8
  br label %97

97:                                               ; preds = %95, %83
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98, %61
  %100 = load i32**, i32*** %16, align 8
  %101 = load i32*, i32** %100, align 8
  %102 = load i32*, i32** %27, align 8
  %103 = load i32*, i32** %31, align 8
  %104 = load i32*, i32** %29, align 8
  %105 = call i32 @init_callbacks(i32* %101, i32* %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %107
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__create_memcache(i32**, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_cache__create_membuffer_cache(i32**, i32*, i32, i32, i32, i8*, i64, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_cache__create_inprocess(i32**, i32, i32, i32, i64, i64, i32, i8*, i32*) #1

declare dso_local i32 @init_callbacks(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
