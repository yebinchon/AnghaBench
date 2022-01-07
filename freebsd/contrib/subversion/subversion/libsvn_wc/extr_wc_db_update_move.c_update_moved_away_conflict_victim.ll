; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_moved_away_conflict_victim.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_moved_away_conflict_victim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_16__ = type { i64, i64, i8*, i32, %struct.TYPE_18__*, i32*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32, i32* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i8*, i8*, %struct.TYPE_16__*, i32 }

@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"The node '%s' has not been moved away\00", align 1
@STMT_CREATE_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_18__*, i8*, i8*, i32, i32, i32, i32, i8*, i32*)* @update_moved_away_conflict_victim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_moved_away_conflict_victim(i32* %0, i32* %1, i32* %2, %struct.TYPE_18__* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_16__, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_17__, align 4
  %30 = alloca %struct.TYPE_17__, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_19__, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %33 = bitcast %struct.TYPE_16__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 80, i1 false)
  %34 = bitcast %struct.TYPE_19__* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 32, i1 false)
  %35 = load i8*, i8** %19, align 8
  %36 = load i8*, i8** %18, align 8
  %37 = call i32 @svn_relpath_skip_ancestor(i8* %35, i8* %36)
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %41 = load i8*, i8** %18, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = call i64 @relpath_depth(i8* %42)
  %44 = load i32*, i32** %25, align 8
  %45 = call i32 @find_src_op_depth(i64* %39, %struct.TYPE_18__* %40, i8* %41, i64 %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %48 = load i8*, i8** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32*, i32** %25, align 8
  %52 = load i32*, i32** %25, align 8
  %53 = call i32 @svn_wc__db_scan_moved_to_internal(i8** %27, i8** %28, i32* null, %struct.TYPE_18__* %47, i8* %48, i64 %50, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i8*, i8** %28, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %65

57:                                               ; preds = %12
  %58 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %59 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = load i32*, i32** %25, align 8
  %63 = call i32 @path_for_error_message(%struct.TYPE_18__* %60, i8* %61, i32* %62)
  %64 = call i32* @svn_error_createf(i32 %58, i32* null, i32 %59, i32 %63)
  store i32* %64, i32** %13, align 8
  br label %169

65:                                               ; preds = %12
  %66 = load i8*, i8** %28, align 8
  %67 = call i64 @relpath_depth(i8* %66)
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  store i64 %67, i64* %68, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %70 = load i8*, i8** %27, align 8
  %71 = load i32*, i32** %25, align 8
  %72 = call i32 @verify_write_lock(%struct.TYPE_18__* %69, i8* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %75 = load i8*, i8** %28, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = call i32 @verify_write_lock(%struct.TYPE_18__* %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 3
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %83 = load i8*, i8** %27, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32*, i32** %25, align 8
  %87 = load i32*, i32** %25, align 8
  %88 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* %79, i32* %80, i32* %81, i32* %31, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_18__* %82, i8* %83, i64 %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %93 = load i32, i32* %31, align 4
  %94 = load i32*, i32** %25, align 8
  %95 = call i32 @svn_wc__db_fetch_repos_info(i32* %90, i32* %91, %struct.TYPE_18__* %92, i32 %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 3
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %101 = load i8*, i8** %28, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i32*, i32** %25, align 8
  %105 = load i32*, i32** %25, align 8
  %106 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* %97, i32* %98, i32* %99, i32* %31, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_18__* %100, i8* %101, i64 %103, i32* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %111 = load i32, i32* %31, align 4
  %112 = load i32*, i32** %25, align 8
  %113 = call i32 @svn_wc__db_fetch_repos_info(i32* %108, i32* %109, %struct.TYPE_18__* %110, i32 %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %14, align 8
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %15, align 8
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* %20, align 4
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 8
  store i32 %121, i32* %122, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 7
  store %struct.TYPE_17__* %29, %struct.TYPE_17__** %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %124, align 8
  %125 = load i32*, i32** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 5
  store i32* %125, i32** %126, align 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 4
  store %struct.TYPE_18__* %127, %struct.TYPE_18__** %128, align 8
  %129 = load i32, i32* %23, align 4
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 3
  store i32 %129, i32* %130, align 8
  %131 = load i8*, i8** %24, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store i8* %131, i8** %132, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %65
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %138 = load i8*, i8** %27, align 8
  %139 = load i32*, i32** %25, align 8
  %140 = call i32 @suitable_for_move(%struct.TYPE_18__* %137, i8* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  br label %142

142:                                              ; preds = %136, %65
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @STMT_CREATE_UPDATE_MOVE_LIST, align 4
  %147 = call i32 @svn_sqlite__exec_statements(i32 %145, i32 %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  store %struct.TYPE_16__* %26, %struct.TYPE_16__** %149, align 8
  %150 = load i8*, i8** %27, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  store i8* %150, i8** %151, align 8
  %152 = load i8*, i8** %28, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  store i8* %152, i8** %153, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %155 = load i8*, i8** %27, align 8
  %156 = load i8*, i8** %28, align 8
  %157 = load i32*, i32** %25, align 8
  %158 = call i32 @update_moved_away_node(%struct.TYPE_19__* %32, %struct.TYPE_18__* %154, i8* %155, i8* %156, i32* %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  %160 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %161 = load i8*, i8** %27, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i8*, i8** %28, align 8
  %165 = load i32*, i32** %25, align 8
  %166 = call i32 @svn_wc__db_op_copy_layer_internal(%struct.TYPE_18__* %160, i8* %161, i64 %163, i8* %164, i32* null, i32* null, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %168, i32** %13, align 8
  br label %169

169:                                              ; preds = %142, %57
  %170 = load i32*, i32** %13, align 8
  ret i32* %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32 @svn_relpath_skip_ancestor(i8*, i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @find_src_op_depth(i64*, %struct.TYPE_18__*, i8*, i64, i32*) #2

declare dso_local i64 @relpath_depth(i8*) #2

declare dso_local i32 @svn_wc__db_scan_moved_to_internal(i8**, i8**, i32*, %struct.TYPE_18__*, i8*, i64, i32*, i32*) #2

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @path_for_error_message(%struct.TYPE_18__*, i8*, i32*) #2

declare dso_local i32 @verify_write_lock(%struct.TYPE_18__*, i8*, i32*) #2

declare dso_local i32 @svn_wc__db_depth_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_18__*, i8*, i64, i32*, i32*) #2

declare dso_local i32 @svn_wc__db_fetch_repos_info(i32*, i32*, %struct.TYPE_18__*, i32, i32*) #2

declare dso_local i32 @suitable_for_move(%struct.TYPE_18__*, i8*, i32*) #2

declare dso_local i32 @svn_sqlite__exec_statements(i32, i32) #2

declare dso_local i32 @update_moved_away_node(%struct.TYPE_19__*, %struct.TYPE_18__*, i8*, i8*, i32*) #2

declare dso_local i32 @svn_wc__db_op_copy_layer_internal(%struct.TYPE_18__*, i8*, i64, i8*, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
