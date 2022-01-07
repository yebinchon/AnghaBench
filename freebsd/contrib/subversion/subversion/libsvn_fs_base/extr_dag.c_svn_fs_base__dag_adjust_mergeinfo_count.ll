; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_adjust_mergeinfo_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_dag.c_svn_fs_base__dag_adjust_mergeinfo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"mergeinfo\00", align 1
@SVN_FS_BASE__MIN_MERGEINFO_FORMAT = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Attempted mergeinfo count change on immutable node\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"Invalid value (%%%s) for node revision mergeinfo count\00", align 1
@APR_INT64_T_FMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_base__dag_adjust_mergeinfo_count(%struct.TYPE_15__* %0, i64 %1, i8* %2, %struct.TYPE_13__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = call i32* @svn_fs_base__dag_get_fs(%struct.TYPE_15__* %15)
  store i32* %16, i32** %13, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %18 = call i32* @svn_fs_base__dag_get_id(%struct.TYPE_15__* %17)
  store i32* %18, i32** %14, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SVN_FS_BASE__MIN_MERGEINFO_FORMAT, align 4
  %23 = call i32 @svn_fs_base__test_required_feature_format(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_15__* %25, i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %31 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %30, i32* null, i32 %31)
  store i32* %32, i32** %6, align 8
  br label %86

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %37, i32** %6, align 8
  br label %86

38:                                               ; preds = %33
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_14__** %12, i32* %39, i32* %40, %struct.TYPE_13__* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %38
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @svn_node_file, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %64, %38
  %70 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @APR_INT64_T_FMT, align 4
  %74 = call i32 @apr_psprintf(i32* %71, i32 %72, i32 %73)
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %70, i32* null, i32 %74, i32 %77)
  store i32* %78, i32** %6, align 8
  br label %86

79:                                               ; preds = %64, %58
  %80 = load i32*, i32** %13, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32* @svn_fs_bdb__put_node_revision(i32* %80, i32* %81, %struct.TYPE_14__* %82, %struct.TYPE_13__* %83, i32* %84)
  store i32* %85, i32** %6, align 8
  br label %86

86:                                               ; preds = %79, %69, %36, %29
  %87 = load i32*, i32** %6, align 8
  ret i32* %87
}

declare dso_local i32* @svn_fs_base__dag_get_fs(%struct.TYPE_15__*) #1

declare dso_local i32* @svn_fs_base__dag_get_id(%struct.TYPE_15__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_base__test_required_feature_format(i32, i8*, i32) #1

declare dso_local i32 @svn_fs_base__dag_check_mutable(%struct.TYPE_15__*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_bdb__get_node_revision(%struct.TYPE_14__**, i32*, i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32* @svn_fs_bdb__put_node_revision(i32*, i32*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
