; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_make_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_make_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32*, i32, i32, i32, i32 }

@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Attempted to create a node with an illegal name '%s'\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Attempted to create entry in non-directory parent\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Attempted to clone child of non-mutable node\00", align 1
@svn_node_file = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__**, %struct.TYPE_12__*, i8*, i8*, i64, i32, i32*, i32*)* @make_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @make_entry(%struct.TYPE_12__** %0, %struct.TYPE_12__* %1, i8* %2, i8* %3, i64 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__** %0, %struct.TYPE_12__*** %10, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %19, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @svn_path_is_single_path_component(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %28 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %29 = load i8*, i8** %13, align 8
  %30 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %27, i32* null, i32 %28, i8* %29)
  store i32* %30, i32** %9, align 8
  br label %104

31:                                               ; preds = %8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @svn_node_dir, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %39 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32* @svn_error_create(i32 %38, i32* null, i32 %39)
  store i32* %40, i32** %9, align 8
  br label %104

41:                                               ; preds = %31
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %43 = call i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_12__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %47 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %48 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %46, i32* null, i32 %47)
  store i32* %48, i32** %9, align 8
  br label %104

49:                                               ; preds = %41
  %50 = call i32 @memset(%struct.TYPE_11__* %18, i32 0, i32 48)
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i64, i64* @svn_node_dir, align 8
  br label %57

55:                                               ; preds = %49
  %56 = load i64, i64* @svn_node_file, align 8
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i64 [ %54, %53 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  store i64 %58, i64* %59, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @svn_fspath__join(i8* %60, i8* %61, i32* %62)
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 8
  store i32 %63, i32* %64, align 4
  %65 = load i32*, i32** %16, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @apr_pstrdup(i32* %65, i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 7
  store i32 %69, i32* %70, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 6
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 5
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %79 = call i32 @svn_fs_x__id_reset(i32* %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = call i32 @svn_fs_x__dag_get_fs(%struct.TYPE_12__* %80)
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %17, align 8
  %86 = call i32 @svn_fs_x__create_node(i32 %81, %struct.TYPE_11__* %18, i32* %83, i32 %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = call i32 @svn_fs_x__dag_get_fs(%struct.TYPE_12__* %89)
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %92 = load i32*, i32** %16, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = call i32 @svn_fs_x__dag_get_node(%struct.TYPE_12__** %88, i32 %90, i32* %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32*, i32** %17, align 8
  %103 = call i32* @set_entry(%struct.TYPE_12__* %96, i8* %97, i32* %98, i64 %100, i32 %101, i32* %102)
  store i32* %103, i32** %9, align 8
  br label %104

104:                                              ; preds = %57, %45, %37, %26
  %105 = load i32*, i32** %9, align 8
  ret i32* %105
}

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_12__*) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

declare dso_local i32 @svn_fs_x__id_reset(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__create_node(i32, %struct.TYPE_11__*, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__dag_get_fs(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_fs_x__dag_get_node(%struct.TYPE_12__**, i32, i32*, i32*, i32*) #1

declare dso_local i32* @set_entry(%struct.TYPE_12__*, i8*, i32*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
