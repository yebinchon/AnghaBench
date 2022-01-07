; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__get_wc_mergeinfo_catalog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client__get_wc_mergeinfo_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__get_wc_mergeinfo_catalog(i32** %0, i64* %1, i64 %2, i32 %3, i8* %4, i8* %5, i8** %6, i64 %7, %struct.TYPE_7__* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_7__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_6__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  store i32** %0, i32*** %12, align 8
  store i64* %1, i64** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i8* %5, i8** %17, align 8
  store i8** %6, i8*** %18, align 8
  store i64 %7, i64* %19, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %20, align 8
  store i32* %9, i32** %21, align 8
  store i32* %10, i32** %22, align 8
  %32 = load i8*, i8** %16, align 8
  %33 = call i32 @svn_dirent_is_absolute(i8* %32)
  %34 = call i32 @SVN_ERR_ASSERT(i32 %33)
  %35 = load i32**, i32*** %12, align 8
  store i32* null, i32** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %16, align 8
  %40 = load i32*, i32** %22, align 8
  %41 = load i32*, i32** %22, align 8
  %42 = call i32 @svn_wc__node_get_repos_info(i32* null, i8** %23, i8** %25, i32* null, i32 %38, i8* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i64*, i64** %13, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = load i8*, i8** %17, align 8
  %48 = load i8**, i8*** %18, align 8
  %49 = load i64, i64* %19, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = load i32*, i32** %22, align 8
  %53 = call i32 @svn_client__get_wc_mergeinfo(i64* %24, i64* %44, i32 %45, i8* %46, i8* %47, i8** %48, i64 %49, %struct.TYPE_7__* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i64, i64* %24, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %11
  %58 = load i32*, i32** %21, align 8
  %59 = call i32* @apr_hash_make(i32* %58)
  %60 = load i32**, i32*** %12, align 8
  store i32* %59, i32** %60, align 8
  %61 = load i32**, i32*** %12, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = load i8*, i8** %23, align 8
  %65 = call i8* @apr_pstrdup(i32* %63, i8* %64)
  %66 = load i64, i64* %24, align 8
  %67 = call i32 @svn_hash_sets(i32* %62, i8* %65, i64 %66)
  br label %68

68:                                               ; preds = %57, %11
  %69 = load i64, i64* %14, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %129

71:                                               ; preds = %68
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i8*, i8** %16, align 8
  %76 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %77 = load i32*, i32** %22, align 8
  %78 = load i32*, i32** %22, align 8
  %79 = call i32 @svn_wc__prop_retrieve_recursive(i32** %26, i32 %74, i8* %75, i32 %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** %22, align 8
  %82 = load i32*, i32** %26, align 8
  %83 = call i32* @apr_hash_first(i32* %81, i32* %82)
  store i32* %83, i32** %27, align 8
  br label %84

84:                                               ; preds = %125, %71
  %85 = load i32*, i32** %27, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %128

87:                                               ; preds = %84
  %88 = load i32*, i32** %27, align 8
  %89 = call i8* @apr_hash_this_key(i32* %88)
  store i8* %89, i8** %28, align 8
  %90 = load i32*, i32** %27, align 8
  %91 = call %struct.TYPE_6__* @apr_hash_this_val(i32* %90)
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %29, align 8
  %92 = load i8*, i8** %28, align 8
  %93 = load i8*, i8** %16, align 8
  %94 = call i64 @strcmp(i8* %92, i8* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %125

97:                                               ; preds = %87
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i8*, i8** %28, align 8
  %102 = load i32*, i32** %21, align 8
  %103 = load i32*, i32** %22, align 8
  %104 = call i32 @svn_wc__node_get_repos_info(i32* null, i8** %31, i8** null, i32* null, i32 %100, i8* %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %21, align 8
  %110 = call i32 @svn_mergeinfo_parse(i64* %30, i32 %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load i32**, i32*** %12, align 8
  %113 = load i32*, i32** %112, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %97
  %116 = load i32*, i32** %21, align 8
  %117 = call i32* @apr_hash_make(i32* %116)
  %118 = load i32**, i32*** %12, align 8
  store i32* %117, i32** %118, align 8
  br label %119

119:                                              ; preds = %115, %97
  %120 = load i32**, i32*** %12, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = load i8*, i8** %31, align 8
  %123 = load i64, i64* %30, align 8
  %124 = call i32 @svn_hash_sets(i32* %121, i8* %122, i64 %123)
  br label %125

125:                                              ; preds = %119, %96
  %126 = load i32*, i32** %27, align 8
  %127 = call i32* @apr_hash_next(i32* %126)
  store i32* %127, i32** %27, align 8
  br label %84

128:                                              ; preds = %84
  br label %129

129:                                              ; preds = %128, %68
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %130
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i32*, i8**, i8**, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_client__get_wc_mergeinfo(i64*, i64*, i32, i8*, i8*, i8**, i64, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i64) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_wc__prop_retrieve_recursive(i32**, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_6__* @apr_hash_this_val(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_mergeinfo_parse(i64*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
