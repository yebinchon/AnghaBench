; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_dag_node_cache_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_dag_node_cache_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8**, i32 }
%struct.dag_node_cache_t = type { i32, i32*, i8* }

@NODE_CACHE_MAX_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i8*, i32*)* @dag_node_cache_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dag_node_cache_set(%struct.TYPE_4__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dag_node_cache_t*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @apr_hash_count(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 47
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @NODE_CACHE_MAX_KEYS, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

34:                                               ; preds = %30, %3
  %35 = phi i1 [ false, %3 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %132

43:                                               ; preds = %34
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call %struct.dag_node_cache_t* @svn_hash_gets(i32 %46, i8* %47)
  store %struct.dag_node_cache_t* %48, %struct.dag_node_cache_t** %10, align 8
  %49 = load %struct.dag_node_cache_t*, %struct.dag_node_cache_t** %10, align 8
  %50 = icmp ne %struct.dag_node_cache_t* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = call i32 (...) @SVN_ERR_MALFUNCTION_NO_RETURN()
  br label %53

53:                                               ; preds = %51, %43
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @apr_hash_count(i32 %56)
  %58 = load i32, i32* @NODE_CACHE_MAX_KEYS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %63, i64 %67
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %8, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = call %struct.dag_node_cache_t* @svn_hash_gets(i32 %72, i8* %73)
  store %struct.dag_node_cache_t* %74, %struct.dag_node_cache_t** %10, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @svn_hash_sets(i32 %77, i8* %78, %struct.dag_node_cache_t* null)
  %80 = load %struct.dag_node_cache_t*, %struct.dag_node_cache_t** %10, align 8
  %81 = getelementptr inbounds %struct.dag_node_cache_t, %struct.dag_node_cache_t* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %9, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = call i32 @svn_pool_clear(i32* %83)
  br label %90

85:                                               ; preds = %53
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32* @svn_pool_create(i32 %88)
  store i32* %89, i32** %9, align 8
  br label %90

90:                                               ; preds = %85, %60
  %91 = load i32*, i32** %9, align 8
  %92 = call %struct.dag_node_cache_t* @apr_palloc(i32* %91, i32 24)
  store %struct.dag_node_cache_t* %92, %struct.dag_node_cache_t** %10, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = call i8* @svn_fs_base__dag_dup(i32* %93, i32* %94)
  %96 = load %struct.dag_node_cache_t*, %struct.dag_node_cache_t** %10, align 8
  %97 = getelementptr inbounds %struct.dag_node_cache_t, %struct.dag_node_cache_t* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.dag_node_cache_t*, %struct.dag_node_cache_t** %10, align 8
  %102 = getelementptr inbounds %struct.dag_node_cache_t, %struct.dag_node_cache_t* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load %struct.dag_node_cache_t*, %struct.dag_node_cache_t** %10, align 8
  %105 = getelementptr inbounds %struct.dag_node_cache_t, %struct.dag_node_cache_t* %104, i32 0, i32 1
  store i32* %103, i32** %105, align 8
  %106 = load i32*, i32** %9, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = call i8* @apr_pstrdup(i32* %106, i8* %107)
  store i8* %108, i8** %8, align 8
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %8, align 8
  %113 = load %struct.dag_node_cache_t*, %struct.dag_node_cache_t** %10, align 8
  %114 = call i32 @svn_hash_sets(i32 %111, i8* %112, %struct.dag_node_cache_t* %113)
  %115 = load i8*, i8** %8, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i8**, i8*** %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8*, i8** %118, i64 %122
  store i8* %115, i8** %123, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  %128 = load i32, i32* @NODE_CACHE_MAX_KEYS, align 4
  %129 = srem i32 %127, %128
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %90, %42
  ret void
}

declare dso_local i32 @apr_hash_count(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.dag_node_cache_t* @svn_hash_gets(i32, i8*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION_NO_RETURN(...) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, %struct.dag_node_cache_t*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local %struct.dag_node_cache_t* @apr_palloc(i32*, i32) #1

declare dso_local i8* @svn_fs_base__dag_dup(i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
