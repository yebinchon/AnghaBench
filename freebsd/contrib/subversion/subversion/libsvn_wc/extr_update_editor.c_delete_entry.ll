; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { i64, i64, i32, i32, i64, i64, i64, %struct.edit_baton* }
%struct.edit_baton = type { i8*, i32, i32, i32, i32, i64, i32, i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc_notify_update_skip_obstruction = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_skip_conflicted = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@svn_wc_notify_update_delete = common dso_local global i32 0, align 4
@svn_wc_notify_update_shadowed_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32, i8*, i32*)* @delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @delete_entry(i8* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dir_baton*, align 8
  %11 = alloca %struct.edit_baton*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.dir_baton*
  store %struct.dir_baton* %30, %struct.dir_baton** %10, align 8
  %31 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %32 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %31, i32 0, i32 7
  %33 = load %struct.edit_baton*, %struct.edit_baton** %32, align 8
  store %struct.edit_baton* %33, %struct.edit_baton** %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @svn_relpath_basename(i8* %34, i32* null)
  store i8* %35, i8** %12, align 8
  store i32* null, i32** %20, align 8
  %36 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %37 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %41, i32** %5, align 8
  br label %410

42:                                               ; preds = %4
  %43 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %44 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @svn_pool_create(i32 %45)
  store i32* %46, i32** %23, align 8
  %47 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %48 = load i32*, i32** %23, align 8
  %49 = call i32 @mark_directory_edited(%struct.dir_baton* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %52 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i32*, i32** %23, align 8
  %56 = call i32 @path_join_under_root(i8** %13, i32 %53, i8* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %60 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i64 @strcmp(i8* %58, i8* %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %24, align 4
  %65 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %66 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i32*, i32** %23, align 8
  %70 = call i32 @svn_wc__db_is_wcroot(i32* %26, i32 %67, i8* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i32, i32* %26, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %42
  %75 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @remember_skipped_tree(%struct.edit_baton* %75, i8* %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  %80 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* @svn_node_unknown, align 4
  %83 = load i32, i32* @svn_wc_notify_update_skip_obstruction, align 4
  %84 = load i32*, i32** %23, align 8
  %85 = call i32 @do_notification(%struct.edit_baton* %80, i8* %81, i32 %82, i32 %83, i32* %84)
  %86 = load i32*, i32** %23, align 8
  %87 = call i32 @svn_pool_destroy(i32* %86)
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %5, align 8
  br label %410

89:                                               ; preds = %42
  %90 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %91 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = load i32*, i32** %23, align 8
  %95 = load i32*, i32** %23, align 8
  %96 = call i32 @svn_wc__db_read_info(i64* %21, i32* %16, i32* %17, i8** %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %18, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %19, i32 %92, i8* %93, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %89
  %101 = load i64, i64* %21, align 8
  store i64 %101, i64* %22, align 8
  br label %111

102:                                              ; preds = %89
  %103 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %104 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i32*, i32** %23, align 8
  %108 = load i32*, i32** %23, align 8
  %109 = call i32 @svn_wc__db_base_get_info(i64* %22, i32* null, i32* %17, i8** %14, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %105, i8* %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %111

111:                                              ; preds = %102, %100
  %112 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %113 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %111
  %117 = load i8*, i8** %14, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %135

119:                                              ; preds = %116
  %120 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %121 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load i8*, i8** %14, align 8
  %124 = call i8* @svn_relpath_skip_ancestor(i64 %122, i8* %123)
  store i8* %124, i8** %27, align 8
  %125 = load i8*, i8** %27, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %119
  %128 = load i8*, i8** %27, align 8
  %129 = load i8*, i8** %12, align 8
  %130 = call i64 @strcmp(i8* %128, i8* %129)
  %131 = icmp ne i64 %130, 0
  br label %132

132:                                              ; preds = %127, %119
  %133 = phi i1 [ true, %119 ], [ %131, %127 ]
  %134 = zext i1 %133 to i32
  store i32 %134, i32* %25, align 4
  br label %137

135:                                              ; preds = %116, %111
  %136 = load i32, i32* @FALSE, align 4
  store i32 %136, i32* %25, align 4
  br label %137

137:                                              ; preds = %135, %132
  %138 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %139 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %137
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %18, align 4
  br label %156

144:                                              ; preds = %137
  %145 = load i32, i32* %18, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %149 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = load i32*, i32** %23, align 8
  %153 = call i32 @node_already_conflicted(i32* %18, i32* null, i32 %150, i8* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32 %153)
  br label %155

155:                                              ; preds = %147, %144
  br label %156

156:                                              ; preds = %155, %142
  %157 = load i32, i32* %18, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %156
  %160 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = load i32*, i32** %23, align 8
  %163 = call i32 @remember_skipped_tree(%struct.edit_baton* %160, i8* %161, i32* %162)
  %164 = call i32 @SVN_ERR(i32 %163)
  %165 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %166 = load i8*, i8** %13, align 8
  %167 = load i32, i32* @svn_node_unknown, align 4
  %168 = load i32, i32* @svn_wc_notify_skip_conflicted, align 4
  %169 = load i32*, i32** %23, align 8
  %170 = call i32 @do_notification(%struct.edit_baton* %165, i8* %166, i32 %167, i32 %168, i32* %169)
  %171 = load i32*, i32** %23, align 8
  %172 = call i32 @svn_pool_destroy(i32* %171)
  %173 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %173, i32** %5, align 8
  br label %410

174:                                              ; preds = %156
  %175 = load i64, i64* %22, align 8
  %176 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %186, label %178

178:                                              ; preds = %174
  %179 = load i64, i64* %22, align 8
  %180 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %186, label %182

182:                                              ; preds = %178
  %183 = load i64, i64* %22, align 8
  %184 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %211

186:                                              ; preds = %182, %178, %174
  %187 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %188 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = load i8*, i8** %13, align 8
  %191 = load i32, i32* @TRUE, align 4
  %192 = load i32, i32* %24, align 4
  %193 = load i32, i32* @FALSE, align 4
  %194 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %195 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %194, i32 0, i32 7
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %23, align 8
  %199 = call i32 @svn_wc__db_base_remove(i32 %189, i8* %190, i32 %191, i32 %192, i32 %193, i32 %197, i32* null, i32* null, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  %201 = load i32, i32* %24, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %186
  %204 = load i32, i32* @TRUE, align 4
  %205 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %206 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %203, %186
  %208 = load i32*, i32** %23, align 8
  %209 = call i32 @svn_pool_destroy(i32* %208)
  %210 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %210, i32** %5, align 8
  br label %410

211:                                              ; preds = %182
  %212 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %213 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %234, label %216

216:                                              ; preds = %211
  %217 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %218 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %234, label %221

221:                                              ; preds = %216
  %222 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = load i64, i64* %21, align 8
  %225 = load i32, i32* @TRUE, align 4
  %226 = load i32, i32* %16, align 4
  %227 = load i32, i32* @svn_wc_conflict_action_delete, align 4
  %228 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %229 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %23, align 8
  %232 = call i32 @check_tree_conflict(i32** %20, %struct.edit_baton* %222, i8* %223, i64 %224, i32 %225, i32 %226, i32 %227, i32 %230, i32* %231)
  %233 = call i32 @SVN_ERR(i32 %232)
  br label %234

234:                                              ; preds = %221, %216, %211
  %235 = load i32*, i32** %20, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %260

237:                                              ; preds = %234
  %238 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %239 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %237
  %243 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %244 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @apr_hash_make(i32 %245)
  %247 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %248 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %247, i32 0, i32 4
  store i64 %246, i64* %248, align 8
  br label %249

249:                                              ; preds = %242, %237
  %250 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %251 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %250, i32 0, i32 4
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %254 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load i8*, i8** %12, align 8
  %257 = call i32 @apr_pstrdup(i32 %255, i8* %256)
  %258 = load i32*, i32** %20, align 8
  %259 = call i32 @svn_hash_sets(i64 %252, i32 %257, i32* %258)
  br label %260

260:                                              ; preds = %249, %234
  %261 = load i8*, i8** %13, align 8
  %262 = load i8*, i8** %14, align 8
  %263 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %264 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %265 = load i32*, i32** %23, align 8
  %266 = load i32*, i32** %23, align 8
  %267 = call i32 @calculate_repos_relpath(i8** %15, i8* %261, i8* %262, %struct.edit_baton* %263, %struct.dir_baton* %264, i32* %265, i32* %266)
  %268 = call i32 @SVN_ERR(i32 %267)
  %269 = load i32*, i32** %20, align 8
  %270 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %271 = load i8*, i8** %13, align 8
  %272 = load i8*, i8** %14, align 8
  %273 = load i32, i32* %17, align 4
  %274 = load i8*, i8** %15, align 8
  %275 = load i32, i32* %16, align 4
  %276 = load i32, i32* @svn_node_none, align 4
  %277 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %278 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %23, align 8
  %281 = call i32 @complete_conflict(i32* %269, %struct.edit_baton* %270, i8* %271, i8* %272, i32 %273, i8* %274, i32 %275, i32 %276, i32* null, i32 %279, i32* %280)
  %282 = call i32 @SVN_ERR(i32 %281)
  %283 = load i32, i32* %24, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %303, label %285

285:                                              ; preds = %260
  %286 = load i32, i32* %25, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %303, label %288

288:                                              ; preds = %285
  %289 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %290 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = load i8*, i8** %13, align 8
  %293 = load i32*, i32** %20, align 8
  %294 = icmp ne i32* %293, null
  %295 = zext i1 %294 to i32
  %296 = load i32, i32* @FALSE, align 4
  %297 = load i32, i32* @FALSE, align 4
  %298 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %299 = load i32*, i32** %20, align 8
  %300 = load i32*, i32** %23, align 8
  %301 = call i32 @svn_wc__db_base_remove(i32 %291, i8* %292, i32 %295, i32 %296, i32 %297, i32 %298, i32* %299, i32* null, i32* %300)
  %302 = call i32 @SVN_ERR(i32 %301)
  br label %334

303:                                              ; preds = %285, %260
  %304 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %305 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = load i8*, i8** %13, align 8
  %308 = load i32*, i32** %20, align 8
  %309 = icmp ne i32* %308, null
  %310 = zext i1 %309 to i32
  %311 = load i32, i32* @TRUE, align 4
  %312 = load i32, i32* @FALSE, align 4
  %313 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %314 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %313, i32 0, i32 7
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load i32*, i32** %20, align 8
  %318 = load i32*, i32** %23, align 8
  %319 = call i32 @svn_wc__db_base_remove(i32 %306, i8* %307, i32 %310, i32 %311, i32 %312, i32 %316, i32* %317, i32* null, i32* %318)
  %320 = call i32 @SVN_ERR(i32 %319)
  %321 = load i32, i32* %24, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %303
  %324 = load i32, i32* @TRUE, align 4
  %325 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %326 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %325, i32 0, i32 1
  store i32 %324, i32* %326, align 8
  br label %333

327:                                              ; preds = %303
  %328 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %329 = load i8*, i8** %13, align 8
  %330 = load i32*, i32** %9, align 8
  %331 = call i32 @remember_skipped_tree(%struct.edit_baton* %328, i8* %329, i32* %330)
  %332 = call i32 @SVN_ERR(i32 %331)
  br label %333

333:                                              ; preds = %327, %323
  br label %334

334:                                              ; preds = %333, %288
  %335 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %336 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %335, i32 0, i32 6
  %337 = load i32, i32* %336, align 8
  %338 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %339 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %342 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %345 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  %347 = load i32*, i32** %23, align 8
  %348 = call i32 @svn_wc__wq_run(i32 %337, i32 %340, i32 %343, i32 %346, i32* %347)
  %349 = call i32 @SVN_ERR(i32 %348)
  %350 = load i32*, i32** %20, align 8
  %351 = icmp ne i32* %350, null
  br i1 %351, label %352, label %386

352:                                              ; preds = %334
  %353 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %354 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %379

357:                                              ; preds = %352
  %358 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %359 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 8
  %361 = load i8*, i8** %13, align 8
  %362 = load i32, i32* %16, align 4
  %363 = load i32*, i32** %20, align 8
  %364 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %365 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %364, i32 0, i32 5
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %368 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %371 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %374 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %373, i32 0, i32 2
  %375 = load i32, i32* %374, align 4
  %376 = load i32*, i32** %23, align 8
  %377 = call i32 @svn_wc__conflict_invoke_resolver(i32 %360, i8* %361, i32 %362, i32* %363, i32* null, i64 %366, i32 %369, i32 %372, i32 %375, i32* %376)
  %378 = call i32 @SVN_ERR(i32 %377)
  br label %379

379:                                              ; preds = %357, %352
  %380 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %381 = load i8*, i8** %13, align 8
  %382 = load i32, i32* %16, align 4
  %383 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %384 = load i32*, i32** %23, align 8
  %385 = call i32 @do_notification(%struct.edit_baton* %380, i8* %381, i32 %382, i32 %383, i32* %384)
  br label %406

386:                                              ; preds = %334
  %387 = load i32, i32* @svn_wc_notify_update_delete, align 4
  store i32 %387, i32* %28, align 4
  %388 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %389 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %388, i32 0, i32 1
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %397, label %392

392:                                              ; preds = %386
  %393 = load %struct.dir_baton*, %struct.dir_baton** %10, align 8
  %394 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %392, %386
  %398 = load i32, i32* @svn_wc_notify_update_shadowed_delete, align 4
  store i32 %398, i32* %28, align 4
  br label %399

399:                                              ; preds = %397, %392
  %400 = load %struct.edit_baton*, %struct.edit_baton** %11, align 8
  %401 = load i8*, i8** %13, align 8
  %402 = load i32, i32* %16, align 4
  %403 = load i32, i32* %28, align 4
  %404 = load i32*, i32** %23, align 8
  %405 = call i32 @do_notification(%struct.edit_baton* %400, i8* %401, i32 %402, i32 %403, i32* %404)
  br label %406

406:                                              ; preds = %399, %379
  %407 = load i32*, i32** %23, align 8
  %408 = call i32 @svn_pool_destroy(i32* %407)
  %409 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %409, i32** %5, align 8
  br label %410

410:                                              ; preds = %406, %207, %159, %74, %40
  %411 = load i32*, i32** %5, align 8
  ret i32* %411
}

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local i32* @svn_pool_create(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_directory_edited(%struct.dir_baton*, i32*) #1

declare dso_local i32 @path_join_under_root(i8**, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i32*, i32, i8*, i32*) #1

declare dso_local i32 @remember_skipped_tree(%struct.edit_baton*, i8*, i32*) #1

declare dso_local i32 @do_notification(%struct.edit_baton*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i64*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i64, i8*) #1

declare dso_local i32 @node_already_conflicted(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_remove(i32, i8*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @check_tree_conflict(i32**, %struct.edit_baton*, i8*, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @apr_hash_make(i32) #1

declare dso_local i32 @svn_hash_sets(i64, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local i32 @calculate_repos_relpath(i8**, i8*, i8*, %struct.edit_baton*, %struct.dir_baton*, i32*, i32*) #1

declare dso_local i32 @complete_conflict(i32*, %struct.edit_baton*, i8*, i8*, i32, i8*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__conflict_invoke_resolver(i32, i8*, i32, i32*, i32*, i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
