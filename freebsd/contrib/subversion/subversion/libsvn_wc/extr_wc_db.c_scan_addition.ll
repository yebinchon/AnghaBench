; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_scan_addition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_scan_addition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@STMT_SELECT_WORKING_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Expected node '%s' to be added.\00", align 1
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_moved_here = common dso_local global i64 0, align 8
@svn_wc__db_status_copied = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i8**, i8**, i64*, i8**, i64*, i64*, i8**, i8**, i32*, %struct.TYPE_6__*, i8*, i32*, i32*)* @scan_addition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @scan_addition(i64* %0, i8** %1, i8** %2, i64* %3, i8** %4, i64* %5, i64* %6, i8** %7, i8** %8, i32* %9, %struct.TYPE_6__* %10, i8* %11, i32* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_6__*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  store i64* %0, i64** %16, align 8
  store i8** %1, i8*** %17, align 8
  store i8** %2, i8*** %18, align 8
  store i64* %3, i64** %19, align 8
  store i8** %4, i8*** %20, align 8
  store i64* %5, i64** %21, align 8
  store i64* %6, i64** %22, align 8
  store i8** %7, i8*** %23, align 8
  store i8** %8, i8*** %24, align 8
  store i32* %9, i32** %25, align 8
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %26, align 8
  store i8* %11, i8** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  %41 = load i8**, i8*** %17, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %14
  %44 = load i8**, i8*** %17, align 8
  store i8* null, i8** %44, align 8
  br label %45

45:                                               ; preds = %43, %14
  %46 = load i8**, i8*** %20, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8**, i8*** %20, align 8
  store i8* null, i8** %49, align 8
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i64*, i64** %21, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* @INVALID_REPOS_ID, align 8
  %55 = load i64*, i64** %21, align 8
  store i64 %54, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i64*, i64** %22, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %61 = load i64*, i64** %22, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i8**, i8*** %23, align 8
  %64 = icmp ne i8** %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i8**, i8*** %23, align 8
  store i8* null, i8** %66, align 8
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i8**, i8*** %24, align 8
  %69 = icmp ne i8** %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i8**, i8*** %24, align 8
  store i8* null, i8** %71, align 8
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32*, i32** %25, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = load i32*, i32** %25, align 8
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @STMT_SELECT_WORKING_NODE, align 4
  %82 = call i32* @svn_sqlite__get_statement(i32** %32, i32 %80, i32 %81)
  %83 = call i32 @SVN_ERR(i32* %82)
  %84 = load i32*, i32** %32, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %27, align 8
  %89 = call i32* @svn_sqlite__bindf(i32* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %87, i8* %88)
  %90 = call i32 @SVN_ERR(i32* %89)
  %91 = load i32*, i32** %32, align 8
  %92 = call i32* @svn_sqlite__step(i64* %33, i32* %91)
  %93 = call i32 @SVN_ERR(i32* %92)
  %94 = load i64, i64* %33, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %77
  %97 = load i32*, i32** %32, align 8
  %98 = call i32* @svn_sqlite__reset(i32* %97)
  %99 = call i32 @SVN_ERR(i32* %98)
  %100 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %103 = load i8*, i8** %27, align 8
  %104 = load i32*, i32** %29, align 8
  %105 = call i32 @path_for_error_message(%struct.TYPE_6__* %102, i8* %103, i32* %104)
  %106 = call i32* @svn_error_createf(i32 %100, i32* null, i32 %101, i32 %105)
  store i32* %106, i32** %15, align 8
  br label %387

107:                                              ; preds = %77
  %108 = load i32*, i32** %32, align 8
  %109 = load i32, i32* @presence_map, align 4
  %110 = call i64 @svn_sqlite__column_token(i32* %108, i32 1, i32 %109)
  store i64 %110, i64* %34, align 8
  %111 = load i32*, i32** %32, align 8
  %112 = call i32 @svn_sqlite__column_int(i32* %111, i32 0)
  store i32 %112, i32* %35, align 4
  %113 = load i32, i32* %35, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %107
  %116 = load i64, i64* %34, align 8
  %117 = load i64, i64* @svn_wc__db_status_normal, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load i64, i64* %34, align 8
  %121 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119, %107
  %124 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %125 = load i32*, i32** %32, align 8
  %126 = call i32* @svn_sqlite__reset(i32* %125)
  %127 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %129 = load i8*, i8** %27, align 8
  %130 = load i32*, i32** %29, align 8
  %131 = call i32 @path_for_error_message(%struct.TYPE_6__* %128, i8* %129, i32* %130)
  %132 = call i32* @svn_error_createf(i32 %124, i32* %126, i32 %127, i32 %131)
  store i32* %132, i32** %15, align 8
  br label %387

133:                                              ; preds = %119, %115
  %134 = load i64*, i64** %22, align 8
  %135 = icmp ne i64* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load i32*, i32** %32, align 8
  %138 = call i64 @svn_sqlite__column_revnum(i32* %137, i32 12)
  %139 = load i64*, i64** %22, align 8
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %136, %133
  %141 = load i64*, i64** %16, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %143, label %154

143:                                              ; preds = %140
  %144 = load i64, i64* %34, align 8
  %145 = load i64, i64* @svn_wc__db_status_normal, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i64, i64* @svn_wc__db_status_added, align 8
  %149 = load i64*, i64** %16, align 8
  store i64 %148, i64* %149, align 8
  br label %153

150:                                              ; preds = %143
  %151 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %152 = load i64*, i64** %16, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %150, %147
  br label %154

154:                                              ; preds = %153, %140
  %155 = load i8*, i8** %27, align 8
  %156 = load i32, i32* %35, align 4
  %157 = load i32*, i32** %29, align 8
  %158 = call i8* @svn_relpath_prefix(i8* %155, i32 %156, i32* %157)
  store i8* %158, i8** %30, align 8
  %159 = load i8*, i8** %30, align 8
  %160 = load i8*, i8** %27, align 8
  %161 = call i8* @svn_relpath_skip_ancestor(i8* %159, i8* %160)
  store i8* %161, i8** %36, align 8
  %162 = load i8**, i8*** %17, align 8
  %163 = icmp ne i8** %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i32*, i32** %28, align 8
  %166 = load i8*, i8** %30, align 8
  %167 = call i8* @apr_pstrdup(i32* %165, i8* %166)
  %168 = load i8**, i8*** %17, align 8
  store i8* %167, i8** %168, align 8
  br label %169

169:                                              ; preds = %164, %154
  %170 = load i8**, i8*** %20, align 8
  %171 = icmp ne i8** %170, null
  br i1 %171, label %192, label %172

172:                                              ; preds = %169
  %173 = load i64*, i64** %21, align 8
  %174 = icmp ne i64* %173, null
  br i1 %174, label %192, label %175

175:                                              ; preds = %172
  %176 = load i64*, i64** %22, align 8
  %177 = icmp ne i64* %176, null
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load i64*, i64** %22, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %192, label %183

183:                                              ; preds = %178, %175
  %184 = load i64*, i64** %16, align 8
  %185 = icmp ne i64* %184, null
  br i1 %185, label %192, label %186

186:                                              ; preds = %183
  %187 = load i8**, i8*** %23, align 8
  %188 = icmp ne i8** %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i8**, i8*** %24, align 8
  %191 = icmp ne i8** %190, null
  br i1 %191, label %192, label %311

192:                                              ; preds = %189, %186, %183, %178, %172, %169
  %193 = load i8*, i8** %27, align 8
  %194 = load i8*, i8** %30, align 8
  %195 = icmp ne i8* %193, %194
  br i1 %195, label %196, label %236

196:                                              ; preds = %192
  %197 = load i32*, i32** %32, align 8
  %198 = call i32* @svn_sqlite__reset(i32* %197)
  %199 = call i32 @SVN_ERR(i32* %198)
  %200 = load i32*, i32** %32, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i8*, i8** %30, align 8
  %205 = call i32* @svn_sqlite__bindf(i32* %200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %203, i8* %204)
  %206 = call i32 @SVN_ERR(i32* %205)
  %207 = load i32*, i32** %32, align 8
  %208 = call i32* @svn_sqlite__step(i64* %33, i32* %207)
  %209 = call i32 @SVN_ERR(i32* %208)
  %210 = load i64, i64* %33, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %223, label %212

212:                                              ; preds = %196
  %213 = load i32*, i32** %32, align 8
  %214 = call i32* @svn_sqlite__reset(i32* %213)
  %215 = call i32 @SVN_ERR(i32* %214)
  %216 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %217 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %219 = load i8*, i8** %30, align 8
  %220 = load i32*, i32** %29, align 8
  %221 = call i32 @path_for_error_message(%struct.TYPE_6__* %218, i8* %219, i32* %220)
  %222 = call i32* @svn_error_createf(i32 %216, i32* null, i32 %217, i32 %221)
  store i32* %222, i32** %15, align 8
  br label %387

223:                                              ; preds = %196
  %224 = load i64*, i64** %22, align 8
  %225 = icmp ne i64* %224, null
  br i1 %225, label %226, label %235

226:                                              ; preds = %223
  %227 = load i64*, i64** %22, align 8
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load i32*, i32** %32, align 8
  %233 = call i64 @svn_sqlite__column_revnum(i32* %232, i32 12)
  %234 = load i64*, i64** %22, align 8
  store i64 %233, i64* %234, align 8
  br label %235

235:                                              ; preds = %231, %226, %223
  br label %236

236:                                              ; preds = %235, %192
  %237 = load i8**, i8*** %20, align 8
  %238 = icmp ne i8** %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load i32*, i32** %32, align 8
  %241 = load i32*, i32** %28, align 8
  %242 = call i8* @svn_sqlite__column_text(i32* %240, i32 11, i32* %241)
  %243 = load i8**, i8*** %20, align 8
  store i8* %242, i8** %243, align 8
  br label %244

244:                                              ; preds = %239, %236
  %245 = load i32*, i32** %32, align 8
  %246 = call i32 @svn_sqlite__column_is_null(i32* %245, i32 10)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %310, label %248

248:                                              ; preds = %244
  %249 = load i64*, i64** %16, align 8
  %250 = icmp ne i64* %249, null
  br i1 %250, label %260, label %251

251:                                              ; preds = %248
  %252 = load i64*, i64** %21, align 8
  %253 = icmp ne i64* %252, null
  br i1 %253, label %260, label %254

254:                                              ; preds = %251
  %255 = load i8**, i8*** %23, align 8
  %256 = icmp ne i8** %255, null
  br i1 %256, label %260, label %257

257:                                              ; preds = %254
  %258 = load i8**, i8*** %24, align 8
  %259 = icmp ne i8** %258, null
  br i1 %259, label %260, label %310

260:                                              ; preds = %257, %254, %251, %248
  %261 = load i64*, i64** %21, align 8
  %262 = icmp ne i64* %261, null
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = load i32*, i32** %32, align 8
  %265 = call i64 @svn_sqlite__column_int64(i32* %264, i32 10)
  %266 = load i64*, i64** %21, align 8
  store i64 %265, i64* %266, align 8
  br label %267

267:                                              ; preds = %263, %260
  %268 = load i32*, i32** %32, align 8
  %269 = call i64 @svn_sqlite__column_boolean(i32* %268, i32 13)
  store i64 %269, i64* %37, align 8
  %270 = load i64*, i64** %16, align 8
  %271 = icmp ne i64* %270, null
  br i1 %271, label %272, label %282

272:                                              ; preds = %267
  %273 = load i64, i64* %37, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i64, i64* @svn_wc__db_status_moved_here, align 8
  br label %279

277:                                              ; preds = %272
  %278 = load i64, i64* @svn_wc__db_status_copied, align 8
  br label %279

279:                                              ; preds = %277, %275
  %280 = phi i64 [ %276, %275 ], [ %278, %277 ]
  %281 = load i64*, i64** %16, align 8
  store i64 %280, i64* %281, align 8
  br label %282

282:                                              ; preds = %279, %267
  %283 = load i64, i64* %37, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %309

285:                                              ; preds = %282
  %286 = load i8**, i8*** %23, align 8
  %287 = icmp ne i8** %286, null
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i8**, i8*** %24, align 8
  %290 = icmp ne i8** %289, null
  br i1 %290, label %291, label %309

291:                                              ; preds = %288, %285
  %292 = load i8**, i8*** %23, align 8
  %293 = load i8**, i8*** %24, align 8
  %294 = load i8*, i8** %30, align 8
  %295 = load i32*, i32** %25, align 8
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %297 = load i8*, i8** %27, align 8
  %298 = load i32*, i32** %28, align 8
  %299 = load i32*, i32** %29, align 8
  %300 = call i32* @get_moved_from_info(i8** %292, i8** %293, i8* %294, i32* %295, %struct.TYPE_6__* %296, i8* %297, i32* %298, i32* %299)
  store i32* %300, i32** %38, align 8
  %301 = load i32*, i32** %38, align 8
  %302 = icmp ne i32* %301, null
  br i1 %302, label %303, label %308

303:                                              ; preds = %291
  %304 = load i32*, i32** %38, align 8
  %305 = load i32*, i32** %32, align 8
  %306 = call i32* @svn_sqlite__reset(i32* %305)
  %307 = call i32* @svn_error_compose_create(i32* %304, i32* %306)
  store i32* %307, i32** %15, align 8
  br label %387

308:                                              ; preds = %291
  br label %309

309:                                              ; preds = %308, %288, %282
  br label %310

310:                                              ; preds = %309, %257, %244
  br label %311

311:                                              ; preds = %310, %189
  %312 = load i8**, i8*** %18, align 8
  %313 = icmp ne i8** %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %311
  %315 = load i64*, i64** %19, align 8
  %316 = icmp ne i64* %315, null
  br i1 %316, label %317, label %381

317:                                              ; preds = %314, %311
  br label %318

318:                                              ; preds = %346, %317
  %319 = load i64, i64* @TRUE, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %360

321:                                              ; preds = %318
  %322 = load i32*, i32** %32, align 8
  %323 = call i32* @svn_sqlite__reset(i32* %322)
  %324 = call i32 @SVN_ERR(i32* %323)
  %325 = load i8*, i8** %30, align 8
  %326 = call i8* @svn_relpath_basename(i8* %325, i32* null)
  %327 = load i8*, i8** %36, align 8
  %328 = load i32*, i32** %29, align 8
  %329 = call i8* @svn_relpath_join(i8* %326, i8* %327, i32* %328)
  store i8* %329, i8** %36, align 8
  %330 = load i8*, i8** %30, align 8
  %331 = load i32*, i32** %29, align 8
  %332 = call i8* @svn_relpath_dirname(i8* %330, i32* %331)
  store i8* %332, i8** %30, align 8
  %333 = load i32*, i32** %32, align 8
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = load i8*, i8** %30, align 8
  %338 = call i32* @svn_sqlite__bindf(i32* %333, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %336, i8* %337)
  %339 = call i32 @SVN_ERR(i32* %338)
  %340 = load i32*, i32** %32, align 8
  %341 = call i32* @svn_sqlite__step(i64* %33, i32* %340)
  %342 = call i32 @SVN_ERR(i32* %341)
  %343 = load i64, i64* %33, align 8
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %346, label %345

345:                                              ; preds = %321
  br label %360

346:                                              ; preds = %321
  %347 = load i32*, i32** %32, align 8
  %348 = call i32 @svn_sqlite__column_int(i32* %347, i32 0)
  store i32 %348, i32* %35, align 4
  %349 = load i8*, i8** %30, align 8
  store i8* %349, i8** %40, align 8
  %350 = load i8*, i8** %30, align 8
  %351 = load i32, i32* %35, align 4
  %352 = load i32*, i32** %29, align 8
  %353 = call i8* @svn_relpath_prefix(i8* %350, i32 %351, i32* %352)
  store i8* %353, i8** %30, align 8
  %354 = load i8*, i8** %30, align 8
  %355 = load i8*, i8** %40, align 8
  %356 = call i8* @svn_relpath_skip_ancestor(i8* %354, i8* %355)
  %357 = load i8*, i8** %36, align 8
  %358 = load i32*, i32** %29, align 8
  %359 = call i8* @svn_relpath_join(i8* %356, i8* %357, i32* %358)
  store i8* %359, i8** %36, align 8
  br label %318

360:                                              ; preds = %345, %318
  %361 = load i32*, i32** %32, align 8
  %362 = call i32* @svn_sqlite__reset(i32* %361)
  %363 = call i32 @SVN_ERR(i32* %362)
  %364 = load i8*, i8** %36, align 8
  store i8* %364, i8** %31, align 8
  %365 = load i64*, i64** %19, align 8
  %366 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %367 = load i8*, i8** %30, align 8
  %368 = load i32*, i32** %29, align 8
  %369 = load i32*, i32** %29, align 8
  %370 = call i32* @svn_wc__db_base_get_info_internal(i32* null, i32* null, i32* null, i8** %39, i64* %365, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_6__* %366, i8* %367, i32* %368, i32* %369)
  %371 = call i32 @SVN_ERR(i32* %370)
  %372 = load i8**, i8*** %18, align 8
  %373 = icmp ne i8** %372, null
  br i1 %373, label %374, label %380

374:                                              ; preds = %360
  %375 = load i8*, i8** %39, align 8
  %376 = load i8*, i8** %31, align 8
  %377 = load i32*, i32** %28, align 8
  %378 = call i8* @svn_relpath_join(i8* %375, i8* %376, i32* %377)
  %379 = load i8**, i8*** %18, align 8
  store i8* %378, i8** %379, align 8
  br label %380

380:                                              ; preds = %374, %360
  br label %385

381:                                              ; preds = %314
  %382 = load i32*, i32** %32, align 8
  %383 = call i32* @svn_sqlite__reset(i32* %382)
  %384 = call i32 @SVN_ERR(i32* %383)
  br label %385

385:                                              ; preds = %381, %380
  %386 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %386, i32** %15, align 8
  br label %387

387:                                              ; preds = %385, %303, %212, %123, %96
  %388 = load i32*, i32** %15, align 8
  ret i32* %388
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32* @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_6__*, i8*, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i8* @svn_relpath_prefix(i8*, i32, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local i32* @get_moved_from_info(i8**, i8**, i8*, i32*, %struct.TYPE_6__*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_relpath_basename(i8*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32* @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_6__*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
