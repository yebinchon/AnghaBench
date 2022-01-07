; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_commit_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_commit_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { i32 }
%struct.commit_baton = type { %struct.TYPE_40__*, %struct.TYPE_41__*, i64*, i32, i32, i32 }
%struct.TYPE_40__ = type { i64, i32 }
%struct.TYPE_41__ = type { i32, %struct.TYPE_39__* }
%struct.TYPE_39__ = type { i64, i64, i64, i64 }
%struct.TYPE_37__ = type { i32, i32 }

@SVN_ERR_FS_TXN_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Transaction out of date\00", align 1
@TRUE = common dso_local global i32 0, align 4
@APR_OS_DEFAULT = common dso_local global i32 0, align 4
@PATH_REVS_DIR = common dso_local global i32 0, align 4
@PATH_REVPROPS_DIR = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_38__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_38__* (i8*, i32*)* @commit_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_38__* @commit_body(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_38__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.commit_baton*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_37__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_38__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_38__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = bitcast i8* %30 to %struct.commit_baton*
  store %struct.commit_baton* %31, %struct.commit_baton** %6, align 8
  %32 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %33 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %32, i32 0, i32 1
  %34 = load %struct.TYPE_41__*, %struct.TYPE_41__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_39__*, %struct.TYPE_39__** %35, align 8
  store %struct.TYPE_39__* %36, %struct.TYPE_39__** %7, align 8
  %37 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %38 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %37, i32 0, i32 0
  %39 = load %struct.TYPE_40__*, %struct.TYPE_40__** %38, align 8
  %40 = call i32* @svn_fs_fs__txn_get_id(%struct.TYPE_40__* %39)
  store i32* %40, i32** %22, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = call i32* @apr_array_make(i32* %41, i32 4, i32 4)
  store i32* %42, i32** %24, align 8
  %43 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %44 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %43, i32 0, i32 1
  %45 = load %struct.TYPE_41__*, %struct.TYPE_41__** %44, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @svn_fs_fs__read_format_file(%struct.TYPE_41__* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  %49 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %50 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %49, i32 0, i32 1
  %51 = load %struct.TYPE_41__*, %struct.TYPE_41__** %50, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @svn_fs_fs__read_current(i64* %16, i32* %14, i32* %15, %struct.TYPE_41__* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %59 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %58, i32 0, i32 0
  %60 = load %struct.TYPE_40__*, %struct.TYPE_40__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %16, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %2
  %66 = load i32, i32* @SVN_ERR_FS_TXN_OUT_OF_DATE, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %68 = call %struct.TYPE_38__* @svn_error_create(i32 %66, i32* null, i32 %67)
  store %struct.TYPE_38__* %68, %struct.TYPE_38__** %3, align 8
  br label %395

69:                                               ; preds = %2
  %70 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %71 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %70, i32 0, i32 1
  %72 = load %struct.TYPE_41__*, %struct.TYPE_41__** %71, align 8
  %73 = load i32*, i32** %22, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @svn_fs_fs__txn_changes_fetch(i32** %23, %struct.TYPE_41__* %72, i32* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  %77 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %78 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %77, i32 0, i32 1
  %79 = load %struct.TYPE_41__*, %struct.TYPE_41__** %78, align 8
  %80 = load i32*, i32** %22, align 8
  %81 = load i32*, i32** %23, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @verify_locks(%struct.TYPE_41__* %79, i32* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i64, i64* %16, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %17, align 8
  %87 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %88 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %87, i32 0, i32 1
  %89 = load %struct.TYPE_41__*, %struct.TYPE_41__** %88, align 8
  %90 = load i32*, i32** %22, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @get_writable_proto_rev(i32** %18, i8** %19, %struct.TYPE_41__* %89, i32* %90, i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** %18, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @svn_io_file_get_offset(i32* %20, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %22, align 8
  %99 = load i32*, i32** %5, align 8
  %100 = call i32* @svn_fs_fs__id_txn_create_root(i32* %98, i32* %99)
  store i32* %100, i32** %12, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = load i64, i64* %17, align 8
  %103 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %104 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %103, i32 0, i32 1
  %105 = load %struct.TYPE_41__*, %struct.TYPE_41__** %104, align 8
  %106 = load i32*, i32** %12, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32*, i32** %24, align 8
  %111 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %112 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %115 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %118 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TRUE, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @write_final_rev(i32** %13, i32* %101, i64 %102, %struct.TYPE_41__* %105, i32* %106, i32 %107, i32 %108, i32 %109, i32* %110, i32 %113, i32 %116, i32 %119, i32 %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i32*, i32** %18, align 8
  %125 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %126 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %125, i32 0, i32 1
  %127 = load %struct.TYPE_41__*, %struct.TYPE_41__** %126, align 8
  %128 = load i32*, i32** %22, align 8
  %129 = load i32*, i32** %23, align 8
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @write_final_changed_path_info(i32* %21, i32* %124, %struct.TYPE_41__* %127, i32* %128, i32* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %134 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %133, i32 0, i32 1
  %135 = load %struct.TYPE_41__*, %struct.TYPE_41__** %134, align 8
  %136 = call i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_41__* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %159

138:                                              ; preds = %69
  %139 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %140 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %139, i32 0, i32 1
  %141 = load %struct.TYPE_41__*, %struct.TYPE_41__** %140, align 8
  %142 = load i32*, i32** %18, align 8
  %143 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %144 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %143, i32 0, i32 1
  %145 = load %struct.TYPE_41__*, %struct.TYPE_41__** %144, align 8
  %146 = load i32*, i32** %22, align 8
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 @svn_fs_fs__path_l2p_proto_index(%struct.TYPE_41__* %145, i32* %146, i32* %147)
  %149 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %150 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %149, i32 0, i32 1
  %151 = load %struct.TYPE_41__*, %struct.TYPE_41__** %150, align 8
  %152 = load i32*, i32** %22, align 8
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @svn_fs_fs__path_p2l_proto_index(%struct.TYPE_41__* %151, i32* %152, i32* %153)
  %155 = load i64, i64* %17, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @svn_fs_fs__add_index_data(%struct.TYPE_41__* %141, i32* %142, i32 %148, i32 %154, i64 %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  br label %176

159:                                              ; preds = %69
  %160 = load i32*, i32** %13, align 8
  %161 = call i64 @svn_fs_fs__id_item(i32* %160)
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* %21, align 4
  %164 = load i32*, i32** %5, align 8
  %165 = call %struct.TYPE_37__* @svn_fs_fs__unparse_revision_trailer(i32 %162, i32 %163, i32* %164)
  store %struct.TYPE_37__* %165, %struct.TYPE_37__** %25, align 8
  %166 = load i32*, i32** %18, align 8
  %167 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %168 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %171 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @svn_io_file_write_full(i32* %166, i32 %169, i32 %172, i32* null, i32* %173)
  %175 = call i32 @SVN_ERR(i32 %174)
  br label %176

176:                                              ; preds = %159, %138
  %177 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load i32*, i32** %18, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @svn_io_file_flush_to_disk(i32* %182, i32* %183)
  %185 = call i32 @SVN_ERR(i32 %184)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load i32*, i32** %18, align 8
  %188 = load i32*, i32** %5, align 8
  %189 = call i32 @svn_io_file_close(i32* %187, i32* %188)
  %190 = call i32 @SVN_ERR(i32 %189)
  %191 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %284

195:                                              ; preds = %186
  %196 = load i64, i64* %17, align 8
  %197 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = srem i64 %196, %199
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %284

202:                                              ; preds = %195
  %203 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %204 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %203, i32 0, i32 1
  %205 = load %struct.TYPE_41__*, %struct.TYPE_41__** %204, align 8
  %206 = load i64, i64* %17, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = call i8* @svn_fs_fs__path_rev_shard(%struct.TYPE_41__* %205, i64 %206, i32* %207)
  store i8* %208, i8** %26, align 8
  %209 = load i8*, i8** %26, align 8
  %210 = load i32, i32* @APR_OS_DEFAULT, align 4
  %211 = load i32*, i32** %5, align 8
  %212 = call %struct.TYPE_38__* @svn_io_dir_make(i8* %209, i32 %210, i32* %211)
  store %struct.TYPE_38__* %212, %struct.TYPE_38__** %27, align 8
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %27, align 8
  %214 = icmp ne %struct.TYPE_38__* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %202
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %27, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @APR_STATUS_IS_EEXIST(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %215
  %222 = load %struct.TYPE_38__*, %struct.TYPE_38__** %27, align 8
  %223 = call %struct.TYPE_38__* @svn_error_trace(%struct.TYPE_38__* %222)
  store %struct.TYPE_38__* %223, %struct.TYPE_38__** %3, align 8
  br label %395

224:                                              ; preds = %215, %202
  %225 = load %struct.TYPE_38__*, %struct.TYPE_38__** %27, align 8
  %226 = call i32 @svn_error_clear(%struct.TYPE_38__* %225)
  %227 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %228 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %227, i32 0, i32 1
  %229 = load %struct.TYPE_41__*, %struct.TYPE_41__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @PATH_REVS_DIR, align 4
  %233 = load i32*, i32** %5, align 8
  %234 = call i32 @svn_dirent_join(i32 %231, i32 %232, i32* %233)
  %235 = load i8*, i8** %26, align 8
  %236 = load i32*, i32** %5, align 8
  %237 = call i32 @svn_io_copy_perms(i32 %234, i8* %235, i32* %236)
  %238 = call i32 @SVN_ERR(i32 %237)
  %239 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %240 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %239, i32 0, i32 1
  %241 = load %struct.TYPE_41__*, %struct.TYPE_41__** %240, align 8
  %242 = load i64, i64* %17, align 8
  %243 = call i32 @svn_fs_fs__is_packed_revprop(%struct.TYPE_41__* %241, i64 %242)
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  %246 = zext i1 %245 to i32
  %247 = call i32 @SVN_ERR_ASSERT(i32 %246)
  %248 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %249 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %248, i32 0, i32 1
  %250 = load %struct.TYPE_41__*, %struct.TYPE_41__** %249, align 8
  %251 = load i64, i64* %17, align 8
  %252 = load i32*, i32** %5, align 8
  %253 = call i8* @svn_fs_fs__path_revprops_shard(%struct.TYPE_41__* %250, i64 %251, i32* %252)
  store i8* %253, i8** %28, align 8
  %254 = load i8*, i8** %28, align 8
  %255 = load i32, i32* @APR_OS_DEFAULT, align 4
  %256 = load i32*, i32** %5, align 8
  %257 = call %struct.TYPE_38__* @svn_io_dir_make(i8* %254, i32 %255, i32* %256)
  store %struct.TYPE_38__* %257, %struct.TYPE_38__** %29, align 8
  %258 = load %struct.TYPE_38__*, %struct.TYPE_38__** %29, align 8
  %259 = icmp ne %struct.TYPE_38__* %258, null
  br i1 %259, label %260, label %269

260:                                              ; preds = %224
  %261 = load %struct.TYPE_38__*, %struct.TYPE_38__** %29, align 8
  %262 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @APR_STATUS_IS_EEXIST(i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %260
  %267 = load %struct.TYPE_38__*, %struct.TYPE_38__** %29, align 8
  %268 = call %struct.TYPE_38__* @svn_error_trace(%struct.TYPE_38__* %267)
  store %struct.TYPE_38__* %268, %struct.TYPE_38__** %3, align 8
  br label %395

269:                                              ; preds = %260, %224
  %270 = load %struct.TYPE_38__*, %struct.TYPE_38__** %29, align 8
  %271 = call i32 @svn_error_clear(%struct.TYPE_38__* %270)
  %272 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %273 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %272, i32 0, i32 1
  %274 = load %struct.TYPE_41__*, %struct.TYPE_41__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @PATH_REVPROPS_DIR, align 4
  %278 = load i32*, i32** %5, align 8
  %279 = call i32 @svn_dirent_join(i32 %276, i32 %277, i32* %278)
  %280 = load i8*, i8** %28, align 8
  %281 = load i32*, i32** %5, align 8
  %282 = call i32 @svn_io_copy_perms(i32 %279, i8* %280, i32* %281)
  %283 = call i32 @SVN_ERR(i32 %282)
  br label %284

284:                                              ; preds = %269, %195, %186
  %285 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %286 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %285, i32 0, i32 1
  %287 = load %struct.TYPE_41__*, %struct.TYPE_41__** %286, align 8
  %288 = load i64, i64* %16, align 8
  %289 = load i32*, i32** %5, align 8
  %290 = call i8* @svn_fs_fs__path_rev_absolute(%struct.TYPE_41__* %287, i64 %288, i32* %289)
  store i8* %290, i8** %8, align 8
  %291 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %292 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %291, i32 0, i32 1
  %293 = load %struct.TYPE_41__*, %struct.TYPE_41__** %292, align 8
  %294 = load i64, i64* %17, align 8
  %295 = load i32*, i32** %5, align 8
  %296 = call i8* @svn_fs_fs__path_rev(%struct.TYPE_41__* %293, i64 %294, i32* %295)
  store i8* %296, i8** %9, align 8
  %297 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %298 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %297, i32 0, i32 1
  %299 = load %struct.TYPE_41__*, %struct.TYPE_41__** %298, align 8
  %300 = load i32*, i32** %22, align 8
  %301 = load i32*, i32** %5, align 8
  %302 = call i8* @svn_fs_fs__path_txn_proto_rev(%struct.TYPE_41__* %299, i32* %300, i32* %301)
  store i8* %302, i8** %10, align 8
  %303 = load i8*, i8** %10, align 8
  %304 = load i8*, i8** %9, align 8
  %305 = load i8*, i8** %8, align 8
  %306 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %306, i32 0, i32 3
  %308 = load i64, i64* %307, align 8
  %309 = load i32*, i32** %5, align 8
  %310 = call i32 @svn_fs_fs__move_into_place(i8* %303, i8* %304, i8* %305, i64 %308, i32* %309)
  %311 = call i32 @SVN_ERR(i32 %310)
  %312 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %313 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %312, i32 0, i32 1
  %314 = load %struct.TYPE_41__*, %struct.TYPE_41__** %313, align 8
  %315 = load i32*, i32** %22, align 8
  %316 = load i8*, i8** %19, align 8
  %317 = load i32*, i32** %5, align 8
  %318 = call i32 @unlock_proto_rev(%struct.TYPE_41__* %314, i32* %315, i8* %316, i32* %317)
  %319 = call i32 @SVN_ERR(i32 %318)
  %320 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %321 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %320, i32 0, i32 1
  %322 = load %struct.TYPE_41__*, %struct.TYPE_41__** %321, align 8
  %323 = load i64, i64* %17, align 8
  %324 = call i32 @svn_fs_fs__is_packed_revprop(%struct.TYPE_41__* %322, i64 %323)
  %325 = icmp ne i32 %324, 0
  %326 = xor i1 %325, true
  %327 = zext i1 %326 to i32
  %328 = call i32 @SVN_ERR_ASSERT(i32 %327)
  %329 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %330 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %329, i32 0, i32 1
  %331 = load %struct.TYPE_41__*, %struct.TYPE_41__** %330, align 8
  %332 = load i64, i64* %17, align 8
  %333 = load i32*, i32** %5, align 8
  %334 = call i8* @svn_fs_fs__path_revprops(%struct.TYPE_41__* %331, i64 %332, i32* %333)
  store i8* %334, i8** %11, align 8
  %335 = load i8*, i8** %11, align 8
  %336 = load i8*, i8** %8, align 8
  %337 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %338 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %337, i32 0, i32 0
  %339 = load %struct.TYPE_40__*, %struct.TYPE_40__** %338, align 8
  %340 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %341 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = load i32*, i32** %5, align 8
  %344 = call i32 @write_final_revprop(i8* %335, i8* %336, %struct.TYPE_40__* %339, i64 %342, i32* %343)
  %345 = call i32 @SVN_ERR(i32 %344)
  %346 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %347 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %346, i32 0, i32 2
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %284
  %351 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %352 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %351, i32 0, i32 1
  %353 = load %struct.TYPE_41__*, %struct.TYPE_41__** %352, align 8
  %354 = load i64, i64* %17, align 8
  %355 = load i32*, i32** %5, align 8
  %356 = call i32 @verify_before_commit(%struct.TYPE_41__* %353, i64 %354, i32* %355)
  %357 = call i32 @SVN_ERR(i32 %356)
  br label %358

358:                                              ; preds = %350, %284
  %359 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %360 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %359, i32 0, i32 1
  %361 = load %struct.TYPE_41__*, %struct.TYPE_41__** %360, align 8
  %362 = load i32*, i32** %22, align 8
  %363 = load i64, i64* %17, align 8
  %364 = load i32, i32* %14, align 4
  %365 = load i32, i32* %15, align 4
  %366 = load i32*, i32** %5, align 8
  %367 = call i32 @write_final_current(%struct.TYPE_41__* %361, i32* %362, i64 %363, i32 %364, i32 %365, i32* %366)
  %368 = call i32 @SVN_ERR(i32 %367)
  %369 = load i64, i64* %17, align 8
  %370 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %371 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %370, i32 0, i32 2
  %372 = load i64*, i64** %371, align 8
  store i64 %369, i64* %372, align 8
  %373 = load i64, i64* %17, align 8
  %374 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %374, i32 0, i32 1
  store i64 %373, i64* %375, align 8
  %376 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %377 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %376, i32 0, i32 1
  %378 = load %struct.TYPE_41__*, %struct.TYPE_41__** %377, align 8
  %379 = load i32*, i32** %24, align 8
  %380 = load i32*, i32** %5, align 8
  %381 = call i32 @promote_cached_directories(%struct.TYPE_41__* %378, i32* %379, i32* %380)
  %382 = call i32 @SVN_ERR(i32 %381)
  %383 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %384 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %383, i32 0, i32 1
  %385 = load %struct.TYPE_41__*, %struct.TYPE_41__** %384, align 8
  %386 = load %struct.commit_baton*, %struct.commit_baton** %6, align 8
  %387 = getelementptr inbounds %struct.commit_baton, %struct.commit_baton* %386, i32 0, i32 0
  %388 = load %struct.TYPE_40__*, %struct.TYPE_40__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 8
  %391 = load i32*, i32** %5, align 8
  %392 = call i32 @svn_fs_fs__purge_txn(%struct.TYPE_41__* %385, i32 %390, i32* %391)
  %393 = call i32 @SVN_ERR(i32 %392)
  %394 = load %struct.TYPE_38__*, %struct.TYPE_38__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_38__* %394, %struct.TYPE_38__** %3, align 8
  br label %395

395:                                              ; preds = %358, %266, %221, %65
  %396 = load %struct.TYPE_38__*, %struct.TYPE_38__** %3, align 8
  ret %struct.TYPE_38__* %396
}

declare dso_local i32* @svn_fs_fs__txn_get_id(%struct.TYPE_40__*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__read_format_file(%struct.TYPE_41__*, i32*) #1

declare dso_local i32 @svn_fs_fs__read_current(i64*, i32*, i32*, %struct.TYPE_41__*, i32*) #1

declare dso_local %struct.TYPE_38__* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_fs__txn_changes_fetch(i32**, %struct.TYPE_41__*, i32*, i32*) #1

declare dso_local i32 @verify_locks(%struct.TYPE_41__*, i32*, i32*, i32*) #1

declare dso_local i32 @get_writable_proto_rev(i32**, i8**, %struct.TYPE_41__*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_get_offset(i32*, i32*, i32*) #1

declare dso_local i32* @svn_fs_fs__id_txn_create_root(i32*, i32*) #1

declare dso_local i32 @write_final_rev(i32**, i32*, i64, %struct.TYPE_41__*, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @write_final_changed_path_info(i32*, i32*, %struct.TYPE_41__*, i32*, i32*, i32*) #1

declare dso_local i64 @svn_fs_fs__use_log_addressing(%struct.TYPE_41__*) #1

declare dso_local i32 @svn_fs_fs__add_index_data(%struct.TYPE_41__*, i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__path_l2p_proto_index(%struct.TYPE_41__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_p2l_proto_index(%struct.TYPE_41__*, i32*, i32*) #1

declare dso_local %struct.TYPE_37__* @svn_fs_fs__unparse_revision_trailer(i32, i32, i32*) #1

declare dso_local i64 @svn_fs_fs__id_item(i32*) #1

declare dso_local i32 @svn_io_file_write_full(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_flush_to_disk(i32*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i8* @svn_fs_fs__path_rev_shard(%struct.TYPE_41__*, i64, i32*) #1

declare dso_local %struct.TYPE_38__* @svn_io_dir_make(i8*, i32, i32*) #1

declare dso_local i32 @APR_STATUS_IS_EEXIST(i32) #1

declare dso_local %struct.TYPE_38__* @svn_error_trace(%struct.TYPE_38__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_38__*) #1

declare dso_local i32 @svn_io_copy_perms(i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_fs_fs__is_packed_revprop(%struct.TYPE_41__*, i64) #1

declare dso_local i8* @svn_fs_fs__path_revprops_shard(%struct.TYPE_41__*, i64, i32*) #1

declare dso_local i8* @svn_fs_fs__path_rev_absolute(%struct.TYPE_41__*, i64, i32*) #1

declare dso_local i8* @svn_fs_fs__path_rev(%struct.TYPE_41__*, i64, i32*) #1

declare dso_local i8* @svn_fs_fs__path_txn_proto_rev(%struct.TYPE_41__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__move_into_place(i8*, i8*, i8*, i64, i32*) #1

declare dso_local i32 @unlock_proto_rev(%struct.TYPE_41__*, i32*, i8*, i32*) #1

declare dso_local i8* @svn_fs_fs__path_revprops(%struct.TYPE_41__*, i64, i32*) #1

declare dso_local i32 @write_final_revprop(i8*, i8*, %struct.TYPE_40__*, i64, i32*) #1

declare dso_local i32 @verify_before_commit(%struct.TYPE_41__*, i64, i32*) #1

declare dso_local i32 @write_final_current(%struct.TYPE_41__*, i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @promote_cached_directories(%struct.TYPE_41__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_fs__purge_txn(%struct.TYPE_41__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
