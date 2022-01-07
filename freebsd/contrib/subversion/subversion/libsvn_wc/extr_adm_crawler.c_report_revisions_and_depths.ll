; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_report_revisions_and_depths.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_report_revisions_and_depths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32*)* }
%struct.svn_wc__db_base_info_t = type { i64, i8*, i64, i64, i32, %struct.TYPE_28__*, i64 }
%struct.TYPE_28__ = type { i32* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_depth_exclude = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_30__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_30__* (i32*, i8*, i8*, i32, i8*, i8*, i64, %struct.TYPE_29__*, i8*, i32, i64, i32, i32, i32, i32, %struct.TYPE_30__* (i8*)*, i8*, i32, i8*, i32*)* @report_revisions_and_depths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_30__* @report_revisions_and_depths(i32* %0, i8* %1, i8* %2, i32 %3, i8* %4, i8* %5, i64 %6, %struct.TYPE_29__* %7, i8* %8, i32 %9, i64 %10, i32 %11, i32 %12, i32 %13, i32 %14, %struct.TYPE_30__* (i8*)* %15, i8* %16, i32 %17, i8* %18, i32* %19) #0 {
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_29__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca %struct.TYPE_30__* (i8*)*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca %struct.TYPE_30__*, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i8*, align 8
  %49 = alloca i32, align 4
  %50 = alloca %struct.svn_wc__db_base_info_t*, align 8
  %51 = alloca i64, align 8
  %52 = alloca i64, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32, align 4
  %55 = alloca i64, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i64, align 8
  %60 = alloca i8*, align 8
  store i32* %0, i32** %21, align 8
  store i8* %1, i8** %22, align 8
  store i8* %2, i8** %23, align 8
  store i32 %3, i32* %24, align 4
  store i8* %4, i8** %25, align 8
  store i8* %5, i8** %26, align 8
  store i64 %6, i64* %27, align 8
  store %struct.TYPE_29__* %7, %struct.TYPE_29__** %28, align 8
  store i8* %8, i8** %29, align 8
  store i32 %9, i32* %30, align 4
  store i64 %10, i64* %31, align 8
  store i32 %11, i32* %32, align 4
  store i32 %12, i32* %33, align 4
  store i32 %13, i32* %34, align 4
  store i32 %14, i32* %35, align 4
  store %struct.TYPE_30__* (i8*)* %15, %struct.TYPE_30__* (i8*)** %36, align 8
  store i8* %16, i8** %37, align 8
  store i32 %17, i32* %38, align 4
  store i8* %18, i8** %39, align 8
  store i32* %19, i32** %40, align 8
  %61 = load i32*, i32** %40, align 8
  %62 = call i32* @svn_pool_create(i32* %61)
  store i32* %62, i32** %43, align 8
  %63 = load i32*, i32** %21, align 8
  %64 = load i8*, i8** %22, align 8
  %65 = load i32*, i32** %40, align 8
  %66 = load i32*, i32** %43, align 8
  %67 = call %struct.TYPE_30__* @svn_wc__db_base_get_children_info(i32** %41, i32* %63, i8* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(%struct.TYPE_30__* %67)
  %69 = load i32, i32* %30, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %99

71:                                               ; preds = %20
  %72 = load i8*, i8** %22, align 8
  %73 = load i32, i32* @TRUE, align 4
  %74 = load i32*, i32** %40, align 8
  %75 = load i32*, i32** %40, align 8
  %76 = call %struct.TYPE_30__* @svn_io_get_dirents3(i32** %42, i8* %72, i32 %73, i32* %74, i32* %75)
  store %struct.TYPE_30__* %76, %struct.TYPE_30__** %45, align 8
  %77 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %78 = icmp ne %struct.TYPE_30__* %77, null
  br i1 %78, label %79, label %95

79:                                               ; preds = %71
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %81 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @APR_STATUS_IS_ENOENT(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %85, %79
  %92 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %93 = call i32 @svn_error_clear(%struct.TYPE_30__* %92)
  %94 = load i32, i32* @FALSE, align 4
  store i32 %94, i32* %30, align 4
  store i32* null, i32** %42, align 8
  br label %98

95:                                               ; preds = %85, %71
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %45, align 8
  %97 = call i32 @SVN_ERR(%struct.TYPE_30__* %96)
  br label %98

98:                                               ; preds = %95, %91
  br label %100

99:                                               ; preds = %20
  store i32* null, i32** %42, align 8
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i32*, i32** %40, align 8
  %102 = load i32*, i32** %41, align 8
  %103 = call i32* @apr_hash_first(i32* %101, i32* %102)
  store i32* %103, i32** %44, align 8
  br label %104

104:                                              ; preds = %737, %100
  %105 = load i32*, i32** %44, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %740

107:                                              ; preds = %104
  %108 = load i32*, i32** %44, align 8
  %109 = call i8* @apr_hash_this_key(i32* %108)
  store i8* %109, i8** %46, align 8
  %110 = load i32, i32* @FALSE, align 4
  store i32 %110, i32* %49, align 4
  %111 = load i32*, i32** %44, align 8
  %112 = call %struct.svn_wc__db_base_info_t* @apr_hash_this_val(i32* %111)
  store %struct.svn_wc__db_base_info_t* %112, %struct.svn_wc__db_base_info_t** %50, align 8
  %113 = load %struct.TYPE_30__* (i8*)*, %struct.TYPE_30__* (i8*)** %36, align 8
  %114 = icmp ne %struct.TYPE_30__* (i8*)* %113, null
  br i1 %114, label %115, label %120

115:                                              ; preds = %107
  %116 = load %struct.TYPE_30__* (i8*)*, %struct.TYPE_30__* (i8*)** %36, align 8
  %117 = load i8*, i8** %37, align 8
  %118 = call %struct.TYPE_30__* %116(i8* %117)
  %119 = call i32 @SVN_ERR(%struct.TYPE_30__* %118)
  br label %120

120:                                              ; preds = %115, %107
  %121 = load i32*, i32** %43, align 8
  %122 = call i32 @svn_pool_clear(i32* %121)
  %123 = load i8*, i8** %23, align 8
  %124 = load i8*, i8** %46, align 8
  %125 = load i32*, i32** %43, align 8
  %126 = call i8* @svn_relpath_join(i8* %123, i8* %124, i32* %125)
  store i8* %126, i8** %47, align 8
  %127 = load i8*, i8** %22, align 8
  %128 = load i8*, i8** %46, align 8
  %129 = load i32*, i32** %43, align 8
  %130 = call i8* @svn_dirent_join(i8* %127, i8* %128, i32* %129)
  store i8* %130, i8** %48, align 8
  %131 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %132 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %120
  br label %737

136:                                              ; preds = %120
  %137 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %138 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %171

142:                                              ; preds = %136
  %143 = load i32, i32* %32, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %147, align 8
  %149 = load i8*, i8** %29, align 8
  %150 = load i8*, i8** %47, align 8
  %151 = load i32, i32* %24, align 4
  %152 = load i64, i64* @svn_depth_exclude, align 8
  %153 = load i32, i32* @FALSE, align 4
  %154 = load i32*, i32** %43, align 8
  %155 = call %struct.TYPE_30__* %148(i8* %149, i8* %150, i32 %151, i64 %152, i32 %153, i32* null, i32* %154)
  %156 = call i32 @SVN_ERR(%struct.TYPE_30__* %155)
  br label %170

157:                                              ; preds = %142
  %158 = load i32, i32* %34, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %169, label %160

160:                                              ; preds = %157
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_30__* (i8*, i8*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32*)** %162, align 8
  %164 = load i8*, i8** %29, align 8
  %165 = load i8*, i8** %47, align 8
  %166 = load i32*, i32** %43, align 8
  %167 = call %struct.TYPE_30__* %163(i8* %164, i8* %165, i32* %166)
  %168 = call i32 @SVN_ERR(%struct.TYPE_30__* %167)
  br label %169

169:                                              ; preds = %160, %157
  br label %170

170:                                              ; preds = %169, %145
  br label %737

171:                                              ; preds = %136
  %172 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %173 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %171
  %178 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %179 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %177, %171
  %184 = load i32, i32* %34, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %195, label %186

186:                                              ; preds = %183
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %188 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_30__* (i8*, i8*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32*)** %188, align 8
  %190 = load i8*, i8** %29, align 8
  %191 = load i8*, i8** %47, align 8
  %192 = load i32*, i32** %43, align 8
  %193 = call %struct.TYPE_30__* %189(i8* %190, i8* %191, i32* %192)
  %194 = call i32 @SVN_ERR(%struct.TYPE_30__* %193)
  br label %195

195:                                              ; preds = %186, %183
  br label %737

196:                                              ; preds = %177
  %197 = load i32, i32* %30, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %252

199:                                              ; preds = %196
  %200 = load i32*, i32** %42, align 8
  %201 = load i8*, i8** %46, align 8
  %202 = call i32* @svn_hash_gets(i32* %200, i8* %201)
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %252

204:                                              ; preds = %199
  %205 = load i32*, i32** %21, align 8
  %206 = load i8*, i8** %48, align 8
  %207 = load i32*, i32** %43, align 8
  %208 = load i32*, i32** %43, align 8
  %209 = call %struct.TYPE_30__* @svn_wc__db_read_info(i64* %51, i64* %52, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %53, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %54, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %205, i8* %206, i32* %207, i32* %208)
  %210 = call i32 @SVN_ERR(%struct.TYPE_30__* %209)
  %211 = load i64, i64* %51, align 8
  %212 = load i64, i64* @svn_wc__db_status_normal, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %222, label %214

214:                                              ; preds = %204
  %215 = load i64, i64* %51, align 8
  %216 = load i64, i64* @svn_wc__db_status_added, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %222, label %218

218:                                              ; preds = %214
  %219 = load i64, i64* %51, align 8
  %220 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %251

222:                                              ; preds = %218, %214, %204
  %223 = load i64, i64* %52, align 8
  %224 = load i64, i64* @svn_node_dir, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = load i32*, i32** %53, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %251

229:                                              ; preds = %226, %222
  %230 = load i8*, i8** %48, align 8
  %231 = load i32*, i32** %43, align 8
  %232 = call %struct.TYPE_30__* @svn_io_check_path(i8* %230, i64* %55, i32* %231)
  %233 = call i32 @SVN_ERR(%struct.TYPE_30__* %232)
  %234 = load i64, i64* %55, align 8
  %235 = load i64, i64* @svn_node_none, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %250

237:                                              ; preds = %229
  %238 = load i32*, i32** %21, align 8
  %239 = load i8*, i8** %48, align 8
  %240 = load i64, i64* %52, align 8
  %241 = load i32, i32* %54, align 4
  %242 = load i32, i32* %35, align 4
  %243 = load %struct.TYPE_30__* (i8*)*, %struct.TYPE_30__* (i8*)** %36, align 8
  %244 = load i8*, i8** %37, align 8
  %245 = load i32, i32* %38, align 4
  %246 = load i8*, i8** %39, align 8
  %247 = load i32*, i32** %43, align 8
  %248 = call %struct.TYPE_30__* @restore_node(i32* %238, i8* %239, i64 %240, i32 %241, i32 %242, %struct.TYPE_30__* (i8*)* %243, i8* %244, i32 %245, i8* %246, i32* %247)
  %249 = call i32 @SVN_ERR(%struct.TYPE_30__* %248)
  br label %250

250:                                              ; preds = %237, %229
  br label %251

251:                                              ; preds = %250, %226, %218
  br label %252

252:                                              ; preds = %251, %199, %196
  %253 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %254 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %264, label %257

257:                                              ; preds = %252
  %258 = load i8*, i8** %25, align 8
  %259 = load i8*, i8** %46, align 8
  %260 = load i32*, i32** %43, align 8
  %261 = call i8* @svn_relpath_join(i8* %258, i8* %259, i32* %260)
  %262 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %263 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %262, i32 0, i32 1
  store i8* %261, i8** %263, align 8
  br label %280

264:                                              ; preds = %252
  %265 = load i8*, i8** %25, align 8
  %266 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %267 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %266, i32 0, i32 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i8* @svn_relpath_skip_ancestor(i8* %265, i8* %268)
  store i8* %269, i8** %56, align 8
  %270 = load i8*, i8** %56, align 8
  %271 = icmp eq i8* %270, null
  br i1 %271, label %277, label %272

272:                                              ; preds = %264
  %273 = load i8*, i8** %56, align 8
  %274 = load i8*, i8** %46, align 8
  %275 = call i64 @strcmp(i8* %273, i8* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272, %264
  %278 = load i32, i32* @TRUE, align 4
  store i32 %278, i32* %49, align 4
  br label %279

279:                                              ; preds = %277, %272
  br label %280

280:                                              ; preds = %279, %257
  %281 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %282 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @svn_depth_unknown, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i64, i64* @svn_depth_infinity, align 8
  %288 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %289 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %288, i32 0, i32 2
  store i64 %287, i64* %289, align 8
  br label %290

290:                                              ; preds = %286, %280
  %291 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %292 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* @svn_node_file, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %302, label %296

296:                                              ; preds = %290
  %297 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %298 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %297, i32 0, i32 3
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @svn_node_symlink, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %458

302:                                              ; preds = %296, %290
  %303 = load i32, i32* %34, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %373

305:                                              ; preds = %302
  %306 = load i32, i32* %49, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %343

308:                                              ; preds = %305
  %309 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %310 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %309, i32 0, i32 1
  %311 = load %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)** %310, align 8
  %312 = load i8*, i8** %29, align 8
  %313 = load i8*, i8** %47, align 8
  %314 = load i8*, i8** %26, align 8
  %315 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %316 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = load i32*, i32** %43, align 8
  %319 = call i32 @svn_path_url_add_component2(i8* %314, i8* %317, i32* %318)
  %320 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %321 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %324 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %323, i32 0, i32 2
  %325 = load i64, i64* %324, align 8
  %326 = load i32, i32* @FALSE, align 4
  %327 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %328 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %327, i32 0, i32 5
  %329 = load %struct.TYPE_28__*, %struct.TYPE_28__** %328, align 8
  %330 = icmp ne %struct.TYPE_28__* %329, null
  br i1 %330, label %331, label %337

331:                                              ; preds = %308
  %332 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %333 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %332, i32 0, i32 5
  %334 = load %struct.TYPE_28__*, %struct.TYPE_28__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %334, i32 0, i32 0
  %336 = load i32*, i32** %335, align 8
  br label %338

337:                                              ; preds = %308
  br label %338

338:                                              ; preds = %337, %331
  %339 = phi i32* [ %336, %331 ], [ null, %337 ]
  %340 = load i32*, i32** %43, align 8
  %341 = call %struct.TYPE_30__* %311(i8* %312, i8* %313, i32 %319, i32 %322, i64 %325, i32 %326, i32* %339, i32* %340)
  %342 = call i32 @SVN_ERR(%struct.TYPE_30__* %341)
  br label %372

343:                                              ; preds = %305
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %345 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %345, align 8
  %347 = load i8*, i8** %29, align 8
  %348 = load i8*, i8** %47, align 8
  %349 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %350 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %353 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = load i32, i32* @FALSE, align 4
  %356 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %357 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %356, i32 0, i32 5
  %358 = load %struct.TYPE_28__*, %struct.TYPE_28__** %357, align 8
  %359 = icmp ne %struct.TYPE_28__* %358, null
  br i1 %359, label %360, label %366

360:                                              ; preds = %343
  %361 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %362 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %361, i32 0, i32 5
  %363 = load %struct.TYPE_28__*, %struct.TYPE_28__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  br label %367

366:                                              ; preds = %343
  br label %367

367:                                              ; preds = %366, %360
  %368 = phi i32* [ %365, %360 ], [ null, %366 ]
  %369 = load i32*, i32** %43, align 8
  %370 = call %struct.TYPE_30__* %346(i8* %347, i8* %348, i32 %351, i64 %354, i32 %355, i32* %368, i32* %369)
  %371 = call i32 @SVN_ERR(%struct.TYPE_30__* %370)
  br label %372

372:                                              ; preds = %367, %338
  br label %457

373:                                              ; preds = %302
  %374 = load i32, i32* %49, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %411

376:                                              ; preds = %373
  %377 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %378 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %377, i32 0, i32 1
  %379 = load %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)** %378, align 8
  %380 = load i8*, i8** %29, align 8
  %381 = load i8*, i8** %47, align 8
  %382 = load i8*, i8** %26, align 8
  %383 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %384 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %383, i32 0, i32 1
  %385 = load i8*, i8** %384, align 8
  %386 = load i32*, i32** %43, align 8
  %387 = call i32 @svn_path_url_add_component2(i8* %382, i8* %385, i32* %386)
  %388 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %389 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %392 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %391, i32 0, i32 2
  %393 = load i64, i64* %392, align 8
  %394 = load i32, i32* @FALSE, align 4
  %395 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %396 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %395, i32 0, i32 5
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %396, align 8
  %398 = icmp ne %struct.TYPE_28__* %397, null
  br i1 %398, label %399, label %405

399:                                              ; preds = %376
  %400 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %401 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %400, i32 0, i32 5
  %402 = load %struct.TYPE_28__*, %struct.TYPE_28__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  br label %406

405:                                              ; preds = %376
  br label %406

406:                                              ; preds = %405, %399
  %407 = phi i32* [ %404, %399 ], [ null, %405 ]
  %408 = load i32*, i32** %43, align 8
  %409 = call %struct.TYPE_30__* %379(i8* %380, i8* %381, i32 %387, i32 %390, i64 %393, i32 %394, i32* %407, i32* %408)
  %410 = call i32 @SVN_ERR(%struct.TYPE_30__* %409)
  br label %456

411:                                              ; preds = %373
  %412 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %413 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %24, align 4
  %416 = icmp ne i32 %414, %415
  br i1 %416, label %426, label %417

417:                                              ; preds = %411
  %418 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %419 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %418, i32 0, i32 5
  %420 = load %struct.TYPE_28__*, %struct.TYPE_28__** %419, align 8
  %421 = icmp ne %struct.TYPE_28__* %420, null
  br i1 %421, label %426, label %422

422:                                              ; preds = %417
  %423 = load i64, i64* %27, align 8
  %424 = load i64, i64* @svn_depth_empty, align 8
  %425 = icmp eq i64 %423, %424
  br i1 %425, label %426, label %455

426:                                              ; preds = %422, %417, %411
  %427 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %428 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %427, i32 0, i32 0
  %429 = load %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %428, align 8
  %430 = load i8*, i8** %29, align 8
  %431 = load i8*, i8** %47, align 8
  %432 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %433 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %432, i32 0, i32 4
  %434 = load i32, i32* %433, align 8
  %435 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %436 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %435, i32 0, i32 2
  %437 = load i64, i64* %436, align 8
  %438 = load i32, i32* @FALSE, align 4
  %439 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %440 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %439, i32 0, i32 5
  %441 = load %struct.TYPE_28__*, %struct.TYPE_28__** %440, align 8
  %442 = icmp ne %struct.TYPE_28__* %441, null
  br i1 %442, label %443, label %449

443:                                              ; preds = %426
  %444 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %445 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %444, i32 0, i32 5
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %446, i32 0, i32 0
  %448 = load i32*, i32** %447, align 8
  br label %450

449:                                              ; preds = %426
  br label %450

450:                                              ; preds = %449, %443
  %451 = phi i32* [ %448, %443 ], [ null, %449 ]
  %452 = load i32*, i32** %43, align 8
  %453 = call %struct.TYPE_30__* %429(i8* %430, i8* %431, i32 %434, i64 %437, i32 %438, i32* %451, i32* %452)
  %454 = call i32 @SVN_ERR(%struct.TYPE_30__* %453)
  br label %455

455:                                              ; preds = %450, %422
  br label %456

456:                                              ; preds = %455, %406
  br label %457

457:                                              ; preds = %456, %372
  br label %736

458:                                              ; preds = %296
  %459 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %460 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %459, i32 0, i32 3
  %461 = load i64, i64* %460, align 8
  %462 = load i64, i64* @svn_node_dir, align 8
  %463 = icmp eq i64 %461, %462
  br i1 %463, label %464, label %735

464:                                              ; preds = %458
  %465 = load i64, i64* %31, align 8
  %466 = load i64, i64* @svn_depth_files, align 8
  %467 = icmp sgt i64 %465, %466
  br i1 %467, label %472, label %468

468:                                              ; preds = %464
  %469 = load i64, i64* %31, align 8
  %470 = load i64, i64* @svn_depth_unknown, align 8
  %471 = icmp eq i64 %469, %470
  br i1 %471, label %472, label %735

472:                                              ; preds = %468, %464
  %473 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %474 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %59, align 8
  %476 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %477 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %480 = icmp eq i64 %478, %479
  %481 = zext i1 %480 to i32
  store i32 %481, i32* %57, align 4
  %482 = load i32, i32* %57, align 4
  store i32 %482, i32* %58, align 4
  %483 = load i64, i64* %31, align 8
  %484 = call i64 @SVN_DEPTH_IS_RECURSIVE(i64 %483)
  %485 = icmp ne i64 %484, 0
  br i1 %485, label %488, label %486

486:                                              ; preds = %472
  %487 = load i64, i64* @svn_depth_empty, align 8
  store i64 %487, i64* %59, align 8
  br label %488

488:                                              ; preds = %486, %472
  %489 = load i32, i32* %57, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %501

491:                                              ; preds = %488
  %492 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %493 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %492, i32 0, i32 4
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @SVN_IS_VALID_REVNUM(i32 %494)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %501, label %497

497:                                              ; preds = %491
  %498 = load i32, i32* %24, align 4
  %499 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %500 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %499, i32 0, i32 4
  store i32 %498, i32* %500, align 8
  br label %501

501:                                              ; preds = %497, %491, %488
  %502 = load i32, i32* %33, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %518

504:                                              ; preds = %501
  %505 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %506 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = load i64, i64* @svn_depth_files, align 8
  %509 = icmp sle i64 %507, %508
  br i1 %509, label %510, label %518

510:                                              ; preds = %504
  %511 = load i64, i64* %31, align 8
  %512 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %513 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %512, i32 0, i32 2
  %514 = load i64, i64* %513, align 8
  %515 = icmp sgt i64 %511, %514
  br i1 %515, label %516, label %518

516:                                              ; preds = %510
  %517 = load i32, i32* @TRUE, align 4
  store i32 %517, i32* %58, align 4
  br label %518

518:                                              ; preds = %516, %510, %504, %501
  %519 = load i32, i32* %34, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %585

521:                                              ; preds = %518
  %522 = load i32, i32* %49, align 4
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %557

524:                                              ; preds = %521
  %525 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %526 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %525, i32 0, i32 1
  %527 = load %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)** %526, align 8
  %528 = load i8*, i8** %29, align 8
  %529 = load i8*, i8** %47, align 8
  %530 = load i8*, i8** %26, align 8
  %531 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %532 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %531, i32 0, i32 1
  %533 = load i8*, i8** %532, align 8
  %534 = load i32*, i32** %43, align 8
  %535 = call i32 @svn_path_url_add_component2(i8* %530, i8* %533, i32* %534)
  %536 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %537 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %536, i32 0, i32 4
  %538 = load i32, i32* %537, align 8
  %539 = load i64, i64* %59, align 8
  %540 = load i32, i32* %58, align 4
  %541 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %542 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %541, i32 0, i32 5
  %543 = load %struct.TYPE_28__*, %struct.TYPE_28__** %542, align 8
  %544 = icmp ne %struct.TYPE_28__* %543, null
  br i1 %544, label %545, label %551

545:                                              ; preds = %524
  %546 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %547 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %546, i32 0, i32 5
  %548 = load %struct.TYPE_28__*, %struct.TYPE_28__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %548, i32 0, i32 0
  %550 = load i32*, i32** %549, align 8
  br label %552

551:                                              ; preds = %524
  br label %552

552:                                              ; preds = %551, %545
  %553 = phi i32* [ %550, %545 ], [ null, %551 ]
  %554 = load i32*, i32** %43, align 8
  %555 = call %struct.TYPE_30__* %527(i8* %528, i8* %529, i32 %535, i32 %538, i64 %539, i32 %540, i32* %553, i32* %554)
  %556 = call i32 @SVN_ERR(%struct.TYPE_30__* %555)
  br label %584

557:                                              ; preds = %521
  %558 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %559 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %558, i32 0, i32 0
  %560 = load %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %559, align 8
  %561 = load i8*, i8** %29, align 8
  %562 = load i8*, i8** %47, align 8
  %563 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %564 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %563, i32 0, i32 4
  %565 = load i32, i32* %564, align 8
  %566 = load i64, i64* %59, align 8
  %567 = load i32, i32* %58, align 4
  %568 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %569 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %568, i32 0, i32 5
  %570 = load %struct.TYPE_28__*, %struct.TYPE_28__** %569, align 8
  %571 = icmp ne %struct.TYPE_28__* %570, null
  br i1 %571, label %572, label %578

572:                                              ; preds = %557
  %573 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %574 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %573, i32 0, i32 5
  %575 = load %struct.TYPE_28__*, %struct.TYPE_28__** %574, align 8
  %576 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %575, i32 0, i32 0
  %577 = load i32*, i32** %576, align 8
  br label %579

578:                                              ; preds = %557
  br label %579

579:                                              ; preds = %578, %572
  %580 = phi i32* [ %577, %572 ], [ null, %578 ]
  %581 = load i32*, i32** %43, align 8
  %582 = call %struct.TYPE_30__* %560(i8* %561, i8* %562, i32 %565, i64 %566, i32 %567, i32* %580, i32* %581)
  %583 = call i32 @SVN_ERR(%struct.TYPE_30__* %582)
  br label %584

584:                                              ; preds = %579, %552
  br label %692

585:                                              ; preds = %518
  %586 = load i32, i32* %49, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %621

588:                                              ; preds = %585
  %589 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %590 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %589, i32 0, i32 1
  %591 = load %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i32, i64, i32, i32*, i32*)** %590, align 8
  %592 = load i8*, i8** %29, align 8
  %593 = load i8*, i8** %47, align 8
  %594 = load i8*, i8** %26, align 8
  %595 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %596 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %595, i32 0, i32 1
  %597 = load i8*, i8** %596, align 8
  %598 = load i32*, i32** %43, align 8
  %599 = call i32 @svn_path_url_add_component2(i8* %594, i8* %597, i32* %598)
  %600 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %601 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %600, i32 0, i32 4
  %602 = load i32, i32* %601, align 8
  %603 = load i64, i64* %59, align 8
  %604 = load i32, i32* %58, align 4
  %605 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %606 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %605, i32 0, i32 5
  %607 = load %struct.TYPE_28__*, %struct.TYPE_28__** %606, align 8
  %608 = icmp ne %struct.TYPE_28__* %607, null
  br i1 %608, label %609, label %615

609:                                              ; preds = %588
  %610 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %611 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %610, i32 0, i32 5
  %612 = load %struct.TYPE_28__*, %struct.TYPE_28__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %612, i32 0, i32 0
  %614 = load i32*, i32** %613, align 8
  br label %616

615:                                              ; preds = %588
  br label %616

616:                                              ; preds = %615, %609
  %617 = phi i32* [ %614, %609 ], [ null, %615 ]
  %618 = load i32*, i32** %43, align 8
  %619 = call %struct.TYPE_30__* %591(i8* %592, i8* %593, i32 %599, i32 %602, i64 %603, i32 %604, i32* %617, i32* %618)
  %620 = call i32 @SVN_ERR(%struct.TYPE_30__* %619)
  br label %691

621:                                              ; preds = %585
  %622 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %623 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %622, i32 0, i32 4
  %624 = load i32, i32* %623, align 8
  %625 = load i32, i32* %24, align 4
  %626 = icmp ne i32 %624, %625
  br i1 %626, label %663, label %627

627:                                              ; preds = %621
  %628 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %629 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %628, i32 0, i32 5
  %630 = load %struct.TYPE_28__*, %struct.TYPE_28__** %629, align 8
  %631 = icmp ne %struct.TYPE_28__* %630, null
  br i1 %631, label %663, label %632

632:                                              ; preds = %627
  %633 = load i32, i32* %57, align 4
  %634 = icmp ne i32 %633, 0
  br i1 %634, label %663, label %635

635:                                              ; preds = %632
  %636 = load i64, i64* %27, align 8
  %637 = load i64, i64* @svn_depth_empty, align 8
  %638 = icmp eq i64 %636, %637
  br i1 %638, label %663, label %639

639:                                              ; preds = %635
  %640 = load i64, i64* %27, align 8
  %641 = load i64, i64* @svn_depth_files, align 8
  %642 = icmp eq i64 %640, %641
  br i1 %642, label %663, label %643

643:                                              ; preds = %639
  %644 = load i64, i64* %27, align 8
  %645 = load i64, i64* @svn_depth_immediates, align 8
  %646 = icmp eq i64 %644, %645
  br i1 %646, label %647, label %653

647:                                              ; preds = %643
  %648 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %649 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %648, i32 0, i32 2
  %650 = load i64, i64* %649, align 8
  %651 = load i64, i64* @svn_depth_empty, align 8
  %652 = icmp ne i64 %650, %651
  br i1 %652, label %663, label %653

653:                                              ; preds = %647, %643
  %654 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %655 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %654, i32 0, i32 2
  %656 = load i64, i64* %655, align 8
  %657 = load i64, i64* @svn_depth_infinity, align 8
  %658 = icmp slt i64 %656, %657
  br i1 %658, label %659, label %690

659:                                              ; preds = %653
  %660 = load i64, i64* %31, align 8
  %661 = call i64 @SVN_DEPTH_IS_RECURSIVE(i64 %660)
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %663, label %690

663:                                              ; preds = %659, %647, %639, %635, %632, %627, %621
  %664 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %665 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %664, i32 0, i32 0
  %666 = load %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)*, %struct.TYPE_30__* (i8*, i8*, i32, i64, i32, i32*, i32*)** %665, align 8
  %667 = load i8*, i8** %29, align 8
  %668 = load i8*, i8** %47, align 8
  %669 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %670 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %669, i32 0, i32 4
  %671 = load i32, i32* %670, align 8
  %672 = load i64, i64* %59, align 8
  %673 = load i32, i32* %58, align 4
  %674 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %675 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %674, i32 0, i32 5
  %676 = load %struct.TYPE_28__*, %struct.TYPE_28__** %675, align 8
  %677 = icmp ne %struct.TYPE_28__* %676, null
  br i1 %677, label %678, label %684

678:                                              ; preds = %663
  %679 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %680 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %679, i32 0, i32 5
  %681 = load %struct.TYPE_28__*, %struct.TYPE_28__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %681, i32 0, i32 0
  %683 = load i32*, i32** %682, align 8
  br label %685

684:                                              ; preds = %663
  br label %685

685:                                              ; preds = %684, %678
  %686 = phi i32* [ %683, %678 ], [ null, %684 ]
  %687 = load i32*, i32** %43, align 8
  %688 = call %struct.TYPE_30__* %666(i8* %667, i8* %668, i32 %671, i64 %672, i32 %673, i32* %686, i32* %687)
  %689 = call i32 @SVN_ERR(%struct.TYPE_30__* %688)
  br label %690

690:                                              ; preds = %685, %659, %653
  br label %691

691:                                              ; preds = %690, %616
  br label %692

692:                                              ; preds = %691, %584
  %693 = load i64, i64* %31, align 8
  %694 = call i64 @SVN_DEPTH_IS_RECURSIVE(i64 %693)
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %696, label %734

696:                                              ; preds = %692
  %697 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %698 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %697, i32 0, i32 1
  %699 = load i8*, i8** %698, align 8
  store i8* %699, i8** %60, align 8
  %700 = load i8*, i8** %60, align 8
  %701 = icmp eq i8* %700, null
  br i1 %701, label %702, label %707

702:                                              ; preds = %696
  %703 = load i8*, i8** %25, align 8
  %704 = load i8*, i8** %46, align 8
  %705 = load i32*, i32** %43, align 8
  %706 = call i8* @svn_relpath_join(i8* %703, i8* %704, i32* %705)
  store i8* %706, i8** %60, align 8
  br label %707

707:                                              ; preds = %702, %696
  %708 = load i32*, i32** %21, align 8
  %709 = load i8*, i8** %48, align 8
  %710 = load i8*, i8** %47, align 8
  %711 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %712 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %711, i32 0, i32 4
  %713 = load i32, i32* %712, align 8
  %714 = load i8*, i8** %60, align 8
  %715 = load i8*, i8** %26, align 8
  %716 = load %struct.svn_wc__db_base_info_t*, %struct.svn_wc__db_base_info_t** %50, align 8
  %717 = getelementptr inbounds %struct.svn_wc__db_base_info_t, %struct.svn_wc__db_base_info_t* %716, i32 0, i32 2
  %718 = load i64, i64* %717, align 8
  %719 = load %struct.TYPE_29__*, %struct.TYPE_29__** %28, align 8
  %720 = load i8*, i8** %29, align 8
  %721 = load i32, i32* %30, align 4
  %722 = load i64, i64* %31, align 8
  %723 = load i32, i32* %32, align 4
  %724 = load i32, i32* %33, align 4
  %725 = load i32, i32* %58, align 4
  %726 = load i32, i32* %35, align 4
  %727 = load %struct.TYPE_30__* (i8*)*, %struct.TYPE_30__* (i8*)** %36, align 8
  %728 = load i8*, i8** %37, align 8
  %729 = load i32, i32* %38, align 4
  %730 = load i8*, i8** %39, align 8
  %731 = load i32*, i32** %43, align 8
  %732 = call %struct.TYPE_30__* @report_revisions_and_depths(i32* %708, i8* %709, i8* %710, i32 %713, i8* %714, i8* %715, i64 %718, %struct.TYPE_29__* %719, i8* %720, i32 %721, i64 %722, i32 %723, i32 %724, i32 %725, i32 %726, %struct.TYPE_30__* (i8*)* %727, i8* %728, i32 %729, i8* %730, i32* %731)
  %733 = call i32 @SVN_ERR(%struct.TYPE_30__* %732)
  br label %734

734:                                              ; preds = %707, %692
  br label %735

735:                                              ; preds = %734, %468, %458
  br label %736

736:                                              ; preds = %735, %457
  br label %737

737:                                              ; preds = %736, %195, %170, %135
  %738 = load i32*, i32** %44, align 8
  %739 = call i32* @apr_hash_next(i32* %738)
  store i32* %739, i32** %44, align 8
  br label %104

740:                                              ; preds = %104
  %741 = load i32*, i32** %43, align 8
  %742 = call i32 @svn_pool_destroy(i32* %741)
  %743 = load %struct.TYPE_30__*, %struct.TYPE_30__** @SVN_NO_ERROR, align 8
  ret %struct.TYPE_30__* %743
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_30__* @svn_wc__db_base_get_children_info(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_io_get_dirents3(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_30__*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.svn_wc__db_base_info_t* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local %struct.TYPE_30__* @svn_wc__db_read_info(i64*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_30__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_30__* @restore_node(i32*, i8*, i64, i32, i32, %struct.TYPE_30__* (i8*)*, i8*, i32, i8*, i32*) #1

declare dso_local i8* @svn_relpath_skip_ancestor(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i64 @SVN_DEPTH_IS_RECURSIVE(i64) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
