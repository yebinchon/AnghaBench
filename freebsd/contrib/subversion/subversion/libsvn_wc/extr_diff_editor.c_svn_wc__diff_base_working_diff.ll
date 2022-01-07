; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__diff_base_working_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__diff_base_working_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i8*, i32*, i32*, i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_13__*, i8*, %struct.TYPE_12__*, i32*)*, i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_12__*, i32*, i32*)* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@SVN_INVALID_FILESIZE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_USE_GLOBAL_TMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__diff_base_working_diff(i32* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_12__* %4, i8* %5, i64 %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca %struct.TYPE_13__*, align 8
  %41 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %16, align 8
  store i8* %5, i8** %17, align 8
  store i64 %6, i64* %18, align 8
  store i32 %7, i32* %19, align 4
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  store i8* null, i8** %22, align 8
  %42 = load i64, i64* @FALSE, align 8
  store i64 %42, i64* %23, align 8
  %43 = load i64, i64* @FALSE, align 8
  store i64 %43, i64* %28, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i32*, i32** %21, align 8
  %47 = load i32*, i32** %21, align 8
  %48 = call i32 @svn_wc__db_read_info(i64* %24, i32* null, i32* %25, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %30, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i64* %32, i64* %33, i32* null, i32* null, i32* null, i64* %26, i64* %27, i32* null, i32* null, i32* null, i32* %44, i8* %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %30, align 8
  store i32* %50, i32** %31, align 8
  %51 = load i64, i64* %24, align 8
  %52 = load i64, i64* @svn_wc__db_status_normal, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %67, label %54

54:                                               ; preds = %10
  %55 = load i64, i64* %24, align 8
  %56 = load i64, i64* @svn_wc__db_status_added, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %24, align 8
  %60 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i64, i64* %18, align 8
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br label %67

67:                                               ; preds = %65, %54, %10
  %68 = phi i1 [ true, %54 ], [ true, %10 ], [ %66, %65 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load i64, i64* %24, align 8
  %72 = load i64, i64* @svn_wc__db_status_normal, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %67
  %75 = load i32*, i32** %12, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i32*, i32** %21, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = call i32 @svn_wc__db_base_get_info(i64* %29, i32* null, i32* %25, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %31, i32* null, i32* null, i64* %26, i32* null, i32* null, i32* %75, i8* %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  store i64 %81, i64* %32, align 8
  store i64 0, i64* %33, align 8
  %82 = load i64, i64* @TRUE, align 8
  store i64 %82, i64* %27, align 8
  br label %123

83:                                               ; preds = %67
  %84 = load i64, i64* %18, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i64, i64* @TRUE, align 8
  store i64 %87, i64* %28, align 8
  br label %122

88:                                               ; preds = %83
  %89 = load i8*, i8** %13, align 8
  %90 = load i64, i64* @TRUE, align 8
  %91 = load i64, i64* @TRUE, align 8
  %92 = load i32*, i32** %21, align 8
  %93 = load i32*, i32** %21, align 8
  %94 = call i32 @svn_io_stat_dirent2(%struct.TYPE_11__** %41, i8* %89, i64 %90, i64 %91, i32* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32 %94)
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @svn_node_file, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %88
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @svn_node_file, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %32, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %33, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113, %88
  %120 = load i64, i64* @TRUE, align 8
  store i64 %120, i64* %28, align 8
  br label %121

121:                                              ; preds = %119, %113, %107, %101
  br label %122

122:                                              ; preds = %121, %86
  br label %123

123:                                              ; preds = %122, %74
  %124 = load i64, i64* %28, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load i64, i64* %27, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %126
  %130 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %130, i32** %11, align 8
  br label %309

131:                                              ; preds = %126, %123
  %132 = load i32*, i32** %31, align 8
  %133 = ptrtoint i32* %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @SVN_IS_VALID_REVNUM(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %25, align 4
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %138, %131
  %141 = load i32, i32* %15, align 4
  %142 = load i32*, i32** %21, align 8
  %143 = call i32* @svn_diff__source_create(i32 %141, i32* %142)
  store i32* %143, i32** %36, align 8
  %144 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %145 = load i32*, i32** %21, align 8
  %146 = call i32* @svn_diff__source_create(i32 %144, i32* %145)
  store i32* %146, i32** %37, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  %149 = load i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_12__*, i32*, i32*)*, i32 (i8**, i64*, i8*, i32*, i32*, i32*, i8*, %struct.TYPE_12__*, i32*, i32*)** %148, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = load i32*, i32** %36, align 8
  %152 = load i32*, i32** %37, align 8
  %153 = load i8*, i8** %17, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %155 = load i32*, i32** %21, align 8
  %156 = load i32*, i32** %21, align 8
  %157 = call i32 %149(i8** %22, i64* %23, i8* %150, i32* %151, i32* %152, i32* null, i8* %153, %struct.TYPE_12__* %154, i32* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i64, i64* %23, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %140
  %162 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %162, i32** %11, align 8
  br label %309

163:                                              ; preds = %140
  %164 = load i32*, i32** %12, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = load i32*, i32** %31, align 8
  %167 = load i32*, i32** %21, align 8
  %168 = load i32*, i32** %21, align 8
  %169 = call i32 @svn_wc__db_pristine_get_path(i8** %34, i32* %164, i8* %165, i32* %166, i32* %167, i32* %168)
  %170 = call i32 @SVN_ERR(i32 %169)
  %171 = load i64, i64* %18, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %163
  %174 = load i32*, i32** %12, align 8
  %175 = load i8*, i8** %13, align 8
  %176 = load i32*, i32** %30, align 8
  %177 = load i32*, i32** %21, align 8
  %178 = load i32*, i32** %21, align 8
  %179 = call i32 @svn_wc__db_pristine_get_path(i8** %35, i32* %174, i8* %175, i32* %176, i32* %177, i32* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  br label %209

181:                                              ; preds = %163
  %182 = load i64, i64* %26, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = load i64, i64* %27, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = load i8*, i8** %13, align 8
  store i8* %188, i8** %35, align 8
  br label %208

189:                                              ; preds = %184, %181
  %190 = load i64, i64* %28, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i8*, i8** %34, align 8
  store i8* %193, i8** %35, align 8
  br label %207

194:                                              ; preds = %189
  %195 = load i8*, i8** %13, align 8
  %196 = load i32*, i32** %12, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %199 = load i32, i32* @SVN_WC_TRANSLATE_USE_GLOBAL_TMP, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* %19, align 4
  %202 = load i8*, i8** %20, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = load i32*, i32** %21, align 8
  %205 = call i32 @svn_wc__internal_translated_file(i8** %35, i8* %195, i32* %196, i8* %197, i32 %200, i32 %201, i8* %202, i32* %203, i32* %204)
  %206 = call i32 @SVN_ERR(i32 %205)
  br label %207

207:                                              ; preds = %194, %192
  br label %208

208:                                              ; preds = %207, %187
  br label %209

209:                                              ; preds = %208, %173
  %210 = load i64, i64* %28, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %209
  %213 = load i8*, i8** %35, align 8
  %214 = load i8*, i8** %34, align 8
  %215 = load i32*, i32** %21, align 8
  %216 = call i32 @svn_io_files_contents_same_p(i64* %28, i8* %213, i8* %214, i32* %215)
  %217 = call i32 @SVN_ERR(i32 %216)
  br label %218

218:                                              ; preds = %212, %209
  %219 = load i64, i64* %26, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i32*, i32** %12, align 8
  %223 = load i8*, i8** %13, align 8
  %224 = load i32*, i32** %21, align 8
  %225 = load i32*, i32** %21, align 8
  %226 = call i32 @svn_wc__db_base_get_props(i32** %38, i32* %222, i8* %223, i32* %224, i32* %225)
  %227 = call i32 @SVN_ERR(i32 %226)
  br label %231

228:                                              ; preds = %218
  %229 = load i32*, i32** %21, align 8
  %230 = call i32* @apr_hash_make(i32* %229)
  store i32* %230, i32** %38, align 8
  br label %231

231:                                              ; preds = %228, %221
  %232 = load i64, i64* %24, align 8
  %233 = load i64, i64* @svn_wc__db_status_normal, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %243

235:                                              ; preds = %231
  %236 = load i64, i64* %18, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %235
  %239 = load i64, i64* %27, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %238, %235
  %242 = load i32*, i32** %38, align 8
  store i32* %242, i32** %39, align 8
  br label %261

243:                                              ; preds = %238, %231
  %244 = load i64, i64* %18, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %243
  %247 = load i32*, i32** %12, align 8
  %248 = load i8*, i8** %13, align 8
  %249 = load i32*, i32** %21, align 8
  %250 = load i32*, i32** %21, align 8
  %251 = call i32 @svn_wc__db_read_pristine_props(i32** %39, i32* %247, i8* %248, i32* %249, i32* %250)
  %252 = call i32 @SVN_ERR(i32 %251)
  br label %260

253:                                              ; preds = %243
  %254 = load i32*, i32** %12, align 8
  %255 = load i8*, i8** %13, align 8
  %256 = load i32*, i32** %21, align 8
  %257 = load i32*, i32** %21, align 8
  %258 = call i32 @svn_wc__db_read_props(i32** %39, i32* %254, i8* %255, i32* %256, i32* %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  br label %260

260:                                              ; preds = %253, %246
  br label %261

261:                                              ; preds = %260, %241
  %262 = load i32*, i32** %39, align 8
  %263 = load i32*, i32** %38, align 8
  %264 = load i32*, i32** %21, align 8
  %265 = call i32 @svn_prop_diffs(%struct.TYPE_13__** %40, i32* %262, i32* %263, i32* %264)
  %266 = call i32 @SVN_ERR(i32 %265)
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %261
  %272 = load i64, i64* %28, align 8
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %295, label %274

274:                                              ; preds = %271, %261
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 1
  %277 = load i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_13__*, i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, i32*, i32*, i8*, i8*, i32*, i32*, i32, %struct.TYPE_13__*, i8*, %struct.TYPE_12__*, i32*)** %276, align 8
  %278 = load i8*, i8** %14, align 8
  %279 = load i32*, i32** %36, align 8
  %280 = load i32*, i32** %37, align 8
  %281 = load i8*, i8** %34, align 8
  %282 = load i8*, i8** %35, align 8
  %283 = load i32*, i32** %38, align 8
  %284 = load i32*, i32** %39, align 8
  %285 = load i64, i64* %28, align 8
  %286 = icmp ne i64 %285, 0
  %287 = xor i1 %286, true
  %288 = zext i1 %287 to i32
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %40, align 8
  %290 = load i8*, i8** %22, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %292 = load i32*, i32** %21, align 8
  %293 = call i32 %277(i8* %278, i32* %279, i32* %280, i8* %281, i8* %282, i32* %283, i32* %284, i32 %288, %struct.TYPE_13__* %289, i8* %290, %struct.TYPE_12__* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32 %293)
  br label %307

295:                                              ; preds = %271
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = load i32 (i8*, i32*, i32*, i8*, %struct.TYPE_12__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_12__*, i32*)** %297, align 8
  %299 = load i8*, i8** %14, align 8
  %300 = load i32*, i32** %36, align 8
  %301 = load i32*, i32** %37, align 8
  %302 = load i8*, i8** %22, align 8
  %303 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %304 = load i32*, i32** %21, align 8
  %305 = call i32 %298(i8* %299, i32* %300, i32* %301, i8* %302, %struct.TYPE_12__* %303, i32* %304)
  %306 = call i32 @SVN_ERR(i32 %305)
  br label %307

307:                                              ; preds = %295, %274
  %308 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %308, i32** %11, align 8
  br label %309

309:                                              ; preds = %307, %161, %129
  %310 = load i32*, i32** %11, align 8
  ret i32* %310
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i64*, i64*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i64*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_stat_dirent2(%struct.TYPE_11__**, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @svn_diff__source_create(i32, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_path(i8**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_translated_file(i8**, i8*, i32*, i8*, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_files_contents_same_p(i64*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_base_get_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_prop_diffs(%struct.TYPE_13__**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
