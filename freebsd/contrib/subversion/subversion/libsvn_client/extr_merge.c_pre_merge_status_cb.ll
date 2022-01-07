; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_pre_merge_status_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_pre_merge_status_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64 }
%struct.pre_merge_status_baton_t = type { i32, i32, i32, i32 }

@svn_depth_empty = common dso_local global i32 0, align 4
@svn_depth_files = common dso_local global i32 0, align 4
@svn_wc_status_missing = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_3__*, i32*)* @pre_merge_status_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pre_merge_status_cb(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.pre_merge_status_baton_t*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.pre_merge_status_baton_t*
  store %struct.pre_merge_status_baton_t* %16, %struct.pre_merge_status_baton_t** %9, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.pre_merge_status_baton_t*, %struct.pre_merge_status_baton_t** %9, align 8
  %28 = getelementptr inbounds %struct.pre_merge_status_baton_t, %struct.pre_merge_status_baton_t* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @store_path(i32 %29, i8* %30)
  br label %32

32:                                               ; preds = %26, %21, %4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @svn_depth_empty, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @svn_depth_files, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38, %32
  %45 = load %struct.pre_merge_status_baton_t*, %struct.pre_merge_status_baton_t** %9, align 8
  %46 = getelementptr inbounds %struct.pre_merge_status_baton_t, %struct.pre_merge_status_baton_t* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32* @apr_pmemdup(i32 %47, i32* %49, i32 4)
  store i32* %50, i32** %11, align 8
  %51 = load %struct.pre_merge_status_baton_t*, %struct.pre_merge_status_baton_t** %9, align 8
  %52 = getelementptr inbounds %struct.pre_merge_status_baton_t, %struct.pre_merge_status_baton_t* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = call i8* @apr_pstrdup(i32 %53, i8* %54)
  store i8* %55, i8** %10, align 8
  %56 = load %struct.pre_merge_status_baton_t*, %struct.pre_merge_status_baton_t** %9, align 8
  %57 = getelementptr inbounds %struct.pre_merge_status_baton_t, %struct.pre_merge_status_baton_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %10, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = call i32 @svn_hash_sets(i32 %58, i8* %59, i32* %60)
  br label %62

62:                                               ; preds = %44, %38
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @svn_wc_status_missing, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %62
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %12, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.pre_merge_status_baton_t*, %struct.pre_merge_status_baton_t** %9, align 8
  %72 = getelementptr inbounds %struct.pre_merge_status_baton_t, %struct.pre_merge_status_baton_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32* @apr_hash_first(i32* %70, i32 %73)
  store i32* %74, i32** %13, align 8
  br label %75

75:                                               ; preds = %88, %68
  %76 = load i32*, i32** %13, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i32*, i32** %13, align 8
  %80 = call i8* @apr_hash_this_key(i32* %79)
  store i8* %80, i8** %14, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i64 @svn_dirent_is_ancestor(i8* %81, i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i64, i64* @FALSE, align 8
  store i64 %86, i64* %12, align 8
  br label %91

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32*, i32** %13, align 8
  %90 = call i32* @apr_hash_next(i32* %89)
  store i32* %90, i32** %13, align 8
  br label %75

91:                                               ; preds = %85, %75
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.pre_merge_status_baton_t*, %struct.pre_merge_status_baton_t** %9, align 8
  %96 = getelementptr inbounds %struct.pre_merge_status_baton_t, %struct.pre_merge_status_baton_t* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @store_path(i32 %97, i8* %98)
  br label %100

100:                                              ; preds = %94, %91
  br label %101

101:                                              ; preds = %100, %62
  %102 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %102
}

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32* @apr_pmemdup(i32, i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
