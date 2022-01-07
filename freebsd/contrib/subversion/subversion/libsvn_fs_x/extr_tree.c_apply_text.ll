; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_apply_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_tree.c_apply_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__*, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_FS_TXN_CHECK_LOCKS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@text_stream_writer = common dso_local global i32 0, align 4
@text_stream_closer = common dso_local global i32 0, align 4
@svn_fs_path_change_modify = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @apply_text to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @apply_text(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %9, %struct.TYPE_9__** %5, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = call i32 @svn_fs_x__root_txn_id(%struct.TYPE_11__* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @svn_fs_x__get_dag_path(%struct.TYPE_10__** %6, %struct.TYPE_11__* %16, i32 %19, i32 0, i32 %20, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32, i32* @FALSE, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @svn_fs_x__allow_locked_operation(i32 %36, i32 %41, i32 %42, i32 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  br label %47

47:                                               ; preds = %33, %2
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @svn_fs_x__make_path_mutable(%struct.TYPE_11__* %50, %struct.TYPE_10__* %51, i32 %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @svn_fs_x__dag_dup(i32 %61, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @svn_fs_x__dag_get_edit_stream(i32* %69, i32 %72, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @svn_stream_create(%struct.TYPE_9__* %78, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @text_stream_writer, align 4
  %89 = call i32 @svn_stream_set_write(i32 %87, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @text_stream_closer, align 4
  %94 = call i32 @svn_stream_set_close(i32 %92, i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @svn_fs_path_change_modify, align 4
  %105 = load i32, i32* @TRUE, align 4
  %106 = load i32, i32* @FALSE, align 4
  %107 = load i32, i32* @FALSE, align 4
  %108 = load i32, i32* @svn_node_file, align 4
  %109 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %110 = load i32*, i32** %4, align 8
  %111 = call i32* @add_change(i32 %99, i32 %100, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32* null, i32* %110)
  ret i32* %111
}

declare dso_local i32 @svn_fs_x__root_txn_id(%struct.TYPE_11__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__get_dag_path(%struct.TYPE_10__**, %struct.TYPE_11__*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__allow_locked_operation(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_x__make_path_mutable(%struct.TYPE_11__*, %struct.TYPE_10__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__dag_dup(i32, i32) #1

declare dso_local i32 @svn_fs_x__dag_get_edit_stream(i32*, i32, i32) #1

declare dso_local i32 @svn_stream_create(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32, i32) #1

declare dso_local i32 @svn_stream_set_close(i32, i32) #1

declare dso_local i32* @add_change(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
