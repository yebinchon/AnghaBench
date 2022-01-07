; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_contents.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.rep_read_baton = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@rep_read_contents = common dso_local global i32 0, align 4
@rep_read_contents_close = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__get_contents(i32** %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.rep_read_baton*, align 8
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca { i64, i32 }, align 4
  store i32** %0, i32*** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %16 = icmp ne %struct.TYPE_14__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %10, align 8
  %19 = call i32* @svn_stream_empty(i32* %18)
  %20 = load i32**, i32*** %6, align 8
  store i32* %19, i32** %20, align 8
  br label %89

21:                                               ; preds = %5
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %11, align 8
  %25 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 12, i1 false)
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = bitcast { i64, i32 }* %14 to i8*
  %38 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  %40 = load i64, i64* %39, align 4
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rep_read_get_baton(%struct.rep_read_baton** %12, %struct.TYPE_13__* %34, %struct.TYPE_14__* %35, i64 %40, i32 %42, i32* %36)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %21
  %50 = load i64, i64* %9, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @SVN_IS_VALID_REVNUM(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %52
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @fulltext_size_is_cachable(%struct.TYPE_16__* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rep_read_baton*, %struct.rep_read_baton** %12, align 8
  %70 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %76

71:                                               ; preds = %58, %52, %49, %21
  %72 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %73 = load %struct.rep_read_baton*, %struct.rep_read_baton** %12, align 8
  %74 = getelementptr inbounds %struct.rep_read_baton, %struct.rep_read_baton* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.rep_read_baton*, %struct.rep_read_baton** %12, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = call i32* @svn_stream_create(%struct.rep_read_baton* %77, i32* %78)
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

89:                                               ; preds = %76, %17
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %90
}

declare dso_local i32* @svn_stream_empty(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @rep_read_get_baton(%struct.rep_read_baton**, %struct.TYPE_13__*, %struct.TYPE_14__*, i64, i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i64 @fulltext_size_is_cachable(%struct.TYPE_16__*, i32) #1

declare dso_local i32* @svn_stream_create(%struct.rep_read_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

declare dso_local i32 @svn_stream_set_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
