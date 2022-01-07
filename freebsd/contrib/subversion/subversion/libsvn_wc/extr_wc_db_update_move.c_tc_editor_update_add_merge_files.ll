; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_merge_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_add_merge_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32, i64 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_state_changed = common dso_local global i64 0, align 8
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@svn_wc_notify_state_merged = common dso_local global i64 0, align 8
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_14__*, i32*, i32*, i32*, i32*, i32*)* @tc_editor_update_add_merge_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tc_editor_update_add_merge_files(%struct.TYPE_14__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %14, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %21, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = call i8* @svn_dirent_join(i32 %39, i32 %42, i32* %43)
  store i8* %44, i8** %23, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = call i32 @update_local_add_mark_node_edited(%struct.TYPE_14__* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %6
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %7, align 8
  br label %244

55:                                               ; preds = %6
  %56 = load i8*, i8** %23, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @svn_io_check_path(i8* %56, i64* %22, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i64, i64* %22, align 8
  %61 = load i64, i64* @svn_node_file, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %65 = load i64, i64* @svn_node_file, align 8
  %66 = load i64, i64* %22, align 8
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @update_local_add_notify_obstructed_or_missing(%struct.TYPE_14__* %64, i64 %65, i64 %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i64, i64* @TRUE, align 8
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  store i64 %70, i64* %72, align 8
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %7, align 8
  br label %244

74:                                               ; preds = %55
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %84, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %13, align 8
  %88 = call i32 @update_incoming_add_merge_props(i64* %19, i32** %18, i32 %77, i32* %78, i32* %79, i32 %82, %struct.TYPE_15__* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %23, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @svn_wc__internal_file_modified_p(i32* %16, i32 %92, i8* %93, i32 %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %116, label %100

100:                                              ; preds = %74
  store i32* null, i32** %24, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i8*, i8** %23, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = load i64, i64* @TRUE, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @svn_wc__wq_build_file_install(i32** %24, i32 %103, i8* %104, i32* null, i32 %105, i64 %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %21, align 8
  %112 = load i32*, i32** %24, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i32* @svn_wc__wq_merge(i32* %111, i32* %112, i32* %113)
  store i32* %114, i32** %21, align 8
  %115 = load i64, i64* @svn_wc_notify_state_changed, align 8
  store i64 %115, i64* %20, align 8
  br label %174

116:                                              ; preds = %74
  store i32* null, i32** %27, align 8
  %117 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %118 = load i32*, i32** %13, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call i32 @svn_io_open_unique_file3(i32* null, i8** %25, i32* null, i32 %117, i32* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %13, align 8
  %132 = load i32*, i32** %13, align 8
  %133 = call i32 @svn_wc__db_pristine_get_path(i8** %26, i32 %124, i32 %129, i32* %130, i32* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %13, align 8
  %137 = call i32 @apr_hash_make(i32* %136)
  %138 = load i32*, i32** %13, align 8
  %139 = call i32 @svn_prop_diffs(i32** %15, i32* %135, i32 %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i8*, i8** %25, align 8
  %145 = load i8*, i8** %26, align 8
  %146 = load i8*, i8** %23, align 8
  %147 = load i8*, i8** %23, align 8
  %148 = load i32*, i32** %13, align 8
  %149 = call i32 @apr_hash_make(i32* %148)
  %150 = load i32, i32* @FALSE, align 4
  %151 = load i32*, i32** %15, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %13, align 8
  %159 = load i32*, i32** %13, align 8
  %160 = call i32 @svn_wc__internal_merge(i32** %27, i32** %18, i32* %17, i32 %143, i8* %144, i8* %145, i8* %146, i8* %147, i32* null, i32* null, i32* null, i32 %149, i32 %150, i32* null, i32* null, i32* %151, i32 %154, i32 %157, i32* %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  %162 = load i32*, i32** %21, align 8
  %163 = load i32*, i32** %27, align 8
  %164 = load i32*, i32** %13, align 8
  %165 = call i32* @svn_wc__wq_merge(i32* %162, i32* %163, i32* %164)
  store i32* %165, i32** %21, align 8
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @svn_wc_merge_conflict, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %116
  %170 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  store i64 %170, i64* %20, align 8
  br label %173

171:                                              ; preds = %116
  %172 = load i64, i64* @svn_wc_notify_state_merged, align 8
  store i64 %172, i64* %20, align 8
  br label %173

173:                                              ; preds = %171, %169
  br label %174

174:                                              ; preds = %173, %100
  %175 = load i32*, i32** %18, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %224

177:                                              ; preds = %174
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32*, i32** %13, align 8
  %184 = call %struct.TYPE_13__* @svn_wc_conflict_version_dup(i32 %182, i32* %183)
  store %struct.TYPE_13__* %184, %struct.TYPE_13__** %28, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32*, i32** %13, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = call i32 @svn_wc__db_base_get_info_internal(i32* null, i64* %29, i32* %30, i8** %31, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_15__* %187, i32 %190, i32* %191, i32* %192)
  %194 = call i32 @SVN_ERR(i32 %193)
  %195 = load i8*, i8** %31, align 8
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  store i8* %195, i8** %197, align 8
  %198 = load i64, i64* %29, align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* %30, align 4
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 8
  %204 = load i32*, i32** %18, align 8
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %206 = load i32*, i32** %13, align 8
  %207 = load i32*, i32** %13, align 8
  %208 = call i32 @svn_wc__conflict_skel_set_op_update(i32* %204, i32* null, %struct.TYPE_13__* %205, i32* %206, i32* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  %210 = load i64, i64* %19, align 8
  %211 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %177
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i8*, i8** %23, align 8
  %218 = load i32*, i32** %18, align 8
  %219 = load i32*, i32** %13, align 8
  %220 = load i32*, i32** %13, align 8
  %221 = call i32 @svn_wc__conflict_create_markers(i32** %21, i32 %216, i8* %217, i32* %218, i32* %219, i32* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  br label %223

223:                                              ; preds = %213, %177
  br label %224

224:                                              ; preds = %223, %174
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @svn_wc_notify_update_update, align 4
  %235 = load i64, i64* @svn_node_file, align 8
  %236 = load i64, i64* %20, align 8
  %237 = load i64, i64* %19, align 8
  %238 = load i32*, i32** %18, align 8
  %239 = load i32*, i32** %21, align 8
  %240 = load i32*, i32** %13, align 8
  %241 = call i32 @update_move_list_add(%struct.TYPE_15__* %227, i32 %230, i32 %233, i32 %234, i64 %235, i64 %236, i64 %237, i32* %238, i32* %239, i32* %240)
  %242 = call i32 @SVN_ERR(i32 %241)
  %243 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %243, i32** %7, align 8
  br label %244

244:                                              ; preds = %224, %63, %53
  %245 = load i32*, i32** %7, align 8
  ret i32* %245
}

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @update_local_add_mark_node_edited(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i32 @update_local_add_notify_obstructed_or_missing(%struct.TYPE_14__*, i64, i64, i32*) #1

declare dso_local i32 @update_incoming_add_merge_props(i64*, i32**, i32, i32*, i32*, i32, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32, i8*, i32*, i32, i64, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_prop_diffs(i32**, i32*, i32, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @svn_wc__internal_merge(i32**, i32**, i32*, i32, i8*, i8*, i8*, i8*, i32*, i32*, i32*, i32, i32, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc_conflict_version_dup(i32, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info_internal(i32*, i64*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_15__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_set_op_update(i32*, i32*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_create_markers(i32**, i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @update_move_list_add(%struct.TYPE_15__*, i32, i32, i32, i64, i64, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
