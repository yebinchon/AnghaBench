; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__get_path_kind.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_svn_fs_base__get_path_kind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_14__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @svn_fs_base__get_path_kind(i32* %0, i8* %1, %struct.TYPE_13__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @svn_fs_bdb__youngest_rev(i32* %10, i32 %17, %struct.TYPE_13__* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i32 @svn_fs_base__dag_revision_root(i32** %12, i32 %24, i32 %25, %struct.TYPE_13__* %26, i32* %27)
  %29 = call i32 @SVN_ERR(i32 %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32* @make_revision_root(i32 %32, i32 %33, i32* %34, i32* %35)
  store i32* %36, i32** %11, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call %struct.TYPE_14__* @get_dag(i32** %13, i32* %37, i8* %38, %struct.TYPE_13__* %39, i32* %40)
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %14, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %43 = icmp ne %struct.TYPE_14__* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %52 = call i32 @svn_error_clear(%struct.TYPE_14__* %51)
  %53 = load i32, i32* @svn_node_none, align 4
  %54 = load i32*, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %5, align 8
  br label %68

56:                                               ; preds = %44, %4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %58 = icmp ne %struct.TYPE_14__* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %61 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %60)
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %5, align 8
  br label %68

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load i32*, i32** %13, align 8
  %65 = call i32 @svn_fs_base__dag_node_kind(i32* %64)
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_14__* %67, %struct.TYPE_14__** %5, align 8
  br label %68

68:                                               ; preds = %63, %59, %50
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  ret %struct.TYPE_14__* %69
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_bdb__youngest_rev(i32*, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_fs_base__dag_revision_root(i32**, i32, i32, %struct.TYPE_13__*, i32*) #1

declare dso_local i32* @make_revision_root(i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @get_dag(i32**, i32*, i8*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

declare dso_local i32 @svn_fs_base__dag_node_kind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
