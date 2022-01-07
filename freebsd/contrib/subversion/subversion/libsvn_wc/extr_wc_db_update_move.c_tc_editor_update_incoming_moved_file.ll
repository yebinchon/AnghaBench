; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_incoming_moved_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_tc_editor_update_incoming_moved_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64 }
%struct.TYPE_37__ = type { i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_32__*, i32, i32, i32, %struct.TYPE_33__*, %struct.TYPE_33__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_34__ = type { i32*, i32*, %struct.TYPE_33__* }

@svn_wc_notify_state_unchanged = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_36__* null, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_edited = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_missing = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_obstructed = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".r%ld\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c".working\00", align 1
@svn_wc_merge_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_36__* (%struct.TYPE_37__*, i8*, i8*, i32*, i32*, i32*, i32*, i64, i32*)* @tc_editor_update_incoming_moved_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_36__* @tc_editor_update_incoming_moved_file(%struct.TYPE_37__* %0, i8* %1, i8* %2, i32* %3, i32* %4, i32* %5, i32* %6, i64 %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_36__*, align 8
  %11 = alloca %struct.TYPE_37__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_35__*, align 8
  %21 = alloca %struct.TYPE_34__, align 8
  %22 = alloca %struct.TYPE_34__, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_36__*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32* %8, i32** %19, align 8
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %45, align 8
  store %struct.TYPE_35__* %46, %struct.TYPE_35__** %20, align 8
  %47 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %12, align 8
  %53 = load i32*, i32** %19, align 8
  %54 = call i8* @svn_dirent_join(i32 %51, i8* %52, i32* %53)
  store i8* %54, i8** %23, align 8
  store i32* null, i32** %24, align 8
  %55 = load i32, i32* @svn_wc_notify_state_unchanged, align 4
  store i32 %55, i32* %26, align 4
  %56 = load i32, i32* @svn_wc_notify_state_unchanged, align 4
  store i32 %56, i32* %27, align 4
  store i32* null, i32** %29, align 8
  %57 = load i64, i64* @FALSE, align 8
  store i64 %57, i64* %32, align 8
  %58 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %59 = load i32*, i32** %19, align 8
  %60 = call %struct.TYPE_36__* @mark_node_edited(%struct.TYPE_37__* %58, i32* %59)
  %61 = call i32 @SVN_ERR(%struct.TYPE_36__* %60)
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %9
  %67 = load %struct.TYPE_36__*, %struct.TYPE_36__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_36__* %67, %struct.TYPE_36__** %10, align 8
  br label %360

68:                                               ; preds = %9
  %69 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %70 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_32__*, %struct.TYPE_32__** %70, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = load i32*, i32** %19, align 8
  %75 = call %struct.TYPE_36__* @svn_wc__db_base_get_info_internal(i32* null, i64* %33, i32* null, i8** %31, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_32__* %71, i8* %72, i32* %73, i32* %74)
  store %struct.TYPE_36__* %75, %struct.TYPE_36__** %34, align 8
  %76 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %77 = icmp ne %struct.TYPE_36__* %76, null
  br i1 %77, label %78, label %147

78:                                               ; preds = %68
  %79 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %80 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %147

84:                                               ; preds = %78
  %85 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %86 = call i32 @svn_error_clear(%struct.TYPE_36__* %85)
  %87 = load i8*, i8** %13, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %90 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %90, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call %struct.TYPE_36__* @copy_working_node(i8* %87, i8* %88, %struct.TYPE_32__* %91, i32* %92)
  %94 = call i32 @SVN_ERR(%struct.TYPE_36__* %93)
  %95 = load i64, i64* @svn_node_none, align 8
  store i64 %95, i64* %33, align 8
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i64, i64* @svn_node_file, align 8
  %99 = load i64, i64* %33, align 8
  %100 = load i32, i32* @svn_wc_conflict_reason_edited, align 4
  %101 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = call %struct.TYPE_36__* @create_node_tree_conflict(i32** %24, %struct.TYPE_37__* %96, i8* %97, i64 %98, i64 %99, i32 %100, i32 %101, i32* null, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(%struct.TYPE_36__* %104)
  %106 = load i8*, i8** %12, align 8
  %107 = load i32*, i32** %19, align 8
  %108 = call i8* @svn_relpath_dirname(i8* %106, i32* %107)
  store i8* %108, i8** %35, align 8
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_32__*, %struct.TYPE_32__** %110, align 8
  %112 = load i8*, i8** %35, align 8
  %113 = load i32*, i32** %19, align 8
  %114 = load i32*, i32** %19, align 8
  %115 = call %struct.TYPE_36__* @svn_wc__db_base_get_info_internal(i32* null, i64* null, i32* null, i8** %36, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_32__* %111, i8* %112, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(%struct.TYPE_36__* %115)
  %117 = load i8*, i8** %36, align 8
  %118 = load i8*, i8** %12, align 8
  %119 = load i32*, i32** %19, align 8
  %120 = call i32 @svn_relpath_basename(i8* %118, i32* %119)
  %121 = load i32*, i32** %19, align 8
  %122 = call i8* @svn_relpath_join(i8* %117, i32 %120, i32* %121)
  store i8* %122, i8** %31, align 8
  %123 = load i64, i64* @TRUE, align 8
  store i64 %123, i64* %32, align 8
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i8*, i8** %13, align 8
  %130 = load i32*, i32** %19, align 8
  %131 = call i8* @svn_dirent_join(i32 %128, i8* %129, i32* %130)
  store i8* %131, i8** %37, align 8
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i8*, i8** %23, align 8
  %136 = load i8*, i8** %37, align 8
  %137 = load i64, i64* @FALSE, align 8
  %138 = load i64, i64* @TRUE, align 8
  %139 = load i32*, i32** %19, align 8
  %140 = load i32*, i32** %19, align 8
  %141 = call %struct.TYPE_36__* @svn_wc__wq_build_file_install(i32** %28, i32 %134, i8* %135, i8* %136, i64 %137, i64 %138, i32* %139, i32* %140)
  %142 = call i32 @SVN_ERR(%struct.TYPE_36__* %141)
  %143 = load i32*, i32** %29, align 8
  %144 = load i32*, i32** %28, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = call i32* @svn_wc__wq_merge(i32* %143, i32* %144, i32* %145)
  store i32* %146, i32** %29, align 8
  br label %150

147:                                              ; preds = %78, %68
  %148 = load %struct.TYPE_36__*, %struct.TYPE_36__** %34, align 8
  %149 = call i32 @SVN_ERR(%struct.TYPE_36__* %148)
  br label %150

150:                                              ; preds = %147, %84
  %151 = load i64, i64* %33, align 8
  %152 = load i64, i64* @svn_node_none, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = load i64, i64* %33, align 8
  %156 = load i64, i64* @svn_node_file, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %154, %150
  %159 = load i32*, i32** %24, align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %181

161:                                              ; preds = %158
  %162 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = load i64, i64* @svn_node_file, align 8
  %165 = load i64, i64* %33, align 8
  %166 = load i64, i64* %33, align 8
  %167 = load i64, i64* @svn_node_none, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = load i32, i32* @svn_wc_conflict_reason_missing, align 4
  br label %173

171:                                              ; preds = %161
  %172 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %176 = load i32*, i32** %19, align 8
  %177 = load i32*, i32** %19, align 8
  %178 = call %struct.TYPE_36__* @create_node_tree_conflict(i32** %24, %struct.TYPE_37__* %162, i8* %163, i64 %164, i64 %165, i32 %174, i32 %175, i32* null, i32* %176, i32* %177)
  %179 = call i32 @SVN_ERR(%struct.TYPE_36__* %178)
  %180 = load i64, i64* @TRUE, align 8
  store i64 %180, i64* %32, align 8
  br label %181

181:                                              ; preds = %173, %158, %154
  %182 = load i8*, i8** %23, align 8
  %183 = load i32*, i32** %19, align 8
  %184 = call %struct.TYPE_36__* @svn_io_check_path(i8* %182, i64* %30, i32* %183)
  %185 = call i32 @SVN_ERR(%struct.TYPE_36__* %184)
  %186 = load i64, i64* %30, align 8
  %187 = load i64, i64* @svn_node_none, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %193, label %189

189:                                              ; preds = %181
  %190 = load i64, i64* %30, align 8
  %191 = load i64, i64* @svn_node_file, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %216

193:                                              ; preds = %189, %181
  %194 = load i32*, i32** %24, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %216

196:                                              ; preds = %193
  %197 = load %struct.TYPE_37__*, %struct.TYPE_37__** %11, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = load i64, i64* @svn_node_file, align 8
  %200 = load i64, i64* %30, align 8
  %201 = load i64, i64* %30, align 8
  %202 = load i64, i64* @svn_node_none, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %196
  %205 = load i32, i32* @svn_wc_conflict_reason_missing, align 4
  br label %208

206:                                              ; preds = %196
  %207 = load i32, i32* @svn_wc_conflict_reason_obstructed, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  %210 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %211 = load i32*, i32** %19, align 8
  %212 = load i32*, i32** %19, align 8
  %213 = call %struct.TYPE_36__* @create_node_tree_conflict(i32** %24, %struct.TYPE_37__* %197, i8* %198, i64 %199, i64 %200, i32 %209, i32 %210, i32* null, i32* %211, i32* %212)
  %214 = call i32 @SVN_ERR(%struct.TYPE_36__* %213)
  %215 = load i64, i64* @TRUE, align 8
  store i64 %215, i64* %32, align 8
  br label %216

216:                                              ; preds = %208, %193, %189
  %217 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %218 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %217, i32 0, i32 6
  %219 = load %struct.TYPE_33__*, %struct.TYPE_33__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 2
  store %struct.TYPE_33__* %219, %struct.TYPE_33__** %220, align 8
  %221 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %222 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %221, i32 0, i32 5
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 2
  store %struct.TYPE_33__* %223, %struct.TYPE_33__** %224, align 8
  %225 = load i32*, i32** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 1
  store i32* %225, i32** %226, align 8
  %227 = load i32*, i32** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  store i32* %227, i32** %228, align 8
  %229 = load i32*, i32** %15, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 1
  store i32* %229, i32** %230, align 8
  %231 = load i32*, i32** %16, align 8
  %232 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 0
  store i32* %231, i32** %232, align 8
  %233 = load i32*, i32** %24, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %316

235:                                              ; preds = %216
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %237 = load i8*, i8** %12, align 8
  %238 = load i32*, i32** %19, align 8
  %239 = load i32*, i32** %19, align 8
  %240 = call %struct.TYPE_36__* @update_working_props(i32* %26, i32** %24, i32** %39, i32** %38, %struct.TYPE_35__* %236, i8* %237, %struct.TYPE_34__* %21, %struct.TYPE_34__* %22, i32* %238, i32* %239)
  %241 = call i32 @SVN_ERR(%struct.TYPE_36__* %240)
  %242 = load i64, i64* %18, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %315

244:                                              ; preds = %235
  %245 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32*, i32** %14, align 8
  %254 = load i32*, i32** %19, align 8
  %255 = load i32*, i32** %19, align 8
  %256 = call %struct.TYPE_36__* @svn_wc__db_pristine_get_path(i8** %40, i32 %247, i32 %252, i32* %253, i32* %254, i32* %255)
  %257 = call i32 @SVN_ERR(%struct.TYPE_36__* %256)
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 1
  %260 = load %struct.TYPE_32__*, %struct.TYPE_32__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i8*, i8** %13, align 8
  %264 = load i32*, i32** %19, align 8
  %265 = call i8* @svn_dirent_join(i32 %262, i8* %263, i32* %264)
  store i8* %265, i8** %41, align 8
  %266 = load i32*, i32** %19, align 8
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @apr_psprintf(i32* %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %271)
  store i8* %272, i8** %42, align 8
  %273 = load i32*, i32** %19, align 8
  %274 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %275 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %274, i32 0, i32 5
  %276 = load %struct.TYPE_33__*, %struct.TYPE_33__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i8* @apr_psprintf(i32* %273, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %278)
  store i8* %279, i8** %43, align 8
  %280 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %281 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i8*, i8** %40, align 8
  %284 = load i8*, i8** %41, align 8
  %285 = load i8*, i8** %23, align 8
  %286 = load i8*, i8** %23, align 8
  %287 = load i8*, i8** %42, align 8
  %288 = call i32 @_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %289 = load i8*, i8** %43, align 8
  %290 = load i32*, i32** %38, align 8
  %291 = load i64, i64* @FALSE, align 8
  %292 = load i32*, i32** %39, align 8
  %293 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %294 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %297 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 4
  %299 = load i32*, i32** %19, align 8
  %300 = load i32*, i32** %19, align 8
  %301 = call %struct.TYPE_36__* @svn_wc__internal_merge(i32** %28, i32** %24, i32* %25, i32 %282, i8* %283, i8* %284, i8* %285, i8* %286, i8* %287, i32 %288, i8* %289, i32* %290, i64 %291, i32* null, i32* null, i32* %292, i32 %295, i32 %298, i32* %299, i32* %300)
  %302 = call i32 @SVN_ERR(%struct.TYPE_36__* %301)
  %303 = load i32*, i32** %29, align 8
  %304 = load i32*, i32** %28, align 8
  %305 = load i32*, i32** %19, align 8
  %306 = call i32* @svn_wc__wq_merge(i32* %303, i32* %304, i32* %305)
  store i32* %306, i32** %29, align 8
  %307 = load i32, i32* %25, align 4
  %308 = load i32, i32* @svn_wc_merge_conflict, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %244
  %311 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  store i32 %311, i32* %27, align 4
  br label %314

312:                                              ; preds = %244
  %313 = load i32, i32* @svn_wc_notify_state_merged, align 4
  store i32 %313, i32* %27, align 4
  br label %314

314:                                              ; preds = %312, %310
  br label %315

315:                                              ; preds = %314, %235
  br label %316

316:                                              ; preds = %315, %216
  %317 = load i32*, i32** %24, align 8
  %318 = icmp ne i32* %317, null
  br i1 %318, label %319, label %342

319:                                              ; preds = %316
  %320 = load i8*, i8** %23, align 8
  %321 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %322 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i8*, i8** %31, align 8
  %325 = load i32*, i32** %24, align 8
  %326 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %327 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 8
  %329 = load i64, i64* @svn_node_file, align 8
  %330 = load i64, i64* %32, align 8
  %331 = icmp ne i64 %330, 0
  %332 = xor i1 %331, true
  %333 = zext i1 %332 to i32
  %334 = load i32*, i32** %19, align 8
  %335 = load i32*, i32** %19, align 8
  %336 = call %struct.TYPE_36__* @create_conflict_markers(i32** %28, i8* %320, i32 %323, i8* %324, i32* %325, i32 %328, %struct.TYPE_34__* %21, %struct.TYPE_34__* %22, i64 %329, i32 %333, i32* %334, i32* %335)
  %337 = call i32 @SVN_ERR(%struct.TYPE_36__* %336)
  %338 = load i32*, i32** %29, align 8
  %339 = load i32*, i32** %28, align 8
  %340 = load i32*, i32** %19, align 8
  %341 = call i32* @svn_wc__wq_merge(i32* %338, i32* %339, i32* %340)
  store i32* %341, i32** %29, align 8
  br label %342

342:                                              ; preds = %319, %316
  %343 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %344 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %343, i32 0, i32 1
  %345 = load %struct.TYPE_32__*, %struct.TYPE_32__** %344, align 8
  %346 = load i8*, i8** %12, align 8
  %347 = load %struct.TYPE_35__*, %struct.TYPE_35__** %20, align 8
  %348 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @svn_wc_notify_update_update, align 4
  %351 = load i64, i64* @svn_node_file, align 8
  %352 = load i32, i32* %27, align 4
  %353 = load i32, i32* %26, align 4
  %354 = load i32*, i32** %24, align 8
  %355 = load i32*, i32** %29, align 8
  %356 = load i32*, i32** %19, align 8
  %357 = call %struct.TYPE_36__* @update_move_list_add(%struct.TYPE_32__* %345, i8* %346, i32 %349, i32 %350, i64 %351, i32 %352, i32 %353, i32* %354, i32* %355, i32* %356)
  %358 = call i32 @SVN_ERR(%struct.TYPE_36__* %357)
  %359 = load %struct.TYPE_36__*, %struct.TYPE_36__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_36__* %359, %struct.TYPE_36__** %10, align 8
  br label %360

360:                                              ; preds = %342, %66
  %361 = load %struct.TYPE_36__*, %struct.TYPE_36__** %10, align 8
  ret %struct.TYPE_36__* %361
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @mark_node_edited(%struct.TYPE_37__*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__db_base_get_info_internal(i32*, i64*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_32__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_36__* @copy_working_node(i8*, i8*, %struct.TYPE_32__*, i32*) #1

declare dso_local %struct.TYPE_36__* @create_node_tree_conflict(i32**, %struct.TYPE_37__*, i8*, i64, i64, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__wq_build_file_install(i32**, i32, i8*, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_36__* @update_working_props(i32*, i32**, i32**, i32**, %struct.TYPE_35__*, i8*, %struct.TYPE_34__*, %struct.TYPE_34__*, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @svn_wc__db_pristine_get_path(i8**, i32, i32, i32*, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_36__* @svn_wc__internal_merge(i32**, i32**, i32*, i32, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i64, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_36__* @create_conflict_markers(i32**, i8*, i32, i8*, i32*, i32, %struct.TYPE_34__*, %struct.TYPE_34__*, i64, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_36__* @update_move_list_add(%struct.TYPE_32__*, i8*, i32, i32, i64, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
