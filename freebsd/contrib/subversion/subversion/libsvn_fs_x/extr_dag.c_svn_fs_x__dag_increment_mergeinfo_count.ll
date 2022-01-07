; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_increment_mergeinfo_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_dag.c_svn_fs_x__dag_increment_mergeinfo_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_8__ = type { i32 }

@SVN_ERR_FS_NOT_MUTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"Can't increment mergeinfo count on *immutable* node-revision %s\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Can't increment mergeinfo count on node-revision %%s to negative value %%%s\00", align 1
@APR_INT64_T_FMT = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [74 x i8] c"Can't increment mergeinfo count on *file* node-revision %%s to %%%s (> 1)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__dag_increment_mergeinfo_count(%struct.TYPE_10__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = call i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_10__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_8__* @svn_fs_x__id_unparse(i32* %20, i32* %21)
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %9, align 8
  %23 = load i32, i32* @SVN_ERR_FS_NOT_MUTABLE, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %23, i32* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32* %27, i32** %4, align 8
  br label %98

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %32, i32** %4, align 8
  br label %98

33:                                               ; preds = %28
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %33
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 2
  %48 = load i32*, i32** %7, align 8
  %49 = call %struct.TYPE_8__* @svn_fs_x__id_unparse(i32* %47, i32* %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %10, align 8
  %50 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @APR_INT64_T_FMT, align 4
  %54 = call i32 @apr_psprintf(i32* %51, i32 %52, i32 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %50, i32* null, i8* %56, i32 %59, i32 %62)
  store i32* %63, i32** %4, align 8
  br label %98

64:                                               ; preds = %33
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %94

69:                                               ; preds = %64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @svn_node_file, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %69
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load i32*, i32** %7, align 8
  %79 = call %struct.TYPE_8__* @svn_fs_x__id_unparse(i32* %77, i32* %78)
  store %struct.TYPE_8__* %79, %struct.TYPE_8__** %11, align 8
  %80 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @APR_INT64_T_FMT, align 4
  %84 = call i32 @apr_psprintf(i32* %81, i32 %82, i32 %83)
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to i8*
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32* (i32, i32*, i8*, i32, ...) @svn_error_createf(i32 %80, i32* null, i8* %86, i32 %89, i32 %92)
  store i32* %93, i32** %4, align 8
  br label %98

94:                                               ; preds = %69, %64
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32* @noderev_changed(%struct.TYPE_10__* %95, i32* %96)
  store i32* %97, i32** %4, align 8
  br label %98

98:                                               ; preds = %94, %75, %45, %31, %18
  %99 = load i32*, i32** %4, align 8
  ret i32* %99
}

declare dso_local i32 @svn_fs_x__dag_check_mutable(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_8__* @svn_fs_x__id_unparse(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i8*, i32, ...) #1

declare dso_local i32 @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @noderev_changed(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
