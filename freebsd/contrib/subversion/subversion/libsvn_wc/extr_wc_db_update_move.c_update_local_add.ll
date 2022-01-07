; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_local_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_local_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_11__*, i32*, i32, i32 }
%struct.TYPE_12__ = type { i8*, i32, %struct.TYPE_10__*, i32 }

@STMT_CREATE_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STMT_DELETE_WORKING_OP_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_11__*, i8*, i32, i8*, i32*)* @update_local_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_local_add(i32* %0, i32* %1, %struct.TYPE_11__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca %struct.TYPE_12__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = bitcast %struct.TYPE_10__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 48, i1 false)
  %24 = bitcast %struct.TYPE_12__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 32, i1 false)
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @relpath_depth(i8* %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 5
  store i32 %26, i32* %27, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @verify_write_lock(%struct.TYPE_11__* %28, i8* %29, i32* %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  store i32* %33, i32** %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  store %struct.TYPE_11__* %35, %struct.TYPE_11__** %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i8* %39, i8** %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i32* %21, i32* %41, i8** %19, i32* %20, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_11__* %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = load i32, i32* %20, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @svn_wc__db_fetch_repos_info(i8** %17, i8** %18, %struct.TYPE_11__* %48, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i8*, i8** %17, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32*, i32** %14, align 8
  %60 = call i32 @svn_wc_conflict_version_create2(i8* %53, i8* %54, i8* %55, i32 %57, i32 %58, i32* %59)
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @STMT_CREATE_UPDATE_MOVE_LIST, align 4
  %66 = call i32 @svn_sqlite__exec_statements(i32 %64, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %68, align 8
  %69 = load i8*, i8** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  store i8* %69, i8** %70, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = call i32 @update_locally_added_node(%struct.TYPE_12__* %16, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @STMT_DELETE_WORKING_OP_DEPTH, align 4
  %80 = call i32 @svn_sqlite__get_statement(i32** %22, i32 %78, i32 %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %22, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @relpath_depth(i8* %87)
  %89 = call i32 @svn_sqlite__bindf(i32* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %85, i8* %86, i32 %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i32*, i32** %22, align 8
  %92 = call i32 @svn_sqlite__update(i32* null, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* @FALSE, align 4
  %98 = load i32, i32* @FALSE, align 4
  %99 = load i32, i32* @TRUE, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @svn_wc__db_op_mark_resolved_internal(%struct.TYPE_11__* %94, i8* %95, i32* %96, i32 %97, i32 %98, i32 %99, i32* null, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @relpath_depth(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @verify_write_lock(%struct.TYPE_11__*, i8*, i32*) #2

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_11__*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_wc__db_fetch_repos_info(i8**, i8**, %struct.TYPE_11__*, i32, i32*) #2

declare dso_local i32 @svn_wc_conflict_version_create2(i8*, i8*, i8*, i32, i32, i32*) #2

declare dso_local i32 @svn_sqlite__exec_statements(i32, i32) #2

declare dso_local i32 @update_locally_added_node(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #2

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #2

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #2

declare dso_local i32 @svn_wc__db_op_mark_resolved_internal(%struct.TYPE_11__*, i8*, i32*, i32, i32, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
