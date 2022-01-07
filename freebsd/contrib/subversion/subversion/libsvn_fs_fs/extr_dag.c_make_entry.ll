; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_make_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_make_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32*, i32, i32, i32, i32 }

@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Attempted to create a node with an illegal name '%s'\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Attempted to create entry in non-directory parent\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Attempted to clone child of non-mutable node\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_15__**, %struct.TYPE_15__*, i8*, i8*, i64, i32*, i32*)* @make_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_entry(%struct.TYPE_15__** %0, %struct.TYPE_15__* %1, i8* %2, i8* %3, i64 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_14__, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @svn_path_is_single_path_component(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %24 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %25 = load i8*, i8** %12, align 8
  %26 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %23, i32* null, i32 %24, i8* %25)
  store i32* %26, i32** %8, align 8
  br label %103

27:                                               ; preds = %7
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @svn_node_dir, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %35 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %36 = call i32* @svn_error_create(i32 %34, i32* null, i32 %35)
  store i32* %36, i32** %8, align 8
  br label %103

37:                                               ; preds = %27
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %39 = call i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_15__* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %43 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %44 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %42, i32* null, i32 %43)
  store i32* %44, i32** %8, align 8
  br label %103

45:                                               ; preds = %37
  %46 = call i32 @memset(%struct.TYPE_14__* %17, i32 0, i32 32)
  %47 = load i64, i64* %13, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @svn_node_dir, align 8
  br label %53

51:                                               ; preds = %45
  %52 = load i64, i64* @svn_node_file, align 8
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i64 [ %50, %49 ], [ %52, %51 ]
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @svn_fspath__join(i8* %56, i8* %57, i32* %58)
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 5
  store i32 %59, i32* %60, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = call i32 @get_node_revision(%struct.TYPE_14__** %18, %struct.TYPE_15__* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load i32*, i32** %15, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @apr_pstrdup(i32* %64, i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 4
  store i32 %68, i32* %69, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32* null, i32** %76, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %78 = call i32 @svn_fs_fs__dag_get_fs(%struct.TYPE_15__* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %80 = call i32 @svn_fs_fs__dag_get_id(%struct.TYPE_15__* %79)
  %81 = call i32 @svn_fs_fs__id_copy_id(i32 %80)
  %82 = load i32*, i32** %14, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = call i32 @svn_fs_fs__create_node(i32** %16, i32 %78, %struct.TYPE_14__* %17, i32 %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %88 = call i32 @svn_fs_fs__dag_get_fs(%struct.TYPE_15__* %87)
  %89 = load i32*, i32** %16, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = call i32 @svn_fs_fs__dag_get_node(%struct.TYPE_15__** %86, i32 %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %95, align 8
  %97 = call i32 @svn_fs_fs__dag_get_id(%struct.TYPE_15__* %96)
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = load i32*, i32** %15, align 8
  %102 = call i32* @set_entry(%struct.TYPE_15__* %93, i8* %94, i32 %97, i64 %99, i32* %100, i32* %101)
  store i32* %102, i32** %8, align 8
  br label %103

103:                                              ; preds = %53, %41, %33, %22
  %104 = load i32*, i32** %8, align 8
  ret i32* %104
}

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_node_revision(%struct.TYPE_14__**, %struct.TYPE_15__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__create_node(i32**, i32, %struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_fs(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_fs_fs__id_copy_id(i32) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(%struct.TYPE_15__*) #1

declare dso_local i32 @svn_fs_fs__dag_get_node(%struct.TYPE_15__**, i32, i32*, i32*) #1

declare dso_local i32* @set_entry(%struct.TYPE_15__*, i8*, i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
