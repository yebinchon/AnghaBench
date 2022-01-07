; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_svn_fs_x__make_path_mutable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag_cache.c_svn_fs_x__make_path_mutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__make_path_mutable(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_16__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %25 = call i32 @svn_fs_x__root_txn_id(%struct.TYPE_16__* %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @svn_fs_x__dag_check_mutable(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %6, align 8
  br label %142

33:                                               ; preds = %5
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %35, align 8
  %37 = icmp ne %struct.TYPE_15__* %36, null
  br i1 %37, label %38, label %130

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %40 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i32 0, i32* %41, align 4
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %15, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %20, align 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32* @svn_fs_x__make_path_mutable(%struct.TYPE_16__* %46, %struct.TYPE_15__* %49, i8* %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32* %53)
  %55 = load i32*, i32** %11, align 8
  %56 = call i32* @svn_pool_create(i32* %55)
  store i32* %56, i32** %23, align 8
  %57 = load i32, i32* %16, align 4
  switch i32 %57, label %77 [
    i32 130, label %58
    i32 131, label %67
    i32 129, label %75
    i32 128, label %76
  ]

58:                                               ; preds = %38
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = call %struct.TYPE_14__* @svn_fs_x__dag_get_copy_id(i32* %63)
  %65 = bitcast %struct.TYPE_14__* %14 to i8*
  %66 = bitcast %struct.TYPE_14__* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 8, i1 false)
  br label %79

67:                                               ; preds = %38
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32*, i32** %23, align 8
  %73 = call i32* @svn_fs_x__reserve_copy_id(%struct.TYPE_14__* %14, i32 %70, i32 %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32* %73)
  br label %79

75:                                               ; preds = %38
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %15, align 8
  br label %79

76:                                               ; preds = %38
  br label %77

77:                                               ; preds = %38, %76
  %78 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %79

79:                                               ; preds = %77, %75, %67, %58
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @svn_fs_x__dag_get_copyroot(i32* %19, i8** %18, i32* %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32*, i32** %23, align 8
  %89 = call i32* @svn_fs_x__revision_root(%struct.TYPE_16__** %21, i32 %86, i32 %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = load i32*, i32** %23, align 8
  %94 = call i32* @svn_fs_x__get_temp_dag_node(i32** %22, %struct.TYPE_16__* %91, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32* %94)
  %96 = load i32*, i32** %22, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @svn_fs_x__dag_related_node(i32* %96, i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %79
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %20, align 4
  br label %104

104:                                              ; preds = %102, %79
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load i32*, i32** %23, align 8
  %109 = call i8* @parent_path_path(%struct.TYPE_15__* %107, i32* %108)
  store i8* %109, i8** %17, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i8*, i8** %17, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %20, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = load i32*, i32** %23, align 8
  %124 = call i32* @svn_fs_x__dag_clone_child(i32** %12, i32* %114, i8* %115, i32 %118, %struct.TYPE_14__* %119, i32 %120, i32 %121, i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32* %124)
  %126 = load i32*, i32** %12, align 8
  %127 = call i32 @svn_fs_x__update_dag_cache(i32* %126)
  %128 = load i32*, i32** %23, align 8
  %129 = call i32 @svn_pool_destroy(i32* %128)
  br label %137

130:                                              ; preds = %33
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32*, i32** %11, align 8
  %135 = call i32* @mutable_root_node(i32** %12, %struct.TYPE_16__* %131, i8* %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32* %135)
  br label %137

137:                                              ; preds = %130, %104
  %138 = load i32*, i32** %12, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  store i32* %138, i32** %140, align 8
  %141 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %141, i32** %6, align 8
  br label %142

142:                                              ; preds = %137, %31
  %143 = load i32*, i32** %6, align 8
  ret i32* %143
}

declare dso_local i32 @svn_fs_x__root_txn_id(%struct.TYPE_16__*) #1

declare dso_local i64 @svn_fs_x__dag_check_mutable(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_14__* @svn_fs_x__dag_get_copy_id(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @svn_fs_x__reserve_copy_id(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @svn_fs_x__dag_get_copyroot(i32*, i8**, i32*) #1

declare dso_local i32* @svn_fs_x__revision_root(%struct.TYPE_16__**, i32, i32, i32*) #1

declare dso_local i32* @svn_fs_x__get_temp_dag_node(i32**, %struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_related_node(i32*, i32*) #1

declare dso_local i8* @parent_path_path(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @svn_fs_x__dag_clone_child(i32**, i32*, i8*, i32, %struct.TYPE_14__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__update_dag_cache(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @mutable_root_node(i32**, %struct.TYPE_16__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
