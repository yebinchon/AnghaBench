; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_find_max_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_recovery.c_recover_find_max_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.recover_read_from_file_baton = type { i32, i32*, i32 }
%struct.TYPE_23__ = type { i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@APR_SET = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_FS_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Recovery encountered a non-directory node\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_fs_fs__rep_plain = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"Recovery encountered a deltified directory representation\00", align 1
@read_handler_recover = common dso_local global i32 0, align 4
@SVN_HASH_TERMINATOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"malformed representation for node-revision '%s'\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Directory entry corrupt\00", align 1
@SVN_FS_FS__KIND_FILE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_FS_FS__KIND_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i64, %struct.TYPE_20__*, i32, i64*, i64*, i32*)* @recover_find_max_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @recover_find_max_ids(i32* %0, i64 %1, %struct.TYPE_20__* %2, i32 %3, i64* %4, i64* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca %struct.recover_read_from_file_baton, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_23__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_19__*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_22__*, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i32, align 4
  %33 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i32* %6, i32** %15, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %17, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @APR_SET, align 4
  %42 = load i32*, i32** %15, align 8
  %43 = call i32* @svn_io_file_seek(i32 %40, i32 %41, i32* %12, i32* %42)
  %44 = call i32 @SVN_ERR(i32* %43)
  %45 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %17, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %15, align 8
  %49 = call i32* @svn_fs_fs__read_noderev(%struct.TYPE_23__** %22, i32 %46, i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32* %49)
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @svn_node_dir, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %7
  %57 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %58 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %59 = call i32* @svn_error_create(i32 %57, i32* null, i32 %58)
  store i32* %59, i32** %8, align 8
  br label %274

60:                                               ; preds = %7
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = icmp ne %struct.TYPE_18__* %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %66, i32** %8, align 8
  br label %274

67:                                               ; preds = %60
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %8, align 8
  br label %274

77:                                               ; preds = %67
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %15, align 8
  %87 = call i32* @svn_fs_fs__item_offset(i32* %12, i32* %78, %struct.TYPE_20__* %79, i64 %80, i32* null, i32 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32* %87)
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @APR_SET, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = call i32* @svn_io_file_seek(i32 %91, i32 %92, i32* %12, i32* %93)
  %95 = call i32 @SVN_ERR(i32* %94)
  %96 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %17, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = call i32* @svn_fs_fs__read_rep_header(%struct.TYPE_21__** %16, i32 %97, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32* %100)
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @svn_fs_fs__rep_plain, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %77
  %108 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %109 = call i32 @_(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %110 = call i32* @svn_error_create(i32 %108, i32* null, i32 %109)
  store i32* %110, i32** %8, align 8
  br label %274

111:                                              ; preds = %77
  %112 = load i32*, i32** %15, align 8
  %113 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %17, i32 0, i32 1
  store i32* %112, i32** %113, align 8
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 2
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = getelementptr inbounds %struct.recover_read_from_file_baton, %struct.recover_read_from_file_baton* %17, i32 0, i32 0
  store i32 %118, i32* %119, align 8
  %120 = load i32*, i32** %15, align 8
  %121 = call i32* @svn_stream_create(%struct.recover_read_from_file_baton* %17, i32* %120)
  store i32* %121, i32** %18, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = load i32, i32* @read_handler_recover, align 4
  %124 = call i32 @svn_stream_set_read2(i32* %122, i32* null, i32 %123)
  %125 = load i32*, i32** %15, align 8
  %126 = call i32* @apr_hash_make(i32* %125)
  store i32* %126, i32** %19, align 8
  %127 = load i32*, i32** %19, align 8
  %128 = load i32*, i32** %18, align 8
  %129 = load i32, i32* @SVN_HASH_TERMINATOR, align 4
  %130 = load i32*, i32** %15, align 8
  %131 = call i32* @svn_hash_read2(i32* %127, i32* %128, i32 %129, i32* %130)
  store i32* %131, i32** %23, align 8
  %132 = load i32*, i32** %23, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %150

134:                                              ; preds = %111
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call %struct.TYPE_19__* @svn_fs_fs__id_unparse(i32 %137, i32* %138)
  store %struct.TYPE_19__* %139, %struct.TYPE_19__** %24, align 8
  %140 = load i32*, i32** %23, align 8
  %141 = load i32*, i32** %18, align 8
  %142 = call i32* @svn_stream_close(i32* %141)
  %143 = call i32* @svn_error_compose_create(i32* %140, i32* %142)
  store i32* %143, i32** %23, align 8
  %144 = load i32*, i32** %23, align 8
  %145 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %24, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32* @svn_error_quick_wrapf(i32* %144, i32 %145, i32 %148)
  store i32* %149, i32** %8, align 8
  br label %274

150:                                              ; preds = %111
  %151 = load i32*, i32** %18, align 8
  %152 = call i32* @svn_stream_close(i32* %151)
  %153 = call i32 @SVN_ERR(i32* %152)
  %154 = load i32*, i32** %15, align 8
  %155 = call i32* @svn_pool_create(i32* %154)
  store i32* %155, i32** %21, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = load i32*, i32** %19, align 8
  %158 = call i32* @apr_hash_first(i32* %156, i32* %157)
  store i32* %158, i32** %20, align 8
  br label %159

159:                                              ; preds = %267, %150
  %160 = load i32*, i32** %20, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %270

162:                                              ; preds = %159
  %163 = load i32*, i32** %20, align 8
  %164 = call %struct.TYPE_19__* @apr_hash_this_val(i32* %163)
  store %struct.TYPE_19__* %164, %struct.TYPE_19__** %33, align 8
  %165 = load i32*, i32** %21, align 8
  %166 = call i32 @svn_pool_clear(i32* %165)
  %167 = load i32*, i32** %21, align 8
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @apr_pstrdup(i32* %167, i32 %170)
  store i8* %171, i8** %25, align 8
  %172 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %25)
  store i8* %172, i8** %26, align 8
  %173 = load i8*, i8** %26, align 8
  %174 = icmp eq i8* %173, null
  br i1 %174, label %175, label %179

175:                                              ; preds = %162
  %176 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %177 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %178 = call i32* @svn_error_create(i32 %176, i32* null, i32 %177)
  store i32* %178, i32** %8, align 8
  br label %274

179:                                              ; preds = %162
  %180 = load i8*, i8** %26, align 8
  %181 = load i32, i32* @SVN_FS_FS__KIND_FILE, align 4
  %182 = call i64 @strcmp(i8* %180, i32 %181)
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i64, i64* @svn_node_file, align 8
  store i64 %185, i64* %27, align 8
  br label %198

186:                                              ; preds = %179
  %187 = load i8*, i8** %26, align 8
  %188 = load i32, i32* @SVN_FS_FS__KIND_DIR, align 4
  %189 = call i64 @strcmp(i8* %187, i32 %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = load i64, i64* @svn_node_dir, align 8
  store i64 %192, i64* %27, align 8
  br label %197

193:                                              ; preds = %186
  %194 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %195 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %196 = call i32* @svn_error_create(i32 %194, i32* null, i32 %195)
  store i32* %196, i32** %8, align 8
  br label %274

197:                                              ; preds = %191
  br label %198

198:                                              ; preds = %197, %184
  %199 = call i8* @svn_cstring_tokenize(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %25)
  store i8* %199, i8** %26, align 8
  %200 = load i8*, i8** %26, align 8
  %201 = icmp eq i8* %200, null
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* @SVN_ERR_FS_CORRUPT, align 4
  %204 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %205 = call i32* @svn_error_create(i32 %203, i32* null, i32 %204)
  store i32* %205, i32** %8, align 8
  br label %274

206:                                              ; preds = %198
  %207 = load i8*, i8** %26, align 8
  %208 = load i32*, i32** %21, align 8
  %209 = call i32* @svn_fs_fs__id_parse(i32** %28, i8* %207, i32* %208)
  %210 = call i32 @SVN_ERR(i32* %209)
  %211 = load i32*, i32** %28, align 8
  %212 = call %struct.TYPE_22__* @svn_fs_fs__id_rev_item(i32* %211)
  store %struct.TYPE_22__* %212, %struct.TYPE_22__** %29, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %10, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %206
  br label %267

219:                                              ; preds = %206
  %220 = load i32*, i32** %28, align 8
  %221 = call %struct.TYPE_16__* @svn_fs_fs__id_node_id(i32* %220)
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  store i64 %223, i64* %30, align 8
  %224 = load i32*, i32** %28, align 8
  %225 = call %struct.TYPE_17__* @svn_fs_fs__id_copy_id(i32* %224)
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %31, align 8
  %228 = load i64, i64* %30, align 8
  %229 = load i64*, i64** %13, align 8
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %228, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %219
  %233 = load i64, i64* %30, align 8
  %234 = load i64*, i64** %13, align 8
  store i64 %233, i64* %234, align 8
  br label %235

235:                                              ; preds = %232, %219
  %236 = load i64, i64* %31, align 8
  %237 = load i64*, i64** %14, align 8
  %238 = load i64, i64* %237, align 8
  %239 = icmp sgt i64 %236, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load i64, i64* %31, align 8
  %242 = load i64*, i64** %14, align 8
  store i64 %241, i64* %242, align 8
  br label %243

243:                                              ; preds = %240, %235
  %244 = load i64, i64* %27, align 8
  %245 = load i64, i64* @svn_node_file, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  br label %267

248:                                              ; preds = %243
  %249 = load i32*, i32** %9, align 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %251 = load i64, i64* %10, align 8
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = load i32*, i32** %21, align 8
  %256 = call i32* @svn_fs_fs__item_offset(i32* %32, i32* %249, %struct.TYPE_20__* %250, i64 %251, i32* null, i32 %254, i32* %255)
  %257 = call i32 @SVN_ERR(i32* %256)
  %258 = load i32*, i32** %9, align 8
  %259 = load i64, i64* %10, align 8
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %261 = load i32, i32* %32, align 4
  %262 = load i64*, i64** %13, align 8
  %263 = load i64*, i64** %14, align 8
  %264 = load i32*, i32** %21, align 8
  %265 = call i32* @recover_find_max_ids(i32* %258, i64 %259, %struct.TYPE_20__* %260, i32 %261, i64* %262, i64* %263, i32* %264)
  %266 = call i32 @SVN_ERR(i32* %265)
  br label %267

267:                                              ; preds = %248, %247, %218
  %268 = load i32*, i32** %20, align 8
  %269 = call i32* @apr_hash_next(i32* %268)
  store i32* %269, i32** %20, align 8
  br label %159

270:                                              ; preds = %159
  %271 = load i32*, i32** %21, align 8
  %272 = call i32 @svn_pool_destroy(i32* %271)
  %273 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %273, i32** %8, align 8
  br label %274

274:                                              ; preds = %270, %202, %193, %175, %134, %107, %75, %65, %56
  %275 = load i32*, i32** %8, align 8
  ret i32* %275
}

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_io_file_seek(i32, i32, i32*, i32*) #1

declare dso_local i32* @svn_fs_fs__read_noderev(%struct.TYPE_23__**, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @svn_fs_fs__item_offset(i32*, i32*, %struct.TYPE_20__*, i64, i32*, i32, i32*) #1

declare dso_local i32* @svn_fs_fs__read_rep_header(%struct.TYPE_21__**, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_create(%struct.recover_read_from_file_baton*, i32*) #1

declare dso_local i32 @svn_stream_set_read2(i32*, i32*, i32) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @svn_hash_read2(i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_fs_fs__id_unparse(i32, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_stream_close(i32*) #1

declare dso_local i32* @svn_error_quick_wrapf(i32*, i32, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local %struct.TYPE_19__* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i32) #1

declare dso_local i8* @svn_cstring_tokenize(i8*, i8**) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32* @svn_fs_fs__id_parse(i32**, i8*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_fs_fs__id_rev_item(i32*) #1

declare dso_local %struct.TYPE_16__* @svn_fs_fs__id_node_id(i32*) #1

declare dso_local %struct.TYPE_17__* @svn_fs_fs__id_copy_id(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
