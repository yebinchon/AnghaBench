; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_delete_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_ROOT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"The root directory cannot be deleted\00", align 1
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_fs_path_change_delete = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i8*, i32*)* @x_delete_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_delete_node(%struct.TYPE_14__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32* @svn_pool_create(i32* %13)
  store i32* %14, i32** %12, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %21 = call i32* @SVN_FS__NOT_TXN(%struct.TYPE_14__* %20)
  store i32* %21, i32** %4, align 8
  br label %121

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @svn_fs_x__root_txn_id(%struct.TYPE_14__* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_13__** %8, %struct.TYPE_14__* %25, i8* %26, i32 0, i32 %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @svn_fs_x__dag_node_kind(i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = icmp ne %struct.TYPE_15__* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %22
  %41 = load i32, i32* @SVN_ERR_FS_ROOT_DIR, align 4
  %42 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %43 = call i32* @svn_error_create(i32 %41, i32* null, i32 %42)
  store i32* %43, i32** %4, align 8
  br label %121

44:                                               ; preds = %22
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @TRUE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @svn_fs_x__allow_locked_operation(i8* %52, i32 %55, i32 %56, i32 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  br label %61

61:                                               ; preds = %51, %44
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = call i32 @svn_fs_x__make_path_mutable(%struct.TYPE_14__* %62, %struct.TYPE_15__* %65, i8* %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @svn_fs_x__dag_get_mergeinfo_count(i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @svn_fs_x__dag_delete(i32 %79, i32 %82, i32 %83, i32* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = load i32*, i32** %12, align 8
  %90 = call i32 @parent_path_path(%struct.TYPE_13__* %88, i32* %89)
  %91 = call i32 @svn_fs_x__invalidate_dag_cache(%struct.TYPE_14__* %87, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %61
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 0, %98
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @increment_mergeinfo_up_tree(%struct.TYPE_15__* %97, i32 %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %103

103:                                              ; preds = %94, %61
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = load i32, i32* @svn_fs_path_change_delete, align 4
  %110 = load i32, i32* @FALSE, align 4
  %111 = load i32, i32* @FALSE, align 4
  %112 = load i32, i32* @FALSE, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @add_change(i32 %106, i32 %107, i8* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32* null, i32* %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** %12, align 8
  %119 = call i32 @svn_pool_destroy(i32* %118)
  %120 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %120, i32** %4, align 8
  br label %121

121:                                              ; preds = %103, %40, %19
  %122 = load i32*, i32** %4, align 8
  ret i32* %122
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @SVN_FS__NOT_TXN(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_fs_x__root_txn_id(%struct.TYPE_14__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_13__**, %struct.TYPE_14__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_node_kind(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_x__allow_locked_operation(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__make_path_mutable(%struct.TYPE_14__*, %struct.TYPE_15__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_get_mergeinfo_count(i32) #1

declare dso_local i32 @svn_fs_x__dag_delete(i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__invalidate_dag_cache(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @increment_mergeinfo_up_tree(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32 @add_change(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
