; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_commit_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_commit_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32, i32*, i32 }
%struct.insert_base_baton_t = type { i8*, i32, i64, i32, i64 }

@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_SELECT_ACTUAL_NODE = common dso_local global i32 0, align 4
@presence_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@STMT_DELETE_NODE_ALL_LAYERS = common dso_local global i32 0, align 4
@STMT_DELETE_SHADOWED_RECURSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@STMT_CLEAR_MOVED_TO_FROM_DEST = common dso_local global i32 0, align 4
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@STMT_APPLY_CHANGES_TO_BASE_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"issisrtstrisnbn\00", align 1
@svn_wc__db_status_not_present = common dso_local global i32 0, align 4
@STMT_RESET_ACTUAL_WITH_CHANGELIST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"isss\00", align 1
@STMT_DELETE_ACTUAL_NODE = common dso_local global i32 0, align 4
@STMT_DELETE_LOCK_RECURSIVELY = common dso_local global i32 0, align 4
@STMT_DELETE_LOCK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i8*, i32, i32, i32, i8*, i32*, i32*, i32, i32, i32*, i32*)* @commit_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_node(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32* %6, i32* %7, i32 %8, i32 %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_11__, align 8
  %29 = alloca %struct.TYPE_11__, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca %struct.insert_base_baton_t, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %13, align 8
  store i8* %1, i8** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32* %10, i32** %23, align 8
  store i32* %11, i32** %24, align 8
  %48 = bitcast %struct.TYPE_11__* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 24, i1 false)
  %49 = bitcast %struct.TYPE_11__* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %49, i8 0, i64 24, i1 false)
  store i8* null, i8** %30, align 8
  store i8* null, i8** %34, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i32*, i32** %24, align 8
  %53 = load i32*, i32** %24, align 8
  %54 = call i32 @determine_commit_repos_info(i64* %36, i8** %37, %struct.TYPE_10__* %50, i8* %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %60 = call i32 @svn_sqlite__get_statement(i32** %25, i32 %58, i32 %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i32*, i32** %25, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %65, i8* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load i32*, i32** %25, align 8
  %70 = call i32 @svn_sqlite__step_row(i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @STMT_SELECT_ACTUAL_NODE, align 4
  %76 = call i32 @svn_sqlite__get_statement(i32** %26, i32 %74, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %26, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i8*, i8** %14, align 8
  %83 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %81, i8* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %26, align 8
  %86 = call i32 @svn_sqlite__step(i32* %27, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** %25, align 8
  %89 = call i32 @svn_sqlite__column_int(i32* %88, i32 0)
  store i32 %89, i32* %38, align 4
  %90 = load i32*, i32** %25, align 8
  %91 = load i32, i32* @presence_map, align 4
  %92 = call i64 @svn_sqlite__column_token(i32* %90, i32 3, i32 %91)
  store i64 %92, i64* %39, align 8
  %93 = load i32*, i32** %25, align 8
  %94 = load i32, i32* @kind_map, align 4
  %95 = call i64 @svn_sqlite__column_token(i32* %93, i32 4, i32 %94)
  store i64 %95, i64* %33, align 8
  %96 = load i64, i64* %33, align 8
  %97 = load i64, i64* @svn_node_dir, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %12
  %100 = load i32*, i32** %25, align 8
  %101 = load i32*, i32** %24, align 8
  %102 = call i8* @svn_sqlite__column_text(i32* %100, i32 11, i32* %101)
  store i8* %102, i8** %34, align 8
  br label %103

103:                                              ; preds = %99, %12
  %104 = load i32, i32* %38, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %103
  %107 = load i32*, i32** %25, align 8
  %108 = call i32 @svn_sqlite__column_is_null(i32* %107, i32 1)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @SVN_ERR_ASSERT(i32 %111)
  %113 = load i32*, i32** %25, align 8
  %114 = call i32 @svn_sqlite__column_is_null(i32* %113, i32 2)
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = call i32 @SVN_ERR_ASSERT(i32 %117)
  %119 = load i64, i64* %36, align 8
  %120 = load i32*, i32** %25, align 8
  %121 = call i64 @svn_sqlite__column_int64(i32* %120, i32 1)
  %122 = icmp eq i64 %119, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @SVN_ERR_ASSERT(i32 %123)
  %125 = load i8*, i8** %37, align 8
  %126 = load i32*, i32** %25, align 8
  %127 = call i8* @svn_sqlite__column_text(i32* %126, i32 2, i32* null)
  %128 = call i64 @strcmp(i8* %125, i8* %127)
  %129 = icmp eq i64 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @SVN_ERR_ASSERT(i32 %130)
  br label %132

132:                                              ; preds = %106, %103
  %133 = load i64, i64* %39, align 8
  %134 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %176

136:                                              ; preds = %132
  %137 = load i32, i32* %27, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load i32*, i32** %26, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %142 = load i32*, i32** %24, align 8
  %143 = call i8* @svn_sqlite__column_blob(i32* %140, i32 1, i32* %141, i32* %142)
  %144 = bitcast i8* %143 to i32*
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i32* %144, i32** %145, align 8
  br label %146

146:                                              ; preds = %139, %136
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = icmp eq i32* %148, null
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load i32*, i32** %25, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %153 = load i32*, i32** %24, align 8
  %154 = call i8* @svn_sqlite__column_blob(i32* %151, i32 14, i32* %152, i32* %153)
  %155 = bitcast i8* %154 to i32*
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i32* %155, i32** %156, align 8
  br label %157

157:                                              ; preds = %150, %146
  %158 = load i32*, i32** %25, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %160 = load i32*, i32** %24, align 8
  %161 = call i8* @svn_sqlite__column_blob(i32* %158, i32 16, i32* %159, i32* %160)
  %162 = bitcast i8* %161 to i32*
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  store i32* %162, i32** %163, align 8
  %164 = load i32, i32* %21, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %157
  %167 = load i32, i32* %27, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32*, i32** %26, align 8
  %171 = load i32*, i32** %24, align 8
  %172 = call i8* @svn_sqlite__column_text(i32* %170, i32 0, i32* %171)
  store i8* %172, i8** %30, align 8
  br label %173

173:                                              ; preds = %169, %166, %157
  %174 = load i32*, i32** %25, align 8
  %175 = call i32 @svn_sqlite__column_int(i32* %174, i32 15)
  store i32 %175, i32* %40, align 4
  br label %178

176:                                              ; preds = %132
  %177 = load i32, i32* @FALSE, align 4
  store i32 %177, i32* %40, align 4
  store i8* null, i8** %30, align 8
  br label %178

178:                                              ; preds = %176, %173
  %179 = load i32*, i32** %25, align 8
  %180 = call i32 @svn_sqlite__reset(i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load i32*, i32** %26, align 8
  %183 = call i32 @svn_sqlite__reset(i32* %182)
  %184 = call i32 @SVN_ERR(i32 %183)
  %185 = load i32, i32* %38, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %312

187:                                              ; preds = %178
  %188 = load i32, i32* %38, align 4
  %189 = load i8*, i8** %14, align 8
  %190 = call i32 @relpath_depth(i8* %189)
  %191 = icmp eq i32 %188, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @SVN_ERR_ASSERT(i32 %192)
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %195 = load i8*, i8** %14, align 8
  %196 = load i32*, i32** %24, align 8
  %197 = load i32*, i32** %24, align 8
  %198 = call i32 @moved_descendant_collect(i32** %42, %struct.TYPE_10__* %194, i8* %195, i32 0, i32* %196, i32* %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load i32*, i32** %42, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %220

202:                                              ; preds = %187
  %203 = load i32*, i32** %24, align 8
  %204 = load i32*, i32** %42, align 8
  %205 = call i32* @apr_hash_first(i32* %203, i32* %204)
  store i32* %205, i32** %43, align 8
  br label %206

206:                                              ; preds = %216, %202
  %207 = load i32*, i32** %43, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %211 = load i32*, i32** %43, align 8
  %212 = call i32 @apr_hash_this_key(i32* %211)
  %213 = load i32*, i32** %24, align 8
  %214 = call i32 @clear_moved_here(%struct.TYPE_10__* %210, i32 %212, i32* %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  br label %216

216:                                              ; preds = %209
  %217 = load i32*, i32** %43, align 8
  %218 = call i32* @apr_hash_next(i32* %217)
  store i32* %218, i32** %43, align 8
  br label %206

219:                                              ; preds = %206
  br label %220

220:                                              ; preds = %219, %187
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @STMT_DELETE_NODE_ALL_LAYERS, align 4
  %225 = call i32 @svn_sqlite__get_statement(i32** %35, i32 %223, i32 %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  %227 = load i32*, i32** %35, align 8
  %228 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i8*, i8** %14, align 8
  %232 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %227, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %230, i8* %231)
  %233 = call i32 @SVN_ERR(i32 %232)
  %234 = load i32*, i32** %35, align 8
  %235 = call i32 @svn_sqlite__update(i32* %41, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load i32, i32* %41, align 4
  %238 = icmp sgt i32 %237, 1
  br i1 %238, label %239, label %257

239:                                              ; preds = %220
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @STMT_DELETE_SHADOWED_RECURSIVE, align 4
  %244 = call i32 @svn_sqlite__get_statement(i32** %35, i32 %242, i32 %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load i32*, i32** %35, align 8
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i8*, i8** %14, align 8
  %251 = load i32, i32* %38, align 4
  %252 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %246, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %249, i8* %250, i32 %251)
  %253 = call i32 @SVN_ERR(i32 %252)
  %254 = load i32*, i32** %35, align 8
  %255 = call i32 @svn_sqlite__step_done(i32* %254)
  %256 = call i32 @SVN_ERR(i32 %255)
  br label %257

257:                                              ; preds = %239, %220
  %258 = load i64, i64* %39, align 8
  %259 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %257
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = load i32, i32* %38, align 4
  %265 = load i64, i64* %36, align 8
  %266 = load i8*, i8** %37, align 8
  %267 = load i32, i32* %15, align 4
  %268 = load i32*, i32** %24, align 8
  %269 = call i32 @descendant_commit(%struct.TYPE_10__* %262, i8* %263, i32 %264, i64 %265, i8* %266, i32 %267, i32* %268)
  %270 = call i32 @SVN_ERR(i32 %269)
  br label %271

271:                                              ; preds = %261, %257
  %272 = load i64, i64* %39, align 8
  %273 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %274 = icmp ne i64 %272, %273
  br i1 %274, label %275, label %291

275:                                              ; preds = %271
  store i32* null, i32** %44, align 8
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %277 = load i8*, i8** %14, align 8
  %278 = load i32*, i32** %24, align 8
  %279 = load i32*, i32** %24, align 8
  %280 = call i32 @moved_descendant_collect(i32** %44, %struct.TYPE_10__* %276, i8* %277, i32 0, i32* %278, i32* %279)
  %281 = call i32 @SVN_ERR(i32 %280)
  %282 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %283 = load i8*, i8** %14, align 8
  %284 = load i64, i64* %36, align 8
  %285 = load i8*, i8** %37, align 8
  %286 = load i32, i32* %15, align 4
  %287 = load i32*, i32** %44, align 8
  %288 = load i32*, i32** %24, align 8
  %289 = call i32 @moved_descendant_commit(%struct.TYPE_10__* %282, i8* %283, i64 %284, i8* %285, i32 %286, i32* %287, i32* %288)
  %290 = call i32 @SVN_ERR(i32 %289)
  br label %291

291:                                              ; preds = %275, %271
  %292 = load i32, i32* %40, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %311

294:                                              ; preds = %291
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @STMT_CLEAR_MOVED_TO_FROM_DEST, align 4
  %299 = call i32 @svn_sqlite__get_statement(i32** %35, i32 %297, i32 %298)
  %300 = call i32 @SVN_ERR(i32 %299)
  %301 = load i32*, i32** %35, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i8*, i8** %14, align 8
  %306 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %301, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %304, i8* %305)
  %307 = call i32 @SVN_ERR(i32 %306)
  %308 = load i32*, i32** %35, align 8
  %309 = call i32 @svn_sqlite__step_done(i32* %308)
  %310 = call i32 @SVN_ERR(i32 %309)
  br label %311

311:                                              ; preds = %294, %291
  br label %312

312:                                              ; preds = %311, %178
  %313 = load i8*, i8** %14, align 8
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %312
  store i8* null, i8** %31, align 8
  br label %322

318:                                              ; preds = %312
  %319 = load i8*, i8** %14, align 8
  %320 = load i32*, i32** %24, align 8
  %321 = call i8* @svn_relpath_dirname(i8* %319, i32* %320)
  store i8* %321, i8** %31, align 8
  br label %322

322:                                              ; preds = %318, %317
  %323 = load i64, i64* %39, align 8
  %324 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %325 = icmp ne i64 %323, %324
  br i1 %325, label %326, label %390

326:                                              ; preds = %322
  %327 = load i64, i64* %39, align 8
  %328 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %326
  %331 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  br label %334

332:                                              ; preds = %326
  %333 = load i64, i64* @svn_wc__db_status_normal, align 8
  br label %334

334:                                              ; preds = %332, %330
  %335 = phi i64 [ %331, %330 ], [ %333, %332 ]
  store i64 %335, i64* %32, align 8
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @STMT_APPLY_CHANGES_TO_BASE_NODE, align 4
  %340 = call i32 @svn_sqlite__get_statement(i32** %35, i32 %338, i32 %339)
  %341 = call i32 @SVN_ERR(i32 %340)
  %342 = load i32*, i32** %35, align 8
  %343 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i8*, i8** %14, align 8
  %347 = load i8*, i8** %31, align 8
  %348 = load i64, i64* %36, align 8
  %349 = load i8*, i8** %37, align 8
  %350 = load i32, i32* %15, align 4
  %351 = load i32, i32* @presence_map, align 4
  %352 = load i64, i64* %32, align 8
  %353 = load i8*, i8** %34, align 8
  %354 = load i32, i32* @kind_map, align 4
  %355 = load i64, i64* %33, align 8
  %356 = load i32, i32* %16, align 4
  %357 = load i32, i32* %17, align 4
  %358 = load i8*, i8** %18, align 8
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %342, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %345, i8* %346, i8* %347, i64 %348, i8* %349, i32 %350, i32 %351, i64 %352, i8* %353, i32 %354, i64 %355, i32 %356, i32 %357, i8* %358, i32* %360, i32 %362)
  %364 = call i32 @SVN_ERR(i32 %363)
  %365 = load i32*, i32** %35, align 8
  %366 = load i32*, i32** %19, align 8
  %367 = load i32*, i32** %24, align 8
  %368 = call i32 @svn_sqlite__bind_checksum(i32* %365, i32 13, i32* %366, i32* %367)
  %369 = call i32 @SVN_ERR(i32 %368)
  %370 = load i32*, i32** %35, align 8
  %371 = load i32*, i32** %20, align 8
  %372 = load i32*, i32** %24, align 8
  %373 = call i32 @svn_sqlite__bind_properties(i32* %370, i32 15, i32* %371, i32* %372)
  %374 = call i32 @SVN_ERR(i32 %373)
  %375 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = icmp ne i32* %376, null
  br i1 %377, label %378, label %386

378:                                              ; preds = %334
  %379 = load i32*, i32** %35, align 8
  %380 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @svn_sqlite__bind_blob(i32* %379, i32 17, i32* %381, i32 %383)
  %385 = call i32 @SVN_ERR(i32 %384)
  br label %386

386:                                              ; preds = %378, %334
  %387 = load i32*, i32** %35, align 8
  %388 = call i32 @svn_sqlite__step_done(i32* %387)
  %389 = call i32 @SVN_ERR(i32 %388)
  br label %408

390:                                              ; preds = %322
  %391 = call i32 @blank_ibb(%struct.insert_base_baton_t* %45)
  %392 = load i64, i64* %36, align 8
  %393 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %45, i32 0, i32 4
  store i64 %392, i64* %393, align 8
  %394 = load i32, i32* @svn_wc__db_status_not_present, align 4
  %395 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %45, i32 0, i32 3
  store i32 %394, i32* %395, align 8
  %396 = load i64, i64* %33, align 8
  %397 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %45, i32 0, i32 2
  store i64 %396, i64* %397, align 8
  %398 = load i8*, i8** %37, align 8
  %399 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %45, i32 0, i32 0
  store i8* %398, i8** %399, align 8
  %400 = load i32, i32* %15, align 4
  %401 = getelementptr inbounds %struct.insert_base_baton_t, %struct.insert_base_baton_t* %45, i32 0, i32 1
  store i32 %400, i32* %401, align 8
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %403 = load i8*, i8** %14, align 8
  %404 = load i32*, i32** %24, align 8
  %405 = call i32 @insert_base_node(%struct.insert_base_baton_t* %45, %struct.TYPE_10__* %402, i8* %403, i32* %404)
  %406 = call i32 @SVN_ERR(i32 %405)
  %407 = load i32, i32* @FALSE, align 4
  store i32 %407, i32* %21, align 4
  br label %408

408:                                              ; preds = %390, %386
  %409 = load i32, i32* %27, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %456

411:                                              ; preds = %408
  %412 = load i32, i32* %21, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %438

414:                                              ; preds = %411
  %415 = load i8*, i8** %30, align 8
  %416 = icmp ne i8* %415, null
  br i1 %416, label %417, label %438

417:                                              ; preds = %414
  %418 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %419 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @STMT_RESET_ACTUAL_WITH_CHANGELIST, align 4
  %422 = call i32 @svn_sqlite__get_statement(i32** %35, i32 %420, i32 %421)
  %423 = call i32 @SVN_ERR(i32 %422)
  %424 = load i32*, i32** %35, align 8
  %425 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %426 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %425, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = load i8*, i8** %14, align 8
  %429 = load i8*, i8** %14, align 8
  %430 = load i32*, i32** %24, align 8
  %431 = call i8* @svn_relpath_dirname(i8* %429, i32* %430)
  %432 = load i8*, i8** %30, align 8
  %433 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %424, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %427, i8* %428, i8* %431, i8* %432)
  %434 = call i32 @SVN_ERR(i32 %433)
  %435 = load i32*, i32** %35, align 8
  %436 = call i32 @svn_sqlite__step_done(i32* %435)
  %437 = call i32 @SVN_ERR(i32 %436)
  br label %455

438:                                              ; preds = %414, %411
  %439 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %440 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @STMT_DELETE_ACTUAL_NODE, align 4
  %443 = call i32 @svn_sqlite__get_statement(i32** %35, i32 %441, i32 %442)
  %444 = call i32 @SVN_ERR(i32 %443)
  %445 = load i32*, i32** %35, align 8
  %446 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %447 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %446, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = load i8*, i8** %14, align 8
  %450 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %445, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %448, i8* %449)
  %451 = call i32 @SVN_ERR(i32 %450)
  %452 = load i32*, i32** %35, align 8
  %453 = call i32 @svn_sqlite__step_done(i32* %452)
  %454 = call i32 @SVN_ERR(i32 %453)
  br label %455

455:                                              ; preds = %438, %417
  br label %456

456:                                              ; preds = %455, %408
  %457 = load i32, i32* %22, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %491, label %459

459:                                              ; preds = %456
  %460 = load i32, i32* %38, align 4
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %462, label %467

462:                                              ; preds = %459
  %463 = load i8*, i8** %14, align 8
  %464 = call i32 @relpath_depth(i8* %463)
  %465 = load i32, i32* %38, align 4
  %466 = icmp eq i32 %464, %465
  br label %467

467:                                              ; preds = %462, %459
  %468 = phi i1 [ false, %459 ], [ %466, %462 ]
  %469 = zext i1 %468 to i32
  store i32 %469, i32* %47, align 4
  %470 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %471 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* %47, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %477

475:                                              ; preds = %467
  %476 = load i32, i32* @STMT_DELETE_LOCK_RECURSIVELY, align 4
  br label %479

477:                                              ; preds = %467
  %478 = load i32, i32* @STMT_DELETE_LOCK, align 4
  br label %479

479:                                              ; preds = %477, %475
  %480 = phi i32 [ %476, %475 ], [ %478, %477 ]
  %481 = call i32 @svn_sqlite__get_statement(i32** %46, i32 %472, i32 %480)
  %482 = call i32 @SVN_ERR(i32 %481)
  %483 = load i32*, i32** %46, align 8
  %484 = load i64, i64* %36, align 8
  %485 = load i8*, i8** %37, align 8
  %486 = call i32 (i32*, i8*, i64, i8*, ...) @svn_sqlite__bindf(i32* %483, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %484, i8* %485)
  %487 = call i32 @SVN_ERR(i32 %486)
  %488 = load i32*, i32** %46, align 8
  %489 = call i32 @svn_sqlite__step_done(i32* %488)
  %490 = call i32 @SVN_ERR(i32 %489)
  br label %491

491:                                              ; preds = %479, %456
  %492 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %493 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = load i32*, i32** %23, align 8
  %496 = load i32*, i32** %24, align 8
  %497 = call i32 @add_work_items(i32 %494, i32* %495, i32* %496)
  %498 = call i32 @SVN_ERR(i32 %497)
  %499 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %499
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @determine_commit_repos_info(i64*, i8**, %struct.TYPE_10__*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #2

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i64, i8*, ...) #2

declare dso_local i32 @svn_sqlite__step_row(i32*) #2

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #2

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #2

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #2

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #2

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #2

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @svn_sqlite__column_blob(i32*, i32, i32*, i32*) #2

declare dso_local i32 @svn_sqlite__reset(i32*) #2

declare dso_local i32 @relpath_depth(i8*) #2

declare dso_local i32 @moved_descendant_collect(i32**, %struct.TYPE_10__*, i8*, i32, i32*, i32*) #2

declare dso_local i32* @apr_hash_first(i32*, i32*) #2

declare dso_local i32 @clear_moved_here(%struct.TYPE_10__*, i32, i32*) #2

declare dso_local i32 @apr_hash_this_key(i32*) #2

declare dso_local i32* @apr_hash_next(i32*) #2

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #2

declare dso_local i32 @svn_sqlite__step_done(i32*) #2

declare dso_local i32 @descendant_commit(%struct.TYPE_10__*, i8*, i32, i64, i8*, i32, i32*) #2

declare dso_local i32 @moved_descendant_commit(%struct.TYPE_10__*, i8*, i64, i8*, i32, i32*, i32*) #2

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #2

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, i32*, i32*) #2

declare dso_local i32 @svn_sqlite__bind_properties(i32*, i32, i32*, i32*) #2

declare dso_local i32 @svn_sqlite__bind_blob(i32*, i32, i32*, i32) #2

declare dso_local i32 @blank_ibb(%struct.insert_base_baton_t*) #2

declare dso_local i32 @insert_base_node(%struct.insert_base_baton_t*, %struct.TYPE_10__*, i8*, i32*) #2

declare dso_local i32 @add_work_items(i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
