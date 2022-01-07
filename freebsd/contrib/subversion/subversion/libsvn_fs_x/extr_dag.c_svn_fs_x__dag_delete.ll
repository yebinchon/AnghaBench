; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Attempted to delete entry '%s' from *non*-directory node\00", align 1
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Attempted to delete entry '%s' from immutable directory node\00", align 1
@SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Attempted to delete a node with an illegal name '%s'\00", align 1
@SVN_ERR_FS_NO_SUCH_ENTRY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Delete failed--directory has no entry '%s'\00", align 1
@svn_node_unknown = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__dag_delete(%struct.TYPE_11__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @svn_node_dir, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32* @svn_error_createf(i32 %26, i32* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %27)
  store i32* %28, i32** %5, align 8
  br label %82

29:                                               ; preds = %4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %31 = call i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_11__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32* @svn_error_createf(i32 %34, i32* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  store i32* %36, i32** %5, align 8
  br label %82

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @svn_path_is_single_path_component(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32* @svn_error_createf(i32 %42, i32* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  store i32* %44, i32** %5, align 8
  br label %82

45:                                               ; preds = %37
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @svn_pool_create(i32* %46)
  store i32* %47, i32** %13, align 8
  %48 = load i32*, i32** %11, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = call i32 @svn_fs_x__rep_contents_dir_entry(%struct.TYPE_10__** %12, i32* %48, %struct.TYPE_9__* %49, i8* %50, i32* %52, i32* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = icmp ne %struct.TYPE_10__* %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %45
  %60 = load i32, i32* @SVN_ERR_FS_NO_SUCH_ENTRY, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = call i32* @svn_error_createf(i32 %60, i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  store i32* %62, i32** %5, align 8
  br label %82

63:                                               ; preds = %45
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @delete_if_mutable(i32* %66, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = load i32, i32* @svn_node_unknown, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @set_entry(%struct.TYPE_11__* %72, i8* %73, i32* null, i32 %74, i32 %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @svn_pool_destroy(i32* %79)
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %63, %59, %41, %33, %25
  %83 = load i32*, i32** %5, align 8
  ret i32* %83
}

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_11__*) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__rep_contents_dir_entry(%struct.TYPE_10__**, i32*, %struct.TYPE_9__*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @delete_if_mutable(i32*, i32*, i32*) #1

declare dso_local i32 @set_entry(%struct.TYPE_11__*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
