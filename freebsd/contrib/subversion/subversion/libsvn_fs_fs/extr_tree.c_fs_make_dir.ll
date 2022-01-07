; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_make_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_make_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_13__*, i64 }

@open_path_last_optional = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_fs_path_change_add = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i8*, i32*)* @fs_make_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_make_dir(%struct.TYPE_12__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = call i32* @root_txn_id(%struct.TYPE_12__* %11)
  store i32* %12, i32** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @check_newline(i8* %13, i32* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load i8*, i8** %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i8* @svn_fs__canonicalize_abspath(i8* %17, i32* %18)
  store i8* %19, i8** %6, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @open_path_last_optional, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @open_path(%struct.TYPE_13__** %8, %struct.TYPE_12__* %20, i8* %21, i32 %22, i32 %23, i32* %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %3
  %34 = load i8*, i8** %6, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32, i32* @FALSE, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @svn_fs_fs__allow_locked_operation(i8* %34, i32 %37, i32 %38, i32 %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %43

43:                                               ; preds = %33, %3
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32* @SVN_FS__ALREADY_EXISTS(%struct.TYPE_12__* %49, i8* %50)
  store i32* %51, i32** %4, align 8
  br label %101

52:                                               ; preds = %43
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @make_path_mutable(%struct.TYPE_12__* %53, %struct.TYPE_13__* %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @parent_path_path(%struct.TYPE_13__* %68, i32* %69)
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @svn_fs_fs__dag_make_dir(i32** %9, i64 %65, i32 %70, i32 %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @parent_path_path(%struct.TYPE_13__* %79, i32* %80)
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @dag_node_cache_set(%struct.TYPE_12__* %78, i32 %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %10, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = call i32 @svn_fs_fs__dag_get_id(i32* %91)
  %93 = load i32, i32* @svn_fs_path_change_add, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = load i32, i32* @FALSE, align 4
  %97 = load i32, i32* @svn_node_dir, align 4
  %98 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = call i32* @add_change(i32 %88, i32* %89, i8* %90, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98, i32* null, i32* %99)
  store i32* %100, i32** %4, align 8
  br label %101

101:                                              ; preds = %52, %48
  %102 = load i32*, i32** %4, align 8
  ret i32* %102
}

declare dso_local i32* @root_txn_id(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @check_newline(i8*, i32*) #1

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @open_path(%struct.TYPE_13__**, %struct.TYPE_12__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__allow_locked_operation(i8*, i32, i32, i32, i32*) #1

declare dso_local i32* @SVN_FS__ALREADY_EXISTS(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_12__*, %struct.TYPE_13__*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_make_dir(i32**, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @dag_node_cache_set(%struct.TYPE_12__*, i32, i32*, i32*) #1

declare dso_local i32* @add_change(i32, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
