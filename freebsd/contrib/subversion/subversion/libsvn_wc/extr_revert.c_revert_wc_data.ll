; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_revert.c_revert_wc_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_revert.c_revert_wc_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64 }

@APR_FINFO_TYPE = common dso_local global i32 0, align 4
@APR_FINFO_LINK = common dso_local global i32 0, align 4
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@APR_FINFO_MTIME = common dso_local global i32 0, align 4
@SVN__APR_FINFO_EXECUTABLE = common dso_local global i32 0, align 4
@SVN__APR_FINFO_READONLY = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@APR_REG = common dso_local global i64 0, align 8
@APR_LNK = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@APR_DIR = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_FILESIZE = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@SVN_PROP_NEEDS_LOCK = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, i32*, i32*, i8*, i64, i64, i64, i64, i64, i32, i32, i32, i8*, i32*)* @revert_wc_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @revert_wc_data(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i32 %9, i32 %10, i32 %11, i8* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_12__*, align 8
  %31 = alloca %struct.TYPE_13__, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  store i32* %0, i32** %16, align 8
  store i32* %1, i32** %17, align 8
  store i32* %2, i32** %18, align 8
  store i8* %3, i8** %19, align 8
  store i64 %4, i64* %20, align 8
  store i64 %5, i64* %21, align 8
  store i64 %6, i64* %22, align 8
  store i64 %7, i64* %23, align 8
  store i64 %8, i64* %24, align 8
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  %41 = load i8*, i8** %19, align 8
  %42 = load i32, i32* @APR_FINFO_TYPE, align 4
  %43 = load i32, i32* @APR_FINFO_LINK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @APR_FINFO_SIZE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @APR_FINFO_MTIME, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @SVN__APR_FINFO_EXECUTABLE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SVN__APR_FINFO_READONLY, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %29, align 8
  %54 = call %struct.TYPE_12__* @svn_io_stat(%struct.TYPE_13__* %31, i8* %41, i32 %52, i32* %53)
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %30, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %56 = icmp ne %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %73

57:                                               ; preds = %14
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @APR_STATUS_IS_ENOENT(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @SVN__APR_STATUS_IS_ENOTDIR(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %57
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %71 = call i32 @svn_error_clear(%struct.TYPE_12__* %70)
  %72 = load i64, i64* @svn_node_none, align 8
  store i64 %72, i64* %32, align 8
  br label %103

73:                                               ; preds = %63, %14
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %99, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @APR_REG, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @APR_LNK, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81, %76
  %87 = load i64, i64* @svn_node_file, align 8
  store i64 %87, i64* %32, align 8
  br label %98

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @APR_DIR, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i64, i64* @svn_node_dir, align 8
  store i64 %94, i64* %32, align 8
  br label %97

95:                                               ; preds = %88
  %96 = load i64, i64* @svn_node_unknown, align 8
  store i64 %96, i64* %32, align 8
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %86
  br label %102

99:                                               ; preds = %73
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %101 = call %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__* %100)
  store %struct.TYPE_12__* %101, %struct.TYPE_12__** %15, align 8
  br label %376

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %69
  %104 = load i32, i32* %25, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %145

106:                                              ; preds = %103
  %107 = load i64, i64* %22, align 8
  %108 = load i64, i64* @svn_node_file, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %106
  %111 = load i64, i64* %32, align 8
  %112 = load i64, i64* @svn_node_file, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i8*, i8** %19, align 8
  %116 = load i32, i32* @TRUE, align 4
  %117 = load i32*, i32** %29, align 8
  %118 = call i32 @svn_io_remove_file2(i8* %115, i32 %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i64, i64* @svn_node_none, align 8
  store i64 %120, i64* %32, align 8
  br label %144

121:                                              ; preds = %110, %106
  %122 = load i64, i64* %22, align 8
  %123 = load i64, i64* @svn_node_dir, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load i64, i64* %32, align 8
  %127 = load i64, i64* @svn_node_dir, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %125
  %130 = load i32*, i32** %18, align 8
  %131 = load i8*, i8** %19, align 8
  %132 = load i32, i32* @TRUE, align 4
  %133 = load i32, i32* %27, align 4
  %134 = load i8*, i8** %28, align 8
  %135 = load i32*, i32** %29, align 8
  %136 = call i32 @revert_restore_handle_copied_dirs(i32* %33, i32* %130, i8* %131, i32 %132, i32 %133, i8* %134, i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i32, i32* %33, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = load i64, i64* @svn_node_none, align 8
  store i64 %141, i64* %32, align 8
  br label %142

142:                                              ; preds = %140, %129
  br label %143

143:                                              ; preds = %142, %125, %121
  br label %144

144:                                              ; preds = %143, %114
  br label %145

145:                                              ; preds = %144, %103
  %146 = load i64, i64* %32, align 8
  %147 = load i64, i64* @svn_node_none, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %320

149:                                              ; preds = %145
  %150 = load i64, i64* %20, align 8
  %151 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %320

153:                                              ; preds = %149
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %320

157:                                              ; preds = %153
  %158 = load i64, i64* %20, align 8
  %159 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %320

161:                                              ; preds = %157
  %162 = load i64, i64* %20, align 8
  %163 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %320

165:                                              ; preds = %161
  %166 = load i64, i64* %32, align 8
  %167 = load i64, i64* @svn_node_dir, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %182

169:                                              ; preds = %165
  %170 = load i64, i64* %21, align 8
  %171 = load i64, i64* @svn_node_dir, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %169
  %174 = load i8*, i8** %19, align 8
  %175 = load i32, i32* @FALSE, align 4
  %176 = load i32, i32* %27, align 4
  %177 = load i8*, i8** %28, align 8
  %178 = load i32*, i32** %29, align 8
  %179 = call i32 @svn_io_remove_dir2(i8* %174, i32 %175, i32 %176, i8* %177, i32* %178)
  %180 = call i32 @SVN_ERR(i32 %179)
  %181 = load i64, i64* @svn_node_none, align 8
  store i64 %181, i64* %32, align 8
  br label %319

182:                                              ; preds = %169, %165
  %183 = load i64, i64* %32, align 8
  %184 = load i64, i64* @svn_node_file, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %182
  %187 = load i64, i64* %21, align 8
  %188 = load i64, i64* @svn_node_file, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load i8*, i8** %19, align 8
  %192 = load i32, i32* @FALSE, align 4
  %193 = load i32*, i32** %29, align 8
  %194 = call i32 @svn_io_remove_file2(i8* %191, i32 %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  %196 = load i64, i64* @svn_node_none, align 8
  store i64 %196, i64* %32, align 8
  br label %318

197:                                              ; preds = %186, %182
  %198 = load i64, i64* %32, align 8
  %199 = load i64, i64* @svn_node_file, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %317

201:                                              ; preds = %197
  %202 = load i32*, i32** %18, align 8
  %203 = load i8*, i8** %19, align 8
  %204 = load i32*, i32** %29, align 8
  %205 = load i32*, i32** %29, align 8
  %206 = call i32 @svn_wc__db_read_pristine_props(i32** %35, i32* %202, i8* %203, i32* %204, i32* %205)
  %207 = call i32 @SVN_ERR(i32 %206)
  %208 = load i64, i64* %23, align 8
  %209 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %226

211:                                              ; preds = %201
  %212 = load i64, i64* %24, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %211
  %215 = load i64, i64* %23, align 8
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %215, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %214
  %220 = load i64, i64* %24, align 8
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %220, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i32, i32* @FALSE, align 4
  store i32 %225, i32* %34, align 4
  br label %233

226:                                              ; preds = %219, %214, %211, %201
  %227 = load i32*, i32** %18, align 8
  %228 = load i8*, i8** %19, align 8
  %229 = load i32, i32* @TRUE, align 4
  %230 = load i32*, i32** %29, align 8
  %231 = call i32 @svn_wc__internal_file_modified_p(i32* %34, i32* %227, i8* %228, i32 %229, i32* %230)
  %232 = call i32 @SVN_ERR(i32 %231)
  br label %233

233:                                              ; preds = %226, %224
  %234 = load i32, i32* %34, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %233
  %237 = load i64, i64* @svn_node_none, align 8
  store i64 %237, i64* %32, align 8
  br label %316

238:                                              ; preds = %233
  %239 = load i64, i64* %20, align 8
  %240 = load i64, i64* @svn_wc__db_status_normal, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %278

242:                                              ; preds = %238
  %243 = load i32*, i32** %29, align 8
  %244 = call i32 @svn_io__is_finfo_read_only(i32* %36, %struct.TYPE_13__* %31, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load i32*, i32** %35, align 8
  %247 = load i32, i32* @SVN_PROP_NEEDS_LOCK, align 4
  %248 = call i32* @svn_hash_gets(i32* %246, i32 %247)
  store i32* %248, i32** %37, align 8
  %249 = load i32*, i32** %37, align 8
  %250 = icmp ne i32* %249, null
  br i1 %250, label %251, label %262

251:                                              ; preds = %242
  %252 = load i32, i32* %36, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %262, label %254

254:                                              ; preds = %251
  %255 = load i8*, i8** %19, align 8
  %256 = load i32, i32* @FALSE, align 4
  %257 = load i32*, i32** %29, align 8
  %258 = call i32 @svn_io_set_file_read_only(i8* %255, i32 %256, i32* %257)
  %259 = call i32 @SVN_ERR(i32 %258)
  %260 = load i32, i32* @TRUE, align 4
  %261 = load i32*, i32** %17, align 8
  store i32 %260, i32* %261, align 4
  br label %277

262:                                              ; preds = %251, %242
  %263 = load i32*, i32** %37, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %276, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %36, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %276

268:                                              ; preds = %265
  %269 = load i8*, i8** %19, align 8
  %270 = load i32, i32* @FALSE, align 4
  %271 = load i32*, i32** %29, align 8
  %272 = call i32 @svn_io_set_file_read_write(i8* %269, i32 %270, i32* %271)
  %273 = call i32 @SVN_ERR(i32 %272)
  %274 = load i32, i32* @TRUE, align 4
  %275 = load i32*, i32** %17, align 8
  store i32 %274, i32* %275, align 4
  br label %276

276:                                              ; preds = %268, %265, %262
  br label %277

277:                                              ; preds = %276, %254
  br label %278

278:                                              ; preds = %277, %238
  %279 = load i32*, i32** %29, align 8
  %280 = call i32 @svn_io__is_finfo_executable(i32* %38, %struct.TYPE_13__* %31, i32* %279)
  %281 = call i32 @SVN_ERR(i32 %280)
  %282 = load i32*, i32** %35, align 8
  %283 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %284 = call i32* @svn_hash_gets(i32* %282, i32 %283)
  store i32* %284, i32** %39, align 8
  %285 = load i32*, i32** %39, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %299

287:                                              ; preds = %278
  %288 = load i32, i32* %38, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %299, label %290

290:                                              ; preds = %287
  %291 = load i8*, i8** %19, align 8
  %292 = load i32, i32* @TRUE, align 4
  %293 = load i32, i32* @FALSE, align 4
  %294 = load i32*, i32** %29, align 8
  %295 = call i32 @svn_io_set_file_executable(i8* %291, i32 %292, i32 %293, i32* %294)
  %296 = call i32 @SVN_ERR(i32 %295)
  %297 = load i32, i32* @TRUE, align 4
  %298 = load i32*, i32** %17, align 8
  store i32 %297, i32* %298, align 4
  br label %315

299:                                              ; preds = %287, %278
  %300 = load i32*, i32** %39, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %314, label %302

302:                                              ; preds = %299
  %303 = load i32, i32* %38, align 4
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %314

305:                                              ; preds = %302
  %306 = load i8*, i8** %19, align 8
  %307 = load i32, i32* @FALSE, align 4
  %308 = load i32, i32* @FALSE, align 4
  %309 = load i32*, i32** %29, align 8
  %310 = call i32 @svn_io_set_file_executable(i8* %306, i32 %307, i32 %308, i32* %309)
  %311 = call i32 @SVN_ERR(i32 %310)
  %312 = load i32, i32* @TRUE, align 4
  %313 = load i32*, i32** %17, align 8
  store i32 %312, i32* %313, align 4
  br label %314

314:                                              ; preds = %305, %302, %299
  br label %315

315:                                              ; preds = %314, %290
  br label %316

316:                                              ; preds = %315, %236
  br label %317

317:                                              ; preds = %316, %197
  br label %318

318:                                              ; preds = %317, %190
  br label %319

319:                                              ; preds = %318, %173
  br label %320

320:                                              ; preds = %319, %161, %157, %153, %149, %145
  %321 = load i64, i64* %32, align 8
  %322 = load i64, i64* @svn_node_none, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %374

324:                                              ; preds = %320
  %325 = load i64, i64* %20, align 8
  %326 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %327 = icmp ne i64 %325, %326
  br i1 %327, label %328, label %374

328:                                              ; preds = %324
  %329 = load i64, i64* %20, align 8
  %330 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %331 = icmp ne i64 %329, %330
  br i1 %331, label %332, label %374

332:                                              ; preds = %328
  %333 = load i64, i64* %20, align 8
  %334 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %335 = icmp ne i64 %333, %334
  br i1 %335, label %336, label %374

336:                                              ; preds = %332
  %337 = load i64, i64* %20, align 8
  %338 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %339 = icmp ne i64 %337, %338
  br i1 %339, label %340, label %374

340:                                              ; preds = %336
  %341 = load i64, i64* %21, align 8
  %342 = load i64, i64* @svn_node_dir, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %340
  %345 = load i8*, i8** %19, align 8
  %346 = load i32, i32* @APR_OS_DEFAULT, align 4
  %347 = load i32*, i32** %29, align 8
  %348 = call i32 @svn_io_dir_make(i8* %345, i32 %346, i32* %347)
  %349 = call i32 @SVN_ERR(i32 %348)
  br label %350

350:                                              ; preds = %344, %340
  %351 = load i64, i64* %21, align 8
  %352 = load i64, i64* @svn_node_file, align 8
  %353 = icmp eq i64 %351, %352
  br i1 %353, label %354, label %371

354:                                              ; preds = %350
  %355 = load i32*, i32** %18, align 8
  %356 = load i8*, i8** %19, align 8
  %357 = load i32, i32* %26, align 4
  %358 = load i32, i32* @TRUE, align 4
  %359 = load i32*, i32** %29, align 8
  %360 = load i32*, i32** %29, align 8
  %361 = call i32 @svn_wc__wq_build_file_install(i32** %40, i32* %355, i8* %356, i32* null, i32 %357, i32 %358, i32* %359, i32* %360)
  %362 = call i32 @SVN_ERR(i32 %361)
  %363 = load i32*, i32** %18, align 8
  %364 = load i8*, i8** %19, align 8
  %365 = load i32*, i32** %40, align 8
  %366 = load i32*, i32** %29, align 8
  %367 = call i32 @svn_wc__db_wq_add(i32* %363, i8* %364, i32* %365, i32* %366)
  %368 = call i32 @SVN_ERR(i32 %367)
  %369 = load i32, i32* @TRUE, align 4
  %370 = load i32*, i32** %16, align 8
  store i32 %369, i32* %370, align 4
  br label %371

371:                                              ; preds = %354, %350
  %372 = load i32, i32* @TRUE, align 4
  %373 = load i32*, i32** %17, align 8
  store i32 %372, i32* %373, align 4
  br label %374

374:                                              ; preds = %371, %336, %332, %328, %324, %320
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %375, %struct.TYPE_12__** %15, align 8
  br label %376

376:                                              ; preds = %374, %99
  %377 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  ret %struct.TYPE_12__* %377
}

declare dso_local %struct.TYPE_12__* @svn_io_stat(%struct.TYPE_13__*, i8*, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i64 @SVN__APR_STATUS_IS_ENOTDIR(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @svn_error_trace(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i32, i32*) #1

declare dso_local i32 @revert_restore_handle_copied_dirs(i32*, i32*, i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @svn_io__is_finfo_read_only(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_io_set_file_read_only(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_set_file_read_write(i8*, i32, i32*) #1

declare dso_local i32 @svn_io__is_finfo_executable(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @svn_io_set_file_executable(i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32*, i8*, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wq_add(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
