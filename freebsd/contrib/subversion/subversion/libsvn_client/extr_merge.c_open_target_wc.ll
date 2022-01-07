; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_open_target_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_open_target_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i64 0, align 8
@SVN_ERR_ILLEGAL_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Merge target '%s' does not exist in the working copy\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_21__**, i8*, i32, i32, i32, %struct.TYPE_19__*, i32*, i32*)* @open_target_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @open_target_wc(%struct.TYPE_21__** %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.TYPE_19__* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_21__**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %21 = load i32*, i32** %16, align 8
  %22 = call %struct.TYPE_21__* @apr_palloc(i32* %21, i32 32)
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %18, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = call i32 @apr_pstrdup(i32* %23, i8* %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i32 @svn_client__wc_node_get_origin(%struct.TYPE_20__** %19, i8* %28, %struct.TYPE_19__* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %35 = icmp ne %struct.TYPE_20__* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %40 = bitcast %struct.TYPE_20__* %38 to i8*
  %41 = bitcast %struct.TYPE_20__* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 24, i1 false)
  br label %95

42:                                               ; preds = %8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call %struct.TYPE_18__* @svn_wc__node_get_repos_info(i32* null, i32* null, i32* %45, i32* %48, i32 %51, i8* %52, i32* %53, i32* %54)
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %20, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %57 = icmp ne %struct.TYPE_18__* %56, null
  br i1 %57, label %58, label %87

58:                                               ; preds = %42
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %78 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %77)
  store %struct.TYPE_18__* %78, %struct.TYPE_18__** %9, align 8
  br label %107

79:                                               ; preds = %70, %64, %58
  %80 = load i32, i32* @SVN_ERR_ILLEGAL_TARGET, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %82 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %83 = load i8*, i8** %11, align 8
  %84 = load i32*, i32** %17, align 8
  %85 = call i32 @svn_dirent_local_style(i8* %83, i32* %84)
  %86 = call %struct.TYPE_18__* @svn_error_createf(i32 %80, %struct.TYPE_18__* %81, i32 %82, i32 %85)
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %9, align 8
  br label %107

87:                                               ; preds = %42
  %88 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %87, %36
  %96 = load i8*, i8** %11, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @ensure_wc_is_suitable_merge_target(i8* %96, %struct.TYPE_19__* %97, i32 %98, i32 %99, i32 %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %105 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %10, align 8
  store %struct.TYPE_21__* %104, %struct.TYPE_21__** %105, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %106, %struct.TYPE_18__** %9, align 8
  br label %107

107:                                              ; preds = %95, %79, %76
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %108
}

declare dso_local %struct.TYPE_21__* @apr_palloc(i32*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__wc_node_get_origin(%struct.TYPE_20__**, i8*, %struct.TYPE_19__*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_18__* @svn_wc__node_get_repos_info(i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_error_createf(i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @ensure_wc_is_suitable_merge_target(i8*, %struct.TYPE_19__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
