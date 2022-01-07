; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_remove_node_txn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_remove_node_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@STMT_SELECT_WORKING_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@TRUE = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@STMT_DELETE_NODE_RECURSIVE = common dso_local global i32 0, align 4
@STMT_DELETE_NODE_ALL_LAYERS = common dso_local global i32 0, align 4
@STMT_DELETE_ACTUAL_NODE_RECURSIVE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, i8*, i32*, i32, i32, i32*, i32*, i32* (i8*)*, i8*, i32*)* @remove_node_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @remove_node_txn(i32* %0, %struct.TYPE_7__* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32* %6, i32* %7, i32* (i8*)* %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32* (i8*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.TYPE_8__*, align 8
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* (i8*)* %8, i32* (i8*)** %20, align 8
  store i8* %9, i8** %21, align 8
  store i32* %10, i32** %22, align 8
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %11
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ne i32* %44, null
  br label %46

46:                                               ; preds = %43, %11
  %47 = phi i1 [ true, %11 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @SVN_ERR_ASSERT(i32 %48)
  %50 = load i32*, i32** %12, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @FALSE, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %255

58:                                               ; preds = %55
  %59 = load i32, i32* %17, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8*, i8** %14, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %255

66:                                               ; preds = %61, %58
  store i32* null, i32** %26, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @STMT_SELECT_WORKING_PRESENT, align 4
  %71 = call i32* @svn_sqlite__get_statement(i32** %23, i32 %69, i32 %70)
  %72 = call i32 @SVN_ERR(i32* %71)
  %73 = load i32*, i32** %23, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = call i32* @svn_sqlite__bindf(i32* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %76, i8* %77)
  %79 = call i32 @SVN_ERR(i32* %78)
  %80 = load i32*, i32** %23, align 8
  %81 = call i32* @svn_sqlite__step(i32* %24, i32* %80)
  %82 = call i32 @SVN_ERR(i32* %81)
  %83 = load i32*, i32** %22, align 8
  %84 = call i32* @svn_pool_create(i32* %83)
  store i32* %84, i32** %25, align 8
  br label %85

85:                                               ; preds = %243, %66
  %86 = load i32, i32* %24, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %247

88:                                               ; preds = %85
  %89 = load i32, i32* @TRUE, align 4
  store i32 %89, i32* %34, align 4
  store i32* null, i32** %35, align 8
  %90 = load i32*, i32** %25, align 8
  %91 = call i32 @svn_pool_clear(i32* %90)
  %92 = load i32*, i32** %23, align 8
  %93 = call i8* @svn_sqlite__column_text(i32* %92, i32 0, i32* null)
  store i8* %93, i8** %27, align 8
  %94 = load i32*, i32** %23, align 8
  %95 = load i32, i32* @kind_map, align 4
  %96 = call i64 @svn_sqlite__column_token(i32* %94, i32 1, i32 %95)
  store i64 %96, i64* %29, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %27, align 8
  %101 = load i32*, i32** %25, align 8
  %102 = call i8* @svn_dirent_join(i32 %99, i8* %100, i32* %101)
  store i8* %102, i8** %28, align 8
  %103 = load i64, i64* %29, align 8
  %104 = load i64, i64* @svn_node_file, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %88
  %107 = load i32*, i32** %23, align 8
  %108 = call i32 @svn_sqlite__column_is_null(i32* %107, i32 2)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %30, align 4
  %112 = load i32*, i32** %23, align 8
  %113 = call i64 @get_recorded_size(i32* %112, i32 3)
  store i64 %113, i64* %31, align 8
  %114 = load i32*, i32** %23, align 8
  %115 = call i64 @svn_sqlite__column_int64(i32* %114, i32 4)
  store i64 %115, i64* %32, align 8
  br label %116

116:                                              ; preds = %106, %88
  %117 = load i32* (i8*)*, i32* (i8*)** %20, align 8
  %118 = icmp ne i32* (i8*)* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32* (i8*)*, i32* (i8*)** %20, align 8
  %121 = load i8*, i8** %21, align 8
  %122 = call i32* %120(i8* %121)
  store i32* %122, i32** %26, align 8
  br label %123

123:                                              ; preds = %119, %116
  %124 = load i32*, i32** %26, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  br label %247

127:                                              ; preds = %123
  %128 = load i8*, i8** %28, align 8
  %129 = load i32, i32* @FALSE, align 4
  %130 = load i32, i32* @TRUE, align 4
  %131 = load i32*, i32** %25, align 8
  %132 = load i32*, i32** %25, align 8
  %133 = call i32* @svn_io_stat_dirent2(%struct.TYPE_8__** %33, i8* %128, i32 %129, i32 %130, i32* %131, i32* %132)
  store i32* %133, i32** %26, align 8
  %134 = load i32*, i32** %26, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %247

137:                                              ; preds = %127
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @svn_node_file, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %150, label %146

146:                                              ; preds = %140
  %147 = load i64, i64* %29, align 8
  %148 = load i64, i64* @svn_node_file, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146, %140, %137
  %151 = load i32, i32* @FALSE, align 4
  store i32 %151, i32* %34, align 4
  br label %187

152:                                              ; preds = %146
  %153 = load i64, i64* %29, align 8
  %154 = load i64, i64* @svn_node_file, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %176

156:                                              ; preds = %152
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @svn_node_file, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %156
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %31, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* %32, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %34, align 4
  br label %186

176:                                              ; preds = %168, %162, %156, %152
  %177 = load i32, i32* %30, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load i32*, i32** %15, align 8
  %181 = load i8*, i8** %28, align 8
  %182 = load i32, i32* @FALSE, align 4
  %183 = load i32*, i32** %25, align 8
  %184 = call i32* @svn_wc__internal_file_modified_p(i32* %34, i32* %180, i8* %181, i32 %182, i32* %183)
  store i32* %184, i32** %26, align 8
  br label %185

185:                                              ; preds = %179, %176
  br label %186

186:                                              ; preds = %185, %174
  br label %187

187:                                              ; preds = %186, %150
  %188 = load i32*, i32** %26, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %247

191:                                              ; preds = %187
  %192 = load i32, i32* %34, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load i32*, i32** %12, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @TRUE, align 4
  %199 = load i32*, i32** %12, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %194
  br label %225

201:                                              ; preds = %191
  %202 = load i64, i64* %29, align 8
  %203 = load i64, i64* @svn_node_dir, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load i32*, i32** %15, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i8*, i8** %28, align 8
  %211 = load i32, i32* @FALSE, align 4
  %212 = load i32*, i32** %25, align 8
  %213 = load i32*, i32** %25, align 8
  %214 = call i32* @svn_wc__wq_build_dir_remove(i32** %35, i32* %206, i32 %209, i8* %210, i32 %211, i32* %212, i32* %213)
  store i32* %214, i32** %26, align 8
  br label %224

215:                                              ; preds = %201
  %216 = load i32*, i32** %15, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %28, align 8
  %221 = load i32*, i32** %25, align 8
  %222 = load i32*, i32** %25, align 8
  %223 = call i32* @svn_wc__wq_build_file_remove(i32** %35, i32* %216, i32 %219, i8* %220, i32* %221, i32* %222)
  store i32* %223, i32** %26, align 8
  br label %224

224:                                              ; preds = %215, %205
  br label %225

225:                                              ; preds = %224, %200
  %226 = load i32*, i32** %26, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  br label %247

229:                                              ; preds = %225
  %230 = load i32*, i32** %35, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %243

232:                                              ; preds = %229
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %35, align 8
  %237 = load i32*, i32** %25, align 8
  %238 = call i32* @add_work_items(i32 %235, i32* %236, i32* %237)
  store i32* %238, i32** %26, align 8
  %239 = load i32*, i32** %26, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %242

241:                                              ; preds = %232
  br label %247

242:                                              ; preds = %232
  br label %243

243:                                              ; preds = %242, %229
  %244 = load i32*, i32** %23, align 8
  %245 = call i32* @svn_sqlite__step(i32* %24, i32* %244)
  %246 = call i32 @SVN_ERR(i32* %245)
  br label %85

247:                                              ; preds = %241, %228, %190, %136, %126, %85
  %248 = load i32*, i32** %25, align 8
  %249 = call i32 @svn_pool_destroy(i32* %248)
  %250 = load i32*, i32** %26, align 8
  %251 = load i32*, i32** %23, align 8
  %252 = call i32 @svn_sqlite__reset(i32* %251)
  %253 = call i32* @svn_error_compose_create(i32* %250, i32 %252)
  %254 = call i32 @SVN_ERR(i32* %253)
  br label %255

255:                                              ; preds = %247, %61, %55
  %256 = load i32, i32* %16, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %343

258:                                              ; preds = %255
  %259 = load i8*, i8** %14, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %343

263:                                              ; preds = %258
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %265 = load i8*, i8** %14, align 8
  %266 = load i32*, i32** %22, align 8
  %267 = load i32*, i32** %22, align 8
  %268 = call i32* @read_info(i64* %36, i64* %37, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_7__* %264, i8* %265, i32* %266, i32* %267)
  %269 = call i32 @SVN_ERR(i32* %268)
  %270 = load i64, i64* %36, align 8
  %271 = load i64, i64* @svn_wc__db_status_normal, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %281, label %273

273:                                              ; preds = %263
  %274 = load i64, i64* %36, align 8
  %275 = load i64, i64* @svn_wc__db_status_added, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %281, label %277

277:                                              ; preds = %273
  %278 = load i64, i64* %36, align 8
  %279 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %342

281:                                              ; preds = %277, %273, %263
  store i32* null, i32** %38, align 8
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load i8*, i8** %14, align 8
  %286 = load i32*, i32** %22, align 8
  %287 = call i8* @svn_dirent_join(i32 %284, i8* %285, i32* %286)
  store i8* %287, i8** %39, align 8
  %288 = load i64, i64* %37, align 8
  %289 = load i64, i64* @svn_node_dir, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %302

291:                                              ; preds = %281
  %292 = load i32*, i32** %15, align 8
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = load i8*, i8** %39, align 8
  %297 = load i32, i32* %17, align 4
  %298 = load i32*, i32** %22, align 8
  %299 = load i32*, i32** %22, align 8
  %300 = call i32* @svn_wc__wq_build_dir_remove(i32** %38, i32* %292, i32 %295, i8* %296, i32 %297, i32* %298, i32* %299)
  %301 = call i32 @SVN_ERR(i32* %300)
  br label %334

302:                                              ; preds = %281
  %303 = load i32, i32* @FALSE, align 4
  store i32 %303, i32* %40, align 4
  %304 = load i32, i32* %17, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %313, label %306

306:                                              ; preds = %302
  %307 = load i32*, i32** %15, align 8
  %308 = load i8*, i8** %39, align 8
  %309 = load i32, i32* @FALSE, align 4
  %310 = load i32*, i32** %22, align 8
  %311 = call i32* @svn_wc__internal_file_modified_p(i32* %40, i32* %307, i8* %308, i32 %309, i32* %310)
  %312 = call i32 @SVN_ERR(i32* %311)
  br label %313

313:                                              ; preds = %306, %302
  %314 = load i32, i32* %40, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %326, label %316

316:                                              ; preds = %313
  %317 = load i32*, i32** %15, align 8
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = load i8*, i8** %39, align 8
  %322 = load i32*, i32** %22, align 8
  %323 = load i32*, i32** %22, align 8
  %324 = call i32* @svn_wc__wq_build_file_remove(i32** %38, i32* %317, i32 %320, i8* %321, i32* %322, i32* %323)
  %325 = call i32 @SVN_ERR(i32* %324)
  br label %333

326:                                              ; preds = %313
  %327 = load i32*, i32** %12, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i32, i32* @TRUE, align 4
  %331 = load i32*, i32** %12, align 8
  store i32 %330, i32* %331, align 4
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332, %316
  br label %334

334:                                              ; preds = %333, %291
  %335 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %38, align 8
  %339 = load i32*, i32** %22, align 8
  %340 = call i32* @add_work_items(i32 %337, i32* %338, i32* %339)
  %341 = call i32 @SVN_ERR(i32* %340)
  br label %342

342:                                              ; preds = %334, %277
  br label %343

343:                                              ; preds = %342, %258, %255
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @STMT_DELETE_NODE_RECURSIVE, align 4
  %348 = call i32* @svn_sqlite__get_statement(i32** %23, i32 %346, i32 %347)
  %349 = call i32 @SVN_ERR(i32* %348)
  %350 = load i32*, i32** %23, align 8
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = load i8*, i8** %14, align 8
  %355 = call i32* @svn_sqlite__bindf(i32* %350, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %353, i8* %354)
  %356 = call i32 @SVN_ERR(i32* %355)
  %357 = load i32*, i32** %23, align 8
  %358 = call i32* @svn_sqlite__step_done(i32* %357)
  %359 = call i32 @SVN_ERR(i32* %358)
  %360 = load i8*, i8** %14, align 8
  %361 = getelementptr inbounds i8, i8* %360, i64 0
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %382

365:                                              ; preds = %343
  %366 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* @STMT_DELETE_NODE_ALL_LAYERS, align 4
  %370 = call i32* @svn_sqlite__get_statement(i32** %23, i32 %368, i32 %369)
  %371 = call i32 @SVN_ERR(i32* %370)
  %372 = load i32*, i32** %23, align 8
  %373 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %374 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load i8*, i8** %14, align 8
  %377 = call i32* @svn_sqlite__bindf(i32* %372, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %375, i8* %376)
  %378 = call i32 @SVN_ERR(i32* %377)
  %379 = load i32*, i32** %23, align 8
  %380 = call i32* @svn_sqlite__step_done(i32* %379)
  %381 = call i32 @SVN_ERR(i32* %380)
  br label %382

382:                                              ; preds = %365, %343
  %383 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = load i32, i32* @STMT_DELETE_ACTUAL_NODE_RECURSIVE, align 4
  %387 = call i32* @svn_sqlite__get_statement(i32** %23, i32 %385, i32 %386)
  %388 = call i32 @SVN_ERR(i32* %387)
  %389 = load i32*, i32** %23, align 8
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = load i8*, i8** %14, align 8
  %394 = call i32* @svn_sqlite__bindf(i32* %389, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %392, i8* %393)
  %395 = call i32 @SVN_ERR(i32* %394)
  %396 = load i32*, i32** %23, align 8
  %397 = call i32* @svn_sqlite__step_done(i32* %396)
  %398 = call i32 @SVN_ERR(i32* %397)
  %399 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32*, i32** %19, align 8
  %403 = load i32*, i32** %22, align 8
  %404 = call i32* @add_work_items(i32 %401, i32* %402, i32* %403)
  %405 = call i32 @SVN_ERR(i32* %404)
  %406 = load i32*, i32** %18, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %415

408:                                              ; preds = %382
  %409 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %410 = load i8*, i8** %14, align 8
  %411 = load i32*, i32** %18, align 8
  %412 = load i32*, i32** %22, align 8
  %413 = call i32* @svn_wc__db_mark_conflict_internal(%struct.TYPE_7__* %409, i8* %410, i32* %411, i32* %412)
  %414 = call i32 @SVN_ERR(i32* %413)
  br label %415

415:                                              ; preds = %408, %382
  %416 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %416
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32* @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i64 @get_recorded_size(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32* @svn_io_stat_dirent2(%struct.TYPE_8__**, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__internal_file_modified_p(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32* @svn_wc__wq_build_dir_remove(i32**, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_build_file_remove(i32**, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @add_work_items(i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_sqlite__step_done(i32*) #1

declare dso_local i32* @svn_wc__db_mark_conflict_internal(%struct.TYPE_7__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
