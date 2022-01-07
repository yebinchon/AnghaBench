; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_write_gang_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_write_gang_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_28__, %struct.TYPE_32__**, %struct.TYPE_32__*, i32, i32*, %struct.TYPE_29__*, i32* }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32*, %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_33__ = type { i32* }
%struct.TYPE_30__ = type { i32, i8*, i8*, i8*, i64, i32, i32, i32 }

@ZIO_FLAG_NODATA = common dso_local global i32 0, align 4
@METASLAB_HINTBP_FAVOR = common dso_local global i32 0, align 4
@METASLAB_GANG_HEADER = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_ALLOCATING = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_WRITE = common dso_local global i64 0, align 8
@METASLAB_ASYNC_ALLOC = common dso_local global i32 0, align 4
@SPA_GANGBLOCKSIZE = common dso_local global i32 0, align 4
@zio_write_gang_member_ready = common dso_local global i64 0, align 8
@zio_write_gang_done = common dso_local global i32 0, align 4
@SPA_GBH_NBLKPTRS = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZIO_INTERLOCK_PIPELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_29__* (%struct.TYPE_29__*)* @zio_write_gang_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_29__* @zio_write_gang_block(%struct.TYPE_29__* %0) #0 {
  %2 = alloca %struct.TYPE_29__*, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_32__**, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_30__, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %24 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %24, i32 0, i32 16
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %4, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call %struct.TYPE_33__* @spa_normal_class(i32* %27)
  store %struct.TYPE_33__* %28, %struct.TYPE_33__** %5, align 8
  %29 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %29, i32 0, i32 14
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %6, align 8
  %32 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %32, i32 0, i32 15
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %33, align 8
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %7, align 8
  %35 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @spa_max_replication(i32* %47)
  %49 = call i32 @MIN(i32 %46, i32 %48)
  store i32 %49, i32* %17, align 4
  %50 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZIO_FLAG_NODATA, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* @METASLAB_HINTBP_FAVOR, align 4
  %59 = load i32, i32* @METASLAB_GANG_HEADER, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %21, align 4
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %101

67:                                               ; preds = %1
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @ASSERT(i32 %75)
  %77 = load i32, i32* @METASLAB_ASYNC_ALLOC, align 4
  %78 = load i32, i32* %21, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %21, align 4
  %80 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %88 = call i32 @zfs_refcount_held(i32* %86, %struct.TYPE_29__* %87)
  %89 = call i32 @VERIFY(i32 %88)
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %16, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %98 = load i32, i32* %21, align 4
  %99 = call i32 @metaslab_class_throttle_reserve(%struct.TYPE_33__* %90, i32 %93, i64 %96, %struct.TYPE_29__* %97, i32 %98)
  %100 = call i32 @VERIFY(i32 %99)
  br label %101

101:                                              ; preds = %67, %1
  %102 = load i32*, i32** %4, align 8
  %103 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %104 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %109 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %110 = icmp eq %struct.TYPE_29__* %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %116

112:                                              ; preds = %101
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 14
  %115 = load i32*, i32** %114, align 8
  br label %116

116:                                              ; preds = %112, %111
  %117 = phi i32* [ null, %111 ], [ %115, %112 ]
  %118 = load i32, i32* %21, align 4
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 13
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @metaslab_alloc(i32* %102, %struct.TYPE_33__* %103, i32 %104, i32* %105, i32 %106, i32 %107, i32* %117, i32 %118, i32* %120, %struct.TYPE_29__* %121, i64 %124)
  store i32 %125, i32* %19, align 4
  %126 = load i32, i32* %19, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %159

128:                                              ; preds = %116
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %128
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %140 = icmp eq i64 %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @ASSERT(i32 %141)
  %143 = load i32, i32* %20, align 4
  %144 = call i32 @ASSERT(i32 %143)
  %145 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %146 = load i32, i32* %17, align 4
  %147 = load i32, i32* %16, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %153 = call i32 @metaslab_class_throttle_unreserve(%struct.TYPE_33__* %145, i32 %148, i64 %151, %struct.TYPE_29__* %152)
  br label %154

154:                                              ; preds = %135, %128
  %155 = load i32, i32* %19, align 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_29__* %158, %struct.TYPE_29__** %2, align 8
  br label %331

159:                                              ; preds = %116
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %161 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %162 = icmp eq %struct.TYPE_29__* %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %164, i32 0, i32 12
  store %struct.TYPE_32__** %165, %struct.TYPE_32__*** %10, align 8
  br label %177

166:                                              ; preds = %159
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 11
  %169 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %168, align 8
  store %struct.TYPE_32__** %169, %struct.TYPE_32__*** %10, align 8
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 6
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @zio_write_gang_member_ready, align 8
  %174 = icmp eq i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @ASSERT(i32 %175)
  br label %177

177:                                              ; preds = %166, %163
  %178 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %10, align 8
  %179 = call %struct.TYPE_32__* @zio_gang_node_alloc(%struct.TYPE_32__** %178)
  store %struct.TYPE_32__* %179, %struct.TYPE_32__** %9, align 8
  %180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %181, align 8
  store %struct.TYPE_31__* %182, %struct.TYPE_31__** %11, align 8
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %184 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %185 = call i32 @bzero(%struct.TYPE_31__* %183, i32 %184)
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %187 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %188 = call i32* @abd_get_from_buf(%struct.TYPE_31__* %186, i32 %187)
  store i32* %188, i32** %12, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %190 = load i32*, i32** %4, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load i32*, i32** %6, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* @SPA_GANGBLOCKSIZE, align 4
  %195 = load i32, i32* @zio_write_gang_done, align 4
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %200 = call i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_29__* %199)
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %201, i32 0, i32 8
  %203 = call %struct.TYPE_29__* @zio_rewrite(%struct.TYPE_29__* %189, i32* %190, i32 %191, i32* %192, i32* %193, i32 %194, i32 %195, i32* null, i64 %198, i32 %200, i32* %202)
  store %struct.TYPE_29__* %203, %struct.TYPE_29__** %8, align 8
  store i32 0, i32* %22, align 4
  br label %204

204:                                              ; preds = %318, %177
  %205 = load i32, i32* %14, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %324

207:                                              ; preds = %204
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @SPA_GBH_NBLKPTRS, align 4
  %210 = load i32, i32* %22, align 4
  %211 = sub nsw i32 %209, %210
  %212 = sdiv i32 %208, %211
  %213 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %214 = call i32 @P2ROUNDUP(i32 %212, i32 %213)
  store i32 %214, i32* %15, align 4
  %215 = load i32, i32* %15, align 4
  %216 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %207
  %219 = load i32, i32* %15, align 4
  %220 = load i32, i32* %14, align 4
  %221 = icmp sle i32 %219, %220
  br label %222

222:                                              ; preds = %218, %207
  %223 = phi i1 [ false, %207 ], [ %221, %218 ]
  %224 = zext i1 %223 to i32
  %225 = call i32 @ASSERT(i32 %224)
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 10
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 7
  store i32 %229, i32* %230, align 8
  %231 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %232 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 6
  store i32 %231, i32* %232, align 4
  %233 = load i32, i32* @DMU_OT_NONE, align 4
  %234 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 5
  store i32 %233, i32* %234, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 4
  store i64 0, i64* %235, align 8
  %236 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 10
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  store i32 %239, i32* %240, align 8
  %241 = load i8*, i8** @B_FALSE, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 3
  store i8* %241, i8** %242, align 8
  %243 = load i8*, i8** @B_FALSE, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 2
  store i8* %243, i8** %244, align 8
  %245 = load i8*, i8** @B_FALSE, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 1
  store i8* %245, i8** %246, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %248 = load i32*, i32** %4, align 8
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %22, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %20, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %268

258:                                              ; preds = %222
  %259 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %14, align 4
  %266 = sub nsw i32 %264, %265
  %267 = call i32* @abd_get_offset(i32 %261, i32 %266)
  br label %269

268:                                              ; preds = %222
  br label %269

269:                                              ; preds = %268, %258
  %270 = phi i32* [ %267, %258 ], [ null, %268 ]
  %271 = load i32, i32* %15, align 4
  %272 = load i32, i32* %15, align 4
  %273 = load i64, i64* @zio_write_gang_member_ready, align 8
  %274 = load i32, i32* @zio_write_gang_done, align 4
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load i32, i32* %22, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %285 = call i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_29__* %284)
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 8
  %288 = call %struct.TYPE_29__* @zio_write(%struct.TYPE_29__* %247, i32* %248, i32 %249, i32* %255, i32* %270, i32 %271, i32 %272, %struct.TYPE_30__* %18, i64 %273, i32* null, i32* null, i32 %274, i32* %280, i64 %283, i32 %285, i32* %287)
  store %struct.TYPE_29__* %288, %struct.TYPE_29__** %23, align 8
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @ZIO_FLAG_IO_ALLOCATING, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %315

295:                                              ; preds = %269
  %296 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @ZIO_PRIORITY_ASYNC_WRITE, align 8
  %300 = icmp eq i64 %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @ASSERT(i32 %301)
  %303 = load i32, i32* %20, align 4
  %304 = call i32 @ASSERT(i32 %303)
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %309 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %312 = load i32, i32* %21, align 4
  %313 = call i32 @metaslab_class_throttle_reserve(%struct.TYPE_33__* %305, i32 %307, i64 %310, %struct.TYPE_29__* %311, i32 %312)
  %314 = call i32 @VERIFY(i32 %313)
  br label %315

315:                                              ; preds = %295, %269
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %23, align 8
  %317 = call i32 @zio_nowait(%struct.TYPE_29__* %316)
  br label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %14, align 4
  %321 = sub nsw i32 %320, %319
  store i32 %321, i32* %14, align 4
  %322 = load i32, i32* %22, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %22, align 4
  br label %204

324:                                              ; preds = %204
  %325 = load i32, i32* @ZIO_INTERLOCK_PIPELINE, align 4
  %326 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 8
  %328 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %329 = call i32 @zio_nowait(%struct.TYPE_29__* %328)
  %330 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  store %struct.TYPE_29__* %330, %struct.TYPE_29__** %2, align 8
  br label %331

331:                                              ; preds = %324, %154
  %332 = load %struct.TYPE_29__*, %struct.TYPE_29__** %2, align 8
  ret %struct.TYPE_29__* %332
}

declare dso_local %struct.TYPE_33__* @spa_normal_class(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @spa_max_replication(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @zfs_refcount_held(i32*, %struct.TYPE_29__*) #1

declare dso_local i32 @metaslab_class_throttle_reserve(%struct.TYPE_33__*, i32, i64, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @metaslab_alloc(i32*, %struct.TYPE_33__*, i32, i32*, i32, i32, i32*, i32, i32*, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @metaslab_class_throttle_unreserve(%struct.TYPE_33__*, i32, i64, %struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_32__* @zio_gang_node_alloc(%struct.TYPE_32__**) #1

declare dso_local i32 @bzero(%struct.TYPE_31__*, i32) #1

declare dso_local i32* @abd_get_from_buf(%struct.TYPE_31__*, i32) #1

declare dso_local %struct.TYPE_29__* @zio_rewrite(%struct.TYPE_29__*, i32*, i32, i32*, i32*, i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @ZIO_GANG_CHILD_FLAGS(%struct.TYPE_29__*) #1

declare dso_local i32 @P2ROUNDUP(i32, i32) #1

declare dso_local %struct.TYPE_29__* @zio_write(%struct.TYPE_29__*, i32*, i32, i32*, i32*, i32, i32, %struct.TYPE_30__*, i64, i32*, i32*, i32, i32*, i64, i32, i32*) #1

declare dso_local i32* @abd_get_offset(i32, i32) #1

declare dso_local i32 @zio_nowait(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
