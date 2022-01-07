; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_intersect2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_mergeinfo.c_svn_mergeinfo_intersect2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_mergeinfo_intersect2(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @apr_hash_make(i32* %18)
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %12, align 8
  %22 = call i32* @svn_pool_create(i32* %21)
  store i32* %22, i32** %14, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32* @apr_hash_first(i32* %23, i32 %24)
  store i32* %25, i32** %13, align 8
  br label %26

26:                                               ; preds = %64, %6
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %67

29:                                               ; preds = %26
  %30 = load i32*, i32** %13, align 8
  %31 = call i8* @apr_hash_this_key(i32* %30)
  store i8* %31, i8** %15, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = call %struct.TYPE_8__* @apr_hash_this_val(i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %16, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = call i32 @svn_pool_clear(i32* %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %15, align 8
  %38 = call %struct.TYPE_8__* @svn_hash_gets(i32 %36, i8* %37)
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %17, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %29
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @svn_rangelist_intersect(%struct.TYPE_8__** %17, %struct.TYPE_8__* %42, %struct.TYPE_8__* %43, i32 %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %41
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = load i8*, i8** %15, align 8
  %57 = call i32 @apr_pstrdup(i32* %55, i8* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @svn_rangelist_dup(%struct.TYPE_8__* %58, i32* %59)
  %61 = call i32 @svn_hash_sets(i32 %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %52, %41
  br label %63

63:                                               ; preds = %62, %29
  br label %64

64:                                               ; preds = %63
  %65 = load i32*, i32** %13, align 8
  %66 = call i32* @apr_hash_next(i32* %65)
  store i32* %66, i32** %13, align 8
  br label %26

67:                                               ; preds = %26
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @svn_pool_destroy(i32* %68)
  %70 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %70
}

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_8__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_8__* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_rangelist_intersect(%struct.TYPE_8__**, %struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_rangelist_dup(%struct.TYPE_8__*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
