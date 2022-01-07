; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_caching.c_create_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_caching.c_create_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@warn_and_fail_on_cache_errors = common dso_local global i32* null, align 8
@SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY = common dso_local global i64 0, align 8
@warn_and_continue_on_cache_errors = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i32*, i64, i64, i32, i32, i32, i8*, i64, i64, i32*, i64, i64, i32*, i32*)* @create_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_cache(i32** %0, i32* %1, i32* %2, i64 %3, i64 %4, i32 %5, i32 %6, i32 %7, i8* %8, i64 %9, i64 %10, i32* %11, i64 %12, i64 %13, i32* %14, i32* %15) #0 {
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  store i32** %0, i32*** %17, align 8
  store i32* %1, i32** %18, align 8
  store i32* %2, i32** %19, align 8
  store i64 %3, i64* %20, align 8
  store i64 %4, i64* %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i8* %8, i8** %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i32* %11, i32** %28, align 8
  store i64 %12, i64* %29, align 8
  store i64 %13, i64* %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %34 = load i64, i64* %29, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %16
  br label %39

37:                                               ; preds = %16
  %38 = load i32*, i32** @warn_and_fail_on_cache_errors, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32* [ null, %36 ], [ %38, %37 ]
  store i32* %40, i32** %33, align 8
  %41 = load i64, i64* %26, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i64, i64* @SVN_CACHE__MEMBUFFER_DEFAULT_PRIORITY, align 8
  store i64 %44, i64* %26, align 8
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i64, i64* %30, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32**, i32*** %17, align 8
  %50 = load i8*, i8** %25, align 8
  %51 = load i32*, i32** %31, align 8
  %52 = call i32 @svn_cache__create_null(i32** %49, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  br label %115

54:                                               ; preds = %45
  %55 = load i32*, i32** %18, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32**, i32*** %17, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load i32, i32* %22, align 4
  %61 = load i32, i32* %23, align 4
  %62 = load i32, i32* %24, align 4
  %63 = load i8*, i8** %25, align 8
  %64 = load i32*, i32** %31, align 8
  %65 = call i32 @svn_cache__create_memcache(i32** %58, i32* %59, i32 %60, i32 %61, i32 %62, i8* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i64, i64* %29, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %72

70:                                               ; preds = %57
  %71 = load i32*, i32** @warn_and_continue_on_cache_errors, align 8
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32* [ null, %69 ], [ %71, %70 ]
  store i32* %73, i32** %33, align 8
  br label %114

74:                                               ; preds = %54
  %75 = load i32*, i32** %19, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i32**, i32*** %17, align 8
  %79 = load i32*, i32** %19, align 8
  %80 = load i32, i32* %22, align 4
  %81 = load i32, i32* %23, align 4
  %82 = load i32, i32* %24, align 4
  %83 = load i8*, i8** %25, align 8
  %84 = load i64, i64* %26, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i64, i64* %27, align 8
  %87 = load i32*, i32** %31, align 8
  %88 = load i32*, i32** %32, align 8
  %89 = call i32 @svn_cache__create_membuffer_cache(i32** %78, i32* %79, i32 %80, i32 %81, i32 %82, i8* %83, i64 %84, i32 %85, i64 %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  br label %113

91:                                               ; preds = %74
  %92 = load i64, i64* %20, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i32**, i32*** %17, align 8
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i64, i64* %20, align 8
  %100 = load i64, i64* %21, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i8*, i8** %25, align 8
  %103 = load i32*, i32** %31, align 8
  %104 = call i32 @svn_cache__create_inprocess(i32** %95, i32 %96, i32 %97, i32 %98, i64 %99, i64 %100, i32 %101, i8* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %112

106:                                              ; preds = %91
  %107 = load i32**, i32*** %17, align 8
  %108 = load i8*, i8** %25, align 8
  %109 = load i32*, i32** %31, align 8
  %110 = call i32 @svn_cache__create_null(i32** %107, i8* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %112

112:                                              ; preds = %106, %94
  br label %113

113:                                              ; preds = %112, %77
  br label %114

114:                                              ; preds = %113, %72
  br label %115

115:                                              ; preds = %114, %48
  %116 = load i32**, i32*** %17, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i32*, i32** %28, align 8
  %119 = load i32*, i32** %33, align 8
  %120 = load i32*, i32** %31, align 8
  %121 = call i32 @init_callbacks(i32* %117, i32* %118, i32* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %123
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_cache__create_null(i32**, i8*, i32*) #1

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
