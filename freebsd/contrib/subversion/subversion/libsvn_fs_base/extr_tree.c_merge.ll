; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i8*, i32* }

@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Bad merge; ancestor, source, and target not all in same fs\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_ERR_FS_GENERAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Bad merge; target '%s' has id '%s', same as ancestor\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_FS_BASE__MIN_MERGEINFO_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i32*, i32*, i32*, i8*, i64*, %struct.TYPE_21__*, i32*)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4, i8* %5, i64* %6, %struct.TYPE_21__* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca %struct.TYPE_25__*, align 8
  %32 = alloca %struct.TYPE_22__*, align 8
  %33 = alloca %struct.TYPE_24__*, align 8
  %34 = alloca %struct.TYPE_24__*, align 8
  %35 = alloca %struct.TYPE_24__*, align 8
  %36 = alloca %struct.TYPE_23__*, align 8
  %37 = alloca %struct.TYPE_23__*, align 8
  %38 = alloca %struct.TYPE_23__*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32*, align 8
  %43 = alloca i64, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i64, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i8*, align 8
  %50 = alloca i64, align 8
  %51 = alloca %struct.TYPE_23__*, align 8
  %52 = alloca %struct.TYPE_23__*, align 8
  %53 = alloca i8*, align 8
  %54 = alloca i8*, align 8
  %55 = alloca i32, align 4
  %56 = alloca i32*, align 8
  %57 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64* %6, i64** %17, align 8
  store %struct.TYPE_21__* %7, %struct.TYPE_21__** %18, align 8
  store i32* %8, i32** %19, align 8
  store i64 0, i64* %30, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %61, align 8
  store %struct.TYPE_25__* %62, %struct.TYPE_25__** %31, align 8
  %63 = load i32*, i32** %15, align 8
  %64 = call i32* @svn_fs_base__dag_get_fs(i32* %63)
  store i32* %64, i32** %28, align 8
  %65 = load i32*, i32** %28, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32* @svn_fs_base__dag_get_fs(i32* %66)
  %68 = icmp ne i32* %65, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %9
  %70 = load i32*, i32** %28, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i32* @svn_fs_base__dag_get_fs(i32* %71)
  %73 = icmp ne i32* %70, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69, %9
  %75 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %76 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %77 = call i32* @svn_error_create(i32 %75, i32* null, i32 %76)
  store i32* %77, i32** %10, align 8
  br label %563

78:                                               ; preds = %69
  %79 = load i32*, i32** %28, align 8
  %80 = load i32, i32* @TRUE, align 4
  %81 = call i32* @svn_fs__check_fs(i32* %79, i32 %80)
  %82 = call i32 @SVN_ERR(i32* %81)
  %83 = load i32*, i32** %14, align 8
  %84 = call i32* @svn_fs_base__dag_get_id(i32* %83)
  store i32* %84, i32** %20, align 8
  %85 = load i32*, i32** %13, align 8
  %86 = call i32* @svn_fs_base__dag_get_id(i32* %85)
  store i32* %86, i32** %21, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = call i32* @svn_fs_base__dag_get_id(i32* %87)
  store i32* %88, i32** %22, align 8
  %89 = load i32*, i32** %22, align 8
  %90 = load i32*, i32** %21, align 8
  %91 = call i64 @svn_fs_base__id_eq(i32* %89, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %78
  %94 = load i32*, i32** %21, align 8
  %95 = load i32*, i32** %19, align 8
  %96 = call %struct.TYPE_22__* @svn_fs_base__id_unparse(i32* %94, i32* %95)
  store %struct.TYPE_22__* %96, %struct.TYPE_22__** %32, align 8
  %97 = load i32, i32* @SVN_ERR_FS_GENERAL, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %32, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32* @svn_error_createf(i32 %97, i32* null, i32 %98, i8* %99, i32 %102)
  store i32* %103, i32** %10, align 8
  br label %563

104:                                              ; preds = %78
  %105 = load i32*, i32** %11, align 8
  %106 = call i32 @svn_stringbuf_setempty(i32* %105)
  %107 = load i32*, i32** %22, align 8
  %108 = load i32*, i32** %20, align 8
  %109 = call i64 @svn_fs_base__id_eq(i32* %107, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %104
  %112 = load i32*, i32** %20, align 8
  %113 = load i32*, i32** %21, align 8
  %114 = call i64 @svn_fs_base__id_eq(i32* %112, i32* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111, %104
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %10, align 8
  br label %563

118:                                              ; preds = %111
  %119 = load i32*, i32** %14, align 8
  %120 = call i64 @svn_fs_base__dag_node_kind(i32* %119)
  %121 = load i64, i64* @svn_node_dir, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %133, label %123

123:                                              ; preds = %118
  %124 = load i32*, i32** %13, align 8
  %125 = call i64 @svn_fs_base__dag_node_kind(i32* %124)
  %126 = load i64, i64* @svn_node_dir, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load i32*, i32** %15, align 8
  %130 = call i64 @svn_fs_base__dag_node_kind(i32* %129)
  %131 = load i64, i64* @svn_node_dir, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %128, %123, %118
  %134 = load i32*, i32** %11, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = call i32* @conflict_err(i32* %134, i8* %135)
  store i32* %136, i32** %10, align 8
  br label %563

137:                                              ; preds = %128
  %138 = load i32*, i32** %28, align 8
  %139 = load i32*, i32** %21, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %141 = load i32*, i32** %19, align 8
  %142 = call i32* @svn_fs_bdb__get_node_revision(%struct.TYPE_24__** %33, i32* %138, i32* %139, %struct.TYPE_21__* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32* %142)
  %144 = load i32*, i32** %28, align 8
  %145 = load i32*, i32** %22, align 8
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %147 = load i32*, i32** %19, align 8
  %148 = call i32* @svn_fs_bdb__get_node_revision(%struct.TYPE_24__** %34, i32* %144, i32* %145, %struct.TYPE_21__* %146, i32* %147)
  %149 = call i32 @SVN_ERR(i32* %148)
  %150 = load i32*, i32** %28, align 8
  %151 = load i32*, i32** %20, align 8
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %153 = load i32*, i32** %19, align 8
  %154 = call i32* @svn_fs_bdb__get_node_revision(%struct.TYPE_24__** %35, i32* %150, i32* %151, %struct.TYPE_21__* %152, i32* %153)
  %155 = call i32 @SVN_ERR(i32* %154)
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @svn_fs_base__same_keys(i32 %158, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %137
  %165 = load i32*, i32** %11, align 8
  %166 = load i8*, i8** %12, align 8
  %167 = call i32* @conflict_err(i32* %165, i8* %166)
  store i32* %167, i32** %10, align 8
  br label %563

168:                                              ; preds = %137
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %35, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %34, align 8
  %173 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @svn_fs_base__same_keys(i32 %171, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %168
  %178 = load i32*, i32** %11, align 8
  %179 = load i8*, i8** %12, align 8
  %180 = call i32* @conflict_err(i32* %178, i8* %179)
  store i32* %180, i32** %10, align 8
  br label %563

181:                                              ; preds = %168
  %182 = load i32*, i32** %14, align 8
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = call i32* @svn_fs_base__dag_dir_entries(i32** %23, i32* %182, %struct.TYPE_21__* %183, i32* %184)
  %186 = call i32 @SVN_ERR(i32* %185)
  %187 = load i32*, i32** %23, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %181
  %190 = load i32*, i32** %19, align 8
  %191 = call i32* @apr_hash_make(i32* %190)
  store i32* %191, i32** %23, align 8
  br label %192

192:                                              ; preds = %189, %181
  %193 = load i32*, i32** %13, align 8
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %195 = load i32*, i32** %19, align 8
  %196 = call i32* @svn_fs_base__dag_dir_entries(i32** %24, i32* %193, %struct.TYPE_21__* %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32* %196)
  %198 = load i32*, i32** %24, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %192
  %201 = load i32*, i32** %19, align 8
  %202 = call i32* @apr_hash_make(i32* %201)
  store i32* %202, i32** %24, align 8
  br label %203

203:                                              ; preds = %200, %192
  %204 = load i32*, i32** %15, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %206 = load i32*, i32** %19, align 8
  %207 = call i32* @svn_fs_base__dag_dir_entries(i32** %25, i32* %204, %struct.TYPE_21__* %205, i32* %206)
  %208 = call i32 @SVN_ERR(i32* %207)
  %209 = load i32*, i32** %25, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %214, label %211

211:                                              ; preds = %203
  %212 = load i32*, i32** %19, align 8
  %213 = call i32* @apr_hash_make(i32* %212)
  store i32* %213, i32** %25, align 8
  br label %214

214:                                              ; preds = %211, %203
  %215 = load i32*, i32** %19, align 8
  %216 = call i32* @svn_pool_create(i32* %215)
  store i32* %216, i32** %27, align 8
  %217 = load i32*, i32** %19, align 8
  %218 = load i32*, i32** %25, align 8
  %219 = call i32* @apr_hash_first(i32* %217, i32* %218)
  store i32* %219, i32** %26, align 8
  br label %220

220:                                              ; preds = %460, %214
  %221 = load i32*, i32** %26, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %463

223:                                              ; preds = %220
  %224 = load i32*, i32** %27, align 8
  %225 = call i32 @svn_pool_clear(i32* %224)
  %226 = load i32*, i32** %26, align 8
  %227 = call i32 @apr_hash_this(i32* %226, i8** %39, i32* %41, i8** %40)
  %228 = load i8*, i8** %40, align 8
  %229 = bitcast i8* %228 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %229, %struct.TYPE_23__** %38, align 8
  %230 = load i32*, i32** %23, align 8
  %231 = load i8*, i8** %39, align 8
  %232 = load i32, i32* %41, align 4
  %233 = call %struct.TYPE_23__* @apr_hash_get(i32* %230, i8* %231, i32 %232)
  store %struct.TYPE_23__* %233, %struct.TYPE_23__** %36, align 8
  %234 = load i32*, i32** %24, align 8
  %235 = load i8*, i8** %39, align 8
  %236 = load i32, i32* %41, align 4
  %237 = call %struct.TYPE_23__* @apr_hash_get(i32* %234, i8* %235, i32 %236)
  store %struct.TYPE_23__* %237, %struct.TYPE_23__** %37, align 8
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %239 = icmp ne %struct.TYPE_23__* %238, null
  br i1 %239, label %240, label %250

240:                                              ; preds = %223
  %241 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = call i64 @svn_fs_base__id_eq(i32* %243, i32* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %240
  br label %455

250:                                              ; preds = %240, %223
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %252 = icmp ne %struct.TYPE_23__* %251, null
  br i1 %252, label %253, label %317

253:                                              ; preds = %250
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %258 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %257, i32 0, i32 1
  %259 = load i32*, i32** %258, align 8
  %260 = call i64 @svn_fs_base__id_eq(i32* %256, i32* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %317

262:                                              ; preds = %253
  %263 = load i32*, i32** %28, align 8
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %268 = load i32*, i32** %27, align 8
  %269 = call i32* @svn_fs_base__dag_get_node(i32** %42, i32* %263, i32* %266, %struct.TYPE_21__* %267, i32* %268)
  %270 = call i32 @SVN_ERR(i32* %269)
  %271 = load i32*, i32** %42, align 8
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %273 = load i32*, i32** %27, align 8
  %274 = call i32* @svn_fs_base__dag_get_mergeinfo_stats(i32* null, i64* %43, i32* %271, %struct.TYPE_21__* %272, i32* %273)
  %275 = call i32 @SVN_ERR(i32* %274)
  %276 = load i64, i64* %43, align 8
  %277 = load i64, i64* %30, align 8
  %278 = sub nsw i64 %277, %276
  store i64 %278, i64* %30, align 8
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %280 = icmp ne %struct.TYPE_23__* %279, null
  br i1 %280, label %281, label %308

281:                                              ; preds = %262
  %282 = load i32*, i32** %28, align 8
  %283 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %284 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %283, i32 0, i32 1
  %285 = load i32*, i32** %284, align 8
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %287 = load i32*, i32** %27, align 8
  %288 = call i32* @svn_fs_base__dag_get_node(i32** %44, i32* %282, i32* %285, %struct.TYPE_21__* %286, i32* %287)
  %289 = call i32 @SVN_ERR(i32* %288)
  %290 = load i32*, i32** %44, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %292 = load i32*, i32** %27, align 8
  %293 = call i32* @svn_fs_base__dag_get_mergeinfo_stats(i32* null, i64* %45, i32* %290, %struct.TYPE_21__* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32* %293)
  %295 = load i64, i64* %45, align 8
  %296 = load i64, i64* %30, align 8
  %297 = add nsw i64 %296, %295
  store i64 %297, i64* %30, align 8
  %298 = load i32*, i32** %13, align 8
  %299 = load i8*, i8** %39, align 8
  %300 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = load i8*, i8** %16, align 8
  %304 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %305 = load i32*, i32** %27, align 8
  %306 = call i32* @svn_fs_base__dag_set_entry(i32* %298, i8* %299, i32* %302, i8* %303, %struct.TYPE_21__* %304, i32* %305)
  %307 = call i32 @SVN_ERR(i32* %306)
  br label %316

308:                                              ; preds = %262
  %309 = load i32*, i32** %13, align 8
  %310 = load i8*, i8** %39, align 8
  %311 = load i8*, i8** %16, align 8
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %313 = load i32*, i32** %27, align 8
  %314 = call i32* @svn_fs_base__dag_delete(i32* %309, i8* %310, i8* %311, %struct.TYPE_21__* %312, i32* %313)
  %315 = call i32 @SVN_ERR(i32* %314)
  br label %316

316:                                              ; preds = %308, %281
  br label %453

317:                                              ; preds = %253, %250
  %318 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %319 = icmp eq %struct.TYPE_23__* %318, null
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %322 = icmp eq %struct.TYPE_23__* %321, null
  br i1 %322, label %323, label %332

323:                                              ; preds = %320, %317
  %324 = load i32*, i32** %11, align 8
  %325 = load i8*, i8** %12, align 8
  %326 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8
  %329 = load i32*, i32** %27, align 8
  %330 = call i8* @svn_fspath__join(i8* %325, i8* %328, i32* %329)
  %331 = call i32* @conflict_err(i32* %324, i8* %330)
  store i32* %331, i32** %10, align 8
  br label %563

332:                                              ; preds = %320
  %333 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 1
  %335 = load i32*, i32** %334, align 8
  %336 = call i32 @svn_fs_base__id_node_id(i32* %335)
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = call i32 @svn_fs_base__id_node_id(i32* %339)
  %341 = call i64 @strcmp(i32 %336, i32 %340)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %376, label %343

343:                                              ; preds = %332
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = call i32 @svn_fs_base__id_copy_id(i32* %346)
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 1
  %350 = load i32*, i32** %349, align 8
  %351 = call i32 @svn_fs_base__id_copy_id(i32* %350)
  %352 = call i64 @strcmp(i32 %347, i32 %351)
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %376, label %354

354:                                              ; preds = %343
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %356 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = call i32 @svn_fs_base__id_node_id(i32* %357)
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 1
  %361 = load i32*, i32** %360, align 8
  %362 = call i32 @svn_fs_base__id_node_id(i32* %361)
  %363 = call i64 @strcmp(i32 %358, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %376, label %365

365:                                              ; preds = %354
  %366 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %367 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = call i32 @svn_fs_base__id_copy_id(i32* %368)
  %370 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %371 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %370, i32 0, i32 1
  %372 = load i32*, i32** %371, align 8
  %373 = call i32 @svn_fs_base__id_copy_id(i32* %372)
  %374 = call i64 @strcmp(i32 %369, i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %385

376:                                              ; preds = %365, %354, %343, %332
  %377 = load i32*, i32** %11, align 8
  %378 = load i8*, i8** %12, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 0
  %381 = load i8*, i8** %380, align 8
  %382 = load i32*, i32** %27, align 8
  %383 = call i8* @svn_fspath__join(i8* %378, i8* %381, i32* %382)
  %384 = call i32* @conflict_err(i32* %377, i8* %383)
  store i32* %384, i32** %10, align 8
  br label %563

385:                                              ; preds = %365
  %386 = load i32*, i32** %28, align 8
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %36, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 1
  %389 = load i32*, i32** %388, align 8
  %390 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %391 = load i32*, i32** %27, align 8
  %392 = call i32* @svn_fs_base__dag_get_node(i32** %46, i32* %386, i32* %389, %struct.TYPE_21__* %390, i32* %391)
  %393 = call i32 @SVN_ERR(i32* %392)
  %394 = load i32*, i32** %28, align 8
  %395 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %396 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %395, i32 0, i32 1
  %397 = load i32*, i32** %396, align 8
  %398 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %399 = load i32*, i32** %27, align 8
  %400 = call i32* @svn_fs_base__dag_get_node(i32** %47, i32* %394, i32* %397, %struct.TYPE_21__* %398, i32* %399)
  %401 = call i32 @SVN_ERR(i32* %400)
  %402 = load i32*, i32** %28, align 8
  %403 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %403, i32 0, i32 1
  %405 = load i32*, i32** %404, align 8
  %406 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %407 = load i32*, i32** %27, align 8
  %408 = call i32* @svn_fs_base__dag_get_node(i32** %48, i32* %402, i32* %405, %struct.TYPE_21__* %406, i32* %407)
  %409 = call i32 @SVN_ERR(i32* %408)
  %410 = load i32*, i32** %46, align 8
  %411 = call i64 @svn_fs_base__dag_node_kind(i32* %410)
  %412 = load i64, i64* @svn_node_file, align 8
  %413 = icmp eq i64 %411, %412
  br i1 %413, label %424, label %414

414:                                              ; preds = %385
  %415 = load i32*, i32** %47, align 8
  %416 = call i64 @svn_fs_base__dag_node_kind(i32* %415)
  %417 = load i64, i64* @svn_node_file, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %424, label %419

419:                                              ; preds = %414
  %420 = load i32*, i32** %48, align 8
  %421 = call i64 @svn_fs_base__dag_node_kind(i32* %420)
  %422 = load i64, i64* @svn_node_file, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %424, label %433

424:                                              ; preds = %419, %414, %385
  %425 = load i32*, i32** %11, align 8
  %426 = load i8*, i8** %12, align 8
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %428 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %427, i32 0, i32 0
  %429 = load i8*, i8** %428, align 8
  %430 = load i32*, i32** %27, align 8
  %431 = call i8* @svn_fspath__join(i8* %426, i8* %429, i32* %430)
  %432 = call i32* @conflict_err(i32* %425, i8* %431)
  store i32* %432, i32** %10, align 8
  br label %563

433:                                              ; preds = %419
  %434 = load i8*, i8** %12, align 8
  %435 = load %struct.TYPE_23__*, %struct.TYPE_23__** %37, align 8
  %436 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %435, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = load i32*, i32** %27, align 8
  %439 = call i8* @svn_fspath__join(i8* %434, i8* %437, i32* %438)
  store i8* %439, i8** %49, align 8
  %440 = load i32*, i32** %11, align 8
  %441 = load i8*, i8** %49, align 8
  %442 = load i32*, i32** %47, align 8
  %443 = load i32*, i32** %46, align 8
  %444 = load i32*, i32** %48, align 8
  %445 = load i8*, i8** %16, align 8
  %446 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %447 = load i32*, i32** %27, align 8
  %448 = call i32* @merge(i32* %440, i8* %441, i32* %442, i32* %443, i32* %444, i8* %445, i64* %50, %struct.TYPE_21__* %446, i32* %447)
  %449 = call i32 @SVN_ERR(i32* %448)
  %450 = load i64, i64* %50, align 8
  %451 = load i64, i64* %30, align 8
  %452 = add nsw i64 %451, %450
  store i64 %452, i64* %30, align 8
  br label %453

453:                                              ; preds = %433, %316
  br label %454

454:                                              ; preds = %453
  br label %455

455:                                              ; preds = %454, %249
  %456 = load i32*, i32** %23, align 8
  %457 = load i8*, i8** %39, align 8
  %458 = load i32, i32* %41, align 4
  %459 = call i32 @apr_hash_set(i32* %456, i8* %457, i32 %458, i32* null)
  br label %460

460:                                              ; preds = %455
  %461 = load i32*, i32** %26, align 8
  %462 = call i32* @apr_hash_next(i32* %461)
  store i32* %462, i32** %26, align 8
  br label %220

463:                                              ; preds = %220
  %464 = load i32*, i32** %19, align 8
  %465 = load i32*, i32** %23, align 8
  %466 = call i32* @apr_hash_first(i32* %464, i32* %465)
  store i32* %466, i32** %26, align 8
  br label %467

467:                                              ; preds = %521, %463
  %468 = load i32*, i32** %26, align 8
  %469 = icmp ne i32* %468, null
  br i1 %469, label %470, label %524

470:                                              ; preds = %467
  %471 = load i32*, i32** %27, align 8
  %472 = call i32 @svn_pool_clear(i32* %471)
  %473 = load i32*, i32** %26, align 8
  %474 = call i32 @apr_hash_this(i32* %473, i8** %53, i32* %55, i8** %54)
  %475 = load i8*, i8** %54, align 8
  %476 = bitcast i8* %475 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %476, %struct.TYPE_23__** %51, align 8
  %477 = load i32*, i32** %24, align 8
  %478 = load i8*, i8** %53, align 8
  %479 = load i32, i32* %55, align 4
  %480 = call %struct.TYPE_23__* @apr_hash_get(i32* %477, i8* %478, i32 %479)
  store %struct.TYPE_23__* %480, %struct.TYPE_23__** %52, align 8
  %481 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %482 = icmp ne %struct.TYPE_23__* %481, null
  br i1 %482, label %483, label %492

483:                                              ; preds = %470
  %484 = load i32*, i32** %11, align 8
  %485 = load i8*, i8** %12, align 8
  %486 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %487 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %486, i32 0, i32 0
  %488 = load i8*, i8** %487, align 8
  %489 = load i32*, i32** %27, align 8
  %490 = call i8* @svn_fspath__join(i8* %485, i8* %488, i32* %489)
  %491 = call i32* @conflict_err(i32* %484, i8* %490)
  store i32* %491, i32** %10, align 8
  br label %563

492:                                              ; preds = %470
  %493 = load i32*, i32** %28, align 8
  %494 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %495 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %494, i32 0, i32 1
  %496 = load i32*, i32** %495, align 8
  %497 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %498 = load i32*, i32** %27, align 8
  %499 = call i32* @svn_fs_base__dag_get_node(i32** %56, i32* %493, i32* %496, %struct.TYPE_21__* %497, i32* %498)
  %500 = call i32 @SVN_ERR(i32* %499)
  %501 = load i32*, i32** %56, align 8
  %502 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %503 = load i32*, i32** %27, align 8
  %504 = call i32* @svn_fs_base__dag_get_mergeinfo_stats(i32* null, i64* %57, i32* %501, %struct.TYPE_21__* %502, i32* %503)
  %505 = call i32 @SVN_ERR(i32* %504)
  %506 = load i64, i64* %57, align 8
  %507 = load i64, i64* %30, align 8
  %508 = add nsw i64 %507, %506
  store i64 %508, i64* %30, align 8
  %509 = load i32*, i32** %13, align 8
  %510 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %511 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %510, i32 0, i32 0
  %512 = load i8*, i8** %511, align 8
  %513 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %514 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %513, i32 0, i32 1
  %515 = load i32*, i32** %514, align 8
  %516 = load i8*, i8** %16, align 8
  %517 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %518 = load i32*, i32** %27, align 8
  %519 = call i32* @svn_fs_base__dag_set_entry(i32* %509, i8* %512, i32* %515, i8* %516, %struct.TYPE_21__* %517, i32* %518)
  %520 = call i32 @SVN_ERR(i32* %519)
  br label %521

521:                                              ; preds = %492
  %522 = load i32*, i32** %26, align 8
  %523 = call i32* @apr_hash_next(i32* %522)
  store i32* %523, i32** %26, align 8
  br label %467

524:                                              ; preds = %467
  %525 = load i32*, i32** %27, align 8
  %526 = call i32 @svn_pool_destroy(i32* %525)
  %527 = load i32*, i32** %14, align 8
  %528 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %529 = load i32*, i32** %19, align 8
  %530 = call i32* @svn_fs_base__dag_get_predecessor_count(i32* %29, i32* %527, %struct.TYPE_21__* %528, i32* %529)
  %531 = call i32 @SVN_ERR(i32* %530)
  %532 = load i32*, i32** %28, align 8
  %533 = load i32*, i32** %20, align 8
  %534 = load i32*, i32** %21, align 8
  %535 = load i8*, i8** %16, align 8
  %536 = load i8*, i8** %12, align 8
  %537 = load i32, i32* %29, align 4
  %538 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %539 = load i32*, i32** %19, align 8
  %540 = call i32* @update_ancestry(i32* %532, i32* %533, i32* %534, i8* %535, i8* %536, i32 %537, %struct.TYPE_21__* %538, i32* %539)
  %541 = call i32 @SVN_ERR(i32* %540)
  %542 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %543 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = load i64, i64* @SVN_FS_BASE__MIN_MERGEINFO_FORMAT, align 8
  %546 = icmp sge i64 %544, %545
  br i1 %546, label %547, label %555

547:                                              ; preds = %524
  %548 = load i32*, i32** %13, align 8
  %549 = load i64, i64* %30, align 8
  %550 = load i8*, i8** %16, align 8
  %551 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %552 = load i32*, i32** %19, align 8
  %553 = call i32* @svn_fs_base__dag_adjust_mergeinfo_count(i32* %548, i64 %549, i8* %550, %struct.TYPE_21__* %551, i32* %552)
  %554 = call i32 @SVN_ERR(i32* %553)
  br label %555

555:                                              ; preds = %547, %524
  %556 = load i64*, i64** %17, align 8
  %557 = icmp ne i64* %556, null
  br i1 %557, label %558, label %561

558:                                              ; preds = %555
  %559 = load i64, i64* %30, align 8
  %560 = load i64*, i64** %17, align 8
  store i64 %559, i64* %560, align 8
  br label %561

561:                                              ; preds = %558, %555
  %562 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %562, i32** %10, align 8
  br label %563

563:                                              ; preds = %561, %483, %424, %376, %323, %177, %164, %133, %116, %93, %74
  %564 = load i32*, i32** %10, align 8
  ret i32* %564
}

declare dso_local i32* @svn_fs_base__dag_get_fs(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs__check_fs(i32*, i32) #1

declare dso_local i32* @svn_fs_base__dag_get_id(i32*) #1

declare dso_local i64 @svn_fs_base__id_eq(i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_fs_base__id_unparse(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @svn_stringbuf_setempty(i32*) #1

declare dso_local i64 @svn_fs_base__dag_node_kind(i32*) #1

declare dso_local i32* @conflict_err(i32*, i8*) #1

declare dso_local i32* @svn_fs_bdb__get_node_revision(%struct.TYPE_24__**, i32*, i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32 @svn_fs_base__same_keys(i32, i32) #1

declare dso_local i32* @svn_fs_base__dag_dir_entries(i32**, i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local %struct.TYPE_23__* @apr_hash_get(i32*, i8*, i32) #1

declare dso_local i32* @svn_fs_base__dag_get_node(i32**, i32*, i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_get_mergeinfo_stats(i32*, i64*, i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_set_entry(i32*, i8*, i32*, i8*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_delete(i32*, i8*, i8*, %struct.TYPE_21__*, i32*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @svn_fs_base__id_node_id(i32*) #1

declare dso_local i32 @svn_fs_base__id_copy_id(i32*) #1

declare dso_local i32 @apr_hash_set(i32*, i8*, i32, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_fs_base__dag_get_predecessor_count(i32*, i32*, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @update_ancestry(i32*, i32*, i32*, i8*, i8*, i32, %struct.TYPE_21__*, i32*) #1

declare dso_local i32* @svn_fs_base__dag_adjust_mergeinfo_count(i32*, i64, i8*, %struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
