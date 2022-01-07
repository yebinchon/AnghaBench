; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_container_delta_rep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_write_container_delta_rep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { i8*, %struct.TYPE_28__, i64 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_32__ = type { i8*, i32, %struct.TYPE_33__*, i64, i8*, i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i8*, i32, i32, i32 }
%struct.TYPE_29__ = type { i64, i8*, i8*, i32* }

@SVN_FS_X__ITEM_TYPE_FILE_PROPS = common dso_local global i64 0, align 8
@SVN_FS_X__ITEM_TYPE_DIR_PROPS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@svn_fs_x__rep_delta = common dso_local global i32 0, align 4
@svn_fs_x__rep_self_delta = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_checksum_md5 = common dso_local global i32 0, align 4
@SVN_FS_X__ITEM_TYPE_DIR_REP = common dso_local global i64 0, align 8
@svn_checksum_sha1 = common dso_local global i32 0, align 4
@write_container_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ENDREP\0A\00", align 1
@SVN_FS_X__INVALID_CHANGE_SET = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_30__*, i32*, i8*, i32 (i32*, i8*, i32*)*, %struct.TYPE_35__*, i32, i32*, i32*, i32, i64, i32, i32*)* @write_container_delta_rep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @write_container_delta_rep(%struct.TYPE_30__* %0, i32* %1, i8* %2, i32 (i32*, i8*, i32*)* %3, %struct.TYPE_35__* %4, i32 %5, i32* %6, i32* %7, i32 %8, i64 %9, i32 %10, i32* %11) #0 {
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32 (i32*, i8*, i32*)*, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_34__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_30__*, align 8
  %31 = alloca %struct.TYPE_30__*, align 8
  %32 = alloca %struct.TYPE_32__, align 8
  %33 = alloca i32*, align 8
  %34 = alloca %struct.TYPE_31__, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca %struct.TYPE_29__*, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.TYPE_33__, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32 (i32*, i8*, i32*)* %3, i32 (i32*, i8*, i32*)** %16, align 8
  store %struct.TYPE_35__* %4, %struct.TYPE_35__** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32 %8, i32* %21, align 4
  store i64 %9, i64* %22, align 8
  store i32 %10, i32* %23, align 4
  store i32* %11, i32** %24, align 8
  %42 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %43 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %43, align 8
  store %struct.TYPE_34__* %44, %struct.TYPE_34__** %25, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %31, align 8
  %45 = bitcast %struct.TYPE_31__* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %45, i8 0, i64 32, i1 false)
  store i8* null, i8** %35, align 8
  store i8* null, i8** %36, align 8
  store i8* null, i8** %37, align 8
  store i32 1, i32* %39, align 4
  %46 = load i64, i64* %22, align 8
  %47 = load i64, i64* @SVN_FS_X__ITEM_TYPE_FILE_PROPS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %12
  %50 = load i64, i64* %22, align 8
  %51 = load i64, i64* @SVN_FS_X__ITEM_TYPE_DIR_PROPS, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %49, %12
  %54 = phi i1 [ true, %12 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %40, align 4
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %57 = load i32*, i32** %19, align 8
  %58 = load i32, i32* %40, align 4
  %59 = load i32*, i32** %24, align 8
  %60 = call i32 @choose_delta_base(%struct.TYPE_30__** %30, %struct.TYPE_35__* %56, i32* %57, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %63 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32*, i32** %24, align 8
  %66 = call i32 @svn_fs_x__get_contents(i32** %33, %struct.TYPE_35__* %62, %struct.TYPE_30__* %63, i32 %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %14, align 8
  %69 = load i32*, i32** %24, align 8
  %70 = call i32 @svn_io_file_get_offset(i8** %37, i32* %68, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %73 = icmp ne %struct.TYPE_30__* %72, null
  br i1 %73, label %74, label %92

74:                                               ; preds = %53
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %76 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @svn_fs_x__get_revnum(i32 %78)
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %82 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 2
  store i32 %84, i32* %85, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %30, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* @svn_fs_x__rep_delta, align 4
  %91 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  br label %95

92:                                               ; preds = %53
  %93 = load i32, i32* @svn_fs_x__rep_self_delta, align 4
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %74
  %96 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 5
  %97 = load i32*, i32** %14, align 8
  %98 = load i32, i32* @TRUE, align 4
  %99 = load i32*, i32** %24, align 8
  %100 = call i32 @svn_stream_from_aprfile2(i32* %97, i32 %98, i32* %99)
  %101 = load i32*, i32** %24, align 8
  %102 = call i32* @svn_checksum__wrap_write_stream_fnv1a_32x4(i32* %96, i32 %100, i32* %101)
  store i32* %102, i32** %28, align 8
  %103 = load i32*, i32** %28, align 8
  %104 = load i32*, i32** %24, align 8
  %105 = call i32 @svn_fs_x__write_rep_header(%struct.TYPE_31__* %34, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i32*, i32** %14, align 8
  %108 = load i32*, i32** %24, align 8
  %109 = call i32 @svn_io_file_get_offset(i8** %36, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  %111 = load i32*, i32** %28, align 8
  %112 = load i32*, i32** %24, align 8
  %113 = call i32 @svn_stream_disown(i32* %111, i32* %112)
  %114 = load i32, i32* %39, align 4
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %116 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %24, align 8
  %119 = call i32 @svn_txdelta_to_svndiff3(i32* %26, i8** %27, i32 %113, i32 %114, i32 %117, i32* %118)
  %120 = load i32*, i32** %24, align 8
  %121 = call %struct.TYPE_29__* @apr_pcalloc(i32* %120, i32 32)
  store %struct.TYPE_29__* %121, %struct.TYPE_29__** %38, align 8
  %122 = load i32, i32* %26, align 4
  %123 = load i8*, i8** %27, align 8
  %124 = load i32*, i32** %33, align 8
  %125 = load i32*, i32** %24, align 8
  %126 = call i32* @svn_txdelta_target_push(i32 %122, i8* %123, i32* %124, i32* %125)
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 3
  store i32* %126, i32** %128, align 8
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  store i64 0, i64* %130, align 8
  %131 = load i32, i32* @svn_checksum_md5, align 4
  %132 = load i32*, i32** %24, align 8
  %133 = call i8* @svn_checksum_ctx_create(i32 %131, i32* %132)
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load i64, i64* %22, align 8
  %137 = load i64, i64* @SVN_FS_X__ITEM_TYPE_DIR_REP, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %95
  %140 = load i32, i32* @svn_checksum_sha1, align 4
  %141 = load i32*, i32** %24, align 8
  %142 = call i8* @svn_checksum_ctx_create(i32 %140, i32* %141)
  %143 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 1
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %139, %95
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %147 = load i32*, i32** %24, align 8
  %148 = call i32* @svn_stream_create(%struct.TYPE_29__* %146, i32* %147)
  store i32* %148, i32** %29, align 8
  %149 = load i32*, i32** %29, align 8
  %150 = load i32, i32* @write_container_handler, align 4
  %151 = call i32 @svn_stream_set_write(i32* %149, i32 %150)
  %152 = load i32 (i32*, i8*, i32*)*, i32 (i32*, i8*, i32*)** %16, align 8
  %153 = load i32*, i32** %29, align 8
  %154 = load i8*, i8** %15, align 8
  %155 = load i32*, i32** %24, align 8
  %156 = call i32 %152(i32* %153, i8* %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @svn_stream_close(i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load i32*, i32** %24, align 8
  %171 = call i32 @digests_final(%struct.TYPE_30__* %163, i8* %166, i8* %169, i32* %170)
  %172 = call i32 @SVN_ERR(i32 %171)
  %173 = load i32*, i32** %14, align 8
  %174 = load i32*, i32** %24, align 8
  %175 = call i32 @svn_io_file_get_offset(i8** %35, i32* %173, i32* %174)
  %176 = call i32 @SVN_ERR(i32 %175)
  %177 = load i8*, i8** %35, align 8
  %178 = load i8*, i8** %36, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = inttoptr i64 %181 to i8*
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %183, i32 0, i32 0
  store i8* %182, i8** %184, align 8
  %185 = load %struct.TYPE_29__*, %struct.TYPE_29__** %38, align 8
  %186 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %189 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  %190 = load i32, i32* %21, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %145
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %194 = load i32, i32* %18, align 4
  %195 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %196 = load i32*, i32** %14, align 8
  %197 = load i8*, i8** %37, align 8
  %198 = load i32*, i32** %20, align 8
  %199 = load i32*, i32** %24, align 8
  %200 = load i32*, i32** %24, align 8
  %201 = call i32 @get_shared_rep(%struct.TYPE_30__** %31, %struct.TYPE_35__* %193, i32 %194, %struct.TYPE_30__* %195, i32* %196, i8* %197, i32* %198, i32* %199, i32* %200)
  %202 = call i32 @SVN_ERR(i32 %201)
  br label %203

203:                                              ; preds = %192, %145
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %205 = icmp ne %struct.TYPE_30__* %204, null
  br i1 %205, label %206, label %218

206:                                              ; preds = %203
  %207 = load i32*, i32** %28, align 8
  %208 = call i32 @svn_stream_close(i32* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  %210 = load i32*, i32** %14, align 8
  %211 = load i8*, i8** %37, align 8
  %212 = load i32*, i32** %24, align 8
  %213 = call i32 @svn_io_file_trunc(i32* %210, i8* %211, i32* %212)
  %214 = call i32 @SVN_ERR(i32 %213)
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** %31, align 8
  %217 = call i32 @memcpy(%struct.TYPE_30__* %215, %struct.TYPE_30__* %216, i32 24)
  br label %281

218:                                              ; preds = %203
  %219 = load i32*, i32** %28, align 8
  %220 = call i32 @svn_stream_puts(i32* %219, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %221 = call i32 @SVN_ERR(i32 %220)
  %222 = load i32*, i32** %28, align 8
  %223 = call i32 @svn_stream_close(i32* %222)
  %224 = call i32 @SVN_ERR(i32 %223)
  %225 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %229 = load i32, i32* %18, align 4
  %230 = load i32*, i32** %24, align 8
  %231 = call i32 @allocate_item_index(i32* %227, %struct.TYPE_35__* %228, i32 %229, i32* %230)
  %232 = call i32 @SVN_ERR(i32 %231)
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %234 = load i32, i32* %18, align 4
  %235 = load i8*, i8** %37, align 8
  %236 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %237 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32*, i32** %24, align 8
  %241 = call i32 @store_l2p_index_entry(%struct.TYPE_35__* %233, i32 %234, i8* %235, i32 %239, i32* %240)
  %242 = call i32 @SVN_ERR(i32 %241)
  %243 = load i32, i32* @SVN_FS_X__INVALID_CHANGE_SET, align 4
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 1
  store i32 %243, i32* %244, align 4
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 0
  store i32 %248, i32* %249, align 4
  %250 = load i8*, i8** %37, align 8
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  store i8* %250, i8** %251, align 8
  %252 = load i32*, i32** %14, align 8
  %253 = load i32*, i32** %24, align 8
  %254 = call i32 @svn_io_file_get_offset(i8** %37, i32* %252, i32* %253)
  %255 = call i32 @SVN_ERR(i32 %254)
  %256 = load i8*, i8** %37, align 8
  %257 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = ptrtoint i8* %256 to i64
  %260 = ptrtoint i8* %258 to i64
  %261 = sub i64 %259, %260
  %262 = inttoptr i64 %261 to i8*
  %263 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 4
  store i8* %262, i8** %263, align 8
  %264 = load i64, i64* %22, align 8
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 3
  store i64 %264, i64* %265, align 8
  %266 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 1
  store i32 1, i32* %266, align 8
  %267 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %32, i32 0, i32 2
  store %struct.TYPE_33__* %41, %struct.TYPE_33__** %267, align 8
  %268 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %269 = load i32, i32* %18, align 4
  %270 = load i32*, i32** %24, align 8
  %271 = call i32 @store_p2l_index_entry(%struct.TYPE_35__* %268, i32 %269, %struct.TYPE_32__* %32, i32* %270)
  %272 = call i32 @SVN_ERR(i32 %271)
  %273 = load i8*, i8** %35, align 8
  %274 = load i8*, i8** %36, align 8
  %275 = ptrtoint i8* %273 to i64
  %276 = ptrtoint i8* %274 to i64
  %277 = sub i64 %275, %276
  %278 = inttoptr i64 %277 to i8*
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %218, %206
  %282 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %282
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @choose_delta_base(%struct.TYPE_30__**, %struct.TYPE_35__*, i32*, i32, i32*) #2

declare dso_local i32 @svn_fs_x__get_contents(i32**, %struct.TYPE_35__*, %struct.TYPE_30__*, i32, i32*) #2

declare dso_local i32 @svn_io_file_get_offset(i8**, i32*, i32*) #2

declare dso_local i32 @svn_fs_x__get_revnum(i32) #2

declare dso_local i32* @svn_checksum__wrap_write_stream_fnv1a_32x4(i32*, i32, i32*) #2

declare dso_local i32 @svn_stream_from_aprfile2(i32*, i32, i32*) #2

declare dso_local i32 @svn_fs_x__write_rep_header(%struct.TYPE_31__*, i32*, i32*) #2

declare dso_local i32 @svn_txdelta_to_svndiff3(i32*, i8**, i32, i32, i32, i32*) #2

declare dso_local i32 @svn_stream_disown(i32*, i32*) #2

declare dso_local %struct.TYPE_29__* @apr_pcalloc(i32*, i32) #2

declare dso_local i32* @svn_txdelta_target_push(i32, i8*, i32*, i32*) #2

declare dso_local i8* @svn_checksum_ctx_create(i32, i32*) #2

declare dso_local i32* @svn_stream_create(%struct.TYPE_29__*, i32*) #2

declare dso_local i32 @svn_stream_set_write(i32*, i32) #2

declare dso_local i32 @svn_stream_close(i32*) #2

declare dso_local i32 @digests_final(%struct.TYPE_30__*, i8*, i8*, i32*) #2

declare dso_local i32 @get_shared_rep(%struct.TYPE_30__**, %struct.TYPE_35__*, i32, %struct.TYPE_30__*, i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @svn_io_file_trunc(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(%struct.TYPE_30__*, %struct.TYPE_30__*, i32) #2

declare dso_local i32 @svn_stream_puts(i32*, i8*) #2

declare dso_local i32 @allocate_item_index(i32*, %struct.TYPE_35__*, i32, i32*) #2

declare dso_local i32 @store_l2p_index_entry(%struct.TYPE_35__*, i32, i8*, i32, i32*) #2

declare dso_local i32 @store_p2l_index_entry(%struct.TYPE_35__*, i32, %struct.TYPE_32__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
