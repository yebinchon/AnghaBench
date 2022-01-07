; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dir_baton = type { %struct.edit_baton* }
%struct.edit_baton = type { i32 }
%struct.file_baton = type { i8*, i8*, i32, i32*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_update_skip_obstruction = common dso_local global i32 0, align 4
@svn_node_unknown = common dso_local global i32 0, align 4
@svn_wc_notify_skip_conflicted = common dso_local global i32 0, align 4
@svn_wc_conflict_action_edit = common dso_local global i32 0, align 4
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_replaced = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_obstructed = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, i32, i32*, i8**)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_file(i8* %0, i8* %1, i32 %2, i32* %3, i8** %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.dir_baton*, align 8
  %13 = alloca %struct.edit_baton*, align 8
  %14 = alloca %struct.file_baton*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to %struct.dir_baton*
  store %struct.dir_baton* %25, %struct.dir_baton** %12, align 8
  %26 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %27 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %26, i32 0, i32 0
  %28 = load %struct.edit_baton*, %struct.edit_baton** %27, align 8
  store %struct.edit_baton* %28, %struct.edit_baton** %13, align 8
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %16, align 8
  store i32* null, i32** %20, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %21, align 8
  %32 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* @FALSE, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @make_file_baton(%struct.file_baton** %14, %struct.dir_baton* %32, i8* %33, i64 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  %38 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %39 = bitcast %struct.file_baton* %38 to i8*
  %40 = load i8**, i8*** %11, align 8
  store i8* %39, i8** %40, align 8
  %41 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %42 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %41, i32 0, i32 6
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %5
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %6, align 8
  br label %282

47:                                               ; preds = %5
  %48 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %49 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %52 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @svn_wc__db_is_wcroot(i64* %22, i32 %50, i32 %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %22, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %47
  %60 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %61 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %62 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @remember_skipped_tree(%struct.edit_baton* %60, i32 %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** @TRUE, align 8
  %68 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %69 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @TRUE, align 8
  %71 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %72 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %71, i32 0, i32 5
  store i8* %70, i8** %72, align 8
  %73 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %74 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %75 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @svn_node_file, align 4
  %78 = load i32, i32* @svn_wc_notify_update_skip_obstruction, align 4
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @do_notification(%struct.edit_baton* %73, i32 %76, i32 %77, i32 %78, i32* %79)
  %81 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %81, i32** %6, align 8
  br label %282

82:                                               ; preds = %47
  %83 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %84 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %83, i32 0, i32 13
  %85 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %86 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %85, i32 0, i32 7
  %87 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %88 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %87, i32 0, i32 12
  %89 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %90 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %89, i32 0, i32 11
  %91 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %92 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %91, i32 0, i32 10
  %93 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %94 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %93, i32 0, i32 9
  %95 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %96 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %95, i32 0, i32 14
  %97 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %98 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %101 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %104 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %21, align 8
  %107 = call i32 @svn_wc__db_read_info(i32* %18, i32* %19, i32* %84, i32* %86, i32* null, i32* null, i32* %88, i32* %90, i32* %92, i32* null, i32* %94, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %15, i32* null, i32* null, i32* %96, i32* null, i32* null, i64* %17, i32 %99, i32 %102, i32 %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load i64, i64* %17, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %82
  %112 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %113 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %112, i32 0, i32 13
  %114 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %115 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %114, i32 0, i32 7
  %116 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %117 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %116, i32 0, i32 12
  %118 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %119 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %118, i32 0, i32 11
  %120 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %121 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %120, i32 0, i32 10
  %122 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %123 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %122, i32 0, i32 9
  %124 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %125 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %128 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %131 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %21, align 8
  %134 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i32* %113, i32* %115, i32* null, i32* null, i32* %117, i32* %119, i32* %121, i32* null, i32* %123, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %126, i32 %129, i32 %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  br label %136

136:                                              ; preds = %111, %82
  %137 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %138 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %137, i32 0, i32 8
  %139 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %140 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %143 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %142, i32 0, i32 7
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %146 = load %struct.dir_baton*, %struct.dir_baton** %12, align 8
  %147 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %148 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %21, align 8
  %151 = call i32 @calculate_repos_relpath(i32* %138, i32 %141, i32 %144, %struct.edit_baton* %145, %struct.dir_baton* %146, i32 %149, i32* %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  %153 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %154 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %153, i32 0, i32 0
  %155 = load i8*, i8** %154, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %136
  %158 = load i64, i64* @FALSE, align 8
  store i64 %158, i64* %15, align 8
  br label %173

159:                                              ; preds = %136
  %160 = load i64, i64* %15, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %164 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %167 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load i32*, i32** %10, align 8
  %170 = call i32 @node_already_conflicted(i64* %15, i64* %16, i32 %165, i32 %168, i32* %169)
  %171 = call i32 @SVN_ERR(i32 %170)
  br label %172

172:                                              ; preds = %162, %159
  br label %173

173:                                              ; preds = %172, %157
  %174 = load i64, i64* %15, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %201

176:                                              ; preds = %173
  %177 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %178 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %179 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = call i32 @remember_skipped_tree(%struct.edit_baton* %177, i32 %180, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  %184 = load i8*, i8** @TRUE, align 8
  %185 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %186 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %185, i32 0, i32 6
  store i8* %184, i8** %186, align 8
  %187 = load i8*, i8** @TRUE, align 8
  %188 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %189 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %188, i32 0, i32 5
  store i8* %187, i8** %189, align 8
  %190 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %191 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %192 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @svn_node_unknown, align 4
  %195 = load i32, i32* @svn_wc_notify_skip_conflicted, align 4
  %196 = load i32*, i32** %21, align 8
  %197 = call i32 @do_notification(%struct.edit_baton* %190, i32 %193, i32 %194, i32 %195, i32* %196)
  %198 = load i32*, i32** %21, align 8
  %199 = call i32 @svn_pool_destroy(i32* %198)
  %200 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %200, i32** %6, align 8
  br label %282

201:                                              ; preds = %173
  %202 = load i64, i64* %16, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load i8*, i8** @TRUE, align 8
  %206 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %207 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %206, i32 0, i32 0
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %201
  br label %209

209:                                              ; preds = %208
  %210 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %211 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %229, label %214

214:                                              ; preds = %209
  %215 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %216 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %217 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = load i8*, i8** @TRUE, align 8
  %221 = load i32, i32* @svn_node_file, align 4
  %222 = load i32, i32* @svn_wc_conflict_action_edit, align 4
  %223 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %224 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %21, align 8
  %227 = call i32 @check_tree_conflict(i32** %20, %struct.edit_baton* %215, i32 %218, i32 %219, i8* %220, i32 %221, i32 %222, i32 %225, i32* %226)
  %228 = call i32 @SVN_ERR(i32 %227)
  br label %229

229:                                              ; preds = %214, %209
  %230 = load i32*, i32** %20, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %278

232:                                              ; preds = %229
  %233 = load i32*, i32** %20, align 8
  %234 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %235 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %234, i32 0, i32 3
  store i32* %233, i32** %235, align 8
  %236 = load %struct.edit_baton*, %struct.edit_baton** %13, align 8
  %237 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %240 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load i32*, i32** %20, align 8
  %243 = load i32*, i32** %21, align 8
  %244 = load i32*, i32** %21, align 8
  %245 = call i32 @svn_wc__conflict_read_tree_conflict(i64* %23, i32* null, i32* null, i32 %238, i32 %241, i32* %242, i32* %243, i32* %244)
  %246 = call i32 @SVN_ERR(i32 %245)
  %247 = load i64, i64* %23, align 8
  %248 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %262, label %250

250:                                              ; preds = %232
  %251 = load i64, i64* %23, align 8
  %252 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %262, label %254

254:                                              ; preds = %250
  %255 = load i64, i64* %23, align 8
  %256 = load i64, i64* @svn_wc_conflict_reason_replaced, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load i64, i64* %23, align 8
  %260 = load i64, i64* @svn_wc_conflict_reason_obstructed, align 8
  %261 = icmp eq i64 %259, %260
  br label %262

262:                                              ; preds = %258, %254, %250, %232
  %263 = phi i1 [ true, %254 ], [ true, %250 ], [ true, %232 ], [ %261, %258 ]
  %264 = zext i1 %263 to i32
  %265 = call i32 @SVN_ERR_ASSERT(i32 %264)
  %266 = load i64, i64* %23, align 8
  %267 = load i64, i64* @svn_wc_conflict_reason_obstructed, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %262
  %270 = load i8*, i8** @TRUE, align 8
  %271 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %272 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %271, i32 0, i32 1
  store i8* %270, i8** %272, align 8
  br label %277

273:                                              ; preds = %262
  %274 = load i8*, i8** @TRUE, align 8
  %275 = load %struct.file_baton*, %struct.file_baton** %14, align 8
  %276 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %275, i32 0, i32 0
  store i8* %274, i8** %276, align 8
  br label %277

277:                                              ; preds = %273, %269
  br label %278

278:                                              ; preds = %277, %229
  %279 = load i32*, i32** %21, align 8
  %280 = call i32 @svn_pool_destroy(i32* %279)
  %281 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %281, i32** %6, align 8
  br label %282

282:                                              ; preds = %278, %176, %59, %45
  %283 = load i32*, i32** %6, align 8
  ret i32* %283
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @make_file_baton(%struct.file_baton**, %struct.dir_baton*, i8*, i64, i32*) #1

declare dso_local i32 @svn_wc__db_is_wcroot(i64*, i32, i32, i32*) #1

declare dso_local i32 @remember_skipped_tree(%struct.edit_baton*, i32, i32*) #1

declare dso_local i32 @do_notification(%struct.edit_baton*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @calculate_repos_relpath(i32*, i32, i32, %struct.edit_baton*, %struct.dir_baton*, i32, i32*) #1

declare dso_local i32 @node_already_conflicted(i64*, i64*, i32, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @check_tree_conflict(i32**, %struct.edit_baton*, i32, i32, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_tree_conflict(i64*, i32*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
