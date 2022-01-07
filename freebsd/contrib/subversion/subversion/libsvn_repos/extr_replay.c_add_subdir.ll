; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_add_subdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_replay.c_add_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* (i8*, i32, i32*)*, i32* (i8*, i32*, i32*, i32*, i8**)*, i32* (i8*, i8*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i32*)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32*)* }
%struct.TYPE_6__ = type { i64, i8*, i32, i8* }
%struct.TYPE_7__ = type { i64, i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@svn_fs_path_change_delete = common dso_local global i64 0, align 8
@svn_fs_path_change_replace = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_8__*, i8*, i8*, i8*, i8*, i32* (i8**, i32*, i8*, i8*, i32*)*, i8*, i32*, i32*, i8**)* @add_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @add_subdir(i32* %0, i32* %1, %struct.TYPE_8__* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32* (i8**, i32*, i8*, i8*, i32*)* %7, i8* %8, i32* %9, i32* %10, i8** %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32* (i8**, i32*, i8*, i8*, i32*)*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca %struct.TYPE_6__*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_7__*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i32*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i32* (i8**, i32*, i8*, i8*, i32*)* %7, i32* (i8**, i32*, i8*, i8*, i32*)** %20, align 8
  store i8* %8, i8** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  store i8** %11, i8*** %24, align 8
  %49 = load i32*, i32** %23, align 8
  %50 = call i32* @svn_pool_create(i32* %49)
  store i32* %50, i32** %25, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)** %52, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %57 = load i32*, i32** %23, align 8
  %58 = load i8**, i8*** %24, align 8
  %59 = call i32* %53(i8* %54, i8* %55, i32* null, i32 %56, i32* %57, i8** %58)
  %60 = call i32 @SVN_ERR(i32* %59)
  %61 = load i32*, i32** %14, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i32*, i32** %23, align 8
  %64 = call i32* @svn_fs_node_proplist(i32** %29, i32* %61, i8* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32* %64)
  %66 = load i32*, i32** %23, align 8
  %67 = load i32*, i32** %29, align 8
  %68 = call i32* @apr_hash_first(i32* %66, i32* %67)
  store i32* %68, i32** %27, align 8
  br label %69

69:                                               ; preds = %90, %12
  %70 = load i32*, i32** %27, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %93

72:                                               ; preds = %69
  %73 = load i32*, i32** %27, align 8
  %74 = call i8* @apr_hash_this_key(i32* %73)
  store i8* %74, i8** %30, align 8
  %75 = load i32*, i32** %27, align 8
  %76 = call i8* @apr_hash_this_val(i32* %75)
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %31, align 8
  %78 = load i32*, i32** %25, align 8
  %79 = call i32 @svn_pool_clear(i32* %78)
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 6
  %82 = load i32* (i8*, i8*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*)** %81, align 8
  %83 = load i8**, i8*** %24, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** %30, align 8
  %86 = load i32*, i32** %31, align 8
  %87 = load i32*, i32** %25, align 8
  %88 = call i32* %82(i8* %84, i8* %85, i32* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32* %88)
  br label %90

90:                                               ; preds = %72
  %91 = load i32*, i32** %27, align 8
  %92 = call i32* @apr_hash_next(i32* %91)
  store i32* %92, i32** %27, align 8
  br label %69

93:                                               ; preds = %69
  %94 = load i32*, i32** %13, align 8
  %95 = load i8*, i8** %19, align 8
  %96 = load i32*, i32** %23, align 8
  %97 = call i32* @svn_fs_dir_entries(i32** %28, i32* %94, i8* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32* %97)
  %99 = load i32*, i32** %23, align 8
  %100 = load i32*, i32** %28, align 8
  %101 = call i32* @apr_hash_first(i32* %99, i32* %100)
  store i32* %101, i32** %26, align 8
  br label %102

102:                                              ; preds = %339, %93
  %103 = load i32*, i32** %26, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %342

105:                                              ; preds = %102
  %106 = load i8*, i8** @TRUE, align 8
  store i8* %106, i8** %33, align 8
  %107 = load i32*, i32** %26, align 8
  %108 = call i8* @apr_hash_this_val(i32* %107)
  %109 = bitcast i8* %108 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %109, %struct.TYPE_7__** %34, align 8
  store i8* null, i8** %35, align 8
  %110 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %110, i32* %36, align 4
  %111 = load i32*, i32** %25, align 8
  %112 = call i32 @svn_pool_clear(i32* %111)
  %113 = load i8*, i8** %17, align 8
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %25, align 8
  %118 = call i8* @svn_relpath_join(i8* %113, i32 %116, i32* %117)
  store i8* %118, i8** %37, align 8
  %119 = load i32*, i32** %22, align 8
  %120 = load i8*, i8** %37, align 8
  %121 = call %struct.TYPE_6__* @svn_hash_gets(i32* %119, i8* %120)
  store %struct.TYPE_6__* %121, %struct.TYPE_6__** %32, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %123 = icmp ne %struct.TYPE_6__* %122, null
  br i1 %123, label %124, label %166

124:                                              ; preds = %105
  %125 = load i32*, i32** %22, align 8
  %126 = load i8*, i8** %37, align 8
  %127 = call i32 @svn_hash_sets(i32* %125, i8* %126, i32* null)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @svn_fs_path_change_delete, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %339

134:                                              ; preds = %124
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @svn_fs_path_change_replace, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %134
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %158, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32*, i32** %14, align 8
  %151 = load i8*, i8** %37, align 8
  %152 = load i32*, i32** %23, align 8
  %153 = call i32* @svn_fs_copied_from(i32* %147, i8** %149, i32* %150, i8* %151, i32* %152)
  %154 = call i32 @SVN_ERR(i32* %153)
  %155 = load i8*, i8** @TRUE, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %145, %140
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  store i8* %161, i8** %35, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %36, align 4
  br label %165

165:                                              ; preds = %158, %134
  br label %166

166:                                              ; preds = %165, %105
  %167 = load i32* (i8**, i32*, i8*, i8*, i32*)*, i32* (i8**, i32*, i8*, i8*, i32*)** %20, align 8
  %168 = icmp ne i32* (i8**, i32*, i8*, i8*, i32*)* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %166
  %170 = load i32* (i8**, i32*, i8*, i8*, i32*)*, i32* (i8**, i32*, i8*, i8*, i32*)** %20, align 8
  %171 = load i32*, i32** %14, align 8
  %172 = load i8*, i8** %37, align 8
  %173 = load i8*, i8** %21, align 8
  %174 = load i32*, i32** %23, align 8
  %175 = call i32* %170(i8** %33, i32* %171, i8* %172, i8* %173, i32* %174)
  %176 = call i32 @SVN_ERR(i32* %175)
  br label %177

177:                                              ; preds = %169, %166
  %178 = load i8*, i8** %33, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  br label %339

181:                                              ; preds = %177
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @svn_node_dir, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %253

187:                                              ; preds = %181
  %188 = load i8*, i8** %35, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load i32*, i32** %13, align 8
  %192 = call i32* @svn_fs_root_fs(i32* %191)
  store i32* %192, i32** %41, align 8
  %193 = load i32*, i32** %41, align 8
  %194 = load i32, i32* %36, align 4
  %195 = load i32*, i32** %23, align 8
  %196 = call i32* @svn_fs_revision_root(i32** %38, i32* %193, i32 %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32* %196)
  %198 = load i8*, i8** %35, align 8
  store i8* %198, i8** %39, align 8
  br label %207

199:                                              ; preds = %187
  %200 = load i32*, i32** %13, align 8
  store i32* %200, i32** %38, align 8
  %201 = load i8*, i8** %19, align 8
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32*, i32** %25, align 8
  %206 = call i8* @svn_fspath__join(i8* %201, i32 %204, i32* %205)
  store i8* %206, i8** %39, align 8
  br label %207

207:                                              ; preds = %199, %190
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %209 = icmp ne %struct.TYPE_6__* %208, null
  br i1 %209, label %210, label %230

210:                                              ; preds = %207
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @svn_fs_path_change_replace, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %230

216:                                              ; preds = %210
  %217 = load i8*, i8** %35, align 8
  %218 = icmp eq i8* %217, null
  br i1 %218, label %219, label %230

219:                                              ; preds = %216
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 5
  %222 = load i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)** %221, align 8
  %223 = load i8*, i8** %37, align 8
  %224 = load i8**, i8*** %24, align 8
  %225 = load i8*, i8** %224, align 8
  %226 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %227 = load i32*, i32** %25, align 8
  %228 = call i32* %222(i8* %223, i8* %225, i32* null, i32 %226, i32* %227, i8** %40)
  %229 = call i32 @SVN_ERR(i32* %228)
  br label %245

230:                                              ; preds = %216, %210, %207
  %231 = load i32*, i32** %38, align 8
  %232 = load i32*, i32** %14, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %234 = load i8*, i8** %16, align 8
  %235 = load i8*, i8** %37, align 8
  %236 = load i8**, i8*** %24, align 8
  %237 = load i8*, i8** %236, align 8
  %238 = load i8*, i8** %39, align 8
  %239 = load i32* (i8**, i32*, i8*, i8*, i32*)*, i32* (i8**, i32*, i8*, i8*, i32*)** %20, align 8
  %240 = load i8*, i8** %21, align 8
  %241 = load i32*, i32** %22, align 8
  %242 = load i32*, i32** %25, align 8
  %243 = call i32* @add_subdir(i32* %231, i32* %232, %struct.TYPE_8__* %233, i8* %234, i8* %235, i8* %237, i8* %238, i32* (i8**, i32*, i8*, i8*, i32*)* %239, i8* %240, i32* %241, i32* %242, i8** %40)
  %244 = call i32 @SVN_ERR(i32* %243)
  br label %245

245:                                              ; preds = %230, %219
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 4
  %248 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %247, align 8
  %249 = load i8*, i8** %40, align 8
  %250 = load i32*, i32** %25, align 8
  %251 = call i32* %248(i8* %249, i32* %250)
  %252 = call i32 @SVN_ERR(i32* %251)
  br label %338

253:                                              ; preds = %181
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @svn_node_file, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %335

259:                                              ; preds = %253
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 3
  %262 = load i32* (i8*, i8*, i32*, i32, i32*, i8**)*, i32* (i8*, i8*, i32*, i32, i32*, i8**)** %261, align 8
  %263 = load i8*, i8** %37, align 8
  %264 = load i8**, i8*** %24, align 8
  %265 = load i8*, i8** %264, align 8
  %266 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %267 = load i32*, i32** %23, align 8
  %268 = call i32* %262(i8* %263, i8* %265, i32* null, i32 %266, i32* %267, i8** %44)
  %269 = call i32 @SVN_ERR(i32* %268)
  %270 = load i32*, i32** %14, align 8
  %271 = load i8*, i8** %37, align 8
  %272 = load i32*, i32** %25, align 8
  %273 = call i32* @svn_fs_node_proplist(i32** %29, i32* %270, i8* %271, i32* %272)
  %274 = call i32 @SVN_ERR(i32* %273)
  %275 = load i32*, i32** %23, align 8
  %276 = load i32*, i32** %29, align 8
  %277 = call i32* @apr_hash_first(i32* %275, i32* %276)
  store i32* %277, i32** %27, align 8
  br label %278

278:                                              ; preds = %296, %259
  %279 = load i32*, i32** %27, align 8
  %280 = icmp ne i32* %279, null
  br i1 %280, label %281, label %299

281:                                              ; preds = %278
  %282 = load i32*, i32** %27, align 8
  %283 = call i8* @apr_hash_this_key(i32* %282)
  store i8* %283, i8** %47, align 8
  %284 = load i32*, i32** %27, align 8
  %285 = call i8* @apr_hash_this_val(i32* %284)
  %286 = bitcast i8* %285 to i32*
  store i32* %286, i32** %48, align 8
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 2
  %289 = load i32* (i8*, i8*, i32*, i32*)*, i32* (i8*, i8*, i32*, i32*)** %288, align 8
  %290 = load i8*, i8** %44, align 8
  %291 = load i8*, i8** %47, align 8
  %292 = load i32*, i32** %48, align 8
  %293 = load i32*, i32** %25, align 8
  %294 = call i32* %289(i8* %290, i8* %291, i32* %292, i32* %293)
  %295 = call i32 @SVN_ERR(i32* %294)
  br label %296

296:                                              ; preds = %281
  %297 = load i32*, i32** %27, align 8
  %298 = call i32* @apr_hash_next(i32* %297)
  store i32* %298, i32** %27, align 8
  br label %278

299:                                              ; preds = %278
  %300 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %301 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %300, i32 0, i32 1
  %302 = load i32* (i8*, i32*, i32*, i32*, i8**)*, i32* (i8*, i32*, i32*, i32*, i8**)** %301, align 8
  %303 = load i8*, i8** %44, align 8
  %304 = load i32*, i32** %23, align 8
  %305 = call i32* %302(i8* %303, i32* null, i32* %304, i32* %42, i8** %43)
  %306 = call i32 @SVN_ERR(i32* %305)
  %307 = load i32*, i32** %14, align 8
  %308 = load i8*, i8** %37, align 8
  %309 = load i32*, i32** %23, align 8
  %310 = call i32* @svn_fs_get_file_delta_stream(i32** %45, i32* null, i32* null, i32* %307, i8* %308, i32* %309)
  %311 = call i32 @SVN_ERR(i32* %310)
  %312 = load i32*, i32** %45, align 8
  %313 = load i32, i32* %42, align 4
  %314 = load i8*, i8** %43, align 8
  %315 = load i32*, i32** %23, align 8
  %316 = call i32* @svn_txdelta_send_txstream(i32* %312, i32 %313, i8* %314, i32* %315)
  %317 = call i32 @SVN_ERR(i32* %316)
  %318 = load i32, i32* @svn_checksum_md5, align 4
  %319 = load i32*, i32** %14, align 8
  %320 = load i8*, i8** %37, align 8
  %321 = load i8*, i8** @TRUE, align 8
  %322 = load i32*, i32** %23, align 8
  %323 = call i32* @svn_fs_file_checksum(i32** %46, i32 %318, i32* %319, i8* %320, i8* %321, i32* %322)
  %324 = call i32 @SVN_ERR(i32* %323)
  %325 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = load i32* (i8*, i32, i32*)*, i32* (i8*, i32, i32*)** %326, align 8
  %328 = load i8*, i8** %44, align 8
  %329 = load i32*, i32** %46, align 8
  %330 = load i32*, i32** %23, align 8
  %331 = call i32 @svn_checksum_to_cstring(i32* %329, i32* %330)
  %332 = load i32*, i32** %23, align 8
  %333 = call i32* %327(i8* %328, i32 %331, i32* %332)
  %334 = call i32 @SVN_ERR(i32* %333)
  br label %337

335:                                              ; preds = %253
  %336 = call i32 (...) @SVN_ERR_MALFUNCTION()
  br label %337

337:                                              ; preds = %335, %299
  br label %338

338:                                              ; preds = %337, %245
  br label %339

339:                                              ; preds = %338, %180, %133
  %340 = load i32*, i32** %26, align 8
  %341 = call i32* @apr_hash_next(i32* %340)
  store i32* %341, i32** %26, align 8
  br label %102

342:                                              ; preds = %102
  %343 = load i32*, i32** %25, align 8
  %344 = call i32 @svn_pool_destroy(i32* %343)
  %345 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %345
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs_node_proplist(i32**, i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i8* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32* @svn_fs_dir_entries(i32**, i32*, i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i32* @svn_fs_root_fs(i32*) #1

declare dso_local i32* @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i8* @svn_fspath__join(i8*, i32, i32*) #1

declare dso_local i32* @svn_fs_get_file_delta_stream(i32**, i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_txdelta_send_txstream(i32*, i32, i8*, i32*) #1

declare dso_local i32* @svn_fs_file_checksum(i32**, i32, i32*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_checksum_to_cstring(i32*, i32*) #1

declare dso_local i32 @SVN_ERR_MALFUNCTION(...) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
