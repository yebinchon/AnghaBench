; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy_layer_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_copy_layer_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No write-lock in '%s'\00", align 1
@STMT_COPY_NODE_MOVE = common dso_local global i32 0, align 4
@STMT_SELECT_LAYER_FOR_REPLACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"isdsd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"isdsds\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@kind_map = common dso_local global i32 0, align 4
@STMT_SELECT_NO_LONGER_MOVED_RV = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@STMT_DELETE_NODE = common dso_local global i32 0, align 4
@STMT_REPLACE_WITH_BASE_DELETED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_copy_layer_internal(%struct.TYPE_9__* %0, i8* %1, i32 %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = call i32* @svn_pool_create(i32* %30)
  store i32* %31, i32** %19, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @relpath_depth(i8* %32)
  store i32 %33, i32* %20, align 4
  store i32* null, i32** %22, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load i32*, i32** %15, align 8
  %38 = call i32* @svn_wc__db_wclock_owns_lock_internal(i32* %21, %struct.TYPE_9__* %34, i8* %35, i32 %36, i32* %37)
  %39 = call i32 @SVN_ERR(i32* %38)
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %7
  %43 = load i32, i32* @SVN_ERR_WC_NOT_LOCKED, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32 @path_for_error_message(%struct.TYPE_9__* %45, i8* %46, i32* %47)
  %49 = call i32* @svn_error_createf(i32 %43, i32* null, i32 %44, i32 %48)
  store i32* %49, i32** %8, align 8
  br label %289

50:                                               ; preds = %7
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @STMT_COPY_NODE_MOVE, align 4
  %55 = call i32* @svn_sqlite__get_statement(i32** %17, i32 %53, i32 %54)
  %56 = call i32 @SVN_ERR(i32* %55)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @STMT_SELECT_LAYER_FOR_REPLACE, align 4
  %61 = call i32* @svn_sqlite__get_statement(i32** %16, i32 %59, i32 %60)
  %62 = call i32 @SVN_ERR(i32* %61)
  %63 = load i32*, i32** %16, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = load i32, i32* %20, align 4
  %71 = call i32* (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %66, i8* %67, i32 %68, i8* %69, i32 %70)
  %72 = call i32 @SVN_ERR(i32* %71)
  %73 = load i32*, i32** %16, align 8
  %74 = call i32* @svn_sqlite__step(i32* %18, i32* %73)
  %75 = call i32 @SVN_ERR(i32* %74)
  br label %76

76:                                               ; preds = %152, %50
  %77 = load i32, i32* %18, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %156

79:                                               ; preds = %76
  %80 = load i32*, i32** %19, align 8
  %81 = call i32 @svn_pool_clear(i32* %80)
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = call i8* @svn_sqlite__column_text(i32* %82, i32 0, i32* %83)
  store i8* %84, i8** %23, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = call i8* @svn_sqlite__column_text(i32* %85, i32 2, i32* %86)
  store i8* %87, i8** %24, align 8
  %88 = load i32*, i32** %17, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %23, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load i8*, i8** %24, align 8
  %95 = load i32, i32* %20, align 4
  %96 = load i8*, i8** %24, align 8
  %97 = load i32*, i32** %19, align 8
  %98 = call i32 @svn_relpath_dirname(i8* %96, i32* %97)
  %99 = call i32* (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %91, i8* %92, i32 %93, i8* %94, i32 %95, i32 %98)
  store i32* %99, i32** %22, align 8
  %100 = load i32*, i32** %22, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %79
  %103 = load i32*, i32** %17, align 8
  %104 = call i32* @svn_sqlite__step_done(i32* %103)
  store i32* %104, i32** %22, align 8
  br label %105

105:                                              ; preds = %102, %79
  %106 = load i32*, i32** %22, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %156

109:                                              ; preds = %105
  %110 = load i8*, i8** %24, align 8
  %111 = call i32 @relpath_depth(i8* %110)
  %112 = load i32, i32* %20, align 4
  %113 = add nsw i32 %112, 1
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %152

115:                                              ; preds = %109
  %116 = load i32*, i32** %16, align 8
  %117 = call i32 @svn_sqlite__column_is_null(i32* %116, i32 3)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %25, align 4
  %121 = load i32, i32* %25, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %134

123:                                              ; preds = %115
  %124 = load i32*, i32** %16, align 8
  %125 = load i32, i32* @presence_map, align 4
  %126 = call i8* @svn_sqlite__column_token(i32* %124, i32 3, i32 %125)
  %127 = ptrtoint i8* %126 to i64
  store i64 %127, i64* %26, align 8
  %128 = load i64, i64* %26, align 8
  %129 = load i64, i64* @svn_wc__db_status_normal, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %25, align 4
  br label %133

133:                                              ; preds = %131, %123
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i32, i32* %25, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %151, label %137

137:                                              ; preds = %134
  %138 = load i32*, i32** %16, align 8
  %139 = load i32, i32* @kind_map, align 4
  %140 = call i8* @svn_sqlite__column_token(i32* %138, i32 1, i32 %139)
  store i8* %140, i8** %27, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %142 = load i8*, i8** %24, align 8
  %143 = load i8*, i8** %27, align 8
  %144 = load i32, i32* %20, align 4
  %145 = load i32*, i32** %19, align 8
  %146 = call i32* @db_extend_parent_delete(%struct.TYPE_9__* %141, i8* %142, i8* %143, i32 %144, i32* %145)
  store i32* %146, i32** %22, align 8
  %147 = load i32*, i32** %22, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %137
  br label %156

150:                                              ; preds = %137
  br label %151

151:                                              ; preds = %150, %134
  br label %152

152:                                              ; preds = %151, %109
  %153 = load i32*, i32** %16, align 8
  %154 = call i32* @svn_sqlite__step(i32* %18, i32* %153)
  %155 = call i32 @SVN_ERR(i32* %154)
  br label %76

156:                                              ; preds = %149, %108, %76
  %157 = load i32*, i32** %22, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @svn_sqlite__reset(i32* %158)
  %160 = call i32* @svn_error_compose_create(i32* %157, i32 %159)
  %161 = call i32 @SVN_ERR(i32* %160)
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @STMT_SELECT_NO_LONGER_MOVED_RV, align 4
  %166 = call i32* @svn_sqlite__get_statement(i32** %16, i32 %164, i32 %165)
  %167 = call i32 @SVN_ERR(i32* %166)
  %168 = load i32*, i32** %16, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i8*, i8** %12, align 8
  %173 = load i32, i32* %20, align 4
  %174 = load i8*, i8** %10, align 8
  %175 = load i32, i32* %11, align 4
  %176 = call i32* (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %171, i8* %172, i32 %173, i8* %174, i32 %175)
  %177 = call i32 @SVN_ERR(i32* %176)
  %178 = load i32*, i32** %16, align 8
  %179 = call i32* @svn_sqlite__step(i32* %18, i32* %178)
  %180 = call i32 @SVN_ERR(i32* %179)
  br label %181

181:                                              ; preds = %259, %156
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %263

184:                                              ; preds = %181
  %185 = load i32*, i32** %19, align 8
  %186 = call i32 @svn_pool_clear(i32* %185)
  %187 = load i32*, i32** %16, align 8
  %188 = load i32*, i32** %19, align 8
  %189 = call i8* @svn_sqlite__column_text(i32* %187, i32 0, i32* %188)
  store i8* %189, i8** %28, align 8
  %190 = load i32*, i32** %16, align 8
  %191 = call i32 @svn_sqlite__column_is_null(i32* %190, i32 2)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %184
  %194 = load i32*, i32** %16, align 8
  %195 = load i32, i32* @presence_map, align 4
  %196 = call i8* @svn_sqlite__column_token(i32* %194, i32 2, i32 %195)
  %197 = ptrtoint i8* %196 to i64
  store i64 %197, i64* %29, align 8
  br label %200

198:                                              ; preds = %184
  %199 = load i64, i64* @svn_wc__db_status_not_present, align 8
  store i64 %199, i64* %29, align 8
  br label %200

200:                                              ; preds = %198, %193
  %201 = load i64, i64* %29, align 8
  %202 = load i64, i64* @svn_wc__db_status_normal, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load i64, i64* %29, align 8
  %206 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @STMT_DELETE_NODE, align 4
  %213 = call i32* @svn_sqlite__get_statement(i32** %17, i32 %211, i32 %212)
  store i32* %213, i32** %22, align 8
  br label %220

214:                                              ; preds = %204, %200
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @STMT_REPLACE_WITH_BASE_DELETED, align 4
  %219 = call i32* @svn_sqlite__get_statement(i32** %17, i32 %217, i32 %218)
  store i32* %219, i32** %22, align 8
  br label %220

220:                                              ; preds = %214, %208
  %221 = load i32*, i32** %22, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %231, label %223

223:                                              ; preds = %220
  %224 = load i32*, i32** %17, align 8
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i8*, i8** %28, align 8
  %229 = load i32, i32* %20, align 4
  %230 = call i32* (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %224, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %227, i8* %228, i32 %229)
  store i32* %230, i32** %22, align 8
  br label %231

231:                                              ; preds = %223, %220
  %232 = load i32*, i32** %22, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %231
  %235 = load i32*, i32** %17, align 8
  %236 = call i32* @svn_sqlite__step_done(i32* %235)
  store i32* %236, i32** %22, align 8
  br label %237

237:                                              ; preds = %234, %231
  %238 = load i32*, i32** %22, align 8
  %239 = icmp ne i32* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %263

241:                                              ; preds = %237
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %243 = load i8*, i8** %28, align 8
  %244 = load i32, i32* %20, align 4
  %245 = load i32*, i32** %15, align 8
  %246 = call i32* @clear_or_remove_actual(%struct.TYPE_9__* %242, i8* %243, i32 %244, i32* %245)
  store i32* %246, i32** %22, align 8
  %247 = load i32*, i32** %22, align 8
  %248 = icmp ne i32* %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %263

250:                                              ; preds = %241
  %251 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %252 = load i8*, i8** %28, align 8
  %253 = load i32, i32* %20, align 4
  %254 = load i32*, i32** %15, align 8
  %255 = call i32* @db_retract_parent_delete(%struct.TYPE_9__* %251, i8* %252, i32 %253, i32* %254)
  store i32* %255, i32** %22, align 8
  %256 = load i32*, i32** %22, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %250
  br label %263

259:                                              ; preds = %250
  %260 = load i32*, i32** %16, align 8
  %261 = call i32* @svn_sqlite__step(i32* %18, i32* %260)
  %262 = call i32 @SVN_ERR(i32* %261)
  br label %181

263:                                              ; preds = %258, %249, %240, %181
  %264 = load i32*, i32** %19, align 8
  %265 = call i32 @svn_pool_destroy(i32* %264)
  %266 = load i32*, i32** %22, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = call i32 @svn_sqlite__reset(i32* %267)
  %269 = call i32* @svn_error_compose_create(i32* %266, i32 %268)
  %270 = call i32 @SVN_ERR(i32* %269)
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %14, align 8
  %275 = load i32*, i32** %15, align 8
  %276 = call i32* @add_work_items(i32 %273, i32* %274, i32* %275)
  %277 = call i32 @SVN_ERR(i32* %276)
  %278 = load i32*, i32** %13, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %287

280:                                              ; preds = %263
  %281 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %282 = load i8*, i8** %12, align 8
  %283 = load i32*, i32** %13, align 8
  %284 = load i32*, i32** %15, align 8
  %285 = call i32* @svn_wc__db_mark_conflict_internal(%struct.TYPE_9__* %281, i8* %282, i32* %283, i32* %284)
  %286 = call i32 @SVN_ERR(i32* %285)
  br label %287

287:                                              ; preds = %280, %263
  %288 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %288, i32** %8, align 8
  br label %289

289:                                              ; preds = %287, %42
  %290 = load i32*, i32** %8, align 8
  ret i32* %290
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__db_wclock_owns_lock_internal(i32*, %struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_9__*, i8*, i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, ...) #1

declare dso_local i32* @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32* @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32* @db_extend_parent_delete(%struct.TYPE_9__*, i8*, i8*, i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @clear_or_remove_actual(%struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i32* @db_retract_parent_delete(%struct.TYPE_9__*, i8*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @add_work_items(i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__db_mark_conflict_internal(%struct.TYPE_9__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
