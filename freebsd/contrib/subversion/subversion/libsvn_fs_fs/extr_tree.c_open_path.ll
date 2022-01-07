; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_open_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_tree.c_open_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i8*, i32* }
%struct.TYPE_16__ = type { i32, i32, i64, i32* }
%struct.TYPE_15__ = type { i32, i8* }

@open_path_node_only = common dso_local global i32 0, align 4
@copy_id_inherit_self = common dso_local global i8* null, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@open_path_uncached = common dso_local global i32 0, align 4
@open_path_last_optional = common dso_local global i32 0, align 4
@open_path_allow_null = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Failure opening '%s' in transaction '%s'\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failure opening '%s' in revision %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_17__**, %struct.TYPE_16__*, i8*, i32, i64, i32*)* @open_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @open_path(%struct.TYPE_17__** %0, %struct.TYPE_16__* %1, i8* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_17__**, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  store %struct.TYPE_17__** %0, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %17, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = call i32* @svn_pool_create(i32* %34)
  store i32* %35, i32** %18, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call %struct.TYPE_15__* @svn_stringbuf_create(i8* %36, i32* %37)
  store %struct.TYPE_15__* %38, %struct.TYPE_15__** %19, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %20, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @svn_fs__is_canonical_abspath(i8* %42)
  %44 = call i32 @assert(i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @open_path_node_only, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %6
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %78, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %20, align 4
  %60 = load i32*, i32** %18, align 8
  %61 = call i32 @try_match_last_node(i32** %22, %struct.TYPE_16__* %57, i8* %58, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %22, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %77

65:                                               ; preds = %56
  %66 = load i32*, i32** %18, align 8
  %67 = call i32 @svn_pool_destroy(i32* %66)
  %68 = load i32*, i32** %22, align 8
  %69 = load i32*, i32** %13, align 8
  %70 = call %struct.TYPE_17__* @make_parent_path(i32* %68, i8* null, %struct.TYPE_17__* null, i32* %69)
  store %struct.TYPE_17__* %70, %struct.TYPE_17__** %16, align 8
  %71 = load i8*, i8** @copy_id_inherit_self, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %75 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* %74, %struct.TYPE_17__** %75, align 8
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %7, align 8
  br label %326

77:                                               ; preds = %56
  br label %78

78:                                               ; preds = %77, %51
  %79 = load i8*, i8** %10, align 8
  %80 = load i32*, i32** %13, align 8
  %81 = call i8* @svn_dirent_dirname(i8* %79, i32* %80)
  store i8* %81, i8** %21, align 8
  %82 = load i8*, i8** %21, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %78
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %89 = load i8*, i8** %21, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = call i32 @dag_node_cache_get(i32** %15, %struct.TYPE_16__* %88, i8* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** %15, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %106

95:                                               ; preds = %87
  %96 = load i8*, i8** %21, align 8
  %97 = call i32 @strlen(i8* %96)
  store i32 %97, i32* %23, align 4
  %98 = load i32, i32* %23, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* %23, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  store i8* %105, i8** %17, align 8
  br label %106

106:                                              ; preds = %95, %87
  br label %107

107:                                              ; preds = %106, %78
  br label %108

108:                                              ; preds = %107, %6
  %109 = load i32*, i32** %15, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @root_node(i32** %15, %struct.TYPE_16__* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32 %114)
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8* %117, i8** %17, align 8
  br label %118

118:                                              ; preds = %111, %108
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %121, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i32*, i32** %15, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = call %struct.TYPE_17__* @make_parent_path(i32* %127, i8* null, %struct.TYPE_17__* null, i32* %128)
  store %struct.TYPE_17__* %129, %struct.TYPE_17__** %16, align 8
  %130 = load i8*, i8** @copy_id_inherit_self, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 1
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %317, %118
  %134 = load i32*, i32** %18, align 8
  %135 = call i32 @svn_pool_clear(i32* %134)
  %136 = load i8*, i8** %17, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i8* @svn_fs__next_entry_name(i8** %24, i8* %136, i32* %137)
  store i8* %138, i8** %25, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %141, i64 %145
  store i8 47, i8* %146, align 1
  %147 = load i8*, i8** %25, align 8
  %148 = call i32 @strlen(i8* %147)
  %149 = add nsw i32 %148, 1
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = add nsw i32 %152, %149
  store i32 %153, i32* %151, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %156, i64 %160
  store i8 0, i8* %161, align 1
  %162 = load i8*, i8** %25, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %133
  %167 = load i32*, i32** %15, align 8
  store i32* %167, i32** %26, align 8
  br label %272

168:                                              ; preds = %133
  store i8* null, i8** %28, align 8
  store i32* null, i32** %29, align 8
  %169 = load i8*, i8** %24, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %176, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @open_path_uncached, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %171, %168
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = call i32 @dag_node_cache_get(i32** %29, %struct.TYPE_16__* %177, i8* %180, i32* %181)
  %183 = call i32 @SVN_ERR(i32 %182)
  br label %184

184:                                              ; preds = %176, %171
  %185 = load i32*, i32** %29, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = load i32*, i32** %29, align 8
  store i32* %188, i32** %26, align 8
  br label %196

189:                                              ; preds = %184
  %190 = load i32*, i32** %15, align 8
  %191 = load i8*, i8** %25, align 8
  %192 = load i32*, i32** %13, align 8
  %193 = load i32*, i32** %18, align 8
  %194 = call i32 @svn_fs_fs__dag_open(i32** %26, i32* %190, i8* %191, i32* %192, i32* %193)
  %195 = call i32 @SVN_ERR(i32 %194)
  br label %196

196:                                              ; preds = %189, %187
  %197 = load i32*, i32** %26, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %227

199:                                              ; preds = %196
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* @open_path_last_optional, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %199
  %205 = load i8*, i8** %24, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i8*, i8** %24, align 8
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207, %204
  %213 = load i8*, i8** %25, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %215 = load i32*, i32** %13, align 8
  %216 = call %struct.TYPE_17__* @make_parent_path(i32* null, i8* %213, %struct.TYPE_17__* %214, i32* %215)
  store %struct.TYPE_17__* %216, %struct.TYPE_17__** %16, align 8
  br label %320

217:                                              ; preds = %207, %199
  %218 = load i32, i32* %11, align 4
  %219 = load i32, i32* @open_path_allow_null, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  br label %320

223:                                              ; preds = %217
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %225 = load i8*, i8** %10, align 8
  %226 = call i32* @SVN_FS__NOT_FOUND(%struct.TYPE_16__* %224, i8* %225)
  store i32* %226, i32** %7, align 8
  br label %326

227:                                              ; preds = %196
  %228 = load i32, i32* %11, align 4
  %229 = load i32, i32* @open_path_node_only, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i32*, i32** %26, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 2
  store i32* %233, i32** %235, align 8
  br label %259

236:                                              ; preds = %227
  %237 = load i32*, i32** %26, align 8
  %238 = load i8*, i8** %25, align 8
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %240 = load i32*, i32** %13, align 8
  %241 = call %struct.TYPE_17__* @make_parent_path(i32* %237, i8* %238, %struct.TYPE_17__* %239, i32* %240)
  store %struct.TYPE_17__* %241, %struct.TYPE_17__** %16, align 8
  %242 = load i64, i64* %12, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %236
  %245 = load i32*, i32** %14, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %247 = load i32*, i32** %18, align 8
  %248 = call i32 @get_copy_inheritance(i8** %27, i8** %28, i32* %245, %struct.TYPE_17__* %246, i32* %247)
  %249 = call i32 @SVN_ERR(i32 %248)
  %250 = load i8*, i8** %27, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  %253 = load i32*, i32** %13, align 8
  %254 = load i8*, i8** %28, align 8
  %255 = call i32 @apr_pstrdup(i32* %253, i8* %254)
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  br label %258

258:                                              ; preds = %244, %236
  br label %259

259:                                              ; preds = %258, %232
  %260 = load i32*, i32** %29, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %271, label %262

262:                                              ; preds = %259
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = load i32*, i32** %26, align 8
  %268 = load i32*, i32** %18, align 8
  %269 = call i32 @dag_node_cache_set(%struct.TYPE_16__* %263, i8* %266, i32* %267, i32* %268)
  %270 = call i32 @SVN_ERR(i32 %269)
  br label %271

271:                                              ; preds = %262, %259
  br label %272

272:                                              ; preds = %271, %166
  %273 = load i8*, i8** %24, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  br label %320

276:                                              ; preds = %272
  %277 = load i32*, i32** %26, align 8
  %278 = call i64 @svn_fs_fs__dag_node_kind(i32* %277)
  %279 = load i64, i64* @svn_node_dir, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %317

281:                                              ; preds = %276
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* @open_path_allow_null, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  br label %320

287:                                              ; preds = %281
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load i32*, i32** %18, align 8
  %294 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %295 = load i8*, i8** %10, align 8
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = call i8* @apr_psprintf(i32* %293, i32 %294, i8* %295, i32 %298)
  br label %308

300:                                              ; preds = %287
  %301 = load i32*, i32** %18, align 8
  %302 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %303 = load i8*, i8** %10, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i8* @apr_psprintf(i32* %301, i32 %302, i8* %303, i32 %306)
  br label %308

308:                                              ; preds = %300, %292
  %309 = phi i8* [ %299, %292 ], [ %307, %300 ]
  store i8* %309, i8** %30, align 8
  %310 = load i32*, i32** %14, align 8
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  %314 = call i32 @SVN_FS__ERR_NOT_DIRECTORY(i32* %310, i8* %313)
  %315 = load i8*, i8** %30, align 8
  %316 = call i32 @SVN_ERR_W(i32 %314, i8* %315)
  br label %317

317:                                              ; preds = %308, %276
  %318 = load i8*, i8** %24, align 8
  store i8* %318, i8** %17, align 8
  %319 = load i32*, i32** %26, align 8
  store i32* %319, i32** %15, align 8
  br label %133

320:                                              ; preds = %286, %275, %222, %212
  %321 = load i32*, i32** %18, align 8
  %322 = call i32 @svn_pool_destroy(i32* %321)
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %324 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %8, align 8
  store %struct.TYPE_17__* %323, %struct.TYPE_17__** %324, align 8
  %325 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %325, i32** %7, align 8
  br label %326

326:                                              ; preds = %320, %223, %65
  %327 = load i32*, i32** %7, align 8
  ret i32* %327
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_15__* @svn_stringbuf_create(i8*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_fs__is_canonical_abspath(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @try_match_last_node(i32**, %struct.TYPE_16__*, i8*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local %struct.TYPE_17__* @make_parent_path(i32*, i8*, %struct.TYPE_17__*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @dag_node_cache_get(i32**, %struct.TYPE_16__*, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @root_node(i32**, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @svn_fs__next_entry_name(i8**, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__dag_open(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @SVN_FS__NOT_FOUND(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @get_copy_inheritance(i8**, i8**, i32*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @dag_node_cache_set(%struct.TYPE_16__*, i8*, i32*, i32*) #1

declare dso_local i64 @svn_fs_fs__dag_node_kind(i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_W(i32, i8*) #1

declare dso_local i32 @SVN_FS__ERR_NOT_DIRECTORY(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
