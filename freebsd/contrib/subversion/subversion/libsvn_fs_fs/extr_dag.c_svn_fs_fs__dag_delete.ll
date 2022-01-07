; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_7__ = type { i32 }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__dag_delete(%struct.TYPE_8__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @svn_node_dir, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = call i32* @svn_error_createf(i32 %24, i32* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i8* %25)
  store i32* %26, i32** %5, align 8
  br label %86

27:                                               ; preds = %4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = call i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_8__* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32* @svn_error_createf(i32 %32, i32* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  store i32* %34, i32** %5, align 8
  br label %86

35:                                               ; preds = %27
  %36 = load i8*, i8** %7, align 8
  %37 = call i32 @svn_path_is_single_path_component(i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* @SVN_ERR_FS_NOT_SINGLE_PATH_COMPONENT, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = call i32* @svn_error_createf(i32 %40, i32* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i8* %41)
  store i32* %42, i32** %5, align 8
  br label %86

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = call i32 @get_node_revision(i32** %10, %struct.TYPE_8__* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @svn_pool_create(i32* %47)
  store i32* %48, i32** %14, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32*, i32** %14, align 8
  %54 = call i32 @svn_fs_fs__rep_contents_dir_entry(%struct.TYPE_7__** %12, i32* %49, i32* %50, i8* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %43
  %59 = load i32, i32* @SVN_ERR_FS_NO_SUCH_ENTRY, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32* @svn_error_createf(i32 %59, i32* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  store i32* %61, i32** %5, align 8
  br label %86

62:                                               ; preds = %43
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32* @svn_fs_fs__id_copy(i32 %65, i32* %66)
  store i32* %67, i32** %13, align 8
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @svn_pool_destroy(i32* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32 @svn_fs_fs__dag_delete_if_mutable(i32* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* @svn_node_unknown, align 4
  %84 = load i32*, i32** %9, align 8
  %85 = call i32* @svn_fs_fs__set_entry(i32* %79, i32* %80, i32* %81, i8* %82, i32* null, i32 %83, i32* %84)
  store i32* %85, i32** %5, align 8
  br label %86

86:                                               ; preds = %62, %58, %39, %31, %23
  %87 = load i32*, i32** %5, align 8
  ret i32* %87
}

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i8*) #1

declare dso_local i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_node_revision(i32**, %struct.TYPE_8__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_fs_fs__rep_contents_dir_entry(%struct.TYPE_7__**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_fs_fs__id_copy(i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_fs__dag_delete_if_mutable(i32*, i32*, i32*) #1

declare dso_local i32* @svn_fs_fs__set_entry(i32*, i32*, i32*, i8*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
