; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_repos_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_repos_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_driver_info_t = type { i8*, i32, i8*, i8* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 (i8*, i32*)*, i32 (i8*, i8*, i8*, i32, i64, i32, i32*, i32*)*, i32 (i8*, i8*, i32, i64, i32, i32*, i32*)* }
%struct.TYPE_11__ = type { i8*, i32 }

@svn_opt_revision_base = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_RA_CAPABILITY_DEPTH = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i32*, %struct.diff_driver_info_t*, i8*, i32*, i32*, i8*, i32, i32, i64, i32, i32*, i32*, %struct.TYPE_10__*, i32*, i32*)* @diff_repos_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @diff_repos_wc(i8** %0, i32* %1, %struct.diff_driver_info_t* %2, i8* %3, i32* %4, i32* %5, i8* %6, i32 %7, i32 %8, i64 %9, i32 %10, i32* %11, i32* %12, %struct.TYPE_10__* %13, i32* %14, i32* %15) #0 {
  %17 = alloca i8**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.diff_driver_info_t*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_10__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i64, align 8
  %38 = alloca %struct.TYPE_9__*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i8*, align 8
  %50 = alloca i8*, align 8
  %51 = alloca i64, align 8
  %52 = alloca i8*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca %struct.TYPE_11__*, align 8
  %55 = alloca i8*, align 8
  store i8** %0, i8*** %17, align 8
  store i32* %1, i32** %18, align 8
  store %struct.diff_driver_info_t* %2, %struct.diff_driver_info_t** %19, align 8
  store i8* %3, i8** %20, align 8
  store i32* %4, i32** %21, align 8
  store i32* %5, i32** %22, align 8
  store i8* %6, i8** %23, align 8
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i64 %9, i64* %26, align 8
  store i32 %10, i32* %27, align 4
  store i32* %11, i32** %28, align 8
  store i32* %12, i32** %29, align 8
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %56 = load i32, i32* %24, align 4
  %57 = load i32, i32* @svn_opt_revision_base, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %42, align 4
  %60 = load i8*, i8** %23, align 8
  %61 = call i32 @svn_path_is_url(i8* %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @SVN_ERR_ASSERT(i32 %64)
  %66 = load i8*, i8** %20, align 8
  %67 = call i32 @svn_path_is_url(i8* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %16
  %70 = load i8*, i8** %20, align 8
  %71 = load i32*, i32** %32, align 8
  %72 = call i32 @svn_dirent_get_absolute(i8** %44, i8* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  br label %76

74:                                               ; preds = %16
  %75 = load i8*, i8** %20, align 8
  store i8* %75, i8** %44, align 8
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i8*, i8** %23, align 8
  %78 = load i32*, i32** %32, align 8
  %79 = call i32 @svn_dirent_get_absolute(i8** %45, i8* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %45, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i32*, i32** %32, align 8
  %87 = load i32*, i32** %32, align 8
  %88 = call i32 @svn_wc__node_get_origin(i32* %47, i32* %48, i8** %49, i8** %50, i32* null, i64* %51, i8** %52, i32 %83, i8* %84, i32 %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i8*, i8** %20, align 8
  %91 = load i8*, i8** %45, align 8
  %92 = load i32*, i32** %22, align 8
  %93 = load i32*, i32** %21, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %95 = load i32*, i32** %32, align 8
  %96 = call i32 @svn_client__ra_session_from_path2(i32** %36, %struct.TYPE_11__** %54, i8* %90, i8* %91, i32* %92, i32* %93, %struct.TYPE_10__* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32, i32* %24, align 4
  %99 = load i32, i32* @svn_opt_revision_base, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %76
  %102 = load i32, i32* %47, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %161, label %104

104:                                              ; preds = %101, %76
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %23, align 8
  %109 = load i32*, i32** %32, align 8
  %110 = load i32*, i32** %32, align 8
  %111 = call i32 @svn_wc_get_actual_target2(i8** %33, i8** %35, i32 %107, i8* %108, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i8*, i8** %35, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %104
  %118 = load i8*, i8** %35, align 8
  %119 = call i32 @svn_path_is_single_path_component(i8* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = load i8*, i8** %33, align 8
  %123 = load i8*, i8** %35, align 8
  %124 = load i32*, i32** %32, align 8
  %125 = call i8* @svn_dirent_join(i8* %122, i8* %123, i32* %124)
  store i8* %125, i8** %33, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %35, align 8
  br label %126

126:                                              ; preds = %121, %117, %104
  %127 = load i8**, i8*** %17, align 8
  %128 = icmp ne i8** %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load i32*, i32** %31, align 8
  %131 = load i8*, i8** %35, align 8
  %132 = call i8* @apr_pstrdup(i32* %130, i8* %131)
  %133 = load i8**, i8*** %17, align 8
  store i8* %132, i8** %133, align 8
  br label %134

134:                                              ; preds = %129, %126
  %135 = load i32*, i32** %18, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %134
  %138 = load i8*, i8** %35, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = load i32*, i32** %18, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %137, %134
  %145 = load i8*, i8** %33, align 8
  %146 = load i32*, i32** %32, align 8
  %147 = call i32 @svn_dirent_get_absolute(i8** %46, i8* %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i8*, i8** %46, align 8
  %153 = load i32*, i32** %32, align 8
  %154 = load i32*, i32** %32, align 8
  %155 = call i32 @svn_wc__node_get_url(i8** %34, i32 %151, i8* %152, i32* %153, i32* %154)
  %156 = call i32 @SVN_ERR(i32 %155)
  %157 = load i8*, i8** %34, align 8
  %158 = icmp ne i8* %157, null
  %159 = zext i1 %158 to i32
  %160 = call i32 @SVN_ERR_ASSERT(i32 %159)
  store i8* null, i8** %53, align 8
  br label %180

161:                                              ; preds = %101
  %162 = load i8*, i8** %50, align 8
  %163 = load i8*, i8** %49, align 8
  %164 = load i32*, i32** %32, align 8
  %165 = call i8* @svn_path_url_add_component2(i8* %162, i8* %163, i32* %164)
  store i8* %165, i8** %53, align 8
  %166 = load i8*, i8** %45, align 8
  %167 = load i32*, i32** %32, align 8
  %168 = call i8* @svn_dirent_dirname(i8* %166, i32* %167)
  store i8* %168, i8** %46, align 8
  %169 = load i8*, i8** %50, align 8
  %170 = load i8*, i8** %49, align 8
  %171 = load i32*, i32** %32, align 8
  %172 = call i8* @svn_relpath_dirname(i8* %170, i32* %171)
  %173 = load i32*, i32** %32, align 8
  %174 = call i8* @svn_path_url_add_component2(i8* %169, i8* %172, i32* %173)
  store i8* %174, i8** %34, align 8
  %175 = load i8*, i8** %45, align 8
  %176 = call i8* @svn_dirent_basename(i8* %175, i32* null)
  store i8* %176, i8** %35, align 8
  %177 = load i8*, i8** %23, align 8
  %178 = load i32*, i32** %32, align 8
  %179 = call i8* @svn_dirent_dirname(i8* %177, i32* %178)
  store i8* %179, i8** %33, align 8
  br label %180

180:                                              ; preds = %161, %144
  %181 = load i32*, i32** %36, align 8
  %182 = load i8*, i8** %34, align 8
  %183 = load i32*, i32** %32, align 8
  %184 = call i32 @svn_ra_reparent(i32* %181, i8* %182, i32* %183)
  %185 = call i32 @SVN_ERR(i32 %184)
  %186 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %19, align 8
  %187 = icmp ne %struct.diff_driver_info_t* %186, null
  br i1 %187, label %188, label %233

188:                                              ; preds = %180
  %189 = load i8*, i8** %33, align 8
  %190 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %19, align 8
  %191 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load i32, i32* %25, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %208, label %194

194:                                              ; preds = %188
  %195 = load i32*, i32** %31, align 8
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i8* @apr_pstrdup(i32* %195, i8* %198)
  %200 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %19, align 8
  %201 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  %202 = load i8*, i8** %34, align 8
  %203 = load i8*, i8** %35, align 8
  %204 = load i32*, i32** %31, align 8
  %205 = call i8* @svn_path_url_add_component2(i8* %202, i8* %203, i32* %204)
  %206 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %19, align 8
  %207 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  br label %222

208:                                              ; preds = %188
  %209 = load i8*, i8** %34, align 8
  %210 = load i8*, i8** %35, align 8
  %211 = load i32*, i32** %31, align 8
  %212 = call i8* @svn_path_url_add_component2(i8* %209, i8* %210, i32* %211)
  %213 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %19, align 8
  %214 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %213, i32 0, i32 3
  store i8* %212, i8** %214, align 8
  %215 = load i32*, i32** %31, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i8* @apr_pstrdup(i32* %215, i8* %218)
  %220 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %19, align 8
  %221 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %220, i32 0, i32 2
  store i8* %219, i8** %221, align 8
  br label %222

222:                                              ; preds = %208, %194
  %223 = load i32*, i32** %36, align 8
  %224 = load i32*, i32** %32, align 8
  %225 = call i32 @svn_ra_get_repos_root2(i32* %223, i8** %55, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  %227 = load i8*, i8** %55, align 8
  %228 = load i8*, i8** %34, align 8
  %229 = load i32*, i32** %31, align 8
  %230 = call i32 @svn_uri_skip_ancestor(i8* %227, i8* %228, i32* %229)
  %231 = load %struct.diff_driver_info_t*, %struct.diff_driver_info_t** %19, align 8
  %232 = getelementptr inbounds %struct.diff_driver_info_t, %struct.diff_driver_info_t* %231, i32 0, i32 1
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %222, %180
  %234 = load i32, i32* %25, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = load i32*, i32** %29, align 8
  %238 = load i32*, i32** %32, align 8
  %239 = call i32* @svn_diff__tree_processor_reverse_create(i32* %237, i32* null, i32* %238)
  store i32* %239, i32** %29, align 8
  br label %240

240:                                              ; preds = %236, %233
  %241 = load i32*, i32** %36, align 8
  %242 = load i32, i32* @SVN_RA_CAPABILITY_DEPTH, align 4
  %243 = load i32*, i32** %32, align 8
  %244 = call i32 @svn_ra_has_capability(i32* %241, i32* %43, i32 %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = load i8*, i8** %46, align 8
  %250 = load i8*, i8** %35, align 8
  %251 = load i64, i64* %26, align 8
  %252 = load i32, i32* %27, align 4
  %253 = load i32, i32* %42, align 4
  %254 = load i32, i32* %25, align 4
  %255 = load i32, i32* %43, align 4
  %256 = load i32*, i32** %28, align 8
  %257 = load i32*, i32** %29, align 8
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %32, align 8
  %265 = load i32*, i32** %32, align 8
  %266 = call i32 @svn_wc__get_diff_editor(i32** %40, i8** %41, i32 %248, i8* %249, i8* %250, i64 %251, i32 %252, i32 %253, i32 %254, i32 %255, i32* %256, i32* %257, i32 %260, i32 %263, i32* %264, i32* %265)
  %267 = call i32 @SVN_ERR(i32 %266)
  %268 = load i64, i64* %26, align 8
  %269 = load i64, i64* @svn_depth_infinity, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %240
  %272 = load i64, i64* %26, align 8
  store i64 %272, i64* %37, align 8
  br label %275

273:                                              ; preds = %240
  %274 = load i64, i64* @svn_depth_unknown, align 8
  store i64 %274, i64* %37, align 8
  br label %275

275:                                              ; preds = %273, %271
  %276 = load i32*, i32** %36, align 8
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %278 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load i8*, i8** %35, align 8
  %281 = load i64, i64* %37, align 8
  %282 = load i32, i32* %27, align 4
  %283 = load i32, i32* @TRUE, align 4
  %284 = load %struct.TYPE_11__*, %struct.TYPE_11__** %54, align 8
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = load i32*, i32** %40, align 8
  %288 = load i8*, i8** %41, align 8
  %289 = load i32*, i32** %32, align 8
  %290 = call i32 @svn_ra_do_diff3(i32* %276, %struct.TYPE_9__** %38, i8** %39, i32 %279, i8* %280, i64 %281, i32 %282, i32 %283, i8* %286, i32* %287, i8* %288, i32* %289)
  %291 = call i32 @SVN_ERR(i32 %290)
  %292 = load i32, i32* %47, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %351

294:                                              ; preds = %275
  %295 = load i32, i32* %24, align 4
  %296 = load i32, i32* @svn_opt_revision_base, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %351

298:                                              ; preds = %294
  %299 = load i64, i64* %51, align 8
  %300 = load i64, i64* @svn_depth_unknown, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %298
  %303 = load i64, i64* @svn_depth_infinity, align 8
  store i64 %303, i64* %51, align 8
  br label %304

304:                                              ; preds = %302, %298
  %305 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 2
  %307 = load i32 (i8*, i8*, i32, i64, i32, i32*, i32*)*, i32 (i8*, i8*, i32, i64, i32, i32*, i32*)** %306, align 8
  %308 = load i8*, i8** %39, align 8
  %309 = load i32, i32* %27, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %304
  br label %314

312:                                              ; preds = %304
  %313 = load i32, i32* %48, align 4
  br label %314

314:                                              ; preds = %312, %311
  %315 = phi i32 [ 0, %311 ], [ %313, %312 ]
  %316 = load i64, i64* %51, align 8
  %317 = load i32, i32* @FALSE, align 4
  %318 = load i32*, i32** %32, align 8
  %319 = call i32 %307(i8* %308, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %315, i64 %316, i32 %317, i32* null, i32* %318)
  %320 = call i32 @SVN_ERR(i32 %319)
  %321 = load i8*, i8** %35, align 8
  %322 = load i8, i8* %321, align 1
  %323 = icmp ne i8 %322, 0
  br i1 %323, label %324, label %343

324:                                              ; preds = %314
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 1
  %327 = load i32 (i8*, i8*, i8*, i32, i64, i32, i32*, i32*)*, i32 (i8*, i8*, i8*, i32, i64, i32, i32*, i32*)** %326, align 8
  %328 = load i8*, i8** %39, align 8
  %329 = load i8*, i8** %35, align 8
  %330 = load i8*, i8** %53, align 8
  %331 = load i32, i32* %27, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %324
  br label %336

334:                                              ; preds = %324
  %335 = load i32, i32* %48, align 4
  br label %336

336:                                              ; preds = %334, %333
  %337 = phi i32 [ 0, %333 ], [ %335, %334 ]
  %338 = load i64, i64* %51, align 8
  %339 = load i32, i32* @FALSE, align 4
  %340 = load i32*, i32** %32, align 8
  %341 = call i32 %327(i8* %328, i8* %329, i8* %330, i32 %337, i64 %338, i32 %339, i32* null, i32* %340)
  %342 = call i32 @SVN_ERR(i32 %341)
  br label %343

343:                                              ; preds = %336, %314
  %344 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %345 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %344, i32 0, i32 0
  %346 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %345, align 8
  %347 = load i8*, i8** %39, align 8
  %348 = load i32*, i32** %32, align 8
  %349 = call i32 %346(i8* %347, i32* %348)
  %350 = call i32 @SVN_ERR(i32 %349)
  br label %375

351:                                              ; preds = %294, %275
  %352 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %353 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = load i8*, i8** %45, align 8
  %356 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %357 = load i8*, i8** %39, align 8
  %358 = load i32, i32* @FALSE, align 4
  %359 = load i64, i64* %26, align 8
  %360 = load i32, i32* @TRUE, align 4
  %361 = load i32, i32* %43, align 4
  %362 = icmp ne i32 %361, 0
  %363 = xor i1 %362, true
  %364 = zext i1 %363 to i32
  %365 = load i32, i32* @FALSE, align 4
  %366 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %370 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32*, i32** %32, align 8
  %373 = call i32 @svn_wc_crawl_revisions5(i32 %354, i8* %355, %struct.TYPE_9__* %356, i8* %357, i32 %358, i64 %359, i32 %360, i32 %364, i32 %365, i32 %368, i32 %371, i32* null, i32* null, i32* %372)
  %374 = call i32 @SVN_ERR(i32 %373)
  br label %375

375:                                              ; preds = %351, %343
  %376 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %376
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_get_origin(i32*, i32*, i8**, i8**, i32*, i64*, i8**, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_11__**, i8*, i8*, i32*, i32*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @svn_wc_get_actual_target2(i8**, i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_path_is_single_path_component(i8*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_wc__node_get_url(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32* @svn_diff__tree_processor_reverse_create(i32*, i32*, i32*) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__get_diff_editor(i32**, i8**, i32, i8*, i8*, i64, i32, i32, i32, i32, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_do_diff3(i32*, %struct.TYPE_9__**, i8**, i32, i8*, i64, i32, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc_crawl_revisions5(i32, i8*, %struct.TYPE_9__*, i8*, i32, i64, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
