; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_make_path_mutable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_make_path_mutable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32*, i32, %struct.TYPE_20__* }
%struct.TYPE_19__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, %struct.TYPE_20__*, i8*, i32*)* @make_path_mutable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_path_mutable(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = call %struct.TYPE_19__* @root_txn_id(%struct.TYPE_18__* %24)
  store %struct.TYPE_19__* %25, %struct.TYPE_19__** %11, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = call i64 @svn_fs_fs__dag_check_mutable(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %5, align 8
  br label %150

33:                                               ; preds = %4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %139

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %40 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %40, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  store i32 0, i32* %41, align 4
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %16, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %21, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @make_path_mutable(%struct.TYPE_18__* %46, %struct.TYPE_20__* %49, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32* %52)
  %54 = load i32, i32* %17, align 4
  switch i32 %54, label %76 [
    i32 130, label %55
    i32 131, label %66
    i32 129, label %74
    i32 128, label %75
  ]

55:                                               ; preds = %38
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = call i32* @svn_fs_fs__dag_get_id(i32* %60)
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call %struct.TYPE_19__* @svn_fs_fs__id_copy_id(i32* %62)
  %64 = bitcast %struct.TYPE_19__* %15 to i8*
  %65 = bitcast %struct.TYPE_19__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 8, i1 false)
  br label %78

66:                                               ; preds = %38
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32* @svn_fs_fs__reserve_copy_id(%struct.TYPE_19__* %15, i32 %69, %struct.TYPE_19__* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32* %72)
  br label %78

74:                                               ; preds = %38
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %16, align 8
  br label %78

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %38, %75
  %77 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %78

78:                                               ; preds = %76, %74, %66, %55
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32* @svn_fs_fs__dag_get_copyroot(i32* %20, i8** %19, i32* %81)
  %83 = call i32 @SVN_ERR(i32* %82)
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %20, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = call i32* @svn_fs_fs__revision_root(%struct.TYPE_18__** %22, i32 %86, i32 %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32* %89)
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %92 = load i8*, i8** %19, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32* @get_dag(i32** %23, %struct.TYPE_18__* %91, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32* %94)
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = call i32* @svn_fs_fs__dag_get_id(i32* %98)
  store i32* %99, i32** %13, align 8
  %100 = load i32*, i32** %23, align 8
  %101 = call i32* @svn_fs_fs__dag_get_id(i32* %100)
  store i32* %101, i32** %14, align 8
  %102 = load i32*, i32** %13, align 8
  %103 = call i32 @svn_fs_fs__id_node_id(i32* %102)
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @svn_fs_fs__id_node_id(i32* %104)
  %106 = call i32 @svn_fs_fs__id_part_eq(i32 %103, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %78
  %109 = load i32, i32* @TRUE, align 4
  store i32 %109, i32* %21, align 4
  br label %110

110:                                              ; preds = %108, %78
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = call i8* @parent_path_path(%struct.TYPE_20__* %113, i32* %114)
  store i8* %115, i8** %18, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i8*, i8** %18, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %127 = load i32, i32* %21, align 4
  %128 = load i32*, i32** %9, align 8
  %129 = call i32* @svn_fs_fs__dag_clone_child(i32** %10, i32* %120, i8* %121, i32 %124, %struct.TYPE_19__* %125, %struct.TYPE_19__* %126, i32 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32* %129)
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = call i8* @parent_path_path(%struct.TYPE_20__* %132, i32* %133)
  %135 = load i32*, i32** %10, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = call i32* @dag_node_cache_set(%struct.TYPE_18__* %131, i8* %134, i32* %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32* %137)
  br label %145

139:                                              ; preds = %33
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = load i32*, i32** %9, align 8
  %143 = call i32* @mutable_root_node(i32** %10, %struct.TYPE_18__* %140, i8* %141, i32* %142)
  %144 = call i32 @SVN_ERR(i32* %143)
  br label %145

145:                                              ; preds = %139, %110
  %146 = load i32*, i32** %10, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 1
  store i32* %146, i32** %148, align 8
  %149 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %149, i32** %5, align 8
  br label %150

150:                                              ; preds = %145, %31
  %151 = load i32*, i32** %5, align 8
  ret i32* %151
}

declare dso_local %struct.TYPE_19__* @root_txn_id(%struct.TYPE_18__*) #1

declare dso_local i64 @svn_fs_fs__dag_check_mutable(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs_fs__dag_get_id(i32*) #1

declare dso_local %struct.TYPE_19__* @svn_fs_fs__id_copy_id(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @svn_fs_fs__reserve_copy_id(%struct.TYPE_19__*, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32* @svn_fs_fs__dag_get_copyroot(i32*, i8**, i32*) #1

declare dso_local i32* @svn_fs_fs__revision_root(%struct.TYPE_18__**, i32, i32, i32*) #1

declare dso_local i32* @get_dag(i32**, %struct.TYPE_18__*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__id_part_eq(i32, i32) #1

declare dso_local i32 @svn_fs_fs__id_node_id(i32*) #1

declare dso_local i8* @parent_path_path(%struct.TYPE_20__*, i32*) #1

declare dso_local i32* @svn_fs_fs__dag_clone_child(i32**, i32*, i8*, i32, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32* @dag_node_cache_set(%struct.TYPE_18__*, i8*, i32*, i32*) #1

declare dso_local i32* @mutable_root_node(i32**, %struct.TYPE_18__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
