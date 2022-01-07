; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_open_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_open_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.edit_baton = type { i8*, i8*, i32*, i32, i8* }
%struct.dir_baton = type { i8*, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i8*, i8* }

@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc_notify_skip_conflicted = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8*, i32, i32*, i8**)* @open_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @open_root(i8* %0, i32 %1, i32* %2, i8** %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.edit_baton*, align 8
  %11 = alloca %struct.dir_baton*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to %struct.edit_baton*
  store %struct.edit_baton* %22, %struct.edit_baton** %10, align 8
  %23 = load i8*, i8** @TRUE, align 8
  %24 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %25 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %27 = load i64, i64* @FALSE, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @make_dir_baton(%struct.dir_baton** %11, i32* null, %struct.edit_baton* %26, i32* null, i64 %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %32 = bitcast %struct.dir_baton* %31 to i8*
  %33 = load i8**, i8*** %9, align 8
  store i8* %32, i8** %33, align 8
  %34 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %35 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %38 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = call %struct.TYPE_8__* @already_in_a_tree_conflict(i64* %12, i64* %13, i32 %36, i8* %39, i32* %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %14, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %43 = icmp ne %struct.TYPE_8__* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %52 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %51)
  store %struct.TYPE_8__* %52, %struct.TYPE_8__** %5, align 8
  br label %279

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %55 = call i32 @svn_error_clear(%struct.TYPE_8__* %54)
  %56 = load i64, i64* @FALSE, align 8
  store i64 %56, i64* %13, align 8
  store i64 %56, i64* %12, align 8
  br label %91

57:                                               ; preds = %4
  %58 = load i64, i64* %12, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %90

60:                                               ; preds = %57
  %61 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %62 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %63 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @remember_skipped_tree(%struct.edit_baton* %61, i8* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %69 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %70 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @remember_skipped_tree(%struct.edit_baton* %68, i8* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i8*, i8** @TRUE, align 8
  %76 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %77 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @TRUE, align 8
  %79 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %80 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %82 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %83 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @svn_node_unknown, align 4
  %86 = load i32, i32* @svn_wc_notify_skip_conflicted, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @do_notification(%struct.edit_baton* %81, i8* %84, i32 %85, i32 %86, i32* %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %89, %struct.TYPE_8__** %5, align 8
  br label %279

90:                                               ; preds = %57
  br label %91

91:                                               ; preds = %90, %53
  %92 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %93 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %92, i32 0, i32 5
  %94 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %95 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %94, i32 0, i32 6
  %96 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %97 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %96, i32 0, i32 11
  %98 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %99 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %98, i32 0, i32 10
  %100 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %101 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %100, i32 0, i32 9
  %102 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %103 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %102, i32 0, i32 8
  %104 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %105 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %108 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %111 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @svn_wc__db_read_info(i64* %15, i32* %17, i32* %93, i32* %95, i32* null, i32* null, i32* %97, i32* %99, i32* %101, i32* %103, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %18, i32 %106, i8* %109, i32 %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i64, i64* %18, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %91
  %119 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %120 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %119, i32 0, i32 5
  %121 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %122 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %121, i32 0, i32 6
  %123 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %124 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %123, i32 0, i32 11
  %125 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %126 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %125, i32 0, i32 10
  %127 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %128 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %127, i32 0, i32 9
  %129 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %130 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %129, i32 0, i32 8
  %131 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %132 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %135 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %138 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @svn_wc__db_base_get_info(i64* %16, i32* null, i32* %120, i32* %122, i32* null, i32* null, i32* %124, i32* %126, i32* %128, i32* %130, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %133, i8* %136, i32 %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  br label %145

143:                                              ; preds = %91
  %144 = load i64, i64* %15, align 8
  store i64 %144, i64* %16, align 8
  br label %145

145:                                              ; preds = %143, %118
  %146 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %147 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %146, i32 0, i32 2
  %148 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %149 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %152 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %155 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %156 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %155, i32 0, i32 7
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @calculate_repos_relpath(i32* %147, i8* %150, i32 %153, %struct.edit_baton* %154, i32* null, i32 %157, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  %161 = load i64, i64* %13, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %145
  %164 = load i8*, i8** @TRUE, align 8
  %165 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %166 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %165, i32 0, i32 3
  store i8* %164, i8** %166, align 8
  br label %247

167:                                              ; preds = %145
  %168 = load i64, i64* %18, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %246

170:                                              ; preds = %167
  %171 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %172 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %175 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i32*, i32** %8, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call i32 @svn_wc__db_base_moved_to(i32* null, i32* null, i8** %19, i32* null, i32 %173, i8* %176, i32* %177, i32* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  %181 = load i8*, i8** %19, align 8
  %182 = icmp ne i8* %181, null
  br i1 %182, label %183, label %242

183:                                              ; preds = %170
  %184 = load i32*, i32** %8, align 8
  %185 = call i32* @svn_wc__conflict_skel_create(i32* %184)
  store i32* %185, i32** %20, align 8
  %186 = load i32*, i32** %20, align 8
  %187 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %188 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load i8*, i8** %19, align 8
  %191 = load i32, i32* @svn_wc_conflict_reason_moved_away, align 4
  %192 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %193 = load i8*, i8** %19, align 8
  %194 = load i32*, i32** %8, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32* %186, i32 %189, i8* %190, i32 %191, i32 %192, i8* %193, i32* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %199 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %19, align 8
  %202 = call i64 @strcmp(i8* %200, i8* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %237

204:                                              ; preds = %183
  %205 = load i32*, i32** %20, align 8
  %206 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %207 = load i8*, i8** %19, align 8
  %208 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %209 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %212 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %215 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @svn_node_dir, align 4
  %218 = load i32, i32* @svn_node_dir, align 4
  %219 = load i32*, i32** %8, align 8
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @complete_conflict(i32* %205, %struct.edit_baton* %206, i8* %207, i32 %210, i32 %213, i32 %216, i32 %217, i32 %218, i32* null, i32* %219, i32* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  %223 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %224 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load i8*, i8** %19, align 8
  %227 = load i32*, i32** %20, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = call i32 @svn_wc__db_op_mark_conflict(i32 %225, i8* %226, i32* %227, i32* null, i32* %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  %231 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %232 = load i8*, i8** %19, align 8
  %233 = load i32, i32* @svn_node_dir, align 4
  %234 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @do_notification(%struct.edit_baton* %231, i8* %232, i32 %233, i32 %234, i32* %235)
  br label %241

237:                                              ; preds = %183
  %238 = load i32*, i32** %20, align 8
  %239 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %240 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %239, i32 0, i32 4
  store i32* %238, i32** %240, align 8
  br label %241

241:                                              ; preds = %237, %204
  br label %242

242:                                              ; preds = %241, %170
  %243 = load i8*, i8** @TRUE, align 8
  %244 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %245 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %244, i32 0, i32 3
  store i8* %243, i8** %245, align 8
  br label %246

246:                                              ; preds = %242, %167
  br label %247

247:                                              ; preds = %246, %163
  %248 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %249 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %248, i32 0, i32 1
  %250 = load i8*, i8** %249, align 8
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %277

254:                                              ; preds = %247
  %255 = load i64, i64* %16, align 8
  %256 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %257 = icmp eq i64 %255, %256
  %258 = zext i1 %257 to i32
  %259 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %260 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %259, i32 0, i32 1
  store i32 %258, i32* %260, align 8
  %261 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %262 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %265 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.dir_baton*, %struct.dir_baton** %11, align 8
  %268 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.edit_baton*, %struct.edit_baton** %10, align 8
  %271 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %8, align 8
  %275 = call i32 @svn_wc__db_temp_op_start_directory_update(i32 %263, i8* %266, i32 %269, i32 %273, i32* %274)
  %276 = call i32 @SVN_ERR(i32 %275)
  br label %277

277:                                              ; preds = %254, %247
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %278, %struct.TYPE_8__** %5, align 8
  br label %279

279:                                              ; preds = %277, %60, %50
  %280 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %280
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @make_dir_baton(%struct.dir_baton**, i32*, %struct.edit_baton*, i32*, i64, i32*) #1

declare dso_local %struct.TYPE_8__* @already_in_a_tree_conflict(i64*, i64*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i32 @remember_skipped_tree(%struct.edit_baton*, i8*, i32*) #1

declare dso_local i32 @do_notification(%struct.edit_baton*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @calculate_repos_relpath(i32*, i8*, i32, %struct.edit_baton*, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_base_moved_to(i32*, i32*, i8**, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_tree_conflict(i32*, i32, i8*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @complete_conflict(i32*, %struct.edit_baton*, i8*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_conflict(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_temp_op_start_directory_update(i32, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
