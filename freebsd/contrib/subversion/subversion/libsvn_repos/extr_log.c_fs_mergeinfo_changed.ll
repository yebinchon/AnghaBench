; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_fs_mergeinfo_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_fs_mergeinfo_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, i8*, i32, i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_10__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_tristate_false = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@svn_mergeinfo_inherited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32, i32*, i32*)* @fs_mergeinfo_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fs_mergeinfo_changed(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_10__*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %19, align 8
  %36 = load i64, i64* @FALSE, align 8
  store i64 %36, i64* %20, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = call i32 @svn_hash__make(i32* %37)
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %12, align 8
  %41 = call i32 @svn_hash__make(i32* %40)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %6
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %7, align 8
  br label %353

47:                                               ; preds = %6
  %48 = load i32*, i32** %13, align 8
  %49 = call i32* @svn_pool_create(i32* %48)
  store i32* %49, i32** %16, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_fs_revision_root(i32** %14, i32* %50, i32 %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i32*, i32** %14, align 8
  %56 = load i32*, i32** %16, align 8
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @svn_fs_paths_changed3(i32** %17, i32* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %17, align 8
  %61 = call i32 @svn_fs_path_change_get(%struct.TYPE_11__** %18, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  br label %63

63:                                               ; preds = %102, %47
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %65 = icmp ne %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i64, i64* %19, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i64, i64* %20, align 8
  %71 = icmp ne i64 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i1 [ true, %66 ], [ %72, %69 ]
  br label %75

75:                                               ; preds = %73, %63
  %76 = phi i1 [ false, %63 ], [ %74, %73 ]
  br i1 %76, label %77, label %106

77:                                               ; preds = %75
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @svn_tristate_false, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %19, align 8
  br label %90

90:                                               ; preds = %88, %83, %77
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 132
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 129
  br i1 %99, label %100, label %102

100:                                              ; preds = %95, %90
  %101 = load i64, i64* @TRUE, align 8
  store i64 %101, i64* %20, align 8
  br label %102

102:                                              ; preds = %100, %95
  %103 = load i32*, i32** %17, align 8
  %104 = call i32 @svn_fs_path_change_get(%struct.TYPE_11__** %18, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  br label %63

106:                                              ; preds = %75
  %107 = load i64, i64* %19, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @svn_pool_destroy(i32* %110)
  %112 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %112, i32** %7, align 8
  br label %353

113:                                              ; preds = %106
  %114 = load i32*, i32** %16, align 8
  %115 = call i32 @svn_pool_clear(i32* %114)
  %116 = load i32*, i32** %14, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @svn_fs_paths_changed3(i32** %17, i32* %116, i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i32*, i32** %13, align 8
  %122 = call i32* @svn_pool_create(i32* %121)
  store i32* %122, i32** %15, align 8
  br label %123

123:                                              ; preds = %326, %251, %239, %207, %146, %140, %113
  %124 = load i64, i64* @TRUE, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %347

126:                                              ; preds = %123
  store i8* null, i8** %22, align 8
  %127 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %127, i32* %23, align 4
  store i32* null, i32** %24, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %25, align 8
  %128 = load i32*, i32** %17, align 8
  %129 = call i32 @svn_fs_path_change_get(%struct.TYPE_11__** %18, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %132 = icmp ne %struct.TYPE_11__* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %347

134:                                              ; preds = %126
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @svn_tristate_false, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  br label %123

141:                                              ; preds = %134
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  br label %123

147:                                              ; preds = %141
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 5
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  store i8* %151, i8** %21, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = call i32 @svn_pool_clear(i32* %152)
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  switch i32 %156, label %207 [
    i32 130, label %157
    i32 132, label %187
    i32 129, label %187
    i32 131, label %206
    i32 128, label %206
  ]

157:                                              ; preds = %147
  %158 = load i64, i64* %20, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %182

160:                                              ; preds = %157
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load i8*, i8** %21, align 8
  %164 = load i32*, i32** %15, align 8
  %165 = call i32 @svn_repos__prev_location(i32* %27, i8** %22, i32* %23, i32* %161, i32 %162, i8* %163, i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  %167 = load i8*, i8** %22, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %160
  %170 = load i32, i32* %23, align 4
  %171 = call i64 @SVN_IS_VALID_REVNUM(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* %27, align 4
  %175 = load i32, i32* %11, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %181, label %177

177:                                              ; preds = %173, %169, %160
  %178 = load i8*, i8** %21, align 8
  store i8* %178, i8** %22, align 8
  %179 = load i32, i32* %11, align 4
  %180 = sub nsw i32 %179, 1
  store i32 %180, i32* %23, align 4
  br label %181

181:                                              ; preds = %177, %173
  br label %186

182:                                              ; preds = %157
  %183 = load i8*, i8** %21, align 8
  store i8* %183, i8** %22, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %23, align 4
  br label %186

186:                                              ; preds = %182, %181
  br label %208

187:                                              ; preds = %147, %147
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %199

192:                                              ; preds = %187
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  store i32 %195, i32* %23, align 4
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load i8*, i8** %197, align 8
  store i8* %198, i8** %22, align 8
  br label %205

199:                                              ; preds = %187
  %200 = load i32*, i32** %14, align 8
  %201 = load i8*, i8** %21, align 8
  %202 = load i32*, i32** %15, align 8
  %203 = call i32 @svn_fs_copied_from(i32* %23, i8** %22, i32* %200, i8* %201, i32* %202)
  %204 = call i32 @SVN_ERR(i32 %203)
  br label %205

205:                                              ; preds = %199, %192
  br label %208

206:                                              ; preds = %147, %147
  br label %207

207:                                              ; preds = %147, %206
  br label %123

208:                                              ; preds = %205, %186
  %209 = load i8*, i8** %22, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %227

211:                                              ; preds = %208
  %212 = load i32, i32* %23, align 4
  %213 = call i64 @SVN_IS_VALID_REVNUM(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %211
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %23, align 4
  %218 = load i32*, i32** %15, align 8
  %219 = call i32 @svn_fs_revision_root(i32** %24, i32* %216, i32 %217, i32* %218)
  %220 = call i32 @SVN_ERR(i32 %219)
  %221 = load i32*, i32** %24, align 8
  %222 = load i8*, i8** %22, align 8
  %223 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @svn_fs_node_prop(%struct.TYPE_10__** %25, i32* %221, i8* %222, i32 %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %227

227:                                              ; preds = %215, %211, %208
  %228 = load i32*, i32** %14, align 8
  %229 = load i8*, i8** %21, align 8
  %230 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %231 = load i32*, i32** %15, align 8
  %232 = call i32 @svn_fs_node_prop(%struct.TYPE_10__** %26, i32* %228, i8* %229, i32 %230, i32* %231)
  %233 = call i32 @SVN_ERR(i32 %232)
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %235 = icmp ne %struct.TYPE_10__* %234, null
  br i1 %235, label %240, label %236

236:                                              ; preds = %227
  %237 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %238 = icmp ne %struct.TYPE_10__* %237, null
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  br label %123

240:                                              ; preds = %236, %227
  %241 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %242 = icmp ne %struct.TYPE_10__* %241, null
  br i1 %242, label %243, label %252

243:                                              ; preds = %240
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %245 = icmp ne %struct.TYPE_10__* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %249 = call i64 @svn_string_compare(%struct.TYPE_10__* %247, %struct.TYPE_10__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %246
  br label %123

252:                                              ; preds = %246, %243, %240
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %254 = icmp ne %struct.TYPE_10__* %253, null
  br i1 %254, label %255, label %275

255:                                              ; preds = %252
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %257 = icmp ne %struct.TYPE_10__* %256, null
  br i1 %257, label %275, label %258

258:                                              ; preds = %255
  %259 = load i32*, i32** %14, align 8
  %260 = load i8*, i8** %21, align 8
  %261 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %262 = load i64, i64* @TRUE, align 8
  %263 = load i32*, i32** %15, align 8
  %264 = load i32*, i32** %15, align 8
  %265 = call i32 @svn_fs__get_mergeinfo_for_path(i32** %28, i32* %259, i8* %260, i32 %261, i64 %262, i32* %263, i32* %264)
  %266 = call i32 @SVN_ERR(i32 %265)
  %267 = load i32*, i32** %28, align 8
  %268 = icmp ne i32* %267, null
  br i1 %268, label %269, label %274

269:                                              ; preds = %258
  %270 = load i32*, i32** %28, align 8
  %271 = load i32*, i32** %15, align 8
  %272 = call i32 @svn_mergeinfo_to_string(%struct.TYPE_10__** %26, i32* %270, i32* %271)
  %273 = call i32 @SVN_ERR(i32 %272)
  br label %274

274:                                              ; preds = %269, %258
  br label %306

275:                                              ; preds = %255, %252
  %276 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %277 = icmp ne %struct.TYPE_10__* %276, null
  br i1 %277, label %278, label %305

278:                                              ; preds = %275
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %280 = icmp ne %struct.TYPE_10__* %279, null
  br i1 %280, label %305, label %281

281:                                              ; preds = %278
  %282 = load i8*, i8** %22, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %284, label %305

284:                                              ; preds = %281
  %285 = load i32, i32* %23, align 4
  %286 = call i64 @SVN_IS_VALID_REVNUM(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %305

288:                                              ; preds = %284
  %289 = load i32*, i32** %24, align 8
  %290 = load i8*, i8** %22, align 8
  %291 = load i32, i32* @svn_mergeinfo_inherited, align 4
  %292 = load i64, i64* @TRUE, align 8
  %293 = load i32*, i32** %15, align 8
  %294 = load i32*, i32** %15, align 8
  %295 = call i32 @svn_fs__get_mergeinfo_for_path(i32** %29, i32* %289, i8* %290, i32 %291, i64 %292, i32* %293, i32* %294)
  %296 = call i32 @SVN_ERR(i32 %295)
  %297 = load i32*, i32** %29, align 8
  %298 = icmp ne i32* %297, null
  br i1 %298, label %299, label %304

299:                                              ; preds = %288
  %300 = load i32*, i32** %29, align 8
  %301 = load i32*, i32** %15, align 8
  %302 = call i32 @svn_mergeinfo_to_string(%struct.TYPE_10__** %25, i32* %300, i32* %301)
  %303 = call i32 @SVN_ERR(i32 %302)
  br label %304

304:                                              ; preds = %299, %288
  br label %305

305:                                              ; preds = %304, %284, %281, %278, %275
  br label %306

306:                                              ; preds = %305, %274
  store i32* null, i32** %30, align 8
  store i32* null, i32** %31, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %308 = icmp ne %struct.TYPE_10__* %307, null
  br i1 %308, label %309, label %316

309:                                              ; preds = %306
  %310 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %311 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = load i32*, i32** %15, align 8
  %314 = call i32 @svn_mergeinfo_parse(i32** %31, i32 %312, i32* %313)
  %315 = call i32 @SVN_ERR(i32 %314)
  br label %316

316:                                              ; preds = %309, %306
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %318 = icmp ne %struct.TYPE_10__* %317, null
  br i1 %318, label %319, label %326

319:                                              ; preds = %316
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %15, align 8
  %324 = call i32 @svn_mergeinfo_parse(i32** %30, i32 %322, i32* %323)
  %325 = call i32 @SVN_ERR(i32 %324)
  br label %326

326:                                              ; preds = %319, %316
  %327 = load i32*, i32** %30, align 8
  %328 = load i32*, i32** %31, align 8
  %329 = load i64, i64* @FALSE, align 8
  %330 = load i32*, i32** %12, align 8
  %331 = load i32*, i32** %15, align 8
  %332 = call i32 @svn_mergeinfo_diff2(i32** %32, i32** %33, i32* %327, i32* %328, i64 %329, i32* %330, i32* %331)
  %333 = call i32 @SVN_ERR(i32 %332)
  %334 = load i32*, i32** %12, align 8
  %335 = load i8*, i8** %21, align 8
  %336 = call i8* @apr_pstrdup(i32* %334, i8* %335)
  store i8* %336, i8** %34, align 8
  %337 = load i32*, i32** %8, align 8
  %338 = load i32, i32* %337, align 4
  %339 = load i8*, i8** %34, align 8
  %340 = load i32*, i32** %32, align 8
  %341 = call i32 @svn_hash_sets(i32 %338, i8* %339, i32* %340)
  %342 = load i32*, i32** %9, align 8
  %343 = load i32, i32* %342, align 4
  %344 = load i8*, i8** %34, align 8
  %345 = load i32*, i32** %33, align 8
  %346 = call i32 @svn_hash_sets(i32 %343, i8* %344, i32* %345)
  br label %123

347:                                              ; preds = %133, %123
  %348 = load i32*, i32** %15, align 8
  %349 = call i32 @svn_pool_destroy(i32* %348)
  %350 = load i32*, i32** %16, align 8
  %351 = call i32 @svn_pool_destroy(i32* %350)
  %352 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %352, i32** %7, align 8
  br label %353

353:                                              ; preds = %347, %109, %45
  %354 = load i32*, i32** %7, align 8
  ret i32* %354
}

declare dso_local i32 @svn_hash__make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_paths_changed3(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_path_change_get(%struct.TYPE_11__**, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_repos__prev_location(i32*, i8**, i32*, i32*, i32, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_prop(%struct.TYPE_10__**, i32*, i8*, i32, i32*) #1

declare dso_local i64 @svn_string_compare(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @svn_fs__get_mergeinfo_for_path(i32**, i32*, i8*, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_mergeinfo_to_string(%struct.TYPE_10__**, i32*, i32*) #1

declare dso_local i32 @svn_mergeinfo_parse(i32**, i32, i32*) #1

declare dso_local i32 @svn_mergeinfo_diff2(i32**, i32**, i32*, i32*, i64, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
