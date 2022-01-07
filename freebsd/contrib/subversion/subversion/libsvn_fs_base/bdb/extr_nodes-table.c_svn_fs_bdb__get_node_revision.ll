; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_nodes-table.c_svn_fs_bdb__get_node_revision.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/bdb/extr_nodes-table.c_svn_fs_bdb__get_node_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_14__*, i32, i32, i32, i32)* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"nodes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@DB_NOTFOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"reading node revision\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_bdb__get_node_revision(i32** %0, %struct.TYPE_16__* %1, i32* %2, %struct.TYPE_15__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__, align 4
  %17 = alloca %struct.TYPE_18__, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %12, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %22 = call i32 @svn_fs_base__trail_debug(%struct.TYPE_15__* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32 (%struct.TYPE_14__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_14__*, i32, i32, i32, i32)** %26, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @svn_fs_base__id_to_dbt(%struct.TYPE_18__* %16, i32* %34, i32* %35)
  %37 = call i32 @svn_fs_base__result_dbt(%struct.TYPE_18__* %17)
  %38 = call i32 %27(%struct.TYPE_14__* %30, i32 %33, i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %15, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @svn_fs_base__track_dbt(%struct.TYPE_18__* %17, i32* %39)
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @DB_NOTFOUND, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %5
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32* @svn_fs_base__err_dangling_id(%struct.TYPE_16__* %45, i32* %46)
  store i32* %47, i32** %6, align 8
  br label %72

48:                                               ; preds = %5
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %50 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %15, align 4
  %52 = call i32 @BDB_WRAP(%struct.TYPE_16__* %49, i32 %50, i32 %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32**, i32*** %7, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %48
  %57 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %57, i32** %6, align 8
  br label %72

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32* @svn_skel__parse(i32 %60, i32 %62, i32* %63)
  store i32* %64, i32** %14, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @svn_fs_base__parse_node_revision_skel(i32** %13, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %13, align 8
  %70 = load i32**, i32*** %7, align 8
  store i32* %69, i32** %70, align 8
  %71 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %71, i32** %6, align 8
  br label %72

72:                                               ; preds = %58, %56, %44
  %73 = load i32*, i32** %6, align 8
  ret i32* %73
}

declare dso_local i32 @svn_fs_base__trail_debug(%struct.TYPE_15__*, i8*, i8*) #1

declare dso_local i32 @svn_fs_base__id_to_dbt(%struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_base__result_dbt(%struct.TYPE_18__*) #1

declare dso_local i32 @svn_fs_base__track_dbt(%struct.TYPE_18__*, i32*) #1

declare dso_local i32* @svn_fs_base__err_dangling_id(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @BDB_WRAP(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32* @svn_skel__parse(i32, i32, i32*) #1

declare dso_local i32 @svn_fs_base__parse_node_revision_skel(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
