; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_unmerged_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_find_unmerged_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@svn_mergeinfo_inherited = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_RA_DAV_REQUEST_FAILED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (i32**, i32*, i32, i32*, i32*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*, i32*, i32*, i32*)* @find_unmerged_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @find_unmerged_mergeinfo(i32** %0, i32* %1, i32 %2, i32* %3, i32* %4, %struct.TYPE_19__* %5, %struct.TYPE_20__* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_18__*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.TYPE_19__*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca %struct.TYPE_19__*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca %struct.TYPE_18__*, align 8
  %47 = alloca %struct.TYPE_19__*, align 8
  store i32** %0, i32*** %14, align 8
  store i32* %1, i32** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32* %3, i32** %17, align 8
  store i32* %4, i32** %18, align 8
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_20__* %6, %struct.TYPE_20__** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32* %8, i32** %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %49 = load i32*, i32** %25, align 8
  %50 = call i8* @svn_client__pathrev_relpath(%struct.TYPE_19__* %48, i32* %49)
  store i8* %50, i8** %26, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32*, i32** %25, align 8
  %54 = call i8* @svn_client__pathrev_relpath(%struct.TYPE_19__* %52, i32* %53)
  store i8* %54, i8** %27, align 8
  %55 = load i32*, i32** %24, align 8
  %56 = call i8* @apr_hash_make(i32* %55)
  %57 = bitcast i8* %56 to i32*
  store i32* %57, i32** %29, align 8
  %58 = load i32*, i32** %25, align 8
  %59 = call i32* @svn_pool_create(i32* %58)
  store i32* %59, i32** %30, align 8
  %60 = load i32*, i32** %21, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %25, align 8
  %65 = call i32 @session_url_is(i32* %60, i32 %63, i32* %64)
  %66 = call i32 @assert(i32 %65)
  %67 = load i32*, i32** %22, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %25, align 8
  %73 = call i32 @session_url_is(i32* %67, i32 %71, i32* %72)
  %74 = call i32 @assert(i32 %73)
  %75 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %76 = load i32*, i32** %15, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %25, align 8
  %78 = load i32*, i32** %18, align 8
  %79 = call i32* @apr_hash_first(i32* %77, i32* %78)
  store i32* %79, i32** %28, align 8
  br label %80

80:                                               ; preds = %175, %12
  %81 = load i32*, i32** %28, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %178

83:                                               ; preds = %80
  %84 = load i32*, i32** %28, align 8
  %85 = call i8* @apr_hash_this_key(i32* %84)
  store i8* %85, i8** %31, align 8
  %86 = load i32*, i32** %28, align 8
  %87 = call i32* @apr_hash_this_val(i32* %86)
  store i32* %87, i32** %32, align 8
  %88 = load i8*, i8** %27, align 8
  %89 = load i8*, i8** %31, align 8
  %90 = call i8* @svn_relpath_skip_ancestor(i8* %88, i8* %89)
  store i8* %90, i8** %33, align 8
  %91 = load i32*, i32** %30, align 8
  %92 = call i32 @svn_pool_clear(i32* %91)
  %93 = load i8*, i8** %26, align 8
  %94 = load i8*, i8** %33, align 8
  %95 = load i32*, i32** %30, align 8
  %96 = call i8* @svn_relpath_join(i8* %93, i8* %94, i32* %95)
  store i8* %96, i8** %34, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %98 = load i8*, i8** %33, align 8
  %99 = load i32*, i32** %30, align 8
  %100 = call %struct.TYPE_19__* @svn_client__pathrev_join_relpath(%struct.TYPE_19__* %97, i8* %98, i32* %99)
  store %struct.TYPE_19__* %100, %struct.TYPE_19__** %35, align 8
  %101 = load i32*, i32** %32, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = load i32*, i32** %30, align 8
  %108 = load i32*, i32** %30, align 8
  %109 = call i32 @svn_mergeinfo__filter_mergeinfo_by_ranges(i32** %32, i32* %101, i32 %104, i32 %105, i32 %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %17, align 8
  %112 = load i8*, i8** %34, align 8
  %113 = call i32* @svn_hash_gets(i32* %111, i8* %112)
  store i32* %113, i32** %36, align 8
  %114 = load i32*, i32** %36, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %126

116:                                              ; preds = %83
  %117 = load i32*, i32** %17, align 8
  %118 = load i8*, i8** %34, align 8
  %119 = call i32 @svn_hash_sets(i32* %117, i8* %118, i32* null)
  %120 = load i32*, i32** %15, align 8
  %121 = load i32*, i32** %32, align 8
  %122 = load i32*, i32** %36, align 8
  %123 = load i32*, i32** %30, align 8
  %124 = call i32 @find_youngest_merged_rev(i32* %120, i32* %121, i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %159

126:                                              ; preds = %83
  %127 = load i32*, i32** %21, align 8
  %128 = load i8*, i8** %33, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %30, align 8
  %133 = call i32 @svn_ra_check_path(i32* %127, i8* %128, i32 %131, i64* %38, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i64, i64* %38, align 8
  %136 = load i64, i64* @svn_node_none, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %175

139:                                              ; preds = %126
  %140 = load i32*, i32** %21, align 8
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %148 = load i32, i32* @FALSE, align 4
  %149 = load i32*, i32** %30, align 8
  %150 = call i32 @svn_client__get_repos_mergeinfo(i32** %36, i32* %140, i32 %143, i32 %146, i32 %147, i32 %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i32*, i32** %36, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %139
  %155 = load i32*, i32** %30, align 8
  %156 = call i8* @apr_hash_make(i32* %155)
  %157 = bitcast i8* %156 to i32*
  store i32* %157, i32** %36, align 8
  br label %158

158:                                              ; preds = %154, %139
  br label %159

159:                                              ; preds = %158, %116
  %160 = load i32*, i32** %32, align 8
  %161 = load i32*, i32** %36, align 8
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %35, align 8
  %163 = load i32*, i32** %21, align 8
  %164 = load i32*, i32** %23, align 8
  %165 = load i32*, i32** %25, align 8
  %166 = load i32*, i32** %30, align 8
  %167 = call i32 @find_unmerged_mergeinfo_subroutine(i32** %37, i32* %160, i32* %161, %struct.TYPE_19__* %162, i32* %163, i32* %164, i32* %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load i32*, i32** %29, align 8
  %170 = load i32*, i32** %25, align 8
  %171 = load i8*, i8** %34, align 8
  %172 = call i8* @apr_pstrdup(i32* %170, i8* %171)
  %173 = load i32*, i32** %37, align 8
  %174 = call i32 @svn_hash_sets(i32* %169, i8* %172, i32* %173)
  br label %175

175:                                              ; preds = %159, %138
  %176 = load i32*, i32** %28, align 8
  %177 = call i32* @apr_hash_next(i32* %176)
  store i32* %177, i32** %28, align 8
  br label %80

178:                                              ; preds = %80
  %179 = load i32*, i32** %25, align 8
  %180 = load i32*, i32** %17, align 8
  %181 = call i32* @apr_hash_first(i32* %179, i32* %180)
  store i32* %181, i32** %28, align 8
  br label %182

182:                                              ; preds = %274, %178
  %183 = load i32*, i32** %28, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %277

185:                                              ; preds = %182
  %186 = load i32*, i32** %28, align 8
  %187 = call i8* @apr_hash_this_key(i32* %186)
  store i8* %187, i8** %39, align 8
  %188 = load i8*, i8** %26, align 8
  %189 = load i8*, i8** %39, align 8
  %190 = call i8* @svn_relpath_skip_ancestor(i8* %188, i8* %189)
  store i8* %190, i8** %40, align 8
  %191 = load i32*, i32** %28, align 8
  %192 = call i32* @apr_hash_this_val(i32* %191)
  store i32* %192, i32** %42, align 8
  %193 = load i32*, i32** %30, align 8
  %194 = call i32 @svn_pool_clear(i32* %193)
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %196 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %40, align 8
  %199 = load i32*, i32** %30, align 8
  %200 = call i8* @svn_path_url_add_component2(i32 %197, i8* %198, i32* %199)
  store i8* %200, i8** %41, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 0
  %203 = load i8*, i8** %40, align 8
  %204 = load i32*, i32** %30, align 8
  %205 = call %struct.TYPE_19__* @svn_client__pathrev_join_relpath(%struct.TYPE_19__* %202, i8* %203, i32* %204)
  store %struct.TYPE_19__* %205, %struct.TYPE_19__** %44, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %212 = load i32*, i32** %22, align 8
  %213 = load i32*, i32** %23, align 8
  %214 = load i32*, i32** %30, align 8
  %215 = call %struct.TYPE_18__* @svn_client__get_history_as_mergeinfo(i32** %45, i32* null, %struct.TYPE_19__* %206, i32 %210, i32 %211, i32* %212, i32* %213, i32* %214)
  store %struct.TYPE_18__* %215, %struct.TYPE_18__** %46, align 8
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %217 = icmp ne %struct.TYPE_18__* %216, null
  br i1 %217, label %218, label %237

218:                                              ; preds = %185
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %230, label %224

224:                                              ; preds = %218
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @SVN_ERR_RA_DAV_REQUEST_FAILED, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %233

230:                                              ; preds = %224, %218
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %232 = call i32 @svn_error_clear(%struct.TYPE_18__* %231)
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %46, align 8
  br label %236

233:                                              ; preds = %224
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %235 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %234)
  store %struct.TYPE_18__* %235, %struct.TYPE_18__** %13, align 8
  br label %299

236:                                              ; preds = %230
  br label %273

237:                                              ; preds = %185
  %238 = load i32*, i32** %15, align 8
  %239 = load i32*, i32** %45, align 8
  %240 = load i32*, i32** %42, align 8
  %241 = load i32*, i32** %30, align 8
  %242 = call i32 @find_youngest_merged_rev(i32* %238, i32* %239, i32* %240, i32* %241)
  %243 = call i32 @SVN_ERR(i32 %242)
  %244 = load i32*, i32** %21, align 8
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i8*, i8** %41, align 8
  %250 = load i32*, i32** %30, align 8
  %251 = call i32 @svn_client__pathrev_create_with_session(%struct.TYPE_19__** %47, i32* %244, i32 %248, i8* %249, i32* %250)
  %252 = call i32 @SVN_ERR(i32 %251)
  %253 = load i32*, i32** %45, align 8
  %254 = load i32*, i32** %42, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %47, align 8
  %256 = load i32*, i32** %21, align 8
  %257 = load i32*, i32** %23, align 8
  %258 = load i32*, i32** %25, align 8
  %259 = load i32*, i32** %30, align 8
  %260 = call i32 @find_unmerged_mergeinfo_subroutine(i32** %43, i32* %253, i32* %254, %struct.TYPE_19__* %255, i32* %256, i32* %257, i32* %258, i32* %259)
  %261 = call i32 @SVN_ERR(i32 %260)
  %262 = load i32*, i32** %43, align 8
  %263 = call i64 @apr_hash_count(i32* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %237
  %266 = load i32*, i32** %29, align 8
  %267 = load i32*, i32** %25, align 8
  %268 = load i8*, i8** %39, align 8
  %269 = call i8* @apr_pstrdup(i32* %267, i8* %268)
  %270 = load i32*, i32** %43, align 8
  %271 = call i32 @svn_hash_sets(i32* %266, i8* %269, i32* %270)
  br label %272

272:                                              ; preds = %265, %237
  br label %273

273:                                              ; preds = %272, %236
  br label %274

274:                                              ; preds = %273
  %275 = load i32*, i32** %28, align 8
  %276 = call i32* @apr_hash_next(i32* %275)
  store i32* %276, i32** %28, align 8
  br label %182

277:                                              ; preds = %182
  %278 = load i32*, i32** %15, align 8
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @SVN_IS_VALID_REVNUM(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %277
  %283 = load i32*, i32** %29, align 8
  %284 = load i32*, i32** %15, align 8
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @TRUE, align 4
  %287 = load i32*, i32** %25, align 8
  %288 = load i32*, i32** %25, align 8
  %289 = call i32 @svn_mergeinfo__filter_catalog_by_ranges(i32** %29, i32* %283, i32 %285, i32 0, i32 %286, i32* %287, i32* %288)
  %290 = call i32 @SVN_ERR(i32 %289)
  br label %291

291:                                              ; preds = %282, %277
  %292 = load i32*, i32** %29, align 8
  %293 = load i32*, i32** %24, align 8
  %294 = call i32* @svn_mergeinfo_catalog_dup(i32* %292, i32* %293)
  %295 = load i32**, i32*** %14, align 8
  store i32* %294, i32** %295, align 8
  %296 = load i32*, i32** %30, align 8
  %297 = call i32 @svn_pool_destroy(i32* %296)
  %298 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %298, %struct.TYPE_18__** %13, align 8
  br label %299

299:                                              ; preds = %291, %233
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  ret %struct.TYPE_18__* %300
}

declare dso_local i8* @svn_client__pathrev_relpath(%struct.TYPE_19__*, i32*) #1

declare dso_local i8* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @session_url_is(i32*, i32, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_client__pathrev_join_relpath(%struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_mergeinfo__filter_mergeinfo_by_ranges(i32**, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @find_youngest_merged_rev(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32*, i8*, i32, i64*, i32*) #1

declare dso_local i32 @svn_client__get_repos_mergeinfo(i32**, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @find_unmerged_mergeinfo_subroutine(i32**, i32*, i32*, %struct.TYPE_19__*, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_client__get_history_as_mergeinfo(i32**, i32*, %struct.TYPE_19__*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

declare dso_local i32 @svn_client__pathrev_create_with_session(%struct.TYPE_19__**, i32*, i32, i8*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_mergeinfo__filter_catalog_by_ranges(i32**, i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_mergeinfo_catalog_dup(i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
