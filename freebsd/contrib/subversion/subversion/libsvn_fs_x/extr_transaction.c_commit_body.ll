; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_commit_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_commit_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__*, %struct.TYPE_26__*, i64*, i32, i32, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i64, i32 }

@SVN_ERR_FS_TXN_OUT_OF_DATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Transaction out of date\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @commit_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @commit_body(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %6, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %7, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  %33 = call i32 @svn_fs_x__txn_get_id(%struct.TYPE_25__* %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32* @apr_array_make(i32* %34, i32 4, i32 4)
  store i32* %35, i32** %21, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32* @svn_pool_create(i32* %36)
  store i32* %37, i32** %22, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  %41 = load i32*, i32** %22, align 8
  %42 = call i32 @svn_fs_x__read_format_file(%struct.TYPE_26__* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %45, align 8
  %47 = load i32*, i32** %22, align 8
  %48 = call i32 @svn_fs_x__youngest_rev(i64* %13, %struct.TYPE_26__* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i32*, i32** %22, align 8
  %51 = call i32 @svn_pool_clear(i32* %50)
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %2
  %60 = load i32, i32* @SVN_ERR_FS_TXN_OUT_OF_DATE, align 4
  %61 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %62 = call i32* @svn_error_create(i32 %60, i32* null, i32 %61)
  store i32* %62, i32** %3, align 8
  br label %260

63:                                               ; preds = %2
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @svn_fs_x__txn_changes_fetch(i32** %19, %struct.TYPE_26__* %66, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  %71 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_26__*, %struct.TYPE_26__** %72, align 8
  %74 = load i32, i32* %18, align 4
  %75 = load i32*, i32** %19, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @verify_locks(%struct.TYPE_26__* %73, i32 %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i32*, i32** %22, align 8
  %80 = call i32 @svn_pool_clear(i32* %79)
  %81 = load i64, i64* %13, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %14, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @svn_fs_x__batch_fsync_create(i32** %20, i32 %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %90, align 8
  %92 = load i64, i64* %14, align 8
  %93 = load i32*, i32** %20, align 8
  %94 = load i32*, i32** %22, align 8
  %95 = call i32 @auto_create_shard(%struct.TYPE_26__* %91, i64 %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %98, align 8
  %100 = load i32, i32* %18, align 4
  %101 = load i64, i64* %14, align 8
  %102 = load i32*, i32** %20, align 8
  %103 = load i32*, i32** %22, align 8
  %104 = call i32 @get_writable_final_rev(i32** %15, %struct.TYPE_26__* %99, i32 %100, i64 %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load i32*, i32** %15, align 8
  %107 = load i32*, i32** %22, align 8
  %108 = call i32 @svn_io_file_get_offset(i32* %16, i32* %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load i32*, i32** %22, align 8
  %111 = call i32 @svn_pool_clear(i32* %110)
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @svn_fs_x__init_txn_root(i32* %11, i32 %112)
  %114 = load i32*, i32** %15, align 8
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %117, align 8
  %119 = load i32, i32* %16, align 4
  %120 = load i32*, i32** %21, align 8
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @TRUE, align 4
  %131 = load i32*, i32** %19, align 8
  %132 = load i32*, i32** %22, align 8
  %133 = call i32 @write_final_rev(i32* %12, i32* %114, i64 %115, %struct.TYPE_26__* %118, i32* %11, i32 %119, i32* %120, i32 %123, i32 %126, i32 %129, i32 %130, i32* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i32*, i32** %22, align 8
  %136 = call i32 @svn_pool_clear(i32* %135)
  %137 = load i32*, i32** %15, align 8
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = load i32, i32* %18, align 4
  %142 = load i32*, i32** %19, align 8
  %143 = load i64, i64* %14, align 8
  %144 = load i32*, i32** %22, align 8
  %145 = call i32 @write_final_changed_path_info(i32* %17, i32* %137, %struct.TYPE_26__* %140, i32 %141, i32* %142, i64 %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  %147 = load i32*, i32** %22, align 8
  %148 = call i32 @svn_pool_clear(i32* %147)
  %149 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = load i32*, i32** %15, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = load i32*, i32** %22, align 8
  %158 = call i32 @svn_fs_x__path_l2p_proto_index(%struct.TYPE_26__* %155, i32 %156, i32* %157)
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %160, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load i32*, i32** %22, align 8
  %164 = call i32 @svn_fs_x__path_p2l_proto_index(%struct.TYPE_26__* %161, i32 %162, i32* %163)
  %165 = load i64, i64* %14, align 8
  %166 = load i32*, i32** %22, align 8
  %167 = call i32 @svn_fs_x__add_index_data(%struct.TYPE_26__* %151, i32* %152, i32 %158, i32 %164, i64 %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load i32*, i32** %22, align 8
  %170 = call i32 @svn_pool_clear(i32* %169)
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %172, align 8
  %174 = load i64, i64* %13, align 8
  %175 = load i32*, i32** %22, align 8
  %176 = call i8* @svn_fs_x__path_rev_absolute(%struct.TYPE_26__* %173, i64 %174, i32* %175)
  store i8* %176, i8** %8, align 8
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %178, align 8
  %180 = load i64, i64* %14, align 8
  %181 = load i32*, i32** %22, align 8
  %182 = call i8* @svn_fs_x__path_rev(%struct.TYPE_26__* %179, i64 %180, i32* %181)
  store i8* %182, i8** %9, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = load i32*, i32** %22, align 8
  %186 = call i32 @svn_io_copy_perms(i8* %183, i8* %184, i32* %185)
  %187 = call i32 @SVN_ERR(i32 %186)
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %189, align 8
  %191 = load i64, i64* %14, align 8
  %192 = call i32 @svn_fs_x__is_packed_revprop(%struct.TYPE_26__* %190, i64 %191)
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = zext i1 %194 to i32
  %196 = call i32 @SVN_ERR_ASSERT(i32 %195)
  %197 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = load i64, i64* %14, align 8
  %201 = load i32*, i32** %20, align 8
  %202 = load i32*, i32** %22, align 8
  %203 = load i32*, i32** %22, align 8
  %204 = call i32 @write_final_revprop(i8** %10, %struct.TYPE_25__* %199, i64 %200, i32* %201, i32* %202, i32* %203)
  %205 = call i32 @SVN_ERR(i32 %204)
  %206 = load i8*, i8** %10, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = load i32*, i32** %22, align 8
  %209 = call i32 @svn_io_copy_perms(i8* %206, i8* %207, i32* %208)
  %210 = call i32 @SVN_ERR(i32 %209)
  %211 = load i32*, i32** %22, align 8
  %212 = call i32 @svn_pool_clear(i32* %211)
  %213 = load i32*, i32** %15, align 8
  %214 = load i32*, i32** %22, align 8
  %215 = call i32 @svn_io_file_flush(i32* %213, i32* %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %218, align 8
  %220 = load i64, i64* %14, align 8
  %221 = load i32*, i32** %22, align 8
  %222 = call i32 @verify_as_revision_before_current_plus_plus(%struct.TYPE_26__* %219, i64 %220, i32* %221)
  %223 = call i32 @SVN_ERR(i32 %222)
  %224 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 1
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %225, align 8
  %227 = load i64, i64* %14, align 8
  %228 = load i32*, i32** %20, align 8
  %229 = load i32*, i32** %22, align 8
  %230 = call i32 @bump_current(%struct.TYPE_26__* %226, i64 %227, i32* %228, i32* %229)
  %231 = call i32 @SVN_ERR(i32 %230)
  %232 = load i64, i64* %14, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 2
  %235 = load i64*, i64** %234, align 8
  store i64 %232, i64* %235, align 8
  %236 = load i64, i64* %14, align 8
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 1
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %240, align 8
  %242 = load i32*, i32** %21, align 8
  %243 = load i32*, i32** %22, align 8
  %244 = call i32 @promote_cached_directories(%struct.TYPE_26__* %241, i32* %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %247, align 8
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32*, i32** %22, align 8
  %255 = call i32 @svn_fs_x__purge_txn(%struct.TYPE_26__* %248, i32 %253, i32* %254)
  %256 = call i32 @SVN_ERR(i32 %255)
  %257 = load i32*, i32** %22, align 8
  %258 = call i32 @svn_pool_destroy(i32* %257)
  %259 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %259, i32** %3, align 8
  br label %260

260:                                              ; preds = %63, %59
  %261 = load i32*, i32** %3, align 8
  ret i32* %261
}

declare dso_local i32 @svn_fs_x__txn_get_id(%struct.TYPE_25__*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_x__read_format_file(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @svn_fs_x__youngest_rev(i64*, %struct.TYPE_26__*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_x__txn_changes_fetch(i32**, %struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @verify_locks(%struct.TYPE_26__*, i32, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__batch_fsync_create(i32**, i32, i32*) #1

declare dso_local i32 @auto_create_shard(%struct.TYPE_26__*, i64, i32*, i32*) #1

declare dso_local i32 @get_writable_final_rev(i32**, %struct.TYPE_26__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @svn_io_file_get_offset(i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__init_txn_root(i32*, i32) #1

declare dso_local i32 @write_final_rev(i32*, i32*, i64, %struct.TYPE_26__*, i32*, i32, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @write_final_changed_path_info(i32*, i32*, %struct.TYPE_26__*, i32, i32*, i64, i32*) #1

declare dso_local i32 @svn_fs_x__add_index_data(%struct.TYPE_26__*, i32*, i32, i32, i64, i32*) #1

declare dso_local i32 @svn_fs_x__path_l2p_proto_index(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @svn_fs_x__path_p2l_proto_index(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i8* @svn_fs_x__path_rev_absolute(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i8* @svn_fs_x__path_rev(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_fs_x__is_packed_revprop(%struct.TYPE_26__*, i64) #1

declare dso_local i32 @write_final_revprop(i8**, %struct.TYPE_25__*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_file_flush(i32*, i32*) #1

declare dso_local i32 @verify_as_revision_before_current_plus_plus(%struct.TYPE_26__*, i64, i32*) #1

declare dso_local i32 @bump_current(%struct.TYPE_26__*, i64, i32*, i32*) #1

declare dso_local i32 @promote_cached_directories(%struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32 @svn_fs_x__purge_txn(%struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
