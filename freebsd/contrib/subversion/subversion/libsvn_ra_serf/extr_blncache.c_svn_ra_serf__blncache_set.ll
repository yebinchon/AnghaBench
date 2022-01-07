; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blncache.c_svn_ra_serf__blncache_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_ra_serf/extr_blncache.c_svn_ra_serf__blncache_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@MAX_CACHE_SIZE = common dso_local global i64 0, align 8
@APR_HASH_KEY_STRING = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_ra_serf__blncache_set(%struct.TYPE_3__* %0, i8* %1, i8 signext %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %67

14:                                               ; preds = %5
  %15 = load i8, i8* %8, align 1
  %16 = call i64 @SVN_IS_VALID_REVNUM(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32* @apr_hash_pool_get(i8* %21)
  store i32* %22, i32** %11, align 8
  %23 = load i64, i64* @MAX_CACHE_SIZE, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i64 @apr_hash_count(i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @apr_hash_count(i8* %30)
  %32 = add nsw i64 %27, %31
  %33 = icmp slt i64 %23, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %18
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_pool_clear(i32* %35)
  %37 = load i32*, i32** %11, align 8
  %38 = call i8* @apr_hash_make(i32* %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i8* @apr_hash_make(i32* %41)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %34, %18
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @apr_pstrdup(i32* %49, i8* %50)
  %52 = call i32 @hash_set_copy(i8* %48, i8* %8, i32 1, i32 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %45
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @APR_HASH_KEY_STRING, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %8, align 1
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @baseline_info_make(i8* %61, i8 signext %62, i32* %63)
  %65 = call i32 @hash_set_copy(i8* %58, i8* %59, i32 %60, i32 %64)
  br label %66

66:                                               ; preds = %55, %45
  br label %67

67:                                               ; preds = %66, %14, %5
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local i64 @SVN_IS_VALID_REVNUM(i8 signext) #1

declare dso_local i32* @apr_hash_pool_get(i8*) #1

declare dso_local i64 @apr_hash_count(i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i32 @hash_set_copy(i8*, i8*, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @baseline_info_make(i8*, i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
