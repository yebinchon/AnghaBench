; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_contents_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_transaction.c_rep_write_contents_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rep_write_baton = type { i8*, i8*, i32, i32, i32, %struct.TYPE_15__*, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i8*, i32, i8* }
%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_12__, i32, i8* }
%struct.TYPE_12__ = type { i32, i8* }

@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"ENDREP\0A\00", align 1
@rep_write_cleanup = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_FS_FS__ITEM_TYPE_FILE_REP = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*)* @rep_write_contents_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rep_write_contents_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rep_write_baton*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.rep_write_baton*
  store %struct.rep_write_baton* %9, %struct.rep_write_baton** %3, align 8
  %10 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %11 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %10, i32 0, i32 9
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_14__* @apr_pcalloc(i32 %12, i32 32)
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  %14 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %15 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %20 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @svn_stream_close(i64 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %26 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %29 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @svn_io_file_get_offset(i8** %6, i32 %27, i32 %30)
  %32 = call i32 @SVN_ERR(i32 %31)
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %35 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %33 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %44 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %49 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %48, i32 0, i32 5
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32* @svn_fs_fs__id_txn_id(i32 %52)
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %58 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %61 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %62 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @set_uniquifier(i32 %59, %struct.TYPE_14__* %60, i32 %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %71 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %70, i32 0, i32 11
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %74 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %77 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %76, i32 0, i32 9
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @digests_final(%struct.TYPE_14__* %69, i32 %72, i32 %75, i32 %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %82 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %85 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %86 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %89 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %92 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %95 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @get_shared_rep(%struct.TYPE_14__** %5, i32 %83, %struct.TYPE_14__* %84, i32 %87, i8* %90, i32* null, i32 %93, i32 %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %100 = icmp ne %struct.TYPE_14__* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %24
  %102 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %103 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %106 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %109 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @svn_io_file_trunc(i32 %104, i8* %107, i32 %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %115 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %114, i32 0, i32 5
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %117, align 8
  br label %144

118:                                              ; preds = %24
  %119 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %120 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @svn_stream_puts(i32 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %127 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %132 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %131, i32 0, i32 1
  %133 = load i8*, i8** %132, align 8
  %134 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %135 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @allocate_item_index(i32* %125, i32 %128, i32* %130, i8* %133, i32 %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %140 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %141 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %140, i32 0, i32 5
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  store %struct.TYPE_14__* %139, %struct.TYPE_14__** %143, align 8
  br label %144

144:                                              ; preds = %118, %101
  %145 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %146 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %149 = load i32, i32* @rep_write_cleanup, align 4
  %150 = call i32 @apr_pool_cleanup_kill(i32 %147, %struct.rep_write_baton* %148, i32 %149)
  %151 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %152 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %155 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %154, i32 0, i32 5
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %160 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %159, i32 0, i32 5
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %160, align 8
  %162 = load i32, i32* @FALSE, align 4
  %163 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %164 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @svn_fs_fs__put_node_revision(i32 %153, i32 %158, %struct.TYPE_15__* %161, i32 %162, i32 %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %169 = icmp ne %struct.TYPE_14__* %168, null
  br i1 %169, label %227, label %170

170:                                              ; preds = %144
  %171 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %172 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @svn_fs_fs__use_log_addressing(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %227

176:                                              ; preds = %170
  %177 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %178 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i8* %179, i8** %180, align 8
  %181 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %182 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %185 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @svn_io_file_get_offset(i8** %6, i32 %183, i32 %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  %189 = load i8*, i8** %6, align 8
  %190 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %191 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %190, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = ptrtoint i8* %189 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = inttoptr i64 %195 to i8*
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 4
  store i8* %196, i8** %197, align 8
  %198 = load i32, i32* @SVN_FS_FS__ITEM_TYPE_FILE_REP, align 4
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  store i32 %198, i32* %199, align 8
  %200 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %209 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %210 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %213 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @fnv1a_checksum_finalize(i32* %208, i32 %211, i32 %214)
  %216 = call i32 @SVN_ERR(i32 %215)
  %217 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %218 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %223 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @store_p2l_index_entry(i32 %219, i32* %221, %struct.TYPE_13__* %7, i32 %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %227

227:                                              ; preds = %176, %170, %144
  %228 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %229 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %232 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @svn_io_file_close(i32 %230, i32 %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %237 = icmp ne %struct.TYPE_14__* %236, null
  br i1 %237, label %250, label %238

238:                                              ; preds = %227
  %239 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %240 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %243 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %242, i32 0, i32 5
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %243, align 8
  %245 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %246 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @store_sha1_rep_mapping(i32 %241, %struct.TYPE_15__* %244, i32 %247)
  %249 = call i32 @SVN_ERR(i32 %248)
  br label %250

250:                                              ; preds = %238, %227
  %251 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %252 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 0
  %256 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %257 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %260 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = call i32 @unlock_proto_rev(i32 %253, i32* %255, i32 %258, i32 %261)
  %263 = call i32 @SVN_ERR(i32 %262)
  %264 = load %struct.rep_write_baton*, %struct.rep_write_baton** %3, align 8
  %265 = getelementptr inbounds %struct.rep_write_baton, %struct.rep_write_baton* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @svn_pool_destroy(i32 %266)
  %268 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %268
}

declare dso_local %struct.TYPE_14__* @apr_pcalloc(i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_stream_close(i64) #1

declare dso_local i32 @svn_io_file_get_offset(i8**, i32, i32) #1

declare dso_local i32* @svn_fs_fs__id_txn_id(i32) #1

declare dso_local i32 @set_uniquifier(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @digests_final(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @get_shared_rep(%struct.TYPE_14__**, i32, %struct.TYPE_14__*, i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @svn_io_file_trunc(i32, i8*, i32) #1

declare dso_local i32 @svn_stream_puts(i32, i8*) #1

declare dso_local i32 @allocate_item_index(i32*, i32, i32*, i8*, i32) #1

declare dso_local i32 @apr_pool_cleanup_kill(i32, %struct.rep_write_baton*, i32) #1

declare dso_local i32 @svn_fs_fs__put_node_revision(i32, i32, %struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @svn_fs_fs__use_log_addressing(i32) #1

declare dso_local i32 @fnv1a_checksum_finalize(i32*, i32, i32) #1

declare dso_local i32 @store_p2l_index_entry(i32, i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_io_file_close(i32, i32) #1

declare dso_local i32 @store_sha1_rep_mapping(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @unlock_proto_rev(i32, i32*, i32, i32) #1

declare dso_local i32 @svn_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
