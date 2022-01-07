; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache_config.c_initialize_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cache_config.c_initialize_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@cache_settings = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SVN_MAX_OBJECT_SIZE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @initialize_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @initialize_cache(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32**
  store i32** %13, i32*** %6, align 8
  store i32* null, i32** %7, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cache_settings, i32 0, i32 0), align 8
  %15 = load i64, i64* @SVN_MAX_OBJECT_SIZE, align 8
  %16 = trunc i64 %15 to i32
  %17 = sdiv i32 %16, 2
  %18 = call i32 @MIN(i64 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %61

21:                                               ; preds = %2
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %22 = call i64 @apr_allocator_create(i32** %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %3, align 8
  br label %63

26:                                               ; preds = %21
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @apr_allocator_max_free_set(i32* %27, i32 1)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @apr_pool_create_ex(i32** %11, i32* null, i32* null, i32* %29)
  %31 = load i32*, i32** %11, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %34, i32** %3, align 8
  br label %63

35:                                               ; preds = %26
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @apr_allocator_owner_set(i32* %36, i32* %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %40, 5
  %42 = call %struct.TYPE_3__* (...) @svn_cache_config_get()
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @FALSE, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32* @svn_cache__membuffer_cache_create(i32** %7, i32 %39, i32 %41, i32 0, i32 %47, i32 %48, i32* %49)
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %35
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_pool_destroy(i32* %54)
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cache_settings, i32 0, i32 0), align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @svn_error_trace(i32* %56)
  store i32* %57, i32** %3, align 8
  br label %63

58:                                               ; preds = %35
  %59 = load i32*, i32** %7, align 8
  %60 = load i32**, i32*** %6, align 8
  store i32* %59, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %2
  %62 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %62, i32** %3, align 8
  br label %63

63:                                               ; preds = %61, %53, %33, %24
  %64 = load i32*, i32** %3, align 8
  ret i32* %64
}

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i64 @apr_allocator_create(i32**) #1

declare dso_local i32 @apr_allocator_max_free_set(i32*, i32) #1

declare dso_local i32 @apr_pool_create_ex(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @apr_allocator_owner_set(i32*, i32*) #1

declare dso_local i32* @svn_cache__membuffer_cache_create(i32**, i32, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @svn_cache_config_get(...) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
