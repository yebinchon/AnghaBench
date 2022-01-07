; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_incoming_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_update_incoming_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_15__*, i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32, i8*, i8*, i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i8*, i8*, %struct.TYPE_13__*, i32 }

@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [147 x i8] c"Cannot merge local changes from '%s' because '%s' already contains other local changes (please commit or revert these other changes and try again)\00", align 1
@STMT_CREATE_UPDATE_MOVE_LIST = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_15__*, i8*, i8*, i32, i32, i32, i32, i8*, i32*)* @update_incoming_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_incoming_move(i32* %0, i32* %1, i32* %2, %struct.TYPE_15__* %3, i8* %4, i8* %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_13__, align 8
  %27 = alloca %struct.TYPE_14__, align 4
  %28 = alloca %struct.TYPE_14__, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_16__, align 8
  %31 = alloca i64, align 8
  store i32* %0, i32** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32* %2, i32** %16, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i8* %10, i8** %24, align 8
  store i32* %11, i32** %25, align 8
  %32 = bitcast %struct.TYPE_13__* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 80, i1 false)
  %33 = bitcast %struct.TYPE_16__* %30 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 32, i1 false)
  %34 = load i8*, i8** %19, align 8
  %35 = load i8*, i8** %18, align 8
  %36 = call i32* @svn_relpath_skip_ancestor(i8* %34, i8* %35)
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @SVN_ERR_ASSERT(i32 %38)
  %40 = load i8*, i8** %18, align 8
  %41 = call i8* @relpath_depth(i8* %40)
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 7
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** %19, align 8
  %44 = call i8* @relpath_depth(i8* %43)
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 8
  store i8* %44, i8** %45, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %47 = load i8*, i8** %18, align 8
  %48 = load i32*, i32** %25, align 8
  %49 = call i32 @verify_write_lock(%struct.TYPE_15__* %46, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %52 = load i8*, i8** %19, align 8
  %53 = load i32*, i32** %25, align 8
  %54 = call i32 @verify_write_lock(%struct.TYPE_15__* %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %16, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %19, align 8
  %61 = load i32*, i32** %25, align 8
  %62 = call i32 @svn_dirent_join(i32 %59, i8* %60, i32* %61)
  %63 = load i32, i32* @TRUE, align 4
  %64 = load i32, i32* %23, align 4
  %65 = load i8*, i8** %24, align 8
  %66 = load i32*, i32** %25, align 8
  %67 = call i32 @svn_wc__node_has_local_mods(i64* %31, i32* null, i32* %56, i32 %62, i32 %63, i32 %64, i8* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i64, i64* %31, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %12
  %72 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %73 = call i32 @_(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %18, align 8
  %78 = load i32*, i32** %25, align 8
  %79 = call i32 @svn_dirent_join(i32 %76, i8* %77, i32* %78)
  %80 = load i32*, i32** %25, align 8
  %81 = call i32 @svn_dirent_local_style(i32 %79, i32* %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i8*, i8** %19, align 8
  %86 = load i32*, i32** %25, align 8
  %87 = call i32 @svn_dirent_join(i32 %84, i8* %85, i32* %86)
  %88 = load i32*, i32** %25, align 8
  %89 = call i32 @svn_dirent_local_style(i32 %87, i32* %88)
  %90 = call i32* @svn_error_createf(i32 %72, i32* null, i32 %73, i32 %81, i32 %89)
  store i32* %90, i32** %13, align 8
  br label %167

91:                                               ; preds = %12
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = load i32*, i32** %25, align 8
  %95 = call i32 @suitable_for_move(%struct.TYPE_15__* %92, i8* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = load i32*, i32** %25, align 8
  %103 = load i32*, i32** %25, align 8
  %104 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i32* %97, i32* %98, i32* %99, i32* %29, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_15__* %100, i8* %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %109 = load i32, i32* %29, align 4
  %110 = load i32*, i32** %25, align 8
  %111 = call i32 @svn_wc__db_fetch_repos_info(i32* %106, i32* %107, %struct.TYPE_15__* %108, i32 %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 3
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %117 = load i8*, i8** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 7
  %119 = load i8*, i8** %118, align 8
  %120 = load i32*, i32** %25, align 8
  %121 = load i32*, i32** %25, align 8
  %122 = call i32 @svn_wc__db_depth_get_info(i32* null, i32* %113, i32* %114, i32* %115, i32* %29, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_15__* %116, i8* %117, i8* %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %127 = load i32, i32* %29, align 4
  %128 = load i32*, i32** %25, align 8
  %129 = call i32 @svn_wc__db_fetch_repos_info(i32* %124, i32* %125, %struct.TYPE_15__* %126, i32 %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %14, align 8
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %15, align 8
  store i32 %135, i32* %136, align 4
  %137 = load i32, i32* %20, align 4
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 6
  store i32 %137, i32* %138, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 5
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %140, align 8
  %141 = load i32*, i32** %16, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 3
  store i32* %141, i32** %142, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 2
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %144, align 8
  %145 = load i32, i32* %23, align 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 1
  store i32 %145, i32* %146, align 8
  %147 = load i8*, i8** %24, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i8* %147, i8** %148, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @STMT_CREATE_UPDATE_MOVE_LIST, align 4
  %153 = call i32 @svn_sqlite__exec_statements(i32 %151, i32 %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 2
  store %struct.TYPE_13__* %26, %struct.TYPE_13__** %155, align 8
  %156 = load i8*, i8** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  store i8* %156, i8** %157, align 8
  %158 = load i8*, i8** %19, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 1
  store i8* %158, i8** %159, align 8
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %161 = load i8*, i8** %18, align 8
  %162 = load i8*, i8** %19, align 8
  %163 = load i32*, i32** %25, align 8
  %164 = call i32 @update_incoming_moved_node(%struct.TYPE_16__* %30, %struct.TYPE_15__* %160, i8* %161, i8* %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %166, i32** %13, align 8
  br label %167

167:                                              ; preds = %91, %71
  %168 = load i32*, i32** %13, align 8
  ret i32* %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32* @svn_relpath_skip_ancestor(i8*, i8*) #2

declare dso_local i8* @relpath_depth(i8*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @verify_write_lock(%struct.TYPE_15__*, i8*, i32*) #2

declare dso_local i32 @svn_wc__node_has_local_mods(i64*, i32*, i32*, i32, i32, i32, i8*, i32*) #2

declare dso_local i32 @svn_dirent_join(i32, i8*, i32*) #2

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #2

declare dso_local i32 @suitable_for_move(%struct.TYPE_15__*, i8*, i32*) #2

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_15__*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_wc__db_fetch_repos_info(i32*, i32*, %struct.TYPE_15__*, i32, i32*) #2

declare dso_local i32 @svn_wc__db_depth_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_15__*, i8*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_sqlite__exec_statements(i32, i32) #2

declare dso_local i32 @update_incoming_moved_node(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
