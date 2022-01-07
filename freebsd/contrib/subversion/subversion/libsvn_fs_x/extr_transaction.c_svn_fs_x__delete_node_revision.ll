; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__delete_node_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_svn_fs_x__delete_node_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__delete_node_revision(%struct.TYPE_20__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32* @svn_fs_x__get_node_revision(%struct.TYPE_18__** %7, %struct.TYPE_20__* %10, i32* %11, i32* %12, i32* %13)
  %15 = call i32 @SVN_ERR(i32* %14)
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %3
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @svn_fs_x__is_txn(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %20
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @svn_fs_x__path_txn_node_props(%struct.TYPE_20__* %30, i32* %31, i32* %32, i32* %33)
  %35 = load i32, i32* @FALSE, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32* @svn_io_remove_file2(i32 %34, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32* %37)
  br label %39

39:                                               ; preds = %29, %20, %3
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = icmp ne %struct.TYPE_17__* %42, null
  br i1 %43, label %44, label %80

44:                                               ; preds = %39
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @svn_fs_x__is_txn(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %44
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @svn_node_dir, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %53
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %8, align 8
  %63 = load i32*, i32** %5, align 8
  store i32* %63, i32** %9, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @svn_fs_x__path_txn_node_children(%struct.TYPE_20__* %64, i32* %65, i32* %66, i32* %67)
  %69 = load i32, i32* @FALSE, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = call i32* @svn_io_remove_file2(i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32* %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %9, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = call i32* @svn_cache__set(i32 %75, i32* %76, i32* null, i32* %77)
  %79 = call i32 @SVN_ERR(i32* %78)
  br label %80

80:                                               ; preds = %59, %53, %44, %39
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  %85 = call i32 @svn_fs_x__path_txn_node_rev(%struct.TYPE_20__* %81, i32* %82, i32* %83, i32* %84)
  %86 = load i32, i32* @FALSE, align 4
  %87 = load i32*, i32** %6, align 8
  %88 = call i32* @svn_io_remove_file2(i32 %85, i32 %86, i32* %87)
  ret i32* %88
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs_x__get_node_revision(%struct.TYPE_18__**, %struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i64 @svn_fs_x__is_txn(i32) #1

declare dso_local i32* @svn_io_remove_file2(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_node_props(%struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_node_children(%struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_cache__set(i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__path_txn_node_rev(%struct.TYPE_20__*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
