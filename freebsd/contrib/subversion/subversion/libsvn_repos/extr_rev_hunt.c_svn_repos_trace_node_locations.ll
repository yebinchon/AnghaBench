; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_trace_node_locations.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_rev_hunt.c_svn_repos_trace_node_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@SVN_VA_NULL = common dso_local global i32 0, align 4
@svn_sort_compare_revisions = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_fs_node_unrelated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_trace_node_locations(i32* %0, i32** %1, i8* %2, i64 %3, %struct.TYPE_6__* %4, i32 (i64*, i32*, i8*, i8*, i32*)* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32 (i64*, i32*, i8*, i8*, i32*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32** %1, i32*** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %14, align 8
  store i32 (i64*, i32*, i8*, i8*, i32*)* %5, i32 (i64*, i32*, i8*, i8*, i32*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %39, 8
  %41 = zext i1 %40 to i32
  %42 = call i32 @SVN_ERR_ASSERT(i32 %41)
  %43 = load i8*, i8** %12, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 47
  br i1 %46, label %47, label %52

47:                                               ; preds = %8
  %48 = load i32*, i32** %17, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* @SVN_VA_NULL, align 4
  %51 = call i8* @apr_pstrcat(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %49, i32 %50)
  store i8* %51, i8** %12, align 8
  br label %52

52:                                               ; preds = %47, %8
  %53 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %15, align 8
  %54 = icmp ne i32 (i64*, i32*, i8*, i8*, i32*)* %53, null
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = call i32 @svn_fs_revision_root(i32** %27, i32* %56, i64 %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %27, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %15, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32*, i32** %17, align 8
  %66 = call i32 @check_readability(i32* %61, i8* %62, i32 (i64*, i32*, i8*, i8*, i32*)* %63, i8* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  br label %68

68:                                               ; preds = %55, %52
  %69 = load i32*, i32** %17, align 8
  %70 = call i32* @apr_hash_make(i32* %69)
  %71 = load i32**, i32*** %11, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32*, i32** %17, align 8
  %73 = call i32* @svn_pool_create(i32* %72)
  store i32* %73, i32** %25, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i32* @svn_pool_create(i32* %74)
  store i32* %75, i32** %26, align 8
  %76 = load i32*, i32** %17, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = call %struct.TYPE_6__* @apr_array_copy(i32* %76, %struct.TYPE_6__* %77)
  store %struct.TYPE_6__* %78, %struct.TYPE_6__** %18, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %80 = load i32, i32* @svn_sort_compare_revisions, align 4
  %81 = call i32 @svn_sort__array(%struct.TYPE_6__* %79, i32 %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i64*
  store i64* %85, i64** %19, align 8
  %86 = load i64*, i64** %19, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %86, i64 %90
  store i64* %91, i64** %20, align 8
  %92 = load i64, i64* @FALSE, align 8
  store i64 %92, i64* %24, align 8
  br label %93

93:                                               ; preds = %118, %68
  %94 = load i64*, i64** %19, align 8
  %95 = load i64*, i64** %20, align 8
  %96 = icmp ult i64* %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i64*, i64** %19, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %13, align 8
  %101 = icmp sgt i64 %99, %100
  br label %102

102:                                              ; preds = %97, %93
  %103 = phi i1 [ false, %93 ], [ %101, %97 ]
  br i1 %103, label %104, label %121

104:                                              ; preds = %102
  %105 = load i32*, i32** %26, align 8
  %106 = call i32 @svn_pool_clear(i32* %105)
  %107 = load i32*, i32** %10, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i64*, i64** %19, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i32*, i32** %26, align 8
  %113 = call i32 @check_ancestry_of_peg_path(i64* %24, i32* %107, i8* %108, i64 %109, i64 %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load i64, i64* %24, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  br label %121

118:                                              ; preds = %104
  %119 = load i64*, i64** %19, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %19, align 8
  br label %93

121:                                              ; preds = %117, %102
  %122 = load i64, i64* %24, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i64*, i64** %19, align 8
  %126 = load i64, i64* %125, align 8
  br label %129

127:                                              ; preds = %121
  %128 = load i64, i64* %13, align 8
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi i64 [ %126, %124 ], [ %128, %127 ]
  store i64 %130, i64* %23, align 8
  %131 = load i8*, i8** %12, align 8
  store i8* %131, i8** %22, align 8
  %132 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %15, align 8
  %133 = icmp ne i32 (i64*, i32*, i8*, i8*, i32*)* %132, null
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  %135 = load i32*, i32** %10, align 8
  %136 = load i64, i64* %23, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = call i32 @svn_fs_revision_root(i32** %21, i32* %135, i64 %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load i32*, i32** %21, align 8
  %141 = load i8*, i8** %12, align 8
  %142 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %15, align 8
  %143 = load i8*, i8** %16, align 8
  %144 = load i32*, i32** %17, align 8
  %145 = call i32 @check_readability(i32* %140, i8* %141, i32 (i64*, i32*, i8*, i8*, i32*)* %142, i8* %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  br label %147

147:                                              ; preds = %134, %129
  br label %148

148:                                              ; preds = %226, %147
  %149 = load i64*, i64** %19, align 8
  %150 = load i64*, i64** %20, align 8
  %151 = icmp ult i64* %149, %150
  br i1 %151, label %152, label %232

152:                                              ; preds = %148
  %153 = load i32*, i32** %10, align 8
  %154 = load i64, i64* %23, align 8
  %155 = load i8*, i8** %22, align 8
  %156 = load i32*, i32** %26, align 8
  %157 = call i32 @svn_repos__prev_location(i64* %29, i8** %31, i64* %30, i32* %153, i64 %154, i8* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i8*, i8** %31, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %162, label %161

161:                                              ; preds = %152
  br label %232

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %174, %162
  %164 = load i64*, i64** %19, align 8
  %165 = load i64*, i64** %20, align 8
  %166 = icmp ult i64* %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i64*, i64** %19, align 8
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %29, align 8
  %171 = icmp sge i64 %169, %170
  br label %172

172:                                              ; preds = %167, %163
  %173 = phi i1 [ false, %163 ], [ %171, %167 ]
  br i1 %173, label %174, label %184

174:                                              ; preds = %172
  %175 = load i32**, i32*** %11, align 8
  %176 = load i32*, i32** %175, align 8
  %177 = load i64*, i64** %19, align 8
  %178 = load i32*, i32** %17, align 8
  %179 = load i8*, i8** %22, align 8
  %180 = call i32 @apr_pstrdup(i32* %178, i8* %179)
  %181 = call i32 @apr_hash_set(i32* %176, i64* %177, i32 8, i32 %180)
  %182 = load i64*, i64** %19, align 8
  %183 = getelementptr inbounds i64, i64* %182, i32 1
  store i64* %183, i64** %19, align 8
  br label %163

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %196, %184
  %186 = load i64*, i64** %19, align 8
  %187 = load i64*, i64** %20, align 8
  %188 = icmp ult i64* %186, %187
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i64*, i64** %19, align 8
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* %30, align 8
  %193 = icmp sgt i64 %191, %192
  br label %194

194:                                              ; preds = %189, %185
  %195 = phi i1 [ false, %185 ], [ %193, %189 ]
  br i1 %195, label %196, label %199

196:                                              ; preds = %194
  %197 = load i64*, i64** %19, align 8
  %198 = getelementptr inbounds i64, i64* %197, i32 1
  store i64* %198, i64** %19, align 8
  br label %185

199:                                              ; preds = %194
  %200 = load i8*, i8** %31, align 8
  store i8* %200, i8** %22, align 8
  %201 = load i64, i64* %30, align 8
  store i64 %201, i64* %23, align 8
  %202 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %15, align 8
  %203 = icmp ne i32 (i64*, i32*, i8*, i8*, i32*)* %202, null
  br i1 %203, label %204, label %226

204:                                              ; preds = %199
  %205 = load i32*, i32** %10, align 8
  %206 = load i64, i64* %23, align 8
  %207 = load i32*, i32** %26, align 8
  %208 = call i32 @svn_fs_revision_root(i32** %21, i32* %205, i64 %206, i32* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  %210 = load i32 (i64*, i32*, i8*, i8*, i32*)*, i32 (i64*, i32*, i8*, i8*, i32*)** %15, align 8
  %211 = load i32*, i32** %21, align 8
  %212 = load i8*, i8** %22, align 8
  %213 = load i8*, i8** %16, align 8
  %214 = load i32*, i32** %26, align 8
  %215 = call i32 %210(i64* %32, i32* %211, i8* %212, i8* %213, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load i64, i64* %32, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %204
  %220 = load i32*, i32** %25, align 8
  %221 = call i32 @svn_pool_destroy(i32* %220)
  %222 = load i32*, i32** %26, align 8
  %223 = call i32 @svn_pool_destroy(i32* %222)
  %224 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %224, i32** %9, align 8
  br label %288

225:                                              ; preds = %204
  br label %226

226:                                              ; preds = %225, %199
  %227 = load i32*, i32** %25, align 8
  %228 = call i32 @svn_pool_clear(i32* %227)
  %229 = load i32*, i32** %25, align 8
  store i32* %229, i32** %28, align 8
  %230 = load i32*, i32** %26, align 8
  store i32* %230, i32** %25, align 8
  %231 = load i32*, i32** %28, align 8
  store i32* %231, i32** %26, align 8
  br label %148

232:                                              ; preds = %161, %148
  %233 = load i32*, i32** %10, align 8
  %234 = load i64, i64* %23, align 8
  %235 = load i32*, i32** %25, align 8
  %236 = call i32 @svn_fs_revision_root(i32** %21, i32* %233, i64 %234, i32* %235)
  %237 = call i32 @SVN_ERR(i32 %236)
  br label %238

238:                                              ; preds = %272, %232
  %239 = load i64*, i64** %19, align 8
  %240 = load i64*, i64** %20, align 8
  %241 = icmp ult i64* %239, %240
  br i1 %241, label %242, label %282

242:                                              ; preds = %238
  %243 = load i32*, i32** %26, align 8
  %244 = call i32 @svn_pool_clear(i32* %243)
  %245 = load i32*, i32** %10, align 8
  %246 = load i64*, i64** %19, align 8
  %247 = load i64, i64* %246, align 8
  %248 = load i32*, i32** %26, align 8
  %249 = call i32 @svn_fs_revision_root(i32** %35, i32* %245, i64 %247, i32* %248)
  %250 = call i32 @SVN_ERR(i32 %249)
  %251 = load i32*, i32** %35, align 8
  %252 = load i8*, i8** %22, align 8
  %253 = load i32*, i32** %26, align 8
  %254 = call i32 @svn_fs_check_path(i64* %33, i32* %251, i8* %252, i32* %253)
  %255 = call i32 @SVN_ERR(i32 %254)
  %256 = load i64, i64* %33, align 8
  %257 = load i64, i64* @svn_node_none, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %242
  br label %282

260:                                              ; preds = %242
  %261 = load i32*, i32** %21, align 8
  %262 = load i8*, i8** %22, align 8
  %263 = load i32*, i32** %35, align 8
  %264 = load i8*, i8** %22, align 8
  %265 = load i32*, i32** %26, align 8
  %266 = call i32 @svn_fs_node_relation(i64* %34, i32* %261, i8* %262, i32* %263, i8* %264, i32* %265)
  %267 = call i32 @SVN_ERR(i32 %266)
  %268 = load i64, i64* %34, align 8
  %269 = load i64, i64* @svn_fs_node_unrelated, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %260
  br label %282

272:                                              ; preds = %260
  %273 = load i32**, i32*** %11, align 8
  %274 = load i32*, i32** %273, align 8
  %275 = load i64*, i64** %19, align 8
  %276 = load i32*, i32** %17, align 8
  %277 = load i8*, i8** %22, align 8
  %278 = call i32 @apr_pstrdup(i32* %276, i8* %277)
  %279 = call i32 @apr_hash_set(i32* %274, i64* %275, i32 8, i32 %278)
  %280 = load i64*, i64** %19, align 8
  %281 = getelementptr inbounds i64, i64* %280, i32 1
  store i64* %281, i64** %19, align 8
  br label %238

282:                                              ; preds = %271, %259, %238
  %283 = load i32*, i32** %25, align 8
  %284 = call i32 @svn_pool_destroy(i32* %283)
  %285 = load i32*, i32** %26, align 8
  %286 = call i32 @svn_pool_destroy(i32* %285)
  %287 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %287, i32** %9, align 8
  br label %288

288:                                              ; preds = %282, %219
  %289 = load i32*, i32** %9, align 8
  ret i32* %289
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i8* @apr_pstrcat(i32*, i8*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i64, i32*) #1

declare dso_local i32 @check_readability(i32*, i8*, i32 (i64*, i32*, i8*, i8*, i32*)*, i8*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local %struct.TYPE_6__* @apr_array_copy(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @svn_sort__array(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @check_ancestry_of_peg_path(i64*, i32*, i8*, i64, i64, i32*) #1

declare dso_local i32 @svn_repos__prev_location(i64*, i8**, i64*, i32*, i64, i8*, i32*) #1

declare dso_local i32 @apr_hash_set(i32*, i64*, i32, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_relation(i64*, i32*, i8*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
