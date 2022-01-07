; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_clone_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_clone_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempted to clone child of non-mutable node\00", align 1
@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Attempted to make a child clone with an illegal name '%s'\00", align 1
@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Attempted to open non-existent child node '%s'\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__dag_clone_child(%struct.TYPE_15__** %0, %struct.TYPE_15__* %1, i8* %2, i8* %3, i32* %4, i32* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__**, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_14__*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %10, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = call i32* @svn_fs_fs__dag_get_fs(%struct.TYPE_15__* %24)
  store i32* %25, i32** %20, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = call i32* @svn_pool_create(i32* %26)
  store i32* %27, i32** %21, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %29 = call i64 @svn_fs_fs__dag_check_mutable(%struct.TYPE_15__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %33 = call i32* (i32, i32*, i8*, ...) @svn_error_createf(i32 %32, i32* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32* %33, i32** %9, align 8
  br label %136

34:                                               ; preds = %8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @svn_path_is_single_path_component(i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %40 = load i8*, i8** %13, align 8
  %41 = call i32* (i32, i32*, i8*, ...) @svn_error_createf(i32 %39, i32* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  store i32* %41, i32** %9, align 8
  br label %136

42:                                               ; preds = %34
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = call i32 @svn_fs_fs__dag_open(%struct.TYPE_15__** %18, %struct.TYPE_15__* %43, i8* %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %50 = icmp ne %struct.TYPE_15__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %53 = load i8*, i8** %13, align 8
  %54 = call i32* (i32, i32*, i8*, ...) @svn_error_createf(i32 %52, i32* null, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  store i32* %54, i32** %9, align 8
  br label %136

55:                                               ; preds = %42
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %57 = call i64 @svn_fs_fs__dag_check_mutable(%struct.TYPE_15__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %19, align 8
  br label %128

63:                                               ; preds = %55
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %65 = call i32 @get_node_revision(%struct.TYPE_14__** %22, %struct.TYPE_15__* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i64, i64* %16, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %71 = call i32 @get_node_revision(%struct.TYPE_14__** %23, %struct.TYPE_15__* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @apr_pstrdup(i32* %78, i32 %81)
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %69, %63
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 5
  store i32* null, i32** %87, align 8
  %88 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @svn_fs_fs__id_copy(i32* %93, i32* %94)
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = load i32*, i32** %17, align 8
  %105 = call i32 @svn_fspath__join(i8* %102, i8* %103, i32* %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** %20, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i32*, i32** %17, align 8
  %116 = call i32 @svn_fs_fs__create_successor(i32** %19, i32* %108, i32* %111, %struct.TYPE_14__* %112, i32* %113, i32* %114, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = load i32*, i32** %19, align 8
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = load i32*, i32** %17, align 8
  %126 = call i32 @set_entry(%struct.TYPE_15__* %118, i8* %119, i32* %120, i32 %123, i32* %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  br label %128

128:                                              ; preds = %85, %59
  %129 = load i32*, i32** %21, align 8
  %130 = call i32 @svn_pool_destroy(i32* %129)
  %131 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %10, align 8
  %132 = load i32*, i32** %20, align 8
  %133 = load i32*, i32** %19, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = call i32* @svn_fs_fs__dag_get_node(%struct.TYPE_15__** %131, i32* %132, i32* %133, i32* %134)
  store i32* %135, i32** %9, align 8
  br label %136

136:                                              ; preds = %128, %51, %38, %31
  %137 = load i32*, i32** %9, align 8
  ret i32* %137
}

declare dso_local i32* @svn_fs_fs__dag_get_fs(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i64 @svn_fs_fs__dag_check_mutable(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, ...) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__dag_open(%struct.TYPE_15__**, %struct.TYPE_15__*, i8*, i32*, i32*) #1

declare dso_local i32 @get_node_revision(%struct.TYPE_14__**, %struct.TYPE_15__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__id_copy(i32*, i32*) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__create_successor(i32**, i32*, i32*, %struct.TYPE_14__*, i32*, i32*, i32*) #1

declare dso_local i32 @set_entry(%struct.TYPE_15__*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_fs_fs__dag_get_node(%struct.TYPE_15__**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
