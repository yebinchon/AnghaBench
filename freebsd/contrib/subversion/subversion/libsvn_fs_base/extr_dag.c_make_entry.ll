; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_make_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_make_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i64 }

@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Attempted to create a node with an illegal name '%s'\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Attempted to create entry in non-directory parent\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Attempted to clone child of non-mutable node\00", align 1
@SVN_ERR_FS_ALREADY_EXISTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"Attempted to create entry that already exists\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__**, %struct.TYPE_14__*, i8*, i8*, i64, i8*, i32*, i32*)* @make_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_entry(%struct.TYPE_14__** %0, %struct.TYPE_14__* %1, i8* %2, i8* %3, i64 %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = call i32 @svn_path_is_single_path_component(i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %25 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %13, align 8
  %27 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %24, i32* null, i32 %25, i8* %26)
  store i32* %27, i32** %9, align 8
  br label %103

28:                                               ; preds = %8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @svn_node_dir, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32* @svn_error_create(i32 %35, i32* null, i32 %36)
  store i32* %37, i32** %9, align 8
  br label %103

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %40 = load i8*, i8** %15, align 8
  %41 = call i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_14__* %39, i8* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %45 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %44, i32* null, i32 %45)
  store i32* %46, i32** %9, align 8
  br label %103

47:                                               ; preds = %38
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = call i32 @dir_entry_id_from_node(i32** %18, %struct.TYPE_14__* %48, i8* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %18, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load i32, i32* @SVN_ERR_FS_ALREADY_EXISTS, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %59 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %57, i32* null, i32 %58)
  store i32* %59, i32** %9, align 8
  br label %103

60:                                               ; preds = %47
  %61 = call i32 @memset(%struct.TYPE_13__* %19, i32 0, i32 16)
  %62 = load i64, i64* %14, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @svn_node_dir, align 8
  br label %68

66:                                               ; preds = %60
  %67 = load i64, i64* @svn_node_file, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i64 %69, i64* %70, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = call i32 @svn_fspath__join(i8* %71, i8* %72, i32* %73)
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %74, i32* %75, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %77 = call i32 @svn_fs_base__dag_get_fs(%struct.TYPE_14__* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %79 = call i32 @svn_fs_base__dag_get_id(%struct.TYPE_14__* %78)
  %80 = call i32 @svn_fs_base__id_copy_id(i32 %79)
  %81 = load i8*, i8** %15, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = call i32 @svn_fs_base__create_node(i32** %18, i32 %77, %struct.TYPE_13__* %19, i32 %80, i8* %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %88 = call i32 @svn_fs_base__dag_get_fs(%struct.TYPE_14__* %87)
  %89 = load i32*, i32** %18, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = load i32*, i32** %17, align 8
  %92 = call i32 @svn_fs_base__dag_get_node(%struct.TYPE_14__** %86, i32 %88, i32* %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  %98 = call i32 @svn_fs_base__dag_get_id(%struct.TYPE_14__* %97)
  %99 = load i8*, i8** %15, align 8
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = call i32* @set_entry(%struct.TYPE_14__* %94, i8* %95, i32 %98, i8* %99, i32* %100, i32* %101)
  store i32* %102, i32** %9, align 8
  br label %103

103:                                              ; preds = %68, %56, %43, %34, %23
  %104 = load i32*, i32** %9, align 8
  ret i32* %104
}

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dir_entry_id_from_node(i32**, %struct.TYPE_14__*, i8*, i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_base__create_node(i32**, i32, %struct.TYPE_13__*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_get_fs(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_fs_base__id_copy_id(i32) #1

declare dso_local i32 @svn_fs_base__dag_get_id(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_fs_base__dag_get_node(%struct.TYPE_14__**, i32, i32*, i32*, i32*) #1

declare dso_local i32* @set_entry(%struct.TYPE_14__*, i8*, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
