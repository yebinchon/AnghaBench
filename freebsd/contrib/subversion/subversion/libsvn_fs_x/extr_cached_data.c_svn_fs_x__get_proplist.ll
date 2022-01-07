; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_proplist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__get_proplist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"malformed property list for node-revision '%s' in '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"malformed property list for node-revision '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__get_proplist(i32** %0, %struct.TYPE_20__* %1, %struct.TYPE_18__* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_19__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_17__, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %8, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %5
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @svn_fs_x__is_revision(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %63, label %37

37:                                               ; preds = %28
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i8* @svn_fs_x__path_txn_node_props(%struct.TYPE_20__* %38, i32* %39, i32* %40, i32* %41)
  store i8* %42, i8** %16, align 8
  %43 = load i8*, i8** %16, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @svn_stringbuf_from_file2(i32** %14, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %14, align 8
  %48 = call i32* @svn_stringbuf__morph_into_string(i32* %47)
  store i32* %48, i32** %15, align 8
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @svn_fs_x__parse_properties(i32** %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %11, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i32*, i32** %11, align 8
  %57 = call %struct.TYPE_21__* @svn_fs_x__id_unparse(i32* %55, i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %16, align 8
  %61 = call i32 (i32*, i8*, i32, ...) @apr_psprintf(i32* %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %60)
  %62 = call i32 @SVN_ERR_W(i32 %52, i32 %61)
  br label %139

63:                                               ; preds = %28, %5
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = icmp ne %struct.TYPE_16__* %66, null
  br i1 %67, label %68, label %134

68:                                               ; preds = %63
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  store %struct.TYPE_19__* %71, %struct.TYPE_19__** %17, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %73, align 8
  store %struct.TYPE_16__* %74, %struct.TYPE_16__** %18, align 8
  %75 = bitcast %struct.TYPE_17__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %75, i8 0, i64 12, i1 false)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @svn_fs_x__get_revnum(i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load i32**, i32*** %7, align 8
  %88 = bitcast i32** %87 to i8**
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @svn_cache__get(i8** %88, i64* %21, i32 %91, %struct.TYPE_17__* %19, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i64, i64* %21, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %68
  %98 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %98, i32** %6, align 8
  br label %141

99:                                               ; preds = %68
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %102 = load i32, i32* @FALSE, align 4
  %103 = load i32*, i32** %11, align 8
  %104 = call i32 @svn_fs_x__get_contents(i32** %12, %struct.TYPE_20__* %100, %struct.TYPE_16__* %101, i32 %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %12, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @svn_string_from_stream2(i32** %20, i32* %106, i32 %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32**, i32*** %7, align 8
  %114 = load i32*, i32** %20, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = call i32 @svn_fs_x__parse_properties(i32** %113, i32* %114, i32* %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 0
  %120 = load i32*, i32** %11, align 8
  %121 = call %struct.TYPE_21__* @svn_fs_x__id_unparse(i32* %119, i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i32*, i8*, i32, ...) @apr_psprintf(i32* %117, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %123)
  %125 = call i32 @SVN_ERR_W(i32 %116, i32 %124)
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32**, i32*** %7, align 8
  %130 = load i32*, i32** %129, align 8
  %131 = load i32*, i32** %11, align 8
  %132 = call i32 @svn_cache__set(i32 %128, %struct.TYPE_17__* %19, i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %138

134:                                              ; preds = %63
  %135 = load i32*, i32** %10, align 8
  %136 = call i32* @apr_hash_make(i32* %135)
  %137 = load i32**, i32*** %7, align 8
  store i32* %136, i32** %137, align 8
  br label %138

138:                                              ; preds = %134, %99
  br label %139

139:                                              ; preds = %138, %37
  %140 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %140, i32** %6, align 8
  br label %141

141:                                              ; preds = %139, %97
  %142 = load i32*, i32** %6, align 8
  ret i32* %142
}

declare dso_local i32 @svn_fs_x__is_revision(i32) #1

declare dso_local i8* @svn_fs_x__path_txn_node_props(%struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stringbuf_from_file2(i32**, i8*, i32*) #1

declare dso_local i32* @svn_stringbuf__morph_into_string(i32*) #1

declare dso_local i32 @SVN_ERR_W(i32, i32) #1

declare dso_local i32 @svn_fs_x__parse_properties(i32**, i32*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_21__* @svn_fs_x__id_unparse(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @svn_fs_x__get_revnum(i32) #1

declare dso_local i32 @svn_cache__get(i8**, i64*, i32, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @svn_fs_x__get_contents(i32**, %struct.TYPE_20__*, %struct.TYPE_16__*, i32, i32*) #1

declare dso_local i32 @svn_string_from_stream2(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
