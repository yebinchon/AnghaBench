; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_make_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_x_make_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__*, i64 }
%struct.TYPE_13__ = type { i32 }

@svn_fs_x__dag_path_last_optional = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_fs_path_change_add = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i8*, i32*)* @x_make_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @x_make_dir(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = call i32 @svn_fs_x__root_txn_id(%struct.TYPE_12__* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32* @svn_pool_create(i32* %14)
  store i32* %15, i32** %11, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @svn_fs_x__dag_path_last_optional, align 4
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_11__** %8, %struct.TYPE_12__* %16, i8* %17, i32 %18, i32 %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TRUE, align 4
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = call i32 @svn_fs_x__allow_locked_operation(i8* %31, i32 %34, i32 %35, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  br label %40

40:                                               ; preds = %30, %3
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32* @SVN_FS__ALREADY_EXISTS(%struct.TYPE_12__* %46, i8* %47)
  store i32* %48, i32** %4, align 8
  br label %96

49:                                               ; preds = %40
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @svn_fs_x__make_path_mutable(%struct.TYPE_12__* %50, %struct.TYPE_13__* %53, i8* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @parent_path_path(%struct.TYPE_13__* %66, i32* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @svn_fs_x__dag_make_dir(i32** %9, i32 %63, i32 %68, i32 %71, i32 %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @svn_fs_x__update_dag_cache(i32* %77)
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* @svn_fs_path_change_add, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32, i32* @FALSE, align 4
  %88 = load i32, i32* @svn_node_dir, align 4
  %89 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = call i32 @add_change(i32 %81, i32 %82, i8* %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32* null, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** %11, align 8
  %94 = call i32 @svn_pool_destroy(i32* %93)
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %95, i32** %4, align 8
  br label %96

96:                                               ; preds = %49, %45
  %97 = load i32*, i32** %4, align 8
  ret i32* %97
}

declare dso_local i32 @svn_fs_x__root_txn_id(%struct.TYPE_12__*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_11__**, %struct.TYPE_12__*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__allow_locked_operation(i8*, i32, i32, i32, i32*) #1

declare dso_local i32* @SVN_FS__ALREADY_EXISTS(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @svn_fs_x__make_path_mutable(%struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_make_dir(i32**, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_fs_x__update_dag_cache(i32*) #1

declare dso_local i32 @add_change(i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
