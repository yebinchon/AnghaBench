; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_process_children_with_new_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_process_children_with_new_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_mergeinfo_explicit = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_mergeinfo_nearest_ancestor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i32*, i32*)* @process_children_with_new_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @process_children_with_new_mergeinfo(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %3
  %25 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %25, i32** %4, align 8
  br label %125

26:                                               ; preds = %19
  %27 = load i32*, i32** %7, align 8
  %28 = call i32* @svn_pool_create(i32* %27)
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @apr_hash_first(i32* %29, i32 %32)
  store i32* %33, i32** %9, align 8
  br label %34

34:                                               ; preds = %118, %26
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %121

37:                                               ; preds = %34
  %38 = load i32*, i32** %9, align 8
  %39 = call i8* @apr_hash_this_key(i32* %38)
  store i8* %39, i8** %10, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @svn_pool_clear(i32* %40)
  %42 = load i32, i32* @svn_mergeinfo_explicit, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @svn_client__get_wc_mergeinfo(i64* %12, i32* null, i32 %42, i8* %43, i32* null, i32* null, i32 %44, i32 %47, i32* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i64, i64* %12, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %117

54:                                               ; preds = %37
  %55 = load i32, i32* @FALSE, align 4
  %56 = load i32, i32* @svn_mergeinfo_nearest_ancestor, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @svn_client__get_wc_or_repos_mergeinfo(i64* %11, i32* null, i32* null, i32 %55, i32 %56, i32 %59, i8* %60, i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i64, i64* %11, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %54
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @svn_mergeinfo_merge2(i64 %70, i64 %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i8*, i8** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i32, i32* @FALSE, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @svn_client__record_wc_mergeinfo(i8* %76, i64 %77, i32 %78, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %85

85:                                               ; preds = %69, %54
  %86 = load i32*, i32** %6, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = call %struct.TYPE_11__* @get_child_with_mergeinfo(i32* %86, i8* %87)
  store %struct.TYPE_11__* %88, %struct.TYPE_11__** %13, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %90 = icmp ne %struct.TYPE_11__* %89, null
  br i1 %90, label %116, label %91

91:                                               ; preds = %85
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = load i8*, i8** %10, align 8
  %95 = call %struct.TYPE_11__* @find_nearest_ancestor(i32* %92, i32 %93, i8* %94)
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %14, align 8
  %96 = load i8*, i8** %10, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call %struct.TYPE_11__* @svn_client__merge_path_create(i8* %96, i32* %97)
  store %struct.TYPE_11__* %98, %struct.TYPE_11__** %13, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %100 = call i32 @SVN_ERR_ASSERT(%struct.TYPE_11__* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = call i32 @SVN_ERR_ASSERT(%struct.TYPE_11__* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call %struct.TYPE_11__* @svn_rangelist_dup(%struct.TYPE_11__* %107, i32* %108)
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %111, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 @insert_child_to_merge(i32* %112, %struct.TYPE_11__* %113, i32* %114)
  br label %116

116:                                              ; preds = %91, %85
  br label %117

117:                                              ; preds = %116, %37
  br label %118

118:                                              ; preds = %117
  %119 = load i32*, i32** %9, align 8
  %120 = call i32* @apr_hash_next(i32* %119)
  store i32* %120, i32** %9, align 8
  br label %34

121:                                              ; preds = %34
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @svn_pool_destroy(i32* %122)
  %124 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %124, i32** %4, align 8
  br label %125

125:                                              ; preds = %121, %24
  %126 = load i32*, i32** %4, align 8
  ret i32* %126
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__get_wc_mergeinfo(i64*, i32*, i32, i8*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_client__get_wc_or_repos_mergeinfo(i64*, i32*, i32*, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_mergeinfo_merge2(i64, i64, i32*, i32*) #1

declare dso_local i32 @svn_client__record_wc_mergeinfo(i8*, i64, i32, i32, i32*) #1

declare dso_local %struct.TYPE_11__* @get_child_with_mergeinfo(i32*, i8*) #1

declare dso_local %struct.TYPE_11__* @find_nearest_ancestor(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @svn_client__merge_path_create(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @svn_rangelist_dup(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @insert_child_to_merge(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
