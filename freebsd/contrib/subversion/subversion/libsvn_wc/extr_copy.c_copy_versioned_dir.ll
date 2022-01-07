; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_versioned_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_copy_versioned_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.svn_wc__db_info_t = type { i64, i64, i32, i32, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_FILESIZE = common dso_local global i32 0, align 4
@svn_wc_notify_add = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"cannot handle node kind for '%s'\00", align 1
@svn_wc__db_status_deleted = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot handle status of '%s'\00", align 1
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"Cannot copy '%s' excluded by server\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i8*, i8*, i32, i32, i32*, i32* (i8*)*, i8*, i32 (i8*, %struct.TYPE_6__*, i32*)*, i8*, i32*)* @copy_versioned_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_versioned_dir(i32* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32* %7, i32* (i8*)* %8, i8* %9, i32 (i8*, %struct.TYPE_6__*, i32*)* %10, i8* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32* (i8*)*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32 (i8*, %struct.TYPE_6__*, i32*)*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  %36 = alloca %struct.TYPE_6__*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca %struct.svn_wc__db_info_t*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i8*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i32*, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32* %7, i32** %22, align 8
  store i32* (i8*)* %8, i32* (i8*)** %23, align 8
  store i8* %9, i8** %24, align 8
  store i32 (i8*, %struct.TYPE_6__*, i32*)* %10, i32 (i8*, %struct.TYPE_6__*, i32*)** %25, align 8
  store i8* %11, i8** %26, align 8
  store i32* %12, i32** %27, align 8
  store i32* null, i32** %28, align 8
  %46 = load i8*, i8** %17, align 8
  %47 = load i32*, i32** %27, align 8
  %48 = call i8* @svn_dirent_dirname(i8* %46, i32* %47)
  store i8* %48, i8** %29, align 8
  %49 = load i32, i32* %20, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %13
  %52 = load i32*, i32** %15, align 8
  %53 = load i8*, i8** %16, align 8
  %54 = load i8*, i8** %17, align 8
  %55 = load i8*, i8** %19, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @FALSE, align 4
  %58 = load i32*, i32** %22, align 8
  %59 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %60 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %61 = load i8*, i8** %24, align 8
  %62 = load i32*, i32** %27, align 8
  %63 = load i32*, i32** %27, align 8
  %64 = call i32* @copy_to_tmpdir(i32** %28, i64* %34, i32* %52, i8* %53, i8* %54, i8* %55, i32 %56, i32 %57, i32* %58, i32 %59, i32 0, i32* (i8*)* %60, i8* %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32* %64)
  br label %66

66:                                               ; preds = %51, %13
  %67 = load i32*, i32** %15, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = load i8*, i8** %17, align 8
  %70 = load i8*, i8** %18, align 8
  %71 = load i32, i32* %21, align 4
  %72 = load i32*, i32** %28, align 8
  %73 = load i32*, i32** %27, align 8
  %74 = call i32* @svn_wc__db_op_copy(i32* %67, i8* %68, i8* %69, i8* %70, i32 %71, i32* %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32* %74)
  %76 = load i32 (i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, %struct.TYPE_6__*, i32*)** %25, align 8
  %77 = icmp ne i32 (i8*, %struct.TYPE_6__*, i32*)* %76, null
  br i1 %77, label %78, label %102

78:                                               ; preds = %66
  %79 = load i8*, i8** %17, align 8
  %80 = load i32, i32* @svn_wc_notify_add, align 4
  %81 = load i32*, i32** %27, align 8
  %82 = call %struct.TYPE_6__* @svn_wc_create_notify(i8* %79, i32 %80, i32* %81)
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %36, align 8
  %83 = load i64, i64* @svn_node_dir, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i32*, i32** %28, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = load i32*, i32** %15, align 8
  %90 = load i8*, i8** %29, align 8
  %91 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %92 = load i8*, i8** %24, align 8
  %93 = load i32*, i32** %27, align 8
  %94 = call i32* @svn_wc__wq_run(i32* %89, i8* %90, i32* (i8*)* %91, i8* %92, i32* %93)
  %95 = call i32 @SVN_ERR(i32* %94)
  br label %96

96:                                               ; preds = %88, %78
  %97 = load i32 (i8*, %struct.TYPE_6__*, i32*)*, i32 (i8*, %struct.TYPE_6__*, i32*)** %25, align 8
  %98 = load i8*, i8** %26, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %100 = load i32*, i32** %27, align 8
  %101 = call i32 %97(i8* %98, %struct.TYPE_6__* %99, i32* %100)
  br label %102

102:                                              ; preds = %96, %66
  %103 = load i32, i32* %20, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %34, align 8
  %107 = load i64, i64* @svn_node_dir, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i8*, i8** %16, align 8
  %111 = load i32, i32* @TRUE, align 4
  %112 = load i32*, i32** %27, align 8
  %113 = load i32*, i32** %27, align 8
  %114 = call i32* @svn_io_get_dirents3(i32** %32, i8* %110, i32 %111, i32* %112, i32* %113)
  %115 = call i32 @SVN_ERR(i32* %114)
  br label %117

116:                                              ; preds = %105, %102
  store i32* null, i32** %32, align 8
  br label %117

117:                                              ; preds = %116, %109
  %118 = load i32*, i32** %27, align 8
  %119 = call i32* @svn_pool_create(i32* %118)
  store i32* %119, i32** %35, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = load i32, i32* @FALSE, align 4
  %123 = load i32*, i32** %27, align 8
  %124 = load i32*, i32** %35, align 8
  %125 = call i32* @svn_wc__db_read_children_info(i32** %30, i32** %31, i32* %120, i8* %121, i32 %122, i32* %123, i32* %124)
  %126 = call i32 @SVN_ERR(i32* %125)
  %127 = load i32*, i32** %27, align 8
  %128 = load i32*, i32** %30, align 8
  %129 = call i32* @apr_hash_first(i32* %127, i32* %128)
  store i32* %129, i32** %33, align 8
  br label %130

130:                                              ; preds = %335, %117
  %131 = load i32*, i32** %33, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %338

133:                                              ; preds = %130
  %134 = load i32*, i32** %35, align 8
  %135 = call i32 @svn_pool_clear(i32* %134)
  %136 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %137 = icmp ne i32* (i8*)* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %140 = load i8*, i8** %24, align 8
  %141 = call i32* %139(i8* %140)
  %142 = call i32 @SVN_ERR(i32* %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load i32*, i32** %33, align 8
  %145 = call i8* @apr_hash_this_key(i32* %144)
  store i8* %145, i8** %37, align 8
  %146 = load i32*, i32** %33, align 8
  %147 = call %struct.svn_wc__db_info_t* @apr_hash_this_val(i32* %146)
  store %struct.svn_wc__db_info_t* %147, %struct.svn_wc__db_info_t** %40, align 8
  %148 = load i8*, i8** %16, align 8
  %149 = load i8*, i8** %37, align 8
  %150 = load i32*, i32** %35, align 8
  %151 = call i8* @svn_dirent_join(i8* %148, i8* %149, i32* %150)
  store i8* %151, i8** %38, align 8
  %152 = load i8*, i8** %17, align 8
  %153 = load i8*, i8** %37, align 8
  %154 = load i32*, i32** %35, align 8
  %155 = call i8* @svn_dirent_join(i8* %152, i8* %153, i32* %154)
  store i8* %155, i8** %39, align 8
  %156 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %157 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %168

160:                                              ; preds = %143
  %161 = load i32*, i32** %15, align 8
  %162 = load i8*, i8** %38, align 8
  %163 = load i8*, i8** %39, align 8
  %164 = load i32, i32* %21, align 4
  %165 = load i32*, i32** %27, align 8
  %166 = call i32* @svn_wc__db_op_copy_shadowed_layer(i32* %161, i8* %162, i8* %163, i32 %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32* %166)
  br label %168

168:                                              ; preds = %160, %143
  %169 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %170 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @svn_wc__db_status_normal, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %176 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @svn_wc__db_status_added, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %260

180:                                              ; preds = %174, %168
  %181 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %182 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @svn_node_file, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %223

186:                                              ; preds = %180
  %187 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %188 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %222, label %191

191:                                              ; preds = %186
  %192 = load i32*, i32** %15, align 8
  %193 = load i8*, i8** %38, align 8
  %194 = load i8*, i8** %39, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = load i8*, i8** %19, align 8
  %197 = load i32, i32* %20, align 4
  %198 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %199 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %21, align 4
  %202 = load i32*, i32** %32, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %208

204:                                              ; preds = %191
  %205 = load i32*, i32** %32, align 8
  %206 = load i8*, i8** %37, align 8
  %207 = call i32* @svn_hash_gets(i32* %205, i8* %206)
  br label %209

208:                                              ; preds = %191
  br label %209

209:                                              ; preds = %208, %204
  %210 = phi i32* [ %207, %204 ], [ null, %208 ]
  %211 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %212 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %215 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %218 = load i8*, i8** %24, align 8
  %219 = load i32*, i32** %35, align 8
  %220 = call i32* @copy_versioned_file(i32* %192, i8* %193, i8* %194, i8* %195, i8* %196, i32 %197, i32 %200, i32 %201, i32* %210, i32 %213, i32 %216, i32* (i8*)* %217, i8* %218, i32* null, i32* null, i32* %219)
  %221 = call i32 @SVN_ERR(i32* %220)
  br label %222

222:                                              ; preds = %209, %186
  br label %259

223:                                              ; preds = %180
  %224 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %225 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @svn_node_dir, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %251

229:                                              ; preds = %223
  %230 = load i32*, i32** %15, align 8
  %231 = load i8*, i8** %38, align 8
  %232 = load i8*, i8** %39, align 8
  %233 = load i8*, i8** %18, align 8
  %234 = load i8*, i8** %19, align 8
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %21, align 4
  %237 = load i32*, i32** %32, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %229
  %240 = load i32*, i32** %32, align 8
  %241 = load i8*, i8** %37, align 8
  %242 = call i32* @svn_hash_gets(i32* %240, i8* %241)
  br label %244

243:                                              ; preds = %229
  br label %244

244:                                              ; preds = %243, %239
  %245 = phi i32* [ %242, %239 ], [ null, %243 ]
  %246 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %247 = load i8*, i8** %24, align 8
  %248 = load i32*, i32** %35, align 8
  %249 = call i32* @copy_versioned_dir(i32* %230, i8* %231, i8* %232, i8* %233, i8* %234, i32 %235, i32 %236, i32* %245, i32* (i8*)* %246, i8* %247, i32 (i8*, %struct.TYPE_6__*, i32*)* null, i8* null, i32* %248)
  %250 = call i32 @SVN_ERR(i32* %249)
  br label %258

251:                                              ; preds = %223
  %252 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %253 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %254 = load i8*, i8** %38, align 8
  %255 = load i32*, i32** %27, align 8
  %256 = call i32 @svn_dirent_local_style(i8* %254, i32* %255)
  %257 = call i32* @svn_error_createf(i32 %252, i32* null, i32 %253, i32 %256)
  store i32* %257, i32** %14, align 8
  br label %429

258:                                              ; preds = %244
  br label %259

259:                                              ; preds = %258, %222
  br label %315

260:                                              ; preds = %174
  %261 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %262 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @svn_wc__db_status_deleted, align 8
  %265 = icmp eq i64 %263, %264
  br i1 %265, label %278, label %266

266:                                              ; preds = %260
  %267 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %268 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %278, label %272

272:                                              ; preds = %266
  %273 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %274 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %272, %266, %260
  %279 = load i32*, i32** %15, align 8
  %280 = load i8*, i8** %38, align 8
  %281 = load i8*, i8** %39, align 8
  %282 = load i8*, i8** %18, align 8
  %283 = load i32, i32* %21, align 4
  %284 = load i32*, i32** %35, align 8
  %285 = call i32* @svn_wc__db_op_copy(i32* %279, i8* %280, i8* %281, i8* %282, i32 %283, i32* null, i32* %284)
  %286 = call i32 @SVN_ERR(i32* %285)
  br label %314

287:                                              ; preds = %272
  %288 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %289 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %287
  %294 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %295 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %296 = load i8*, i8** %38, align 8
  %297 = load i32*, i32** %35, align 8
  %298 = call i32 @svn_dirent_local_style(i8* %296, i32* %297)
  %299 = call i32* @svn_error_createf(i32 %294, i32* null, i32 %295, i32 %298)
  store i32* %299, i32** %14, align 8
  br label %429

300:                                              ; preds = %287
  %301 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %302 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %305 = icmp eq i64 %303, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @SVN_ERR_ASSERT(i32 %306)
  %308 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %309 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %310 = load i8*, i8** %38, align 8
  %311 = load i32*, i32** %35, align 8
  %312 = call i32 @svn_dirent_local_style(i8* %310, i32* %311)
  %313 = call i32* @svn_error_createf(i32 %308, i32* null, i32 %309, i32 %312)
  store i32* %313, i32** %14, align 8
  br label %429

314:                                              ; preds = %278
  br label %315

315:                                              ; preds = %314, %259
  %316 = load i32*, i32** %32, align 8
  %317 = icmp ne i32* %316, null
  br i1 %317, label %318, label %334

318:                                              ; preds = %315
  %319 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %320 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @svn_wc__db_status_normal, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %330, label %324

324:                                              ; preds = %318
  %325 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %40, align 8
  %326 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @svn_wc__db_status_added, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %324, %318
  %331 = load i32*, i32** %32, align 8
  %332 = load i8*, i8** %37, align 8
  %333 = call i32 @svn_hash_sets(i32* %331, i8* %332, i32* null)
  br label %334

334:                                              ; preds = %330, %324, %315
  br label %335

335:                                              ; preds = %334
  %336 = load i32*, i32** %33, align 8
  %337 = call i32* @apr_hash_next(i32* %336)
  store i32* %337, i32** %33, align 8
  br label %130

338:                                              ; preds = %130
  %339 = load i32*, i32** %32, align 8
  %340 = icmp ne i32* %339, null
  br i1 %340, label %341, label %425

341:                                              ; preds = %338
  %342 = load i32*, i32** %32, align 8
  %343 = call i64 @apr_hash_count(i32* %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %425

345:                                              ; preds = %341
  %346 = load i32*, i32** %15, align 8
  %347 = load i8*, i8** %16, align 8
  %348 = load i32*, i32** %27, align 8
  %349 = load i32*, i32** %27, align 8
  %350 = call i32* @svn_wc__db_get_conflict_marker_files(i32** %41, i32* %346, i8* %347, i32* %348, i32* %349)
  %351 = call i32 @SVN_ERR(i32* %350)
  store i32* null, i32** %28, align 8
  %352 = load i32*, i32** %27, align 8
  %353 = load i32*, i32** %32, align 8
  %354 = call i32* @apr_hash_first(i32* %352, i32* %353)
  store i32* %354, i32** %33, align 8
  br label %355

355:                                              ; preds = %415, %345
  %356 = load i32*, i32** %33, align 8
  %357 = icmp ne i32* %356, null
  br i1 %357, label %358, label %418

358:                                              ; preds = %355
  %359 = load i32*, i32** %33, align 8
  %360 = call i8* @apr_hash_this_key(i32* %359)
  store i8* %360, i8** %42, align 8
  %361 = load i8*, i8** %42, align 8
  %362 = load i32*, i32** %35, align 8
  %363 = call i64 @svn_wc_is_adm_dir(i8* %361, i32* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %358
  br label %415

366:                                              ; preds = %358
  %367 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %368 = icmp ne i32* (i8*)* %367, null
  br i1 %368, label %369, label %374

369:                                              ; preds = %366
  %370 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %371 = load i8*, i8** %24, align 8
  %372 = call i32* %370(i8* %371)
  %373 = call i32 @SVN_ERR(i32* %372)
  br label %374

374:                                              ; preds = %369, %366
  %375 = load i32*, i32** %35, align 8
  %376 = call i32 @svn_pool_clear(i32* %375)
  %377 = load i8*, i8** %16, align 8
  %378 = load i8*, i8** %42, align 8
  %379 = load i32*, i32** %35, align 8
  %380 = call i8* @svn_dirent_join(i8* %377, i8* %378, i32* %379)
  store i8* %380, i8** %43, align 8
  %381 = load i8*, i8** %17, align 8
  %382 = load i8*, i8** %42, align 8
  %383 = load i32*, i32** %35, align 8
  %384 = call i8* @svn_dirent_join(i8* %381, i8* %382, i32* %383)
  store i8* %384, i8** %44, align 8
  %385 = load i32*, i32** %41, align 8
  %386 = icmp ne i32* %385, null
  br i1 %386, label %387, label %393

387:                                              ; preds = %374
  %388 = load i32*, i32** %41, align 8
  %389 = load i8*, i8** %43, align 8
  %390 = call i32* @svn_hash_gets(i32* %388, i8* %389)
  %391 = icmp ne i32* %390, null
  br i1 %391, label %392, label %393

392:                                              ; preds = %387
  br label %415

393:                                              ; preds = %387, %374
  %394 = load i32*, i32** %15, align 8
  %395 = load i8*, i8** %43, align 8
  %396 = load i8*, i8** %44, align 8
  %397 = load i8*, i8** %19, align 8
  %398 = load i32, i32* @TRUE, align 4
  %399 = load i32, i32* @TRUE, align 4
  %400 = load i32, i32* @SVN_INVALID_FILESIZE, align 4
  %401 = load i32* (i8*)*, i32* (i8*)** %23, align 8
  %402 = load i8*, i8** %24, align 8
  %403 = load i32*, i32** %27, align 8
  %404 = load i32*, i32** %35, align 8
  %405 = call i32* @copy_to_tmpdir(i32** %45, i64* null, i32* %394, i8* %395, i8* %396, i8* %397, i32 %398, i32 %399, i32* null, i32 %400, i32 0, i32* (i8*)* %401, i8* %402, i32* %403, i32* %404)
  %406 = call i32 @SVN_ERR(i32* %405)
  %407 = load i32*, i32** %45, align 8
  %408 = icmp ne i32* %407, null
  br i1 %408, label %409, label %414

409:                                              ; preds = %393
  %410 = load i32*, i32** %28, align 8
  %411 = load i32*, i32** %45, align 8
  %412 = load i32*, i32** %27, align 8
  %413 = call i32* @svn_wc__wq_merge(i32* %410, i32* %411, i32* %412)
  store i32* %413, i32** %28, align 8
  br label %414

414:                                              ; preds = %409, %393
  br label %415

415:                                              ; preds = %414, %392, %365
  %416 = load i32*, i32** %33, align 8
  %417 = call i32* @apr_hash_next(i32* %416)
  store i32* %417, i32** %33, align 8
  br label %355

418:                                              ; preds = %355
  %419 = load i32*, i32** %15, align 8
  %420 = load i8*, i8** %17, align 8
  %421 = load i32*, i32** %28, align 8
  %422 = load i32*, i32** %35, align 8
  %423 = call i32* @svn_wc__db_wq_add(i32* %419, i8* %420, i32* %421, i32* %422)
  %424 = call i32 @SVN_ERR(i32* %423)
  br label %425

425:                                              ; preds = %418, %341, %338
  %426 = load i32*, i32** %35, align 8
  %427 = call i32 @svn_pool_destroy(i32* %426)
  %428 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %428, i32** %14, align 8
  br label %429

429:                                              ; preds = %425, %300, %293, %251
  %430 = load i32*, i32** %14, align 8
  ret i32* %430
}

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @copy_to_tmpdir(i32**, i64*, i32*, i8*, i8*, i8*, i32, i32, i32*, i32, i32, i32* (i8*)*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__db_op_copy(i32*, i8*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32* @svn_wc__wq_run(i32*, i8*, i32* (i8*)*, i8*, i32*) #1

declare dso_local i32* @svn_io_get_dirents3(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @svn_wc__db_read_children_info(i32**, i32**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.svn_wc__db_info_t* @apr_hash_this_val(i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @svn_wc__db_op_copy_shadowed_layer(i32*, i8*, i8*, i32, i32*) #1

declare dso_local i32* @copy_versioned_file(i32*, i8*, i8*, i8*, i8*, i32, i32, i32, i32*, i32, i32, i32* (i8*)*, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_wc__db_get_conflict_marker_files(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @svn_wc_is_adm_dir(i8*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32* @svn_wc__db_wq_add(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
