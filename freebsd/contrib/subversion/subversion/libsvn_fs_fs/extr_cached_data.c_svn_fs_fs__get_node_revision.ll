; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_node_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_svn_fs_fs__get_node_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@SVN_ERR_FS_CORRUPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Corrupt node-revision '%s'\00", align 1
@SVN_FS_FS__ITEM_TYPE_NODEREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @svn_fs_fs__get_node_revision(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call %struct.TYPE_13__* @svn_fs_fs__id_rev_item(i32* %15)
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %12, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = call %struct.TYPE_14__* @get_node_revision_body(i32** %17, i32* %18, i32* %19, i32* %20, i32* %21)
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %13, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %24 = icmp ne %struct.TYPE_14__* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %5
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SVN_ERR_FS_CORRUPT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call %struct.TYPE_12__* @svn_fs_fs__id_unparse(i32* %32, i32* %33)
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %14, align 8
  %35 = load i64, i64* @SVN_ERR_FS_CORRUPT, align 8
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_14__* @svn_error_createf(i64 %35, %struct.TYPE_14__* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %6, align 8
  br label %57

41:                                               ; preds = %25, %5
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32**, i32*** %7, align 8
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* @SVN_FS_FS__ITEM_TYPE_NODEREV, align 4
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @dbg_log_access(i32* %42, i32 %45, i32 %48, i32* %50, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %56 = call %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__* %55)
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %6, align 8
  br label %57

57:                                               ; preds = %41, %31
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  ret %struct.TYPE_14__* %58
}

declare dso_local %struct.TYPE_13__* @svn_fs_fs__id_rev_item(i32*) #1

declare dso_local %struct.TYPE_14__* @get_node_revision_body(i32**, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @svn_fs_fs__id_unparse(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_createf(i64, %struct.TYPE_14__*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @dbg_log_access(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @svn_error_trace(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
