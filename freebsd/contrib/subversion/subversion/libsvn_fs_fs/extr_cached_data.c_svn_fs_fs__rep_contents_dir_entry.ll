; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rep_contents_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__rep_contents_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i64, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_fs_fs__extract_dir_entry = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__rep_contents_dir_entry(%struct.TYPE_14__** %0, i32* %1, i32* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_14__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_14__*, align 8
  %20 = alloca %struct.TYPE_14__*, align 8
  %21 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %14, align 4
  %23 = bitcast %struct.TYPE_15__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 4, i1 false)
  %24 = load i32*, i32** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32* @locate_dir_cache(i32* %24, i8** %16, %struct.TYPE_15__* %15, i32* %25, i32* %26)
  store i32* %27, i32** %17, align 8
  %28 = load i32*, i32** %17, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %6
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %12, align 8
  %34 = call i32 @get_txn_dir_info(i32* %18, i32* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32, i32* %18, align 4
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  %41 = bitcast %struct.TYPE_14__** %40 to i8**
  %42 = load i32*, i32** %17, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32, i32* @svn_fs_fs__extract_dir_entry, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @svn_cache__get_partial(i8** %41, i32* %14, i32* %42, i8* %43, i32 %44, %struct.TYPE_16__* %13, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  br label %48

48:                                               ; preds = %30, %6
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %111

55:                                               ; preds = %51, %48
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %20, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = call i32 @get_dir_contents(%struct.TYPE_13__* %21, i32* %56, i32* %57, i32* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %17, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %55
  %65 = load i32*, i32** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 150, %69
  %71 = call i64 @svn_cache__is_cachable(i32* %65, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %64
  %74 = load i32*, i32** %17, align 8
  %75 = load i8*, i8** %16, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = call i32 @svn_cache__set(i32* %74, i8* %75, %struct.TYPE_13__* %21, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %73, %64, %55
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = call %struct.TYPE_14__* @svn_fs_fs__find_dir_entry(%struct.TYPE_17__* %81, i8* %82, i32* null)
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %19, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %85 = icmp ne %struct.TYPE_14__* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %79
  %87 = load i32*, i32** %11, align 8
  %88 = call %struct.TYPE_14__* @apr_palloc(i32* %87, i32 12)
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %20, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @apr_pstrdup(i32* %89, i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @svn_fs_fs__id_copy(i32 %98, i32* %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %86, %79
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  %110 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %7, align 8
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** %110, align 8
  br label %111

111:                                              ; preds = %108, %51
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %112
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @locate_dir_cache(i32*, i8**, %struct.TYPE_15__*, i32*, i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_txn_dir_info(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @svn_cache__get_partial(i8**, i32*, i32*, i8*, i32, %struct.TYPE_16__*, i32*) #2

declare dso_local i32 @get_dir_contents(%struct.TYPE_13__*, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @svn_cache__is_cachable(i32*, i32) #2

declare dso_local i32 @svn_cache__set(i32*, i8*, %struct.TYPE_13__*, i32*) #2

declare dso_local %struct.TYPE_14__* @svn_fs_fs__find_dir_entry(%struct.TYPE_17__*, i8*, i32*) #2

declare dso_local %struct.TYPE_14__* @apr_palloc(i32*, i32) #2

declare dso_local i32 @apr_pstrdup(i32*, i32) #2

declare dso_local i32 @svn_fs_fs__id_copy(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
