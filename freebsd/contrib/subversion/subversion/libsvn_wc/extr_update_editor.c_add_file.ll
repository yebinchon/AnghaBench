; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_add_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_add_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.dir_baton = type { i64, i32, i32, i64, %struct.edit_baton* }
%struct.edit_baton = type { i8*, i32, i32, i64, i32, i32 }
%struct.file_baton = type { i32, i8*, i32*, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_9__* null, align 8
@TRUE = common dso_local global i8* null, align 8
@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Failed to add file '%s': object of the same name as the administrative directory\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_wc_notify_update_skip_obstruction = common dso_local global i32 0, align 4
@svn_wc_conflict_action_replace = common dso_local global i32 0, align 4
@svn_wc_notify_skip_conflicted = common dso_local global i32 0, align 4
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc_conflict_action_add = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_unversioned = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i8*, i8*, i8*, i32, i32*, i8**)* @add_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @add_file(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.dir_baton*, align 8
  %15 = alloca %struct.edit_baton*, align 8
  %16 = alloca %struct.file_baton*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_9__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to %struct.dir_baton*
  store %struct.dir_baton* %31, %struct.dir_baton** %14, align 8
  %32 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %33 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %32, i32 0, i32 4
  %34 = load %struct.edit_baton*, %struct.edit_baton** %33, align 8
  store %struct.edit_baton* %34, %struct.edit_baton** %15, align 8
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %22, align 4
  store i32* null, i32** %24, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %25, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %6
  %40 = load i32, i32* %11, align 4
  %41 = call i64 @SVN_IS_VALID_REVNUM(i32 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %6
  %44 = phi i1 [ true, %6 ], [ %42, %39 ]
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @SVN_ERR_ASSERT(i32 %46)
  %48 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** @TRUE, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = call i32 @make_file_baton(%struct.file_baton** %16, %struct.dir_baton* %48, i8* %49, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %55 = bitcast %struct.file_baton* %54 to i8*
  %56 = load i8**, i8*** %13, align 8
  store i8* %55, i8** %56, align 8
  %57 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %58 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %57, i32 0, i32 12
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %62, %struct.TYPE_9__** %7, align 8
  br label %585

63:                                               ; preds = %43
  %64 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %65 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %64, i32 0, i32 5
  %66 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %67 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %70 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %71 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %72 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @calculate_repos_relpath(i32* %65, i32 %68, i32* null, %struct.edit_baton* %69, %struct.dir_baton* %70, i32 %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @mark_file_edited(%struct.file_baton* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i32*, i32** %12, align 8
  %82 = call i32* @svn_pool_create(i32* %81)
  store i32* %82, i32** %20, align 8
  %83 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %84 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = call i64 @svn_wc_is_adm_dir(i32 %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %63
  %90 = load i32, i32* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 4
  %91 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %93 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @svn_dirent_local_style(i32 %94, i32* %95)
  %97 = call %struct.TYPE_9__* @svn_error_createf(i32 %90, i32* null, i32 %91, i32 %96)
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %7, align 8
  br label %585

98:                                               ; preds = %63
  %99 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %100 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %98
  %104 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %105 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %20, align 8
  %108 = call i32 @svn_io_check_path(i32 %106, i64* %17, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %111 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %114 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = load i32*, i32** %20, align 8
  %118 = call %struct.TYPE_9__* @svn_wc__db_read_info(i64* %19, i64* %18, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %21, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %112, i32 %115, i32* %116, i32* %117)
  store %struct.TYPE_9__* %118, %struct.TYPE_9__** %25, align 8
  br label %124

119:                                              ; preds = %98
  %120 = load i64, i64* @svn_node_none, align 8
  store i64 %120, i64* %17, align 8
  %121 = load i64, i64* @svn_wc__db_status_not_present, align 8
  store i64 %121, i64* %19, align 8
  %122 = load i64, i64* @svn_node_unknown, align 8
  store i64 %122, i64* %18, align 8
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %21, align 4
  br label %124

124:                                              ; preds = %119, %103
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %126 = icmp ne %struct.TYPE_9__* %125, null
  br i1 %126, label %127, label %142

127:                                              ; preds = %124
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %135 = call %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__* %134)
  store %struct.TYPE_9__* %135, %struct.TYPE_9__** %7, align 8
  br label %585

136:                                              ; preds = %127
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %138 = call i32 @svn_error_clear(%struct.TYPE_9__* %137)
  %139 = load i64, i64* @svn_node_unknown, align 8
  store i64 %139, i64* %18, align 8
  %140 = load i32, i32* @FALSE, align 4
  store i32 %140, i32* %21, align 4
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %23, align 4
  br label %236

142:                                              ; preds = %124
  %143 = load i64, i64* %19, align 8
  %144 = load i64, i64* @svn_wc__db_status_normal, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %142
  %147 = load i64, i64* %18, align 8
  %148 = load i64, i64* @svn_node_unknown, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* %21, align 4
  %152 = call i32 @SVN_ERR_ASSERT(i32 %151)
  %153 = load i32, i32* @FALSE, align 4
  store i32 %153, i32* %23, align 4
  br label %235

154:                                              ; preds = %146, %142
  %155 = load i64, i64* %19, align 8
  %156 = load i64, i64* @svn_wc__db_status_normal, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load i64, i64* %19, align 8
  %160 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %231

162:                                              ; preds = %158, %154
  %163 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %164 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %167 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %20, align 8
  %170 = call i32 @svn_wc__db_is_wcroot(i32* %26, i32 %165, i32 %168, i32* %169)
  %171 = call i32 @SVN_ERR(i32 %170)
  %172 = load i32, i32* %26, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %162
  %175 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %176 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %179 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %182 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @apr_pstrdup(i32 %180, i32 %183)
  %185 = load i64, i64* @svn_node_dir, align 8
  %186 = call i32 @svn_node_kind_to_word(i64 %185)
  %187 = call i32 @svn_hash_sets(i32 %177, i32 %184, i32 %186)
  br label %206

188:                                              ; preds = %162
  %189 = load i64, i64* %18, align 8
  %190 = load i64, i64* @svn_node_dir, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %205

193:                                              ; preds = %188
  %194 = load i64, i64* %18, align 8
  %195 = load i64, i64* @svn_node_file, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i64, i64* %18, align 8
  %199 = load i64, i64* @svn_node_symlink, align 8
  %200 = icmp eq i64 %198, %199
  br label %201

201:                                              ; preds = %197, %193
  %202 = phi i1 [ true, %193 ], [ %200, %197 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @SVN_ERR_ASSERT(i32 %203)
  br label %205

205:                                              ; preds = %201, %192
  br label %206

206:                                              ; preds = %205, %174
  %207 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %208 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %209 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32*, i32** %12, align 8
  %212 = call i32 @remember_skipped_tree(%struct.edit_baton* %207, i32 %210, i32* %211)
  %213 = call i32 @SVN_ERR(i32 %212)
  %214 = load i8*, i8** @TRUE, align 8
  %215 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %216 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %215, i32 0, i32 12
  store i8* %214, i8** %216, align 8
  %217 = load i8*, i8** @TRUE, align 8
  %218 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %219 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %218, i32 0, i32 1
  store i8* %217, i8** %219, align 8
  %220 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %221 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %222 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i64, i64* %18, align 8
  %225 = load i32, i32* @svn_wc_notify_update_skip_obstruction, align 4
  %226 = load i32*, i32** %20, align 8
  %227 = call i32 @do_notification(%struct.edit_baton* %220, i32 %223, i64 %224, i32 %225, i32* %226)
  %228 = load i32*, i32** %20, align 8
  %229 = call i32 @svn_pool_destroy(i32* %228)
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %230, %struct.TYPE_9__** %7, align 8
  br label %585

231:                                              ; preds = %158
  %232 = load i64, i64* %19, align 8
  %233 = call i32 @IS_NODE_PRESENT(i64 %232)
  store i32 %233, i32* %23, align 4
  br label %234

234:                                              ; preds = %231
  br label %235

235:                                              ; preds = %234, %150
  br label %236

236:                                              ; preds = %235, %136
  %237 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %238 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %237, i32 0, i32 9
  %239 = load i8*, i8** %238, align 8
  %240 = icmp ne i8* %239, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = load i32, i32* @FALSE, align 4
  store i32 %242, i32* %21, align 4
  br label %315

243:                                              ; preds = %236
  %244 = load i32, i32* %21, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %314

246:                                              ; preds = %243
  %247 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %248 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %246
  %252 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %253 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %256 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %255, i32 0, i32 4
  %257 = load i32, i32* %256, align 4
  %258 = call i32* @svn_hash_gets(i64 %254, i32 %257)
  store i32* %258, i32** %24, align 8
  br label %259

259:                                              ; preds = %251, %246
  %260 = load i32*, i32** %24, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %303

262:                                              ; preds = %259
  %263 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %264 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %267 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32*, i32** %24, align 8
  %270 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %271 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 8
  %273 = load i32*, i32** %20, align 8
  %274 = call i32 @svn_wc__conflict_read_tree_conflict(i32* %27, i32* null, i8** %28, i32 %265, i32 %268, i32* %269, i32 %272, i32* %273)
  %275 = call i32 @SVN_ERR(i32 %274)
  %276 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %277 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = call i32* @svn_wc__conflict_skel_create(i32 %278)
  store i32* %279, i32** %24, align 8
  %280 = load i32*, i32** %24, align 8
  %281 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %282 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %285 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* %27, align 4
  %288 = load i32, i32* @svn_wc_conflict_action_replace, align 4
  %289 = load i8*, i8** %28, align 8
  %290 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %291 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 8
  %293 = load i32*, i32** %20, align 8
  %294 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32* %280, i32 %283, i32 %286, i32 %287, i32 %288, i8* %289, i32 %292, i32* %293)
  %295 = call i32 @SVN_ERR(i32 %294)
  %296 = load i32*, i32** %24, align 8
  %297 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %298 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %297, i32 0, i32 2
  store i32* %296, i32** %298, align 8
  store i32* null, i32** %24, align 8
  %299 = load i8*, i8** @TRUE, align 8
  %300 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %301 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %300, i32 0, i32 9
  store i8* %299, i8** %301, align 8
  %302 = load i32, i32* @FALSE, align 4
  store i32 %302, i32* %21, align 4
  br label %313

303:                                              ; preds = %259
  %304 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %305 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %308 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32*, i32** %12, align 8
  %311 = call i32 @node_already_conflicted(i32* %21, i32* %22, i32 %306, i32 %309, i32* %310)
  %312 = call i32 @SVN_ERR(i32 %311)
  br label %313

313:                                              ; preds = %303, %262
  br label %314

314:                                              ; preds = %313, %243
  br label %315

315:                                              ; preds = %314, %241
  %316 = load i32, i32* %21, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %356

318:                                              ; preds = %315
  %319 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %320 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %321 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32*, i32** %12, align 8
  %324 = call i32 @remember_skipped_tree(%struct.edit_baton* %319, i32 %322, i32* %323)
  %325 = call i32 @SVN_ERR(i32 %324)
  %326 = load i8*, i8** @TRUE, align 8
  %327 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %328 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %327, i32 0, i32 12
  store i8* %326, i8** %328, align 8
  %329 = load i8*, i8** @TRUE, align 8
  %330 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %331 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %330, i32 0, i32 1
  store i8* %329, i8** %331, align 8
  %332 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %333 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %336 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %339 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @apr_pstrdup(i32 %337, i32 %340)
  %342 = load i64, i64* @svn_node_file, align 8
  %343 = call i32 @svn_node_kind_to_word(i64 %342)
  %344 = call i32 @svn_hash_sets(i32 %334, i32 %341, i32 %343)
  %345 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %346 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %347 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i64, i64* @svn_node_file, align 8
  %350 = load i32, i32* @svn_wc_notify_skip_conflicted, align 4
  %351 = load i32*, i32** %20, align 8
  %352 = call i32 @do_notification(%struct.edit_baton* %345, i32 %348, i64 %349, i32 %350, i32* %351)
  %353 = load i32*, i32** %20, align 8
  %354 = call i32 @svn_pool_destroy(i32* %353)
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %355, %struct.TYPE_9__** %7, align 8
  br label %585

356:                                              ; preds = %315
  %357 = load i32, i32* %22, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %356
  %360 = load i8*, i8** @TRUE, align 8
  %361 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %362 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %361, i32 0, i32 9
  store i8* %360, i8** %362, align 8
  br label %363

363:                                              ; preds = %359, %356
  br label %364

364:                                              ; preds = %363
  %365 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %366 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %365, i32 0, i32 9
  %367 = load i8*, i8** %366, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %370

369:                                              ; preds = %364
  br label %479

370:                                              ; preds = %364
  %371 = load i32, i32* %23, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %437

373:                                              ; preds = %370
  %374 = load i64, i64* %19, align 8
  %375 = load i64, i64* @svn_wc__db_status_added, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %388

377:                                              ; preds = %373
  %378 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %379 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %382 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32*, i32** %20, align 8
  %385 = load i32*, i32** %20, align 8
  %386 = call i32 @svn_wc__db_scan_addition(i64* %19, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %380, i32 %383, i32* %384, i32* %385)
  %387 = call i32 @SVN_ERR(i32 %386)
  br label %388

388:                                              ; preds = %377, %373
  %389 = load i64, i64* %18, align 8
  %390 = load i64, i64* @svn_node_file, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %396, label %392

392:                                              ; preds = %388
  %393 = load i64, i64* %18, align 8
  %394 = load i64, i64* @svn_node_symlink, align 8
  %395 = icmp eq i64 %393, %394
  br label %396

396:                                              ; preds = %392, %388
  %397 = phi i1 [ true, %388 ], [ %395, %392 ]
  %398 = zext i1 %397 to i32
  store i32 %398, i32* %29, align 4
  %399 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %400 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %410

403:                                              ; preds = %396
  %404 = load i32, i32* %29, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %410

406:                                              ; preds = %403
  %407 = load i64, i64* %19, align 8
  %408 = load i64, i64* @svn_wc__db_status_added, align 8
  %409 = icmp ne i64 %407, %408
  br i1 %409, label %410, label %425

410:                                              ; preds = %406, %403, %396
  %411 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %412 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %413 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i64, i64* %19, align 8
  %416 = load i32, i32* @FALSE, align 4
  %417 = load i64, i64* @svn_node_none, align 8
  %418 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %419 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %420 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %419, i32 0, i32 3
  %421 = load i32, i32* %420, align 8
  %422 = load i32*, i32** %20, align 8
  %423 = call i32 @check_tree_conflict(i32** %24, %struct.edit_baton* %411, i32 %414, i64 %415, i32 %416, i64 %417, i32 %418, i32 %421, i32* %422)
  %424 = call i32 @SVN_ERR(i32 %423)
  br label %425

425:                                              ; preds = %410, %406
  %426 = load i32*, i32** %24, align 8
  %427 = icmp eq i32* %426, null
  br i1 %427, label %428, label %432

428:                                              ; preds = %425
  %429 = load i8*, i8** @TRUE, align 8
  %430 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %431 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %430, i32 0, i32 11
  store i8* %429, i8** %431, align 8
  br label %436

432:                                              ; preds = %425
  %433 = load i8*, i8** @TRUE, align 8
  %434 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %435 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %434, i32 0, i32 9
  store i8* %433, i8** %435, align 8
  br label %436

436:                                              ; preds = %432, %428
  br label %478

437:                                              ; preds = %370
  %438 = load i64, i64* %17, align 8
  %439 = load i64, i64* @svn_node_none, align 8
  %440 = icmp ne i64 %438, %439
  br i1 %440, label %441, label %477

441:                                              ; preds = %437
  %442 = load i8*, i8** @TRUE, align 8
  %443 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %444 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %443, i32 0, i32 10
  store i8* %442, i8** %444, align 8
  %445 = load i64, i64* %17, align 8
  %446 = load i64, i64* @svn_node_file, align 8
  %447 = icmp eq i64 %445, %446
  br i1 %447, label %448, label %453

448:                                              ; preds = %441
  %449 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %450 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %449, i32 0, i32 3
  %451 = load i64, i64* %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %476, label %453

453:                                              ; preds = %448, %441
  %454 = load i8*, i8** @TRUE, align 8
  %455 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %456 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %455, i32 0, i32 9
  store i8* %454, i8** %456, align 8
  %457 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %458 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %457, i32 0, i32 3
  %459 = load i32, i32* %458, align 8
  %460 = call i32* @svn_wc__conflict_skel_create(i32 %459)
  store i32* %460, i32** %24, align 8
  %461 = load i32*, i32** %24, align 8
  %462 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %463 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %462, i32 0, i32 1
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %466 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = load i32, i32* @svn_wc_conflict_reason_unversioned, align 4
  %469 = load i32, i32* @svn_wc_conflict_action_add, align 4
  %470 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %471 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %470, i32 0, i32 3
  %472 = load i32, i32* %471, align 8
  %473 = load i32*, i32** %20, align 8
  %474 = call i32 @svn_wc__conflict_skel_add_tree_conflict(i32* %461, i32 %464, i32 %467, i32 %468, i32 %469, i8* null, i32 %472, i32* %473)
  %475 = call i32 @SVN_ERR(i32 %474)
  br label %476

476:                                              ; preds = %453, %448
  br label %477

477:                                              ; preds = %476, %437
  br label %478

478:                                              ; preds = %477, %436
  br label %479

479:                                              ; preds = %478, %369
  %480 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %481 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %480, i32 0, i32 3
  %482 = load i64, i64* %481, align 8
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %500, label %484

484:                                              ; preds = %479
  %485 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %486 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %485, i32 0, i32 0
  %487 = load i8*, i8** %486, align 8
  %488 = load i8, i8* %487, align 1
  %489 = sext i8 %488 to i32
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %500, label %491

491:                                              ; preds = %484
  %492 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %493 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %496 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %495, i32 0, i32 2
  %497 = load i32, i32* %496, align 4
  %498 = call i64 @strcmp(i32 %494, i32 %497)
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %500, label %514

500:                                              ; preds = %491, %484, %479
  %501 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %502 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %501, i32 0, i32 2
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %505 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %504, i32 0, i32 1
  %506 = load i32, i32* %505, align 8
  %507 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %508 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %507, i32 0, i32 4
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @apr_pstrdup(i32 %506, i32 %509)
  %511 = load i64, i64* @svn_node_file, align 8
  %512 = call i32 @svn_node_kind_to_word(i64 %511)
  %513 = call i32 @svn_hash_sets(i32 %503, i32 %510, i32 %512)
  br label %514

514:                                              ; preds = %500, %491
  %515 = load i32*, i32** %24, align 8
  %516 = icmp ne i32* %515, null
  br i1 %516, label %517, label %581

517:                                              ; preds = %514
  %518 = load i32*, i32** %24, align 8
  %519 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %520 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %519, i32 0, i32 8
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %523 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %526 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %525, i32 0, i32 7
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %529 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %528, i32 0, i32 6
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %532 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %531, i32 0, i32 5
  %533 = load i32, i32* %532, align 8
  %534 = load i64, i64* %18, align 8
  %535 = load i64, i64* @svn_node_file, align 8
  %536 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %537 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %548

540:                                              ; preds = %517
  %541 = load %struct.dir_baton*, %struct.dir_baton** %14, align 8
  %542 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %545 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %544, i32 0, i32 4
  %546 = load i32, i32* %545, align 4
  %547 = call i32* @svn_hash_gets(i64 %543, i32 %546)
  br label %549

548:                                              ; preds = %517
  br label %549

549:                                              ; preds = %548, %540
  %550 = phi i32* [ %547, %540 ], [ null, %548 ]
  %551 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %552 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %551, i32 0, i32 3
  %553 = load i32, i32* %552, align 8
  %554 = load i32*, i32** %20, align 8
  %555 = call i32 @complete_conflict(i32* %518, i32 %521, i32 %524, i32 %527, i32 %530, i32 %533, i64 %534, i64 %535, i32* %550, i32 %553, i32* %554)
  %556 = call i32 @SVN_ERR(i32 %555)
  %557 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %558 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %557, i32 0, i32 1
  %559 = load i32, i32* %558, align 8
  %560 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %561 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load i32*, i32** %24, align 8
  %564 = load i32*, i32** %20, align 8
  %565 = call i32 @svn_wc__db_op_mark_conflict(i32 %559, i32 %562, i32* %563, i32* null, i32* %564)
  %566 = call i32 @SVN_ERR(i32 %565)
  %567 = load i32*, i32** %24, align 8
  %568 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %569 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %568, i32 0, i32 2
  store i32* %567, i32** %569, align 8
  %570 = load i8*, i8** @TRUE, align 8
  %571 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %572 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %571, i32 0, i32 1
  store i8* %570, i8** %572, align 8
  %573 = load %struct.edit_baton*, %struct.edit_baton** %15, align 8
  %574 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %575 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load i64, i64* @svn_node_file, align 8
  %578 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %579 = load i32*, i32** %20, align 8
  %580 = call i32 @do_notification(%struct.edit_baton* %573, i32 %576, i64 %577, i32 %578, i32* %579)
  br label %581

581:                                              ; preds = %549, %514
  %582 = load i32*, i32** %20, align 8
  %583 = call i32 @svn_pool_destroy(i32* %582)
  %584 = load %struct.TYPE_9__*, %struct.TYPE_9__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_9__* %584, %struct.TYPE_9__** %7, align 8
  br label %585

585:                                              ; preds = %581, %318, %206, %133, %89, %61
  %586 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  ret %struct.TYPE_9__* %586
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @make_file_baton(%struct.file_baton**, %struct.dir_baton*, i8*, i8*, i32*) #1

declare dso_local i32 @calculate_repos_relpath(i32*, i32, i32*, %struct.edit_baton*, %struct.dir_baton*, i32, i32*) #1

declare dso_local i32 @mark_file_edited(%struct.file_baton*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i64 @svn_wc_is_adm_dir(i32, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_io_check_path(i32, i64*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @svn_error_trace(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_9__*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32, i32) #1

declare dso_local i32 @svn_node_kind_to_word(i64) #1

declare dso_local i32 @remember_skipped_tree(%struct.edit_baton*, i32, i32*) #1

declare dso_local i32 @do_notification(%struct.edit_baton*, i32, i64, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @IS_NODE_PRESENT(i64) #1

declare dso_local i32* @svn_hash_gets(i64, i32) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i32*, i32*, i8**, i32, i32, i32*, i32, i32*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32) #1

declare dso_local i32 @svn_wc__conflict_skel_add_tree_conflict(i32*, i32, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @node_already_conflicted(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_scan_addition(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @check_tree_conflict(i32**, %struct.edit_baton*, i32, i64, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @complete_conflict(i32*, i32, i32, i32, i32, i32, i64, i64, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_conflict(i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
