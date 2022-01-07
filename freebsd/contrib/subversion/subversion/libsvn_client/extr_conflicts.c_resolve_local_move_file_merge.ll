; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_local_move_file_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_local_move_file_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, %struct.conflict_tree_local_missing_details* }
%struct.conflict_tree_local_missing_details = type { i32 }
%struct.TYPE_14__ = type { i32, i32 (i32, %struct.TYPE_13__*, i32*)*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*)* @resolve_local_move_file_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_local_move_file_merge(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca %struct.conflict_tree_local_missing_details*, align 8
  %31 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %33, align 8
  store %struct.conflict_tree_local_missing_details* %34, %struct.conflict_tree_local_missing_details** %30, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = call i32 @svn_client_conflict_get_repos_info(i8** %12, i32* null, %struct.TYPE_15__* %35, i32* %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %13, i32* %14, i32* null, %struct.TYPE_15__* %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %15, i32* %16, i32* null, %struct.TYPE_15__* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %30, align 8
  %54 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @svn_wc__get_tmpdir(i8** %17, i32 %52, i32 %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i8*, i8** %17, align 8
  %61 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @svn_stream_open_unique(i32** %22, i8** %18, i8* %60, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8*, i8** %12, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i8* @svn_path_url_add_component2(i8* %66, i8* %67, i32* %68)
  store i8* %69, i8** %23, align 8
  %70 = load i8*, i8** %23, align 8
  %71 = load i32, i32* @FALSE, align 4
  %72 = load i32, i32* @FALSE, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @svn_client__open_ra_session_internal(i32** %26, i8** %24, i8* %70, i32* null, i32* null, i32 %71, i32 %72, %struct.TYPE_14__* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %26, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %22, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @svn_ra_get_file(i32* %78, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %79, i32* %80, i32* null, i32** %20, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %20, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @filter_props(i32* %84, i32* %85)
  %87 = load i32*, i32** %22, align 8
  %88 = call i32 @svn_stream_close(i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i8*, i8** %17, align 8
  %91 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @svn_stream_open_unique(i32** %22, i8** %19, i8* %90, i32 %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = call i8* @svn_path_url_add_component2(i8* %96, i8* %97, i32* %98)
  store i8* %99, i8** %23, align 8
  %100 = load i32*, i32** %26, align 8
  %101 = load i8*, i8** %23, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @svn_client__ensure_ra_session_url(i8** %25, i32* %100, i8* %101, i32* %102)
  %104 = call i32 @SVN_ERR(i32 %103)
  %105 = load i32*, i32** %26, align 8
  %106 = load i32, i32* %16, align 4
  %107 = load i32*, i32** %22, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = call i32 @svn_ra_get_file(i32* %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %106, i32* %107, i32* null, i32** %21, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %22, align 8
  %112 = call i32 @svn_stream_close(i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i32*, i32** %21, align 8
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @filter_props(i32* %114, i32* %115)
  %117 = load i32*, i32** %21, align 8
  %118 = load i32*, i32** %20, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = call i32 @svn_prop_diffs(i32** %29, i32* %117, i32* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %30, align 8
  %129 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @svn_dirent_get_longest_ancestor(i32 %127, i32 %130, i32* %131)
  %133 = load i32*, i32** %9, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @svn_wc__acquire_write_lock_for_resolve(i8** %10, i32 %124, i32 %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %18, align 8
  %141 = load i8*, i8** %19, align 8
  %142 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %30, align 8
  %143 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @FALSE, align 4
  %146 = load i32*, i32** %20, align 8
  %147 = call i64 @apr_hash_count(i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %4
  %150 = load i32*, i32** %20, align 8
  br label %152

151:                                              ; preds = %4
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32* [ %150, %149 ], [ null, %151 ]
  %154 = load i32*, i32** %29, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = call i32* @svn_wc_merge5(i64* %27, i32* %28, i32 %139, i8* %140, i8* %141, i32 %144, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %145, i32* null, i32* null, i32* %153, i32* %154, i32* null, i32* null, i32* null, i32* null, i32* %155)
  store i32* %156, i32** %11, align 8
  %157 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %30, align 8
  %158 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 @svn_io_sleep_for_timestamps(i32 %159, i32* %160)
  %162 = load i32*, i32** %11, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %152
  %165 = load i32*, i32** %11, align 8
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i8*, i8** %10, align 8
  %170 = load i32*, i32** %9, align 8
  %171 = call i32 @svn_wc__release_write_lock(i32 %168, i8* %169, i32* %170)
  %172 = call i32* @svn_error_compose_create(i32* %165, i32 %171)
  store i32* %172, i32** %5, align 8
  br label %255

173:                                              ; preds = %152
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = call i32* @svn_wc__del_tree_conflict(i32 %176, i32 %179, i32* %180)
  store i32* %181, i32** %11, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = load i8*, i8** %10, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @svn_wc__release_write_lock(i32 %185, i8* %186, i32* %187)
  %189 = call i32* @svn_error_compose_create(i32* %182, i32 %188)
  store i32* %189, i32** %11, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %173
  %193 = load i32*, i32** %11, align 8
  %194 = call i32* @svn_error_trace(i32* %193)
  store i32* %194, i32** %5, align 8
  br label %255

195:                                              ; preds = %173
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 1
  %198 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %197, align 8
  %199 = icmp ne i32 (i32, %struct.TYPE_13__*, i32*)* %198, null
  br i1 %199, label %200, label %249

200:                                              ; preds = %195
  %201 = load %struct.conflict_tree_local_missing_details*, %struct.conflict_tree_local_missing_details** %30, align 8
  %202 = getelementptr inbounds %struct.conflict_tree_local_missing_details, %struct.conflict_tree_local_missing_details* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @svn_wc_notify_update_update, align 4
  %205 = load i32*, i32** %9, align 8
  %206 = call %struct.TYPE_13__* @svn_wc_create_notify(i32 %203, i32 %204, i32* %205)
  store %struct.TYPE_13__* %206, %struct.TYPE_13__** %31, align 8
  %207 = load i64, i64* %27, align 8
  %208 = load i64, i64* @svn_wc_merge_conflict, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %200
  %211 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 4
  br label %218

214:                                              ; preds = %200
  %215 = load i32, i32* @svn_wc_notify_state_merged, align 4
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %214, %210
  %219 = load i32, i32* %28, align 4
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* @svn_node_file, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 4
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %226, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %232 = load i32*, i32** %9, align 8
  %233 = call i32 %227(i32 %230, %struct.TYPE_13__* %231, i32* %232)
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = call %struct.TYPE_13__* @svn_wc_create_notify(i32 %236, i32 %237, i32* %238)
  store %struct.TYPE_13__* %239, %struct.TYPE_13__** %31, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %241, align 8
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %247 = load i32*, i32** %9, align 8
  %248 = call i32 %242(i32 %245, %struct.TYPE_13__* %246, i32* %247)
  br label %249

249:                                              ; preds = %218, %195
  %250 = load i32*, i32** %6, align 8
  %251 = call i32 @svn_client_conflict_option_get_id(i32* %250)
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %254, i32** %5, align 8
  br label %255

255:                                              ; preds = %249, %192, %164
  %256 = load i32*, i32** %5, align 8
  ret i32* %256
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i32*, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_tmpdir(i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @filter_props(i32*, i32*) #1

declare dso_local i32 @svn_stream_close(i32*) #1

declare dso_local i32 @svn_client__ensure_ra_session_url(i8**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_get_longest_ancestor(i32, i32, i32*) #1

declare dso_local i32* @svn_wc_merge5(i64*, i32*, i32, i8*, i8*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i32, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc_create_notify(i32, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
