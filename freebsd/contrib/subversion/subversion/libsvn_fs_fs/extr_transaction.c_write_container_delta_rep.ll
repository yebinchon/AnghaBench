; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_container_delta_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_write_container_delta_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i64, i8*, i32 }
%struct.TYPE_16__ = type { i32, i8*, i32, i32, i32 }
%struct.write_container_baton = type { i64, i8*, i8*, i32 }
%struct.TYPE_17__ = type { i8*, i32, %struct.TYPE_15__, i64, i8* }
%struct.TYPE_15__ = type { i32, i32 }

@SVN_FS_FS__ITEM_TYPE_FILE_PROPS = common dso_local global i64 0, align 8
@SVN_FS_FS__ITEM_TYPE_DIR_PROPS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_fs_fs__rep_delta = common dso_local global i32 0, align 4
@svn_fs_fs__rep_self_delta = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_FS_FS__ITEM_TYPE_DIR_REP = common dso_local global i64 0, align 8
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@write_container_handler = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"ENDREP\0A\00", align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_18__*, i32*, i8*, i32 (i32*, i8*, i32*)*, i32*, i32*, i32*, i32, i64, i32*)* @write_container_delta_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_container_delta_rep(%struct.TYPE_18__* %0, i32* %1, i8* %2, i32 (i32*, i8*, i32*)* %3, i32* %4, i32* %5, i32* %6, i32 %7, i64 %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32 (i32*, i8*, i32*)*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_16__, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca %struct.write_container_baton*, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.TYPE_18__*, align 8
  %36 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %12, align 8
  store i32* %1, i32** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 (i32*, i8*, i32*)* %3, i32 (i32*, i8*, i32*)** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i64 %8, i64* %20, align 8
  store i32* %9, i32** %21, align 8
  %37 = bitcast %struct.TYPE_16__* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %37, i8 0, i64 32, i1 false)
  store i8* null, i8** %30, align 8
  store i8* null, i8** %31, align 8
  store i8* null, i8** %32, align 8
  %38 = load i64, i64* %20, align 8
  %39 = load i64, i64* @SVN_FS_FS__ITEM_TYPE_FILE_PROPS, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %10
  %42 = load i64, i64* %20, align 8
  %43 = load i64, i64* @SVN_FS_FS__ITEM_TYPE_DIR_PROPS, align 8
  %44 = icmp eq i64 %42, %43
  br label %45

45:                                               ; preds = %41, %10
  %46 = phi i1 [ true, %10 ], [ %44, %41 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %34, align 4
  %48 = load i32*, i32** %16, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %34, align 4
  %51 = load i32*, i32** %21, align 8
  %52 = call i32 @choose_delta_base(%struct.TYPE_18__** %26, i32* %48, i32* %49, i32 %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i32*, i32** %16, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32*, i32** %21, align 8
  %58 = call i32 @svn_fs_fs__get_contents(i32** %28, i32* %54, %struct.TYPE_18__* %55, i32 %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %13, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = call i32 @svn_io_file_get_offset(i8** %32, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %65 = icmp ne %struct.TYPE_18__* %64, null
  br i1 %65, label %66, label %81

66:                                               ; preds = %45
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 3
  store i32 %69, i32* %70, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  store i32 %73, i32* %74, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = load i32, i32* @svn_fs_fs__rep_delta, align 4
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32 %79, i32* %80, align 8
  br label %84

81:                                               ; preds = %45
  %82 = load i32, i32* @svn_fs_fs__rep_self_delta, align 4
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %66
  %85 = load i32*, i32** %13, align 8
  %86 = load i32, i32* @TRUE, align 4
  %87 = load i32*, i32** %21, align 8
  %88 = call i32* @svn_stream_from_aprfile2(i32* %85, i32 %86, i32* %87)
  store i32* %88, i32** %24, align 8
  %89 = load i32*, i32** %16, align 8
  %90 = call i64 @svn_fs_fs__use_log_addressing(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %84
  %93 = load i32*, i32** %24, align 8
  %94 = load i32*, i32** %21, align 8
  %95 = call i32* @fnv1a_wrap_stream(i32** %27, i32* %93, i32* %94)
  store i32* %95, i32** %24, align 8
  br label %97

96:                                               ; preds = %84
  store i32* null, i32** %27, align 8
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32*, i32** %24, align 8
  %99 = load i32*, i32** %21, align 8
  %100 = call i32 @svn_fs_fs__write_rep_header(%struct.TYPE_16__* %29, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i32*, i32** %21, align 8
  %104 = call i32 @svn_io_file_get_offset(i8** %31, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %24, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = load i32*, i32** %21, align 8
  %109 = call i32 @txdelta_to_svndiff(i32* %22, i8** %23, i32* %106, i32* %107, i32* %108)
  %110 = load i32*, i32** %21, align 8
  %111 = call %struct.write_container_baton* @apr_pcalloc(i32* %110, i32 32)
  store %struct.write_container_baton* %111, %struct.write_container_baton** %33, align 8
  %112 = load i32, i32* %22, align 4
  %113 = load i8*, i8** %23, align 8
  %114 = load i32*, i32** %28, align 8
  %115 = load i32*, i32** %21, align 8
  %116 = call i32 @svn_txdelta_target_push(i32 %112, i8* %113, i32* %114, i32* %115)
  %117 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %118 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %120 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load i32, i32* @svn_checksum_md5, align 4
  %122 = load i32*, i32** %21, align 8
  %123 = call i8* @svn_checksum_ctx_create(i32 %121, i32* %122)
  %124 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %125 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load i64, i64* %20, align 8
  %127 = load i64, i64* @SVN_FS_FS__ITEM_TYPE_DIR_REP, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %97
  %130 = load i32, i32* @svn_checksum_sha1, align 4
  %131 = load i32*, i32** %21, align 8
  %132 = call i8* @svn_checksum_ctx_create(i32 %130, i32* %131)
  %133 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %134 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %129, %97
  %136 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %137 = load i32*, i32** %21, align 8
  %138 = call i32* @svn_stream_create(%struct.write_container_baton* %136, i32* %137)
  store i32* %138, i32** %25, align 8
  %139 = load i32*, i32** %25, align 8
  %140 = load i32, i32* @write_container_handler, align 4
  %141 = call i32 @svn_stream_set_write(i32* %139, i32 %140)
  %142 = load i32 (i32*, i8*, i32*)*, i32 (i32*, i8*, i32*)** %15, align 8
  %143 = load i32*, i32** %25, align 8
  %144 = load i8*, i8** %14, align 8
  %145 = load i32*, i32** %21, align 8
  %146 = call i32 %142(i32* %143, i8* %144, i32* %145)
  %147 = call i32 @SVN_ERR(i32 %146)
  %148 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %149 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @svn_stream_close(i32 %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %155 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %158 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %157, i32 0, i32 1
  %159 = load i8*, i8** %158, align 8
  %160 = load i32*, i32** %21, align 8
  %161 = call i32 @digests_final(%struct.TYPE_18__* %153, i8* %156, i8* %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load i32*, i32** %13, align 8
  %164 = load i32*, i32** %21, align 8
  %165 = call i32 @svn_io_file_get_offset(i8** %30, i32* %163, i32* %164)
  %166 = call i32 @SVN_ERR(i32 %165)
  %167 = load i8*, i8** %30, align 8
  %168 = load i8*, i8** %31, align 8
  %169 = ptrtoint i8* %167 to i64
  %170 = ptrtoint i8* %168 to i64
  %171 = sub i64 %169, %170
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 3
  store i8* %172, i8** %174, align 8
  %175 = load %struct.write_container_baton*, %struct.write_container_baton** %33, align 8
  %176 = getelementptr inbounds %struct.write_container_baton, %struct.write_container_baton* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %205

182:                                              ; preds = %135
  %183 = load i32*, i32** %16, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = load i8*, i8** %32, align 8
  %187 = load i32*, i32** %18, align 8
  %188 = load i32*, i32** %21, align 8
  %189 = load i32*, i32** %21, align 8
  %190 = call i32 @get_shared_rep(%struct.TYPE_18__** %35, i32* %183, %struct.TYPE_18__* %184, i32* %185, i8* %186, i32* %187, i32* %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %193 = icmp ne %struct.TYPE_18__* %192, null
  br i1 %193, label %194, label %204

194:                                              ; preds = %182
  %195 = load i32*, i32** %13, align 8
  %196 = load i8*, i8** %32, align 8
  %197 = load i32*, i32** %21, align 8
  %198 = call i32 @svn_io_file_trunc(i32* %195, i8* %196, i32* %197)
  %199 = call i32 @SVN_ERR(i32 %198)
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  %202 = call i32 @memcpy(%struct.TYPE_18__* %200, %struct.TYPE_18__* %201, i32 32)
  %203 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %203, i32** %11, align 8
  br label %259

204:                                              ; preds = %182
  br label %205

205:                                              ; preds = %204, %135
  %206 = load i32*, i32** %24, align 8
  %207 = call i32 @svn_stream_puts(i32* %206, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %208 = call i32 @SVN_ERR(i32 %207)
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 1
  %211 = load i32*, i32** %16, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i8*, i8** %32, align 8
  %215 = load i32*, i32** %21, align 8
  %216 = call i32 @allocate_item_index(i32* %210, i32* %211, i32* %213, i8* %214, i32* %215)
  %217 = call i32 @SVN_ERR(i32 %216)
  %218 = load i32*, i32** %16, align 8
  %219 = call i64 @svn_fs_fs__use_log_addressing(i32* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %257

221:                                              ; preds = %205
  %222 = load i8*, i8** %32, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i8* %222, i8** %223, align 8
  %224 = load i32*, i32** %13, align 8
  %225 = load i32*, i32** %21, align 8
  %226 = call i32 @svn_io_file_get_offset(i8** %32, i32* %224, i32* %225)
  %227 = call i32 @SVN_ERR(i32 %226)
  %228 = load i8*, i8** %32, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = ptrtoint i8* %228 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  %234 = inttoptr i64 %233 to i8*
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 4
  store i8* %234, i8** %235, align 8
  %236 = load i64, i64* %20, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 3
  store i64 %236, i64* %237, align 8
  %238 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  store i32 %238, i32* %240, align 4
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 4
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 1
  %247 = load i32*, i32** %27, align 8
  %248 = load i32*, i32** %21, align 8
  %249 = call i32 @fnv1a_checksum_finalize(i32* %246, i32* %247, i32* %248)
  %250 = call i32 @SVN_ERR(i32 %249)
  %251 = load i32*, i32** %16, align 8
  %252 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %252, i32 0, i32 0
  %254 = load i32*, i32** %21, align 8
  %255 = call i32 @store_p2l_index_entry(i32* %251, i32* %253, %struct.TYPE_17__* %36, i32* %254)
  %256 = call i32 @SVN_ERR(i32 %255)
  br label %257

257:                                              ; preds = %221, %205
  %258 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %258, i32** %11, align 8
  br label %259

259:                                              ; preds = %257, %194
  %260 = load i32*, i32** %11, align 8
  ret i32* %260
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @choose_delta_base(%struct.TYPE_18__**, i32*, i32*, i32, i32*) #2

declare dso_local i32 @svn_fs_fs__get_contents(i32**, i32*, %struct.TYPE_18__*, i32, i32*) #2

declare dso_local i32 @svn_io_file_get_offset(i8**, i32*, i32*) #2

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #2

declare dso_local i64 @svn_fs_fs__use_log_addressing(i32*) #2

declare dso_local i32* @fnv1a_wrap_stream(i32**, i32*, i32*) #2

declare dso_local i32 @svn_fs_fs__write_rep_header(%struct.TYPE_16__*, i32*, i32*) #2

declare dso_local i32 @txdelta_to_svndiff(i32*, i8**, i32*, i32*, i32*) #2

declare dso_local %struct.write_container_baton* @apr_pcalloc(i32*, i32) #2

declare dso_local i32 @svn_txdelta_target_push(i32, i8*, i32*, i32*) #2

declare dso_local i8* @svn_checksum_ctx_create(i32, i32*) #2

declare dso_local i32* @svn_stream_create(%struct.write_container_baton*, i32*) #2

declare dso_local i32 @svn_stream_set_write(i32*, i32) #2

declare dso_local i32 @svn_stream_close(i32) #2

declare dso_local i32 @digests_final(%struct.TYPE_18__*, i8*, i8*, i32*) #2

declare dso_local i32 @get_shared_rep(%struct.TYPE_18__**, i32*, %struct.TYPE_18__*, i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @svn_io_file_trunc(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(%struct.TYPE_18__*, %struct.TYPE_18__*, i32) #2

declare dso_local i32 @svn_stream_puts(i32*, i8*) #2

declare dso_local i32 @allocate_item_index(i32*, i32*, i32*, i8*, i32*) #2

declare dso_local i32 @fnv1a_checksum_finalize(i32*, i32*, i32*) #2

declare dso_local i32 @store_p2l_index_entry(i32*, i32*, %struct.TYPE_17__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
