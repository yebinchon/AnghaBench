; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_clone_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_clone_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32, i32* }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Attempted to clone child of non-mutable node\00", align 1
@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Attempted to make a child clone with an illegal name '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_clone_child(%struct.TYPE_14__** %0, %struct.TYPE_14__* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__**, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_14__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__** %0, %struct.TYPE_14__*** %10, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %23 = call i32* @svn_fs_base__dag_get_fs(%struct.TYPE_14__* %22)
  store i32* %23, i32** %20, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = call i64 @svn_fs_base__dag_check_mutable(%struct.TYPE_14__* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %30 = call i32 @_(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %31 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %29, i32* null, i32 %30)
  store i32* %31, i32** %9, align 8
  br label %112

32:                                               ; preds = %8
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @svn_path_is_single_path_component(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %38 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i8*, i8** %13, align 8
  %40 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %37, i32* null, i32 %38, i8* %39)
  store i32* %40, i32** %9, align 8
  br label %112

41:                                               ; preds = %32
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = call i32 @svn_fs_base__dag_open(%struct.TYPE_14__** %18, %struct.TYPE_14__* %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = call i64 @svn_fs_base__dag_check_mutable(%struct.TYPE_14__* %48, i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %19, align 8
  br label %105

56:                                               ; preds = %41
  %57 = load i32*, i32** %20, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** %16, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_13__** %21, i32* %57, i32* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %56
  %80 = load i8*, i8** %12, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @svn_fspath__join(i8* %80, i8* %81, i32* %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %20, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i32*, i32** %16, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @svn_fs_base__create_successor(i32** %19, i32* %86, i32* %89, %struct.TYPE_13__* %90, i8* %91, i8* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = load i8*, i8** %15, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i32*, i32** %17, align 8
  %103 = call i32 @set_entry(%struct.TYPE_14__* %97, i8* %98, i32* %99, i8* %100, i32* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  br label %105

105:                                              ; preds = %79, %52
  %106 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %10, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = load i32*, i32** %16, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = call i32* @svn_fs_base__dag_get_node(%struct.TYPE_14__** %106, i32* %107, i32* %108, i32* %109, i32* %110)
  store i32* %111, i32** %9, align 8
  br label %112

112:                                              ; preds = %105, %36, %28
  %113 = load i32*, i32** %9, align 8
  ret i32* %113
}

declare dso_local i32* @svn_fs_base__dag_get_fs(%struct.TYPE_14__*) #1

declare dso_local i64 @svn_fs_base__dag_check_mutable(%struct.TYPE_14__*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__dag_open(%struct.TYPE_14__**, %struct.TYPE_14__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_13__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_base__create_successor(i32**, i32*, i32*, %struct.TYPE_13__*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @set_entry(%struct.TYPE_14__*, i8*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_get_node(%struct.TYPE_14__**, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
