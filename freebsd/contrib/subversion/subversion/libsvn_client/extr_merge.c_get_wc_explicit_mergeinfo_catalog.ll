; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_wc_explicit_mergeinfo_catalog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_get_wc_explicit_mergeinfo_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@svn_opt_revision_working = common dso_local global i32 0, align 4
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_ERR_MERGEINFO_PARSE_ERROR = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Invalid mergeinfo detected on '%s', merge tracking not possible\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_21__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (i32**, i8*, i32, %struct.TYPE_22__*, i32*, i32*)* @get_wc_explicit_mergeinfo_catalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @get_wc_explicit_mergeinfo_catalog(i32** %0, i8* %1, i32 %2, %struct.TYPE_22__* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_20__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  store i32** %0, i32*** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_22__* %3, %struct.TYPE_22__** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* @svn_opt_revision_working, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %13, align 8
  %27 = call i32* @svn_pool_create(i32* %26)
  store i32* %27, i32** %15, align 8
  %28 = load i32**, i32*** %8, align 8
  %29 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %30 = load i8*, i8** %9, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @svn_client_propget5(i32** %28, i32* null, i32 %29, i8* %30, %struct.TYPE_20__* %14, %struct.TYPE_20__* %14, i32* null, i32 %31, i32* null, %struct.TYPE_22__* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = call i32 @svn_wc__externals_defined_below(i32** %17, i32 %39, i8* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %13, align 8
  %46 = load i32**, i32*** %8, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = call i32* @apr_hash_first(i32* %45, i32* %47)
  store i32* %48, i32** %16, align 8
  br label %49

49:                                               ; preds = %99, %6
  %50 = load i32*, i32** %16, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %102

52:                                               ; preds = %49
  %53 = load i32*, i32** %16, align 8
  %54 = call i8* @apr_hash_this_key(i32* %53)
  store i8* %54, i8** %18, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = call %struct.TYPE_19__* @apr_hash_this_val(i32* %55)
  store %struct.TYPE_19__* %56, %struct.TYPE_19__** %19, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = call i64 @svn_hash_gets(i32* %57, i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32**, i32*** %8, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %18, align 8
  %65 = call i32 @svn_hash_sets(i32* %63, i8* %64, i32* null)
  br label %99

66:                                               ; preds = %52
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @svn_pool_clear(i32* %67)
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = call %struct.TYPE_21__* @svn_mergeinfo_parse(i32** %20, i32 %71, i32* %72)
  store %struct.TYPE_21__* %73, %struct.TYPE_21__** %21, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %75 = icmp ne %struct.TYPE_21__* %74, null
  br i1 %75, label %76, label %93

76:                                               ; preds = %66
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SVN_ERR_MERGEINFO_PARSE_ERROR, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load i32, i32* @SVN_ERR_CLIENT_INVALID_MERGEINFO_NO_MERGETRACKING, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %85 = call i32 @_(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %86 = load i8*, i8** %18, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @svn_dirent_local_style(i8* %86, i32* %87)
  %89 = call %struct.TYPE_21__* @svn_error_createf(i32 %83, %struct.TYPE_21__* %84, i32 %85, i32 %88)
  store %struct.TYPE_21__* %89, %struct.TYPE_21__** %21, align 8
  br label %90

90:                                               ; preds = %82, %76
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %92 = call %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__* %91)
  store %struct.TYPE_21__* %92, %struct.TYPE_21__** %7, align 8
  br label %106

93:                                               ; preds = %66
  %94 = load i32**, i32*** %8, align 8
  %95 = load i32*, i32** %94, align 8
  %96 = load i8*, i8** %18, align 8
  %97 = load i32*, i32** %20, align 8
  %98 = call i32 @svn_hash_sets(i32* %95, i8* %96, i32* %97)
  br label %99

99:                                               ; preds = %93, %61
  %100 = load i32*, i32** %16, align 8
  %101 = call i32* @apr_hash_next(i32* %100)
  store i32* %101, i32** %16, align 8
  br label %49

102:                                              ; preds = %49
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @svn_pool_destroy(i32* %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_21__* %105, %struct.TYPE_21__** %7, align 8
  br label %106

106:                                              ; preds = %102, %90
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %107
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_propget5(i32**, i32*, i32, i8*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32*, i32, i32*, %struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__externals_defined_below(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.TYPE_19__* @apr_hash_this_val(i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local %struct.TYPE_21__* @svn_mergeinfo_parse(i32**, i32, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_error_createf(i32, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_error_trace(%struct.TYPE_21__*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
