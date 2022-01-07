; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@rep_read_contents = common dso_local global i32 0, align 4
@rep_read_contents_close = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_contents(i32** %0, %struct.TYPE_21__* %1, %struct.TYPE_18__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca { i64, i32 }, align 4
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %18 = icmp ne %struct.TYPE_18__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %5
  %20 = load i32*, i32** %10, align 8
  %21 = call i32* @svn_stream_empty(i32* %20)
  %22 = load i32**, i32*** %6, align 8
  store i32* %21, i32** %22, align 8
  br label %89

23:                                               ; preds = %5
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* %26, %struct.TYPE_20__** %11, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @svn_fs_x__get_revnum(i32 %33)
  store i32 %34, i32* %14, align 4
  %35 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %35, i8 0, i64 12, i1 false)
  %36 = load i32, i32* %14, align 4
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = bitcast { i64, i32 }* %16 to i8*
  %47 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 12, i1 false)
  %48 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 0
  %49 = load i64, i64* %48, align 4
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %16, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rep_read_get_baton(%struct.TYPE_22__** %13, %struct.TYPE_21__* %43, %struct.TYPE_18__* %44, i64 %49, i32 %51, i32* %45)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %23
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @SVN_IS_VALID_REVNUM(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i64 @fulltext_size_is_cachable(%struct.TYPE_20__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %76

71:                                               ; preds = %60, %56, %23
  %72 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @svn_stream_create(%struct.TYPE_22__* %77, i32* %78)
  %80 = load i32**, i32*** %6, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i32**, i32*** %6, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @rep_read_contents, align 4
  %84 = call i32 @svn_stream_set_read2(i32* %82, i32* null, i32 %83)
  %85 = load i32**, i32*** %6, align 8
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @rep_read_contents_close, align 4
  %88 = call i32 @svn_stream_set_close(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %76, %19
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %90
}

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @rep_read_get_baton(%struct.TYPE_22__**, %struct.TYPE_21__*, %struct.TYPE_18__*, i64, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i64 @fulltext_size_is_cachable(%struct.TYPE_20__*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
