; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_svn_wc__db_wcroot_parse_local_abspath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_wcroot.c_svn_wc__db_wcroot_parse_local_abspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_35__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_34__* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SDB_FILE = common dso_local global i32 0, align 4
@svn_sqlite__mode_readwrite = common dso_local global i32 0, align 4
@SVN_ERR_SQLITE_ERROR = common dso_local global i64 0, align 8
@svn_node_symlink = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"'%s' is not a working copy\00", align 1
@SVN_ERR_WC_CORRUPT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Missing a row in WCROOT for '%s'.\00", align 1
@SVN_ERR_WC_UNSUPPORTED_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i64 0, align 8
@SVN_WC__WC_NG_VERSION = common dso_local global i32 0, align 4
@SVN_WC__ADM_ENTRIES = common dso_local global i32 0, align 4
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"The working copy at '%s' is corrupt.\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"The working copy database at '%s' is missing.\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"The working copy database at '%s' is corrupt.\00", align 1
@UNKNOWN_WC_ID = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@STMT_VERIFICATION_TRIGGERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_34__* @svn_wc__db_wcroot_parse_local_abspath(i32** %0, i8** %1, %struct.TYPE_33__* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_34__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_34__*, align 8
  %35 = alloca %struct.TYPE_35__, align 4
  %36 = alloca i8*, align 8
  %37 = alloca %struct.TYPE_34__*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i64, align 8
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_34__*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i32*, align 8
  store i32** %0, i32*** %8, align 8
  store i8** %1, i8*** %9, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %46 = load i8*, i8** %11, align 8
  store i8* %46, i8** %15, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %21, align 8
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %22, align 4
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i8* null, i8** %26, align 8
  %49 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = call i32* @svn_hash_gets(i32 %51, i8* %52)
  store i32* %53, i32** %18, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %6
  %57 = load i32*, i32** %18, align 8
  %58 = load i32**, i32*** %8, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = call i8* @compute_relpath(i32* %59, i8* %60, i32* %61)
  %63 = load i8**, i8*** %9, align 8
  store i8* %62, i8** %63, align 8
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_34__* %64, %struct.TYPE_34__** %7, align 8
  br label %567

65:                                               ; preds = %6
  %66 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = call %struct.TYPE_34__* @get_path_kind(i64* %16, %struct.TYPE_33__* %66, i8* %67, i32* %68)
  %70 = call i32 @SVN_ERR(%struct.TYPE_34__* %69)
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* @svn_node_dir, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %105

74:                                               ; preds = %65
  %75 = load i8*, i8** %11, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = call i32 @svn_dirent_split(i8** %14, i8** %17, i8* %75, i32* %76)
  %78 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %14, align 8
  %82 = call i32* @svn_hash_gets(i32 %80, i8* %81)
  store i32* %82, i32** %18, align 8
  %83 = load i32*, i32** %18, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %97

85:                                               ; preds = %74
  %86 = load i32*, i32** %18, align 8
  %87 = load i32**, i32*** %8, align 8
  store i32* %86, i32** %87, align 8
  %88 = load i32*, i32** %18, align 8
  %89 = load i8*, i8** %14, align 8
  %90 = call i8* @compute_relpath(i32* %88, i8* %89, i32* null)
  store i8* %90, i8** %27, align 8
  %91 = load i8*, i8** %27, align 8
  %92 = load i8*, i8** %17, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = call i8* @svn_relpath_join(i8* %91, i8* %92, i32* %93)
  %95 = load i8**, i8*** %9, align 8
  store i8* %94, i8** %95, align 8
  %96 = load %struct.TYPE_34__*, %struct.TYPE_34__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_34__* %96, %struct.TYPE_34__** %7, align 8
  br label %567

97:                                               ; preds = %74
  %98 = load i64, i64* %16, align 8
  %99 = load i64, i64* @svn_node_none, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %23, align 4
  br label %103

103:                                              ; preds = %101, %97
  %104 = load i8*, i8** %14, align 8
  store i8* %104, i8** %11, align 8
  br label %107

105:                                              ; preds = %65
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  %106 = load i8*, i8** %11, align 8
  store i8* %106, i8** %14, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = load i32*, i32** %13, align 8
  %109 = call i8* @svn_wc_get_adm_dir(i32* %108)
  store i8* %109, i8** %25, align 8
  br label %110

110:                                              ; preds = %235, %210, %107
  %111 = load i32, i32* @TRUE, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %236

113:                                              ; preds = %110
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %25, align 8
  %116 = load i32*, i32** %13, align 8
  %117 = call i8* @svn_dirent_join(i8* %114, i8* %115, i32* %116)
  store i8* %117, i8** %30, align 8
  %118 = load i8*, i8** %30, align 8
  %119 = load i32*, i32** %13, align 8
  %120 = call %struct.TYPE_34__* @svn_io_check_path(i8* %118, i64* %29, i32* %119)
  %121 = call i32 @SVN_ERR(%struct.TYPE_34__* %120)
  %122 = load i64, i64* %29, align 8
  %123 = load i64, i64* @svn_node_dir, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %176

125:                                              ; preds = %113
  %126 = load i8*, i8** %11, align 8
  %127 = load i32, i32* @SDB_FILE, align 4
  %128 = load i32, i32* @svn_sqlite__mode_readwrite, align 4
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = call %struct.TYPE_34__* @svn_wc__db_util_open_db(i32** %21, i8* %126, i32 %127, i32 %128, i32 %131, i32 %134, i32* null, i32 %137, i32* %138)
  store %struct.TYPE_34__* %139, %struct.TYPE_34__** %28, align 8
  %140 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %141 = icmp eq %struct.TYPE_34__* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  br label %236

143:                                              ; preds = %125
  %144 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %145 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SVN_ERR_SQLITE_ERROR, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %143
  %150 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %151 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @APR_STATUS_IS_ENOENT(i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %149
  %156 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %157 = call %struct.TYPE_34__* @svn_error_trace(%struct.TYPE_34__* %156)
  store %struct.TYPE_34__* %157, %struct.TYPE_34__** %7, align 8
  br label %567

158:                                              ; preds = %149, %143
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %28, align 8
  %160 = call i32 @svn_error_clear(%struct.TYPE_34__* %159)
  %161 = load i32, i32* %22, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* %23, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %163, %158
  %167 = load i8*, i8** %11, align 8
  %168 = load i32*, i32** %13, align 8
  %169 = call %struct.TYPE_34__* @get_old_version(i32* %24, i8* %167, i32* %168)
  %170 = call i32 @SVN_ERR(%struct.TYPE_34__* %169)
  %171 = load i32, i32* %24, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %236

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %163
  br label %176

176:                                              ; preds = %175, %113
  %177 = load i8*, i8** %11, align 8
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @strlen(i8* %178)
  %180 = call i64 @svn_dirent_is_root(i8* %177, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %222

182:                                              ; preds = %176
  %183 = load i64, i64* %16, align 8
  %184 = load i64, i64* @svn_node_symlink, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %215

186:                                              ; preds = %182
  %187 = load i8*, i8** %15, align 8
  store i8* %187, i8** %11, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = load i32*, i32** %13, align 8
  %190 = call %struct.TYPE_34__* @svn_io_check_resolved_path(i8* %188, i64* %31, i32* %189)
  %191 = call i32 @SVN_ERR(%struct.TYPE_34__* %190)
  %192 = load i64, i64* %31, align 8
  %193 = load i64, i64* @svn_node_dir, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %214

195:                                              ; preds = %186
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i8*, i8** %11, align 8
  %200 = call i32* @svn_hash_gets(i32 %198, i8* %199)
  store i32* %200, i32** %19, align 8
  %201 = load i32*, i32** %19, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %236

204:                                              ; preds = %195
  %205 = load i8*, i8** %11, align 8
  store i8* %205, i8** %26, align 8
  %206 = load i8*, i8** %11, align 8
  %207 = load i32*, i32** %13, align 8
  %208 = call %struct.TYPE_34__* @read_link_target(i8** %11, i8* %206, i32* %207)
  %209 = call i32 @SVN_ERR(%struct.TYPE_34__* %208)
  br label %210

210:                                              ; preds = %514, %204
  %211 = load i64, i64* @svn_node_dir, align 8
  store i64 %211, i64* %16, align 8
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %22, align 4
  %213 = load i8*, i8** %11, align 8
  store i8* %213, i8** %14, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  br label %110

214:                                              ; preds = %186
  br label %215

215:                                              ; preds = %214, %182
  %216 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %217 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %218 = load i8*, i8** %15, align 8
  %219 = load i32*, i32** %13, align 8
  %220 = call i32 @svn_dirent_local_style(i8* %218, i32* %219)
  %221 = call %struct.TYPE_34__* @svn_error_createf(i64 %216, %struct.TYPE_34__* null, i32 %217, i32 %220)
  store %struct.TYPE_34__* %221, %struct.TYPE_34__** %7, align 8
  br label %567

222:                                              ; preds = %176
  %223 = load i8*, i8** %11, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = call i8* @svn_dirent_dirname(i8* %223, i32* %224)
  store i8* %225, i8** %11, align 8
  %226 = load i32, i32* @TRUE, align 4
  store i32 %226, i32* %22, align 4
  store i8* null, i8** %26, align 8
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i8*, i8** %11, align 8
  %231 = call i32* @svn_hash_gets(i32 %229, i8* %230)
  store i32* %231, i32** %19, align 8
  %232 = load i32*, i32** %19, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %235

234:                                              ; preds = %222
  br label %236

235:                                              ; preds = %222
  br label %110

236:                                              ; preds = %234, %203, %173, %142, %110
  %237 = load i32*, i32** %19, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32*, i32** %19, align 8
  %241 = load i32**, i32*** %8, align 8
  store i32* %240, i32** %241, align 8
  br label %414

242:                                              ; preds = %236
  %243 = load i32, i32* %24, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %324

245:                                              ; preds = %242
  %246 = load i32*, i32** %21, align 8
  %247 = load i32*, i32** %13, align 8
  %248 = call %struct.TYPE_34__* @fetch_sdb_info(i32* %32, i32* %33, i32* %246, i32* %247)
  store %struct.TYPE_34__* %248, %struct.TYPE_34__** %34, align 8
  %249 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %250 = icmp ne %struct.TYPE_34__* %249, null
  br i1 %250, label %251, label %267

251:                                              ; preds = %245
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @SVN_ERR_WC_CORRUPT, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %264

257:                                              ; preds = %251
  %258 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %259 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %260 = load i8*, i8** %15, align 8
  %261 = load i32*, i32** %13, align 8
  %262 = call i32 @svn_dirent_local_style(i8* %260, i32* %261)
  %263 = call %struct.TYPE_34__* @svn_error_quick_wrapf(%struct.TYPE_34__* %258, i32 %259, i32 %262)
  store %struct.TYPE_34__* %263, %struct.TYPE_34__** %7, align 8
  br label %567

264:                                              ; preds = %251
  %265 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %266 = call %struct.TYPE_34__* @svn_error_trace(%struct.TYPE_34__* %265)
  store %struct.TYPE_34__* %266, %struct.TYPE_34__** %7, align 8
  br label %567

267:                                              ; preds = %245
  %268 = load i32**, i32*** %8, align 8
  %269 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i8*, i8** %26, align 8
  %273 = icmp ne i8* %272, null
  br i1 %273, label %274, label %276

274:                                              ; preds = %267
  %275 = load i8*, i8** %26, align 8
  br label %278

276:                                              ; preds = %267
  %277 = load i8*, i8** %11, align 8
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i8* [ %275, %274 ], [ %277, %276 ]
  %280 = call i32 @apr_pstrdup(i32 %271, i8* %279)
  %281 = load i32*, i32** %21, align 8
  %282 = load i32, i32* %32, align 4
  %283 = load i32, i32* %33, align 4
  %284 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %285 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %13, align 8
  %291 = call %struct.TYPE_34__* @svn_wc__db_pdh_create_wcroot(i32** %268, i32 %280, i32* %281, i32 %282, i32 %283, i32 %286, i32 %289, i32* %290)
  store %struct.TYPE_34__* %291, %struct.TYPE_34__** %34, align 8
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %293 = icmp ne %struct.TYPE_34__* %292, null
  br i1 %293, label %294, label %314

294:                                              ; preds = %278
  %295 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %296 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %295, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = load i64, i64* @SVN_ERR_WC_UNSUPPORTED_FORMAT, align 8
  %299 = icmp eq i64 %297, %298
  br i1 %299, label %306, label %300

300:                                              ; preds = %294
  %301 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %302 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %300, %294
  %307 = load i64, i64* %16, align 8
  %308 = load i64, i64* @svn_node_symlink, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %312 = call i32 @svn_error_clear(%struct.TYPE_34__* %311)
  %313 = load i32**, i32*** %8, align 8
  store i32* null, i32** %313, align 8
  br label %323

314:                                              ; preds = %306, %300, %278
  %315 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %316 = icmp ne %struct.TYPE_34__* %315, null
  br i1 %316, label %317, label %322

317:                                              ; preds = %314
  %318 = load %struct.TYPE_34__*, %struct.TYPE_34__** %34, align 8
  %319 = load i32*, i32** %21, align 8
  %320 = call %struct.TYPE_34__* @svn_sqlite__close(i32* %319)
  %321 = call %struct.TYPE_34__* @svn_error_compose_create(%struct.TYPE_34__* %318, %struct.TYPE_34__* %320)
  store %struct.TYPE_34__* %321, %struct.TYPE_34__** %7, align 8
  br label %567

322:                                              ; preds = %314
  br label %323

323:                                              ; preds = %322, %310
  br label %413

324:                                              ; preds = %242
  %325 = load i32, i32* %24, align 4
  %326 = load i32, i32* @SVN_WC__WC_NG_VERSION, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %388

328:                                              ; preds = %324
  %329 = load i8*, i8** %11, align 8
  %330 = load i32, i32* @SVN_WC__ADM_ENTRIES, align 4
  %331 = load i32*, i32** %13, align 8
  %332 = call i8* @svn_wc__adm_child(i8* %329, i32 %330, i32* %331)
  store i8* %332, i8** %36, align 8
  %333 = load i8*, i8** %36, align 8
  %334 = load i32, i32* @APR_FINFO_SIZE, align 4
  %335 = load i32*, i32** %13, align 8
  %336 = call %struct.TYPE_34__* @svn_io_stat(%struct.TYPE_35__* %35, i8* %333, i32 %334, i32* %335)
  store %struct.TYPE_34__* %336, %struct.TYPE_34__** %37, align 8
  %337 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %338 = icmp ne %struct.TYPE_34__* %337, null
  br i1 %338, label %339, label %347

339:                                              ; preds = %328
  %340 = load i64, i64* @SVN_ERR_WC_CORRUPT, align 8
  %341 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %342 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %343 = load i8*, i8** %11, align 8
  %344 = load i32*, i32** %13, align 8
  %345 = call i32 @svn_dirent_local_style(i8* %343, i32* %344)
  %346 = call %struct.TYPE_34__* @svn_error_createf(i64 %340, %struct.TYPE_34__* %341, i32 %342, i32 %345)
  store %struct.TYPE_34__* %346, %struct.TYPE_34__** %7, align 8
  br label %567

347:                                              ; preds = %328
  %348 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %349 = call i32 @svn_error_clear(%struct.TYPE_34__* %348)
  %350 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %35, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = icmp eq i32 3, %351
  br i1 %352, label %353, label %387

353:                                              ; preds = %347
  %354 = load i8*, i8** %11, align 8
  %355 = load i32, i32* @SDB_FILE, align 4
  %356 = load i32*, i32** %13, align 8
  %357 = call i8* @svn_wc__adm_child(i8* %354, i32 %355, i32* %356)
  store i8* %357, i8** %36, align 8
  %358 = load i8*, i8** %36, align 8
  %359 = load i32, i32* @APR_FINFO_SIZE, align 4
  %360 = load i32*, i32** %13, align 8
  %361 = call %struct.TYPE_34__* @svn_io_stat(%struct.TYPE_35__* %35, i8* %358, i32 %359, i32* %360)
  store %struct.TYPE_34__* %361, %struct.TYPE_34__** %37, align 8
  %362 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %363 = icmp ne %struct.TYPE_34__* %362, null
  br i1 %363, label %364, label %379

364:                                              ; preds = %353
  %365 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %366 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = call i64 @APR_STATUS_IS_ENOENT(i64 %367)
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %364
  %371 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %372 = call i32 @svn_error_clear(%struct.TYPE_34__* %371)
  %373 = load i64, i64* @SVN_ERR_WC_CORRUPT, align 8
  %374 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %375 = load i8*, i8** %11, align 8
  %376 = load i32*, i32** %13, align 8
  %377 = call i32 @svn_dirent_local_style(i8* %375, i32* %376)
  %378 = call %struct.TYPE_34__* @svn_error_createf(i64 %373, %struct.TYPE_34__* null, i32 %374, i32 %377)
  store %struct.TYPE_34__* %378, %struct.TYPE_34__** %7, align 8
  br label %567

379:                                              ; preds = %364, %353
  %380 = load i64, i64* @SVN_ERR_WC_CORRUPT, align 8
  %381 = load %struct.TYPE_34__*, %struct.TYPE_34__** %37, align 8
  %382 = call i32 @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %383 = load i8*, i8** %11, align 8
  %384 = load i32*, i32** %13, align 8
  %385 = call i32 @svn_dirent_local_style(i8* %383, i32* %384)
  %386 = call %struct.TYPE_34__* @svn_error_createf(i64 %380, %struct.TYPE_34__* %381, i32 %382, i32 %385)
  store %struct.TYPE_34__* %386, %struct.TYPE_34__** %7, align 8
  br label %567

387:                                              ; preds = %347
  br label %388

388:                                              ; preds = %387, %324
  %389 = load i32**, i32*** %8, align 8
  %390 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %391 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i8*, i8** %26, align 8
  %394 = icmp ne i8* %393, null
  br i1 %394, label %395, label %397

395:                                              ; preds = %388
  %396 = load i8*, i8** %26, align 8
  br label %399

397:                                              ; preds = %388
  %398 = load i8*, i8** %11, align 8
  br label %399

399:                                              ; preds = %397, %395
  %400 = phi i8* [ %396, %395 ], [ %398, %397 ]
  %401 = call i32 @apr_pstrdup(i32 %392, i8* %400)
  %402 = load i32, i32* @UNKNOWN_WC_ID, align 4
  %403 = load i32, i32* %24, align 4
  %404 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %405 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %408 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32*, i32** %13, align 8
  %411 = call %struct.TYPE_34__* @svn_wc__db_pdh_create_wcroot(i32** %389, i32 %401, i32* null, i32 %402, i32 %403, i32 %406, i32 %409, i32* %410)
  %412 = call i32 @SVN_ERR(%struct.TYPE_34__* %411)
  br label %413

413:                                              ; preds = %399, %323
  br label %414

414:                                              ; preds = %413, %239
  %415 = load i32**, i32*** %8, align 8
  %416 = load i32*, i32** %415, align 8
  %417 = icmp ne i32* %416, null
  br i1 %417, label %418, label %433

418:                                              ; preds = %414
  %419 = load i8*, i8** %26, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %423

421:                                              ; preds = %418
  %422 = load i8*, i8** %26, align 8
  store i8* %422, i8** %14, align 8
  br label %423

423:                                              ; preds = %421, %418
  %424 = load i32**, i32*** %8, align 8
  %425 = load i32*, i32** %424, align 8
  %426 = load i8*, i8** %14, align 8
  %427 = call i8* @compute_relpath(i32* %425, i8* %426, i32* null)
  store i8* %427, i8** %38, align 8
  %428 = load i8*, i8** %38, align 8
  %429 = load i8*, i8** %17, align 8
  %430 = load i32*, i32** %12, align 8
  %431 = call i8* @svn_relpath_join(i8* %428, i8* %429, i32* %430)
  %432 = load i8**, i8*** %9, align 8
  store i8* %431, i8** %432, align 8
  br label %433

433:                                              ; preds = %423, %414
  %434 = load i64, i64* %16, align 8
  %435 = load i64, i64* @svn_node_symlink, align 8
  %436 = icmp eq i64 %434, %435
  br i1 %436, label %437, label %517

437:                                              ; preds = %433
  %438 = load i32, i32* @FALSE, align 4
  store i32 %438, i32* %39, align 4
  %439 = load i32**, i32*** %8, align 8
  %440 = load i32*, i32** %439, align 8
  %441 = icmp ne i32* %440, null
  br i1 %441, label %442, label %489

442:                                              ; preds = %437
  %443 = load i32**, i32*** %8, align 8
  %444 = load i32*, i32** %443, align 8
  %445 = load i8**, i8*** %9, align 8
  %446 = load i8*, i8** %445, align 8
  %447 = load i32*, i32** %13, align 8
  %448 = load i32*, i32** %13, align 8
  %449 = call %struct.TYPE_34__* @svn_wc__db_read_info_internal(i64* %40, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %41, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %444, i8* %446, i32* %447, i32* %448)
  store %struct.TYPE_34__* %449, %struct.TYPE_34__** %42, align 8
  %450 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %451 = icmp ne %struct.TYPE_34__* %450, null
  br i1 %451, label %452, label %469

452:                                              ; preds = %442
  %453 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %454 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %457 = icmp ne i64 %455, %456
  br i1 %457, label %458, label %465

458:                                              ; preds = %452
  %459 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %460 = call i32 @SVN_WC__ERR_IS_NOT_CURRENT_WC(%struct.TYPE_34__* %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %465, label %462

462:                                              ; preds = %458
  %463 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %464 = call %struct.TYPE_34__* @svn_error_trace(%struct.TYPE_34__* %463)
  store %struct.TYPE_34__* %464, %struct.TYPE_34__** %7, align 8
  br label %567

465:                                              ; preds = %458, %452
  %466 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %467 = call i32 @svn_error_clear(%struct.TYPE_34__* %466)
  %468 = load i32, i32* @TRUE, align 4
  store i32 %468, i32* %39, align 4
  br label %488

469:                                              ; preds = %442
  %470 = load i64, i64* %40, align 8
  %471 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %481, label %473

473:                                              ; preds = %469
  %474 = load i64, i64* %40, align 8
  %475 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %481, label %477

477:                                              ; preds = %473
  %478 = load i64, i64* %40, align 8
  %479 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %480 = icmp eq i64 %478, %479
  br i1 %480, label %481, label %485

481:                                              ; preds = %477, %473, %469
  %482 = load i32, i32* %41, align 4
  %483 = icmp ne i32 %482, 0
  %484 = xor i1 %483, true
  br label %485

485:                                              ; preds = %481, %477
  %486 = phi i1 [ false, %477 ], [ %484, %481 ]
  %487 = zext i1 %486 to i32
  store i32 %487, i32* %39, align 4
  br label %488

488:                                              ; preds = %485, %465
  br label %491

489:                                              ; preds = %437
  %490 = load i32, i32* @TRUE, align 4
  store i32 %490, i32* %39, align 4
  br label %491

491:                                              ; preds = %489, %488
  %492 = load i32, i32* %39, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %516

494:                                              ; preds = %491
  %495 = load i8*, i8** %15, align 8
  %496 = load i32*, i32** %13, align 8
  %497 = call %struct.TYPE_34__* @svn_io_check_resolved_path(i8* %495, i64* %43, i32* %496)
  %498 = call i32 @SVN_ERR(%struct.TYPE_34__* %497)
  %499 = load i64, i64* %43, align 8
  %500 = load i64, i64* @svn_node_dir, align 8
  %501 = icmp eq i64 %499, %500
  br i1 %501, label %502, label %515

502:                                              ; preds = %494
  %503 = load i8*, i8** %15, align 8
  store i8* %503, i8** %26, align 8
  %504 = load i8*, i8** %15, align 8
  %505 = load i32*, i32** %13, align 8
  %506 = call %struct.TYPE_34__* @read_link_target(i8** %11, i8* %504, i32* %505)
  %507 = call i32 @SVN_ERR(%struct.TYPE_34__* %506)
  %508 = load i32*, i32** %21, align 8
  %509 = icmp ne i32* %508, null
  br i1 %509, label %510, label %514

510:                                              ; preds = %502
  %511 = load i32*, i32** %21, align 8
  %512 = call %struct.TYPE_34__* @svn_sqlite__close(i32* %511)
  %513 = call i32 @SVN_ERR(%struct.TYPE_34__* %512)
  br label %514

514:                                              ; preds = %510, %502
  br label %210

515:                                              ; preds = %494
  br label %516

516:                                              ; preds = %515, %491
  br label %517

517:                                              ; preds = %516, %433
  %518 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %519 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %522 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = load i8*, i8** %14, align 8
  %525 = call i32 @apr_pstrdup(i32 %523, i8* %524)
  %526 = load i32**, i32*** %8, align 8
  %527 = load i32*, i32** %526, align 8
  %528 = call i32 @svn_hash_sets(i32 %520, i32 %525, i32* %527)
  %529 = load i32, i32* %22, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %533, label %531

531:                                              ; preds = %517
  %532 = load %struct.TYPE_34__*, %struct.TYPE_34__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_34__* %532, %struct.TYPE_34__** %7, align 8
  br label %567

533:                                              ; preds = %517
  %534 = load i8*, i8** %14, align 8
  store i8* %534, i8** %20, align 8
  br label %535

535:                                              ; preds = %560, %533
  %536 = load i8*, i8** %20, align 8
  %537 = load i32*, i32** %13, align 8
  %538 = call i8* @svn_dirent_dirname(i8* %536, i32* %537)
  store i8* %538, i8** %44, align 8
  %539 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %540 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %539, i32 0, i32 1
  %541 = load i32, i32* %540, align 4
  %542 = load i8*, i8** %44, align 8
  %543 = call i32* @svn_hash_gets(i32 %541, i8* %542)
  store i32* %543, i32** %45, align 8
  %544 = load i32*, i32** %45, align 8
  %545 = icmp eq i32* %544, null
  br i1 %545, label %546, label %558

546:                                              ; preds = %535
  %547 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %548 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %547, i32 0, i32 1
  %549 = load i32, i32* %548, align 4
  %550 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %551 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = load i8*, i8** %44, align 8
  %554 = call i32 @apr_pstrdup(i32 %552, i8* %553)
  %555 = load i32**, i32*** %8, align 8
  %556 = load i32*, i32** %555, align 8
  %557 = call i32 @svn_hash_sets(i32 %549, i32 %554, i32* %556)
  br label %558

558:                                              ; preds = %546, %535
  %559 = load i8*, i8** %44, align 8
  store i8* %559, i8** %20, align 8
  br label %560

560:                                              ; preds = %558
  %561 = load i8*, i8** %20, align 8
  %562 = load i8*, i8** %11, align 8
  %563 = call i64 @strcmp(i8* %561, i8* %562)
  %564 = icmp ne i64 %563, 0
  br i1 %564, label %535, label %565

565:                                              ; preds = %560
  %566 = load %struct.TYPE_34__*, %struct.TYPE_34__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_34__* %566, %struct.TYPE_34__** %7, align 8
  br label %567

567:                                              ; preds = %565, %531, %462, %379, %370, %339, %317, %264, %257, %215, %155, %85, %56
  %568 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  ret %struct.TYPE_34__* %568
}

declare dso_local i32* @svn_hash_gets(i32, i8*) #1

declare dso_local i8* @compute_relpath(i32*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @get_path_kind(i64*, %struct.TYPE_33__*, i8*, i32*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i8* @svn_wc_get_adm_dir(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_wc__db_util_open_db(i32**, i8*, i32, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i64) #1

declare dso_local %struct.TYPE_34__* @svn_error_trace(%struct.TYPE_34__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @get_old_version(i32*, i8*, i32*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_34__* @svn_io_check_resolved_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_34__* @read_link_target(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_error_createf(i64, %struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_34__* @fetch_sdb_info(i32*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_error_quick_wrapf(%struct.TYPE_34__*, i32, i32) #1

declare dso_local %struct.TYPE_34__* @svn_wc__db_pdh_create_wcroot(i32**, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @apr_pstrdup(i32, i8*) #1

declare dso_local %struct.TYPE_34__* @svn_error_compose_create(%struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @svn_sqlite__close(i32*) #1

declare dso_local i8* @svn_wc__adm_child(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_io_stat(%struct.TYPE_35__*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_34__* @svn_wc__db_read_info_internal(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @SVN_WC__ERR_IS_NOT_CURRENT_WC(%struct.TYPE_34__*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
