; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_increment_mergeinfo_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_dag.c_svn_fs_fs__dag_increment_mergeinfo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Can't increment mergeinfo count on *immutable* node-revision %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Can't increment mergeinfo count on node-revision %%s to negative value %%%s\00", align 1
@APR_INT64_T_FMT = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"Can't increment mergeinfo count on *file* node-revision %%s to %%%s (> 1)\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_fs__dag_increment_mergeinfo_count(%struct.TYPE_12__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = call i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_12__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call %struct.TYPE_10__* @svn_fs_fs__id_unparse(i32 %18, i32* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %21, i32* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32* %25, i32** %4, align 8
  br label %108

26:                                               ; preds = %3
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %30, i32** %4, align 8
  br label %108

31:                                               ; preds = %26
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %33 = call i32 @get_node_revision(%struct.TYPE_11__** %8, %struct.TYPE_12__* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %31
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call %struct.TYPE_10__* @svn_fs_fs__id_unparse(i32 %49, i32* %50)
  store %struct.TYPE_10__* %51, %struct.TYPE_10__** %10, align 8
  %52 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @APR_INT64_T_FMT, align 4
  %56 = call i32 @apr_psprintf(i32* %53, i32 %54, i32 %55)
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %52, i32* null, i8* %58, i32 %61, i32 %64)
  store i32* %65, i32** %4, align 8
  br label %108

66:                                               ; preds = %31
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %97

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @svn_node_file, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = call %struct.TYPE_10__* @svn_fs_fs__id_unparse(i32 %80, i32* %81)
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %11, align 8
  %83 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @APR_INT64_T_FMT, align 4
  %87 = call i32 @apr_psprintf(i32* %84, i32 %85, i32 %86)
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %83, i32* null, i8* %89, i32 %92, i32 %95)
  store i32* %96, i32** %4, align 8
  br label %108

97:                                               ; preds = %71, %66
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = call i32* @svn_fs_fs__put_node_revision(i32 %100, i32 %103, %struct.TYPE_11__* %104, i32 %105, i32* %106)
  store i32* %107, i32** %4, align 8
  br label %108

108:                                              ; preds = %97, %77, %46, %29, %15
  %109 = load i32*, i32** %4, align 8
  ret i32* %109
}

declare dso_local i32 @svn_fs_fs__dag_check_mutable(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_10__* @svn_fs_fs__id_unparse(i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_node_revision(%struct.TYPE_11__**, %struct.TYPE_12__*) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_fs_fs__put_node_revision(i32, i32, %struct.TYPE_11__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
