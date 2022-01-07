; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_apply_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_apply_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text_baton_t = type { i32, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

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
  %5 = alloca %struct.text_baton_t*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.text_baton_t*
  store %struct.text_baton_t* %9, %struct.text_baton_t** %5, align 8
  %10 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %11 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %10, i32 0, i32 2
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = call i32* @root_txn_id(%struct.TYPE_8__* %12)
  store i32* %13, i32** %7, align 8
  %14 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %15 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %14, i32 0, i32 2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %18 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TRUE, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @open_path(%struct.TYPE_7__** %6, %struct.TYPE_8__* %16, i32 %19, i32 0, i32 %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %25 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %24, i32 0, i32 2
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SVN_FS_TXN_CHECK_LOCKS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %34 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %37 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %36, i32 0, i32 2
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FALSE, align 4
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @svn_fs_fs__allow_locked_operation(i32 %35, i32 %40, i32 %41, i32 %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %32, %2
  %47 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %48 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %47, i32 0, i32 2
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %52 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @make_path_mutable(%struct.TYPE_8__* %49, %struct.TYPE_7__* %50, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %61 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %63 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %62, i32 0, i32 5
  %64 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %65 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %68 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @svn_fs_fs__dag_get_edit_stream(i32* %63, i32 %66, i32 %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %73 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %74 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @svn_stream_create(%struct.text_baton_t* %72, i32 %75)
  %77 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %78 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 8
  %79 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %80 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @text_stream_writer, align 4
  %83 = call i32 @svn_stream_set_write(i32 %81, i32 %82)
  %84 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %85 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @text_stream_closer, align 4
  %88 = call i32 @svn_stream_set_close(i32 %86, i32 %87)
  %89 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %90 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %96 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.text_baton_t*, %struct.text_baton_t** %5, align 8
  %99 = getelementptr inbounds %struct.text_baton_t, %struct.text_baton_t* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @svn_fs_fs__dag_get_id(i32 %100)
  %102 = load i32, i32* @svn_fs_path_change_modify, align 4
  %103 = load i32, i32* @TRUE, align 4
  %104 = load i32, i32* @FALSE, align 4
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i32, i32* @svn_node_file, align 4
  %107 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = call i32* @add_change(i32 %93, i32* %94, i32 %97, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32* null, i32* %108)
  ret i32* %109
}

declare dso_local i32* @root_txn_id(%struct.TYPE_8__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @open_path(%struct.TYPE_7__**, %struct.TYPE_8__*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__allow_locked_operation(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @make_path_mutable(%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_edit_stream(i32*, i32, i32) #1

declare dso_local i32 @svn_stream_create(%struct.text_baton_t*, i32) #1

declare dso_local i32 @svn_stream_set_write(i32, i32) #1

declare dso_local i32 @svn_stream_set_close(i32, i32) #1

declare dso_local i32* @add_change(i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_get_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
