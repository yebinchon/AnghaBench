; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_read_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_read_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32 }

@STMT_SELECT_NODE_INFO_WITH_LOCK = common dso_local global i32 0, align 4
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_SELECT_ACTUAL_NODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@presence_map = common dso_local global i32 0, align 4
@INVALID_REPOS_ID = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i8* null, align 8
@depth_map = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Corrupt data for '%s'\00", align 1
@svn_wc__db_status_normal = common dso_local global i8* null, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Error reading node '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i8**, i64*, i32*, i8**, i32*, i32*, i32*, i8**, i8**, i32**, i8**, i8**, i32*, i32*, i32**, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, i32*, i32*)* @read_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @read_info(i8** %0, i64* %1, i32* %2, i8** %3, i32* %4, i32* %5, i32* %6, i8** %7, i8** %8, i32** %9, i8** %10, i8** %11, i32* %12, i32* %13, i32** %14, i32* %15, i32* %16, i8** %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, %struct.TYPE_17__* %25, i8* %26, i32* %27, i32* %28) #0 {
  %30 = alloca i8**, align 8
  %31 = alloca i64*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8**, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i8**, align 8
  %38 = alloca i8**, align 8
  %39 = alloca i32**, align 8
  %40 = alloca i8**, align 8
  %41 = alloca i8**, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32**, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i8**, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32*, align 8
  %55 = alloca %struct.TYPE_17__*, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i32*, align 8
  %58 = alloca i32*, align 8
  %59 = alloca i32*, align 8
  %60 = alloca i32*, align 8
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca %struct.TYPE_18__*, align 8
  %64 = alloca i32, align 4
  %65 = alloca i64, align 8
  store i8** %0, i8*** %30, align 8
  store i64* %1, i64** %31, align 8
  store i32* %2, i32** %32, align 8
  store i8** %3, i8*** %33, align 8
  store i32* %4, i32** %34, align 8
  store i32* %5, i32** %35, align 8
  store i32* %6, i32** %36, align 8
  store i8** %7, i8*** %37, align 8
  store i8** %8, i8*** %38, align 8
  store i32** %9, i32*** %39, align 8
  store i8** %10, i8*** %40, align 8
  store i8** %11, i8*** %41, align 8
  store i32* %12, i32** %42, align 8
  store i32* %13, i32** %43, align 8
  store i32** %14, i32*** %44, align 8
  store i32* %15, i32** %45, align 8
  store i32* %16, i32** %46, align 8
  store i8** %17, i8*** %47, align 8
  store i32* %18, i32** %48, align 8
  store i32* %19, i32** %49, align 8
  store i32* %20, i32** %50, align 8
  store i32* %21, i32** %51, align 8
  store i32* %22, i32** %52, align 8
  store i32* %23, i32** %53, align 8
  store i32* %24, i32** %54, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %55, align 8
  store i8* %26, i8** %56, align 8
  store i32* %27, i32** %57, align 8
  store i32* %28, i32** %58, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %63, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32**, i32*** %44, align 8
  %70 = icmp ne i32** %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %29
  %72 = load i32, i32* @STMT_SELECT_NODE_INFO_WITH_LOCK, align 4
  br label %75

73:                                               ; preds = %29
  %74 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = call %struct.TYPE_18__* @svn_sqlite__get_statement(i32** %59, i32 %68, i32 %76)
  %78 = call i32 @SVN_ERR(%struct.TYPE_18__* %77)
  %79 = load i32*, i32** %59, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %56, align 8
  %84 = call %struct.TYPE_18__* @svn_sqlite__bindf(i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %82, i8* %83)
  %85 = call i32 @SVN_ERR(%struct.TYPE_18__* %84)
  %86 = load i32*, i32** %59, align 8
  %87 = call %struct.TYPE_18__* @svn_sqlite__step(i32* %61, i32* %86)
  %88 = call i32 @SVN_ERR(%struct.TYPE_18__* %87)
  %89 = load i8**, i8*** %47, align 8
  %90 = icmp ne i8** %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %75
  %92 = load i32*, i32** %48, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32*, i32** %51, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %94, %91, %75
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @STMT_SELECT_ACTUAL_NODE, align 4
  %102 = call %struct.TYPE_18__* @svn_sqlite__get_statement(i32** %60, i32 %100, i32 %101)
  %103 = call i32 @SVN_ERR(%struct.TYPE_18__* %102)
  %104 = load i32*, i32** %60, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %56, align 8
  %109 = call %struct.TYPE_18__* @svn_sqlite__bindf(i32* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %107, i8* %108)
  %110 = call i32 @SVN_ERR(%struct.TYPE_18__* %109)
  %111 = load i32*, i32** %60, align 8
  %112 = call %struct.TYPE_18__* @svn_sqlite__step(i32* %62, i32* %111)
  %113 = call i32 @SVN_ERR(%struct.TYPE_18__* %112)
  br label %116

114:                                              ; preds = %94
  %115 = load i32, i32* @FALSE, align 4
  store i32 %115, i32* %62, align 4
  store i32* null, i32** %60, align 8
  br label %116

116:                                              ; preds = %114, %97
  %117 = load i32, i32* %61, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %444

119:                                              ; preds = %116
  %120 = load i32*, i32** %59, align 8
  %121 = call i32 @svn_sqlite__column_int(i32* %120, i32 0)
  store i32 %121, i32* %64, align 4
  %122 = load i32*, i32** %59, align 8
  %123 = load i32, i32* @kind_map, align 4
  %124 = call i8* @column_token_err(%struct.TYPE_18__** %63, i32* %122, i32 4, i32 %123)
  %125 = ptrtoint i8* %124 to i64
  store i64 %125, i64* %65, align 8
  %126 = load i8**, i8*** %30, align 8
  %127 = icmp ne i8** %126, null
  br i1 %127, label %128, label %143

128:                                              ; preds = %119
  %129 = load i32*, i32** %59, align 8
  %130 = load i32, i32* @presence_map, align 4
  %131 = call i8* @column_token_err(%struct.TYPE_18__** %63, i32* %129, i32 3, i32 %130)
  %132 = load i8**, i8*** %30, align 8
  store i8* %131, i8** %132, align 8
  %133 = load i32, i32* %64, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %137 = load i8**, i8*** %30, align 8
  %138 = load i8**, i8*** %30, align 8
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @convert_to_working_status(i8** %137, i8* %139)
  %141 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %136, i32 %140)
  store %struct.TYPE_18__* %141, %struct.TYPE_18__** %63, align 8
  br label %142

142:                                              ; preds = %135, %128
  br label %143

143:                                              ; preds = %142, %119
  %144 = load i64*, i64** %31, align 8
  %145 = icmp ne i64* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i64, i64* %65, align 8
  %148 = load i64*, i64** %31, align 8
  store i64 %147, i64* %148, align 8
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %64, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load i32*, i32** %34, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i32, i32* @INVALID_REPOS_ID, align 4
  %157 = load i32*, i32** %34, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32*, i32** %32, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %163 = load i32*, i32** %32, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i8**, i8*** %33, align 8
  %166 = icmp ne i8** %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i8**, i8*** %33, align 8
  store i8* null, i8** %168, align 8
  br label %169

169:                                              ; preds = %167, %164
  br label %177

170:                                              ; preds = %149
  %171 = load i32*, i32** %34, align 8
  %172 = load i32*, i32** %32, align 8
  %173 = load i8**, i8*** %33, align 8
  %174 = load i32*, i32** %59, align 8
  %175 = load i32*, i32** %57, align 8
  %176 = call i32 @repos_location_from_columns(i32* %171, i32* %172, i8** %173, i32* %174, i32 1, i32 5, i32 2, i32* %175)
  br label %177

177:                                              ; preds = %170, %169
  %178 = load i32*, i32** %35, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i32*, i32** %59, align 8
  %182 = call i32 @svn_sqlite__column_revnum(i32* %181, i32 8)
  %183 = load i32*, i32** %35, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %180, %177
  %185 = load i32*, i32** %36, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32*, i32** %59, align 8
  %189 = call i32 @svn_sqlite__column_int64(i32* %188, i32 9)
  %190 = load i32*, i32** %36, align 8
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %187, %184
  %192 = load i8**, i8*** %37, align 8
  %193 = icmp ne i8** %192, null
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32*, i32** %59, align 8
  %196 = load i32*, i32** %57, align 8
  %197 = call i8* @svn_sqlite__column_text(i32* %195, i32 10, i32* %196)
  %198 = load i8**, i8*** %37, align 8
  store i8* %197, i8** %198, align 8
  br label %199

199:                                              ; preds = %194, %191
  %200 = load i32*, i32** %46, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %199
  %203 = load i32*, i32** %59, align 8
  %204 = call i32 @svn_sqlite__column_int64(i32* %203, i32 13)
  %205 = load i32*, i32** %46, align 8
  store i32 %204, i32* %205, align 4
  br label %206

206:                                              ; preds = %202, %199
  %207 = load i8**, i8*** %38, align 8
  %208 = icmp ne i8** %207, null
  br i1 %208, label %209, label %230

209:                                              ; preds = %206
  %210 = load i64, i64* %65, align 8
  %211 = load i64, i64* @svn_node_dir, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i8*, i8** @svn_depth_unknown, align 8
  %215 = load i8**, i8*** %38, align 8
  store i8* %214, i8** %215, align 8
  br label %229

216:                                              ; preds = %209
  %217 = load i32*, i32** %59, align 8
  %218 = call i64 @svn_sqlite__column_is_null(i32* %217, i32 11)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i8*, i8** @svn_depth_unknown, align 8
  %222 = load i8**, i8*** %38, align 8
  store i8* %221, i8** %222, align 8
  br label %228

223:                                              ; preds = %216
  %224 = load i32*, i32** %59, align 8
  %225 = load i32, i32* @depth_map, align 4
  %226 = call i8* @column_token_err(%struct.TYPE_18__** %63, i32* %224, i32 11, i32 %225)
  %227 = load i8**, i8*** %38, align 8
  store i8* %226, i8** %227, align 8
  br label %228

228:                                              ; preds = %223, %220
  br label %229

229:                                              ; preds = %228, %213
  br label %230

230:                                              ; preds = %229, %206
  %231 = load i32**, i32*** %39, align 8
  %232 = icmp ne i32** %231, null
  br i1 %232, label %233, label %247

233:                                              ; preds = %230
  %234 = load i64, i64* %65, align 8
  %235 = load i64, i64* @svn_node_file, align 8
  %236 = icmp ne i64 %234, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = load i32**, i32*** %39, align 8
  store i32* null, i32** %238, align 8
  br label %246

239:                                              ; preds = %233
  %240 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %241 = load i32**, i32*** %39, align 8
  %242 = load i32*, i32** %59, align 8
  %243 = load i32*, i32** %57, align 8
  %244 = call i32 @svn_sqlite__column_checksum(i32** %241, i32* %242, i32 6, i32* %243)
  %245 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %240, i32 %244)
  store %struct.TYPE_18__* %245, %struct.TYPE_18__** %63, align 8
  br label %246

246:                                              ; preds = %239, %237
  br label %247

247:                                              ; preds = %246, %230
  %248 = load i32*, i32** %45, align 8
  %249 = icmp ne i32* %248, null
  br i1 %249, label %250, label %254

250:                                              ; preds = %247
  %251 = load i32*, i32** %59, align 8
  %252 = call i32 @get_recorded_size(i32* %251, i32 7)
  %253 = load i32*, i32** %45, align 8
  store i32 %252, i32* %253, align 4
  br label %254

254:                                              ; preds = %250, %247
  %255 = load i8**, i8*** %40, align 8
  %256 = icmp ne i8** %255, null
  br i1 %256, label %257, label %269

257:                                              ; preds = %254
  %258 = load i64, i64* %65, align 8
  %259 = load i64, i64* @svn_node_symlink, align 8
  %260 = icmp ne i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %257
  %262 = load i8**, i8*** %40, align 8
  store i8* null, i8** %262, align 8
  br label %268

263:                                              ; preds = %257
  %264 = load i32*, i32** %59, align 8
  %265 = load i32*, i32** %57, align 8
  %266 = call i8* @svn_sqlite__column_text(i32* %264, i32 12, i32* %265)
  %267 = load i8**, i8*** %40, align 8
  store i8* %266, i8** %267, align 8
  br label %268

268:                                              ; preds = %263, %261
  br label %269

269:                                              ; preds = %268, %254
  %270 = load i8**, i8*** %47, align 8
  %271 = icmp ne i8** %270, null
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load i32, i32* %62, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load i32*, i32** %60, align 8
  %277 = load i32*, i32** %57, align 8
  %278 = call i8* @svn_sqlite__column_text(i32* %276, i32 0, i32* %277)
  %279 = load i8**, i8*** %47, align 8
  store i8* %278, i8** %279, align 8
  br label %282

280:                                              ; preds = %272
  %281 = load i8**, i8*** %47, align 8
  store i8* null, i8** %281, align 8
  br label %282

282:                                              ; preds = %280, %275
  br label %283

283:                                              ; preds = %282, %269
  %284 = load i32, i32* %64, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %283
  %287 = load i32*, i32** %42, align 8
  %288 = icmp ne i32* %287, null
  br i1 %288, label %289, label %292

289:                                              ; preds = %286
  %290 = load i32, i32* @INVALID_REPOS_ID, align 4
  %291 = load i32*, i32** %42, align 8
  store i32 %290, i32* %291, align 4
  br label %292

292:                                              ; preds = %289, %286
  %293 = load i32*, i32** %43, align 8
  %294 = icmp ne i32* %293, null
  br i1 %294, label %295, label %298

295:                                              ; preds = %292
  %296 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %297 = load i32*, i32** %43, align 8
  store i32 %296, i32* %297, align 4
  br label %298

298:                                              ; preds = %295, %292
  %299 = load i8**, i8*** %41, align 8
  %300 = icmp ne i8** %299, null
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = load i8**, i8*** %41, align 8
  store i8* null, i8** %302, align 8
  br label %303

303:                                              ; preds = %301, %298
  br label %311

304:                                              ; preds = %283
  %305 = load i32*, i32** %42, align 8
  %306 = load i32*, i32** %43, align 8
  %307 = load i8**, i8*** %41, align 8
  %308 = load i32*, i32** %59, align 8
  %309 = load i32*, i32** %57, align 8
  %310 = call i32 @repos_location_from_columns(i32* %305, i32* %306, i8** %307, i32* %308, i32 1, i32 5, i32 2, i32* %309)
  br label %311

311:                                              ; preds = %304, %303
  %312 = load i32*, i32** %51, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %326

314:                                              ; preds = %311
  %315 = load i32, i32* %62, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load i32*, i32** %60, align 8
  %319 = call i64 @svn_sqlite__column_is_null(i32* %318, i32 1)
  %320 = icmp ne i64 %319, 0
  %321 = xor i1 %320, true
  br label %322

322:                                              ; preds = %317, %314
  %323 = phi i1 [ false, %314 ], [ %321, %317 ]
  %324 = zext i1 %323 to i32
  %325 = load i32*, i32** %51, align 8
  store i32 %324, i32* %325, align 4
  br label %326

326:                                              ; preds = %322, %311
  %327 = load i32*, i32** %50, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %333

329:                                              ; preds = %326
  %330 = load i32*, i32** %59, align 8
  %331 = call i32 @SQLITE_PROPERTIES_AVAILABLE(i32* %330, i32 14)
  %332 = load i32*, i32** %50, align 8
  store i32 %331, i32* %332, align 4
  br label %333

333:                                              ; preds = %329, %326
  %334 = load i32*, i32** %48, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %350

336:                                              ; preds = %333
  %337 = load i32, i32* %62, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %336
  %340 = load i32*, i32** %60, align 8
  %341 = call i64 @svn_sqlite__column_is_null(i32* %340, i32 2)
  %342 = icmp ne i64 %341, 0
  %343 = xor i1 %342, true
  %344 = zext i1 %343 to i32
  %345 = load i32*, i32** %48, align 8
  store i32 %344, i32* %345, align 4
  br label %349

346:                                              ; preds = %336
  %347 = load i32, i32* @FALSE, align 4
  %348 = load i32*, i32** %48, align 8
  store i32 %347, i32* %348, align 4
  br label %349

349:                                              ; preds = %346, %339
  br label %350

350:                                              ; preds = %349, %333
  %351 = load i32**, i32*** %44, align 8
  %352 = icmp ne i32** %351, null
  br i1 %352, label %353, label %364

353:                                              ; preds = %350
  %354 = load i32, i32* %64, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = load i32**, i32*** %44, align 8
  store i32* null, i32** %357, align 8
  br label %363

358:                                              ; preds = %353
  %359 = load i32*, i32** %59, align 8
  %360 = load i32*, i32** %57, align 8
  %361 = call i32* @lock_from_columns(i32* %359, i32 17, i32 18, i32 19, i32 20, i32* %360)
  %362 = load i32**, i32*** %44, align 8
  store i32* %361, i32** %362, align 8
  br label %363

363:                                              ; preds = %358, %356
  br label %364

364:                                              ; preds = %363, %350
  %365 = load i32*, i32** %54, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %367, label %372

367:                                              ; preds = %364
  %368 = load i32, i32* %64, align 4
  %369 = icmp ne i32 %368, 0
  %370 = zext i1 %369 to i32
  %371 = load i32*, i32** %54, align 8
  store i32 %370, i32* %371, align 4
  br label %372

372:                                              ; preds = %367, %364
  %373 = load i32*, i32** %49, align 8
  %374 = icmp ne i32* %373, null
  br i1 %374, label %375, label %387

375:                                              ; preds = %372
  %376 = load i32, i32* %64, align 4
  %377 = icmp sgt i32 %376, 0
  br i1 %377, label %378, label %383

378:                                              ; preds = %375
  %379 = load i32, i32* %64, align 4
  %380 = load i8*, i8** %56, align 8
  %381 = call i32 @relpath_depth(i8* %380)
  %382 = icmp eq i32 %379, %381
  br label %383

383:                                              ; preds = %378, %375
  %384 = phi i1 [ false, %375 ], [ %382, %378 ]
  %385 = zext i1 %384 to i32
  %386 = load i32*, i32** %49, align 8
  store i32 %385, i32* %386, align 4
  br label %387

387:                                              ; preds = %383, %372
  %388 = load i32*, i32** %52, align 8
  %389 = icmp ne i32* %388, null
  br i1 %389, label %393, label %390

390:                                              ; preds = %387
  %391 = load i32*, i32** %53, align 8
  %392 = icmp ne i32* %391, null
  br i1 %392, label %393, label %443

393:                                              ; preds = %390, %387
  %394 = load i32*, i32** %53, align 8
  %395 = icmp ne i32* %394, null
  br i1 %395, label %396, label %399

396:                                              ; preds = %393
  %397 = load i32, i32* @FALSE, align 4
  %398 = load i32*, i32** %53, align 8
  store i32 %397, i32* %398, align 4
  br label %399

399:                                              ; preds = %396, %393
  br label %400

400:                                              ; preds = %433, %399
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %402 = icmp ne %struct.TYPE_18__* %401, null
  br i1 %402, label %406, label %403

403:                                              ; preds = %400
  %404 = load i32, i32* %64, align 4
  %405 = icmp ne i32 %404, 0
  br label %406

406:                                              ; preds = %403, %400
  %407 = phi i1 [ false, %400 ], [ %405, %403 ]
  br i1 %407, label %408, label %434

408:                                              ; preds = %406
  %409 = load i32*, i32** %59, align 8
  %410 = call %struct.TYPE_18__* @svn_sqlite__step(i32* %61, i32* %409)
  store %struct.TYPE_18__* %410, %struct.TYPE_18__** %63, align 8
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %412 = icmp ne %struct.TYPE_18__* %411, null
  br i1 %412, label %416, label %413

413:                                              ; preds = %408
  %414 = load i32, i32* %61, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %413, %408
  br label %434

417:                                              ; preds = %413
  %418 = load i32*, i32** %59, align 8
  %419 = call i32 @svn_sqlite__column_int(i32* %418, i32 0)
  store i32 %419, i32* %64, align 4
  %420 = load i32*, i32** %53, align 8
  %421 = icmp ne i32* %420, null
  br i1 %421, label %422, label %433

422:                                              ; preds = %417
  %423 = load i32, i32* %64, align 4
  %424 = icmp sgt i32 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %422
  %426 = load i32, i32* @TRUE, align 4
  %427 = load i32*, i32** %53, align 8
  store i32 %426, i32* %427, align 4
  br label %428

428:                                              ; preds = %425, %422
  %429 = load i32*, i32** %52, align 8
  %430 = icmp ne i32* %429, null
  br i1 %430, label %432, label %431

431:                                              ; preds = %428
  br label %434

432:                                              ; preds = %428
  br label %433

433:                                              ; preds = %432, %417
  br label %400

434:                                              ; preds = %431, %416, %406
  %435 = load i32*, i32** %52, align 8
  %436 = icmp ne i32* %435, null
  br i1 %436, label %437, label %442

437:                                              ; preds = %434
  %438 = load i32, i32* %64, align 4
  %439 = icmp eq i32 %438, 0
  %440 = zext i1 %439 to i32
  %441 = load i32*, i32** %52, align 8
  store i32 %440, i32* %441, align 4
  br label %442

442:                                              ; preds = %437, %434
  br label %443

443:                                              ; preds = %442, %390
  br label %609

444:                                              ; preds = %116
  %445 = load i32, i32* %62, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %600

447:                                              ; preds = %444
  %448 = load i32*, i32** %60, align 8
  %449 = call i64 @svn_sqlite__column_is_null(i32* %448, i32 2)
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %459

451:                                              ; preds = %447
  %452 = load i64, i64* @SVN_ERR_WC_CORRUPT, align 8
  %453 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %454 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %455 = load i8*, i8** %56, align 8
  %456 = load i32*, i32** %58, align 8
  %457 = call i32 @path_for_error_message(%struct.TYPE_17__* %454, i8* %455, i32* %456)
  %458 = call %struct.TYPE_18__* @svn_error_createf(i64 %452, i32* null, i32 %453, i32 %457)
  store %struct.TYPE_18__* %458, %struct.TYPE_18__** %63, align 8
  br label %459

459:                                              ; preds = %451, %447
  %460 = load i32*, i32** %48, align 8
  %461 = call i32 @SVN_ERR_ASSERT(i32* %460)
  %462 = load i8**, i8*** %30, align 8
  %463 = icmp ne i8** %462, null
  br i1 %463, label %464, label %467

464:                                              ; preds = %459
  %465 = load i8*, i8** @svn_wc__db_status_normal, align 8
  %466 = load i8**, i8*** %30, align 8
  store i8* %465, i8** %466, align 8
  br label %467

467:                                              ; preds = %464, %459
  %468 = load i64*, i64** %31, align 8
  %469 = icmp ne i64* %468, null
  br i1 %469, label %470, label %473

470:                                              ; preds = %467
  %471 = load i64, i64* @svn_node_unknown, align 8
  %472 = load i64*, i64** %31, align 8
  store i64 %471, i64* %472, align 8
  br label %473

473:                                              ; preds = %470, %467
  %474 = load i32*, i32** %32, align 8
  %475 = icmp ne i32* %474, null
  br i1 %475, label %476, label %479

476:                                              ; preds = %473
  %477 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %478 = load i32*, i32** %32, align 8
  store i32 %477, i32* %478, align 4
  br label %479

479:                                              ; preds = %476, %473
  %480 = load i8**, i8*** %33, align 8
  %481 = icmp ne i8** %480, null
  br i1 %481, label %482, label %484

482:                                              ; preds = %479
  %483 = load i8**, i8*** %33, align 8
  store i8* null, i8** %483, align 8
  br label %484

484:                                              ; preds = %482, %479
  %485 = load i32*, i32** %34, align 8
  %486 = icmp ne i32* %485, null
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = load i32, i32* @INVALID_REPOS_ID, align 4
  %489 = load i32*, i32** %34, align 8
  store i32 %488, i32* %489, align 4
  br label %490

490:                                              ; preds = %487, %484
  %491 = load i32*, i32** %35, align 8
  %492 = icmp ne i32* %491, null
  br i1 %492, label %493, label %496

493:                                              ; preds = %490
  %494 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %495 = load i32*, i32** %35, align 8
  store i32 %494, i32* %495, align 4
  br label %496

496:                                              ; preds = %493, %490
  %497 = load i32*, i32** %36, align 8
  %498 = icmp ne i32* %497, null
  br i1 %498, label %499, label %501

499:                                              ; preds = %496
  %500 = load i32*, i32** %36, align 8
  store i32 0, i32* %500, align 4
  br label %501

501:                                              ; preds = %499, %496
  %502 = load i8**, i8*** %38, align 8
  %503 = icmp ne i8** %502, null
  br i1 %503, label %504, label %507

504:                                              ; preds = %501
  %505 = load i8*, i8** @svn_depth_unknown, align 8
  %506 = load i8**, i8*** %38, align 8
  store i8* %505, i8** %506, align 8
  br label %507

507:                                              ; preds = %504, %501
  %508 = load i32**, i32*** %39, align 8
  %509 = icmp ne i32** %508, null
  br i1 %509, label %510, label %512

510:                                              ; preds = %507
  %511 = load i32**, i32*** %39, align 8
  store i32* null, i32** %511, align 8
  br label %512

512:                                              ; preds = %510, %507
  %513 = load i8**, i8*** %40, align 8
  %514 = icmp ne i8** %513, null
  br i1 %514, label %515, label %517

515:                                              ; preds = %512
  %516 = load i8**, i8*** %40, align 8
  store i8* null, i8** %516, align 8
  br label %517

517:                                              ; preds = %515, %512
  %518 = load i8**, i8*** %41, align 8
  %519 = icmp ne i8** %518, null
  br i1 %519, label %520, label %522

520:                                              ; preds = %517
  %521 = load i8**, i8*** %41, align 8
  store i8* null, i8** %521, align 8
  br label %522

522:                                              ; preds = %520, %517
  %523 = load i32*, i32** %42, align 8
  %524 = icmp ne i32* %523, null
  br i1 %524, label %525, label %528

525:                                              ; preds = %522
  %526 = load i32, i32* @INVALID_REPOS_ID, align 4
  %527 = load i32*, i32** %42, align 8
  store i32 %526, i32* %527, align 4
  br label %528

528:                                              ; preds = %525, %522
  %529 = load i32*, i32** %43, align 8
  %530 = icmp ne i32* %529, null
  br i1 %530, label %531, label %534

531:                                              ; preds = %528
  %532 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %533 = load i32*, i32** %43, align 8
  store i32 %532, i32* %533, align 4
  br label %534

534:                                              ; preds = %531, %528
  %535 = load i32**, i32*** %44, align 8
  %536 = icmp ne i32** %535, null
  br i1 %536, label %537, label %539

537:                                              ; preds = %534
  %538 = load i32**, i32*** %44, align 8
  store i32* null, i32** %538, align 8
  br label %539

539:                                              ; preds = %537, %534
  %540 = load i32*, i32** %45, align 8
  %541 = icmp ne i32* %540, null
  br i1 %541, label %542, label %544

542:                                              ; preds = %539
  %543 = load i32*, i32** %45, align 8
  store i32 0, i32* %543, align 4
  br label %544

544:                                              ; preds = %542, %539
  %545 = load i32*, i32** %46, align 8
  %546 = icmp ne i32* %545, null
  br i1 %546, label %547, label %549

547:                                              ; preds = %544
  %548 = load i32*, i32** %46, align 8
  store i32 0, i32* %548, align 4
  br label %549

549:                                              ; preds = %547, %544
  %550 = load i8**, i8*** %47, align 8
  %551 = icmp ne i8** %550, null
  br i1 %551, label %552, label %557

552:                                              ; preds = %549
  %553 = load i32*, i32** %60, align 8
  %554 = load i32*, i32** %57, align 8
  %555 = call i8* @svn_sqlite__column_text(i32* %553, i32 0, i32* %554)
  %556 = load i8**, i8*** %47, align 8
  store i8* %555, i8** %556, align 8
  br label %557

557:                                              ; preds = %552, %549
  %558 = load i32*, i32** %49, align 8
  %559 = icmp ne i32* %558, null
  br i1 %559, label %560, label %563

560:                                              ; preds = %557
  %561 = load i32, i32* @FALSE, align 4
  %562 = load i32*, i32** %49, align 8
  store i32 %561, i32* %562, align 4
  br label %563

563:                                              ; preds = %560, %557
  %564 = load i32*, i32** %50, align 8
  %565 = icmp ne i32* %564, null
  br i1 %565, label %566, label %569

566:                                              ; preds = %563
  %567 = load i32, i32* @FALSE, align 4
  %568 = load i32*, i32** %50, align 8
  store i32 %567, i32* %568, align 4
  br label %569

569:                                              ; preds = %566, %563
  %570 = load i32*, i32** %51, align 8
  %571 = icmp ne i32* %570, null
  br i1 %571, label %572, label %575

572:                                              ; preds = %569
  %573 = load i32, i32* @FALSE, align 4
  %574 = load i32*, i32** %51, align 8
  store i32 %573, i32* %574, align 4
  br label %575

575:                                              ; preds = %572, %569
  %576 = load i32*, i32** %48, align 8
  %577 = icmp ne i32* %576, null
  br i1 %577, label %578, label %581

578:                                              ; preds = %575
  %579 = load i32, i32* @TRUE, align 4
  %580 = load i32*, i32** %48, align 8
  store i32 %579, i32* %580, align 4
  br label %581

581:                                              ; preds = %578, %575
  %582 = load i32*, i32** %52, align 8
  %583 = icmp ne i32* %582, null
  br i1 %583, label %584, label %587

584:                                              ; preds = %581
  %585 = load i32, i32* @FALSE, align 4
  %586 = load i32*, i32** %52, align 8
  store i32 %585, i32* %586, align 4
  br label %587

587:                                              ; preds = %584, %581
  %588 = load i32*, i32** %53, align 8
  %589 = icmp ne i32* %588, null
  br i1 %589, label %590, label %593

590:                                              ; preds = %587
  %591 = load i32, i32* @FALSE, align 4
  %592 = load i32*, i32** %53, align 8
  store i32 %591, i32* %592, align 4
  br label %593

593:                                              ; preds = %590, %587
  %594 = load i32*, i32** %54, align 8
  %595 = icmp ne i32* %594, null
  br i1 %595, label %596, label %599

596:                                              ; preds = %593
  %597 = load i32, i32* @FALSE, align 4
  %598 = load i32*, i32** %54, align 8
  store i32 %597, i32* %598, align 4
  br label %599

599:                                              ; preds = %596, %593
  br label %608

600:                                              ; preds = %444
  %601 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %602 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %603 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  %604 = load i8*, i8** %56, align 8
  %605 = load i32*, i32** %58, align 8
  %606 = call i32 @path_for_error_message(%struct.TYPE_17__* %603, i8* %604, i32* %605)
  %607 = call %struct.TYPE_18__* @svn_error_createf(i64 %601, i32* null, i32 %602, i32 %606)
  store %struct.TYPE_18__* %607, %struct.TYPE_18__** %63, align 8
  br label %608

608:                                              ; preds = %600, %599
  br label %609

609:                                              ; preds = %608, %443
  %610 = load i32*, i32** %60, align 8
  %611 = icmp ne i32* %610, null
  br i1 %611, label %612, label %617

612:                                              ; preds = %609
  %613 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %614 = load i32*, i32** %60, align 8
  %615 = call i32 @svn_sqlite__reset(i32* %614)
  %616 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %613, i32 %615)
  store %struct.TYPE_18__* %616, %struct.TYPE_18__** %63, align 8
  br label %617

617:                                              ; preds = %612, %609
  %618 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %619 = icmp ne %struct.TYPE_18__* %618, null
  br i1 %619, label %620, label %631

620:                                              ; preds = %617
  %621 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %622 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %621, i32 0, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %625 = icmp ne i64 %623, %624
  br i1 %625, label %626, label %631

626:                                              ; preds = %620
  %627 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %628 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %629 = load i8*, i8** %56, align 8
  %630 = call %struct.TYPE_18__* @svn_error_quick_wrapf(%struct.TYPE_18__* %627, i32 %628, i8* %629)
  store %struct.TYPE_18__* %630, %struct.TYPE_18__** %63, align 8
  br label %631

631:                                              ; preds = %626, %620, %617
  %632 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %633 = load i32*, i32** %59, align 8
  %634 = call i32 @svn_sqlite__reset(i32* %633)
  %635 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %632, i32 %634)
  %636 = call i32 @SVN_ERR(%struct.TYPE_18__* %635)
  %637 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_18__* %637
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local %struct.TYPE_18__* @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local %struct.TYPE_18__* @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @column_token_err(%struct.TYPE_18__**, i32*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @convert_to_working_status(i8**, i8*) #1

declare dso_local i32 @repos_location_from_columns(i32*, i32*, i8**, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i64 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_checksum(i32**, i32*, i32, i32*) #1

declare dso_local i32 @get_recorded_size(i32*, i32) #1

declare dso_local i32 @SQLITE_PROPERTIES_AVAILABLE(i32*, i32) #1

declare dso_local i32* @lock_from_columns(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local %struct.TYPE_18__* @svn_error_createf(i64, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_quick_wrapf(%struct.TYPE_18__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
