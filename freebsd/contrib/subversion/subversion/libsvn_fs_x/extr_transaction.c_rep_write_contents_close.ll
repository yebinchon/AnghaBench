; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_rep_write_contents_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_transaction.c_rep_write_contents_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i8*, i8*, i32, i32, i32, %struct.TYPE_21__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_17__*, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32, i8* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i8*, i32, i32, %struct.TYPE_19__*, i32, i8* }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"ENDREP\0A\00", align 1
@rep_write_cleanup = common dso_local global i32 0, align 4
@SVN_FS_X__INVALID_CHANGE_SET = common dso_local global i32 0, align 4
@SVN_FS_X__ITEM_TYPE_FILE_REP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @rep_write_contents_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_write_contents_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__, align 8
  %9 = alloca %struct.TYPE_19__, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %3, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_17__* @apr_pcalloc(i32 %14, i32 24)
  store %struct.TYPE_17__* %15, %struct.TYPE_17__** %4, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 13
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @svn_stream_close(i32 %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @svn_io_file_get_offset(i8** %6, i32 %23, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %29 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 5
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @svn_fs_x__get_txn_id(i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @svn_fs_x__change_set_by_txn(i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @digests_final(%struct.TYPE_17__* %56, i32 %59, i32 %62, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @get_shared_rep(%struct.TYPE_17__** %5, i32 %70, i32 %71, %struct.TYPE_17__* %72, i32 %75, i8* %78, i32* null, i32 %81, i32 %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %88 = icmp ne %struct.TYPE_17__* %87, null
  br i1 %88, label %89, label %106

89:                                               ; preds = %1
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @svn_io_file_trunc(i32 %92, i8* %95, i32 %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 0
  store %struct.TYPE_17__* %101, %struct.TYPE_17__** %105, align 8
  br label %145

106:                                              ; preds = %1
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @svn_stream_puts(i32 %109, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %111 = call i32 @SVN_ERR(i32 %110)
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @allocate_item_index(i32* %114, i32 %117, i32 %118, i32 %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @store_l2p_index_entry(i32 %126, i32 %127, i8* %130, i32 %134, i32 %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %144, align 8
  br label %145

145:                                              ; preds = %106, %89
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @svn_stream_close(i32 %148)
  %150 = call i32 @SVN_ERR(i32 %149)
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %155 = load i32, i32* @rep_write_cleanup, align 4
  %156 = call i32 @apr_pool_cleanup_kill(i32 %153, %struct.TYPE_20__* %154, i32 %155)
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %161, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @svn_fs_x__put_node_revision(i32 %159, %struct.TYPE_21__* %162, i32 %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = icmp ne %struct.TYPE_17__* %168, null
  br i1 %169, label %216, label %170

170:                                              ; preds = %145
  %171 = load i32, i32* @SVN_FS_X__INVALID_CHANGE_SET, align 4
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 1
  store i32 %171, i32* %172, align 4
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  store i8* %180, i8** %181, align 8
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @svn_io_file_get_offset(i8** %6, i32 %184, i32 %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i8*, i8** %6, align 8
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 1
  %193 = load i8*, i8** %192, align 8
  %194 = ptrtoint i8* %190 to i64
  %195 = ptrtoint i8* %193 to i64
  %196 = sub i64 %194, %195
  %197 = inttoptr i64 %196 to i8*
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 5
  store i8* %197, i8** %198, align 8
  %199 = load i32, i32* @SVN_FS_X__ITEM_TYPE_FILE_REP, align 4
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 4
  store i32 %199, i32* %200, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 1
  store i32 1, i32* %201, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 3
  store %struct.TYPE_19__* %9, %struct.TYPE_19__** %202, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 2
  store i32 %205, i32* %206, align 4
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 @store_p2l_index_entry(i32 %209, i32 %210, %struct.TYPE_18__* %8, i32 %213)
  %215 = call i32 @SVN_ERR(i32 %214)
  br label %216

216:                                              ; preds = %170, %145
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @svn_io_file_close(i32 %219, i32 %222)
  %224 = call i32 @SVN_ERR(i32 %223)
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %226 = icmp ne %struct.TYPE_17__* %225, null
  br i1 %226, label %239, label %227

227:                                              ; preds = %216
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 5
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %232, align 8
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @store_sha1_rep_mapping(i32 %230, %struct.TYPE_21__* %233, i32 %236)
  %238 = call i32 @SVN_ERR(i32 %237)
  br label %239

239:                                              ; preds = %227, %216
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @unlock_proto_rev(i32 %242, i32 %243, i32 %246, i32 %249)
  %251 = call i32 @SVN_ERR(i32 %250)
  %252 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @svn_pool_destroy(i32 %254)
  %256 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %256
}

declare dso_local %struct.TYPE_17__* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_close(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i8**, i32, i32) #1

declare dso_local i32 @svn_fs_x__get_txn_id(i32) #1

declare dso_local i32 @svn_fs_x__change_set_by_txn(i32) #1

declare dso_local i32 @digests_final(%struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @get_shared_rep(%struct.TYPE_17__**, i32, i32, %struct.TYPE_17__*, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @svn_io_file_trunc(i32, i8*, i32) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

declare dso_local i32 @allocate_item_index(i32*, i32, i32, i32) #1

declare dso_local i32 @store_l2p_index_entry(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @apr_pool_cleanup_kill(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @svn_fs_x__put_node_revision(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @store_p2l_index_entry(i32, i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @svn_io_file_close(i32, i32) #1

declare dso_local i32 @store_sha1_rep_mapping(i32, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @unlock_proto_rev(i32, i32, i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
