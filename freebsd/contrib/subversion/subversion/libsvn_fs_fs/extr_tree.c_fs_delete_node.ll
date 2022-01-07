; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_delete_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_fs_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_ROOT_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"The root directory cannot be deleted\00", align 1
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_fs_path_change_delete = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, i8*, i32*)* @fs_delete_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_delete_node(%struct.TYPE_13__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = call i32* @SVN_FS__NOT_TXN(%struct.TYPE_13__* %17)
  store i32* %18, i32** %4, align 8
  br label %129

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %21 = call i32* @root_txn_id(%struct.TYPE_13__* %20)
  store i32* %21, i32** %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i8* @svn_fs__canonicalize_abspath(i8* %22, i32* %23)
  store i8* %24, i8** %6, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @TRUE, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @open_path(%struct.TYPE_14__** %8, %struct.TYPE_13__* %25, i8* %26, i32 0, i32 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @svn_fs_fs__dag_node_kind(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = icmp ne %struct.TYPE_15__* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %19
  %40 = load i32, i32* @SVN_ERR_FS_ROOT_DIR, align 4
  %41 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %42 = call i32* @svn_error_create(i32 %40, i32* null, i32 %41)
  store i32* %42, i32** %4, align 8
  br label %129

43:                                               ; preds = %19
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @svn_fs_fs__allow_locked_operation(i8* %51, i32 %54, i32 %55, i32 %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  br label %60

60:                                               ; preds = %50, %43
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @make_path_mutable(%struct.TYPE_13__* %61, %struct.TYPE_15__* %64, i8* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @svn_fs_fs__fs_supports_mergeinfo(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %60
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @svn_fs_fs__dag_get_mergeinfo_count(i32* %10, i32 %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %74, %60
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @svn_fs_fs__dag_delete(i32 %85, i32 %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @parent_path_path(%struct.TYPE_14__* %94, i32* %95)
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @dag_node_cache_invalidate(%struct.TYPE_13__* %93, i32 %96, i32* %97)
  %99 = call i32 @SVN_ERR(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %80
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %104, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sub nsw i32 0, %106
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @increment_mergeinfo_up_tree(%struct.TYPE_15__* %105, i32 %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %111

111:                                              ; preds = %102, %80
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %9, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @svn_fs_fs__dag_get_id(i32 %119)
  %121 = load i32, i32* @svn_fs_path_change_delete, align 4
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32, i32* @FALSE, align 4
  %124 = load i32, i32* @FALSE, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = call i32* @add_change(i32 %114, i32* %115, i8* %116, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125, i32 %126, i32* null, i32* %127)
  store i32* %128, i32** %4, align 8
  br label %129

129:                                              ; preds = %111, %39, %16
  %130 = load i32*, i32** %4, align 8
  ret i32* %130
}

declare dso_local i32* @SVN_FS__NOT_TXN(%struct.TYPE_13__*) #1

declare dso_local i32* @root_txn_id(%struct.TYPE_13__*) #1

declare dso_local i8* @svn_fs__canonicalize_abspath(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_14__**, %struct.TYPE_13__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_node_kind(i32) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_fs__allow_locked_operation(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_13__*, %struct.TYPE_15__*, i8*, i32*) #1

declare dso_local i64 @svn_fs_fs__fs_supports_mergeinfo(i32) #1

declare dso_local i32 @svn_fs_fs__dag_get_mergeinfo_count(i32*, i32) #1

declare dso_local i32 @svn_fs_fs__dag_delete(i32, i32, i32*, i32*) #1

declare dso_local i32 @dag_node_cache_invalidate(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @parent_path_path(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @increment_mergeinfo_up_tree(%struct.TYPE_15__*, i32, i32*) #1

declare dso_local i32* @add_change(i32, i32*, i8*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
