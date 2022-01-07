; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_array_by_dnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_array_by_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32, %struct.TYPE_16__*, i64 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_19__ = type { i64, i32, i32, i32 }

@DMU_MAX_ACCESS = common dso_local global i64 0, align 8
@DB_RF_CANFAIL = common dso_local global i32 0, align 4
@DB_RF_NEVERWAIT = common dso_local global i32 0, align 4
@DB_RF_HAVESTRUCT = common dso_local global i32 0, align 4
@DB_RF_NOPREFETCH = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"zfs: accessing past end of object %llx/%llx (size=%u access=%llu+%llu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@zfetch_array_rd_sz = common dso_local global i64 0, align 8
@DB_READ = common dso_local global i64 0, align 8
@DB_FILL = common dso_local global i64 0, align 8
@DB_UNCACHED = common dso_local global i64 0, align 8
@RACCT_WRITEBPS = common dso_local global i32 0, align 4
@RACCT_WRITEIOPS = common dso_local global i32 0, align 4
@curproc = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_14__* null, align 8
@racct_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_buf_hold_array_by_dnode(%struct.TYPE_18__* %0, i64 %1, i64 %2, i64 %3, i8* %4, i32* %5, i32*** %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32***, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_19__*, align 8
  %27 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i8* %4, i8** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32*** %6, i32**** %16, align 8
  store i32 %7, i32* %17, align 4
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* @DMU_MAX_ACCESS, align 8
  %30 = icmp sle i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @DB_RF_CANFAIL, align 4
  %34 = load i32, i32* @DB_RF_NEVERWAIT, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @DB_RF_HAVESTRUCT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @DB_RF_NOPREFETCH, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %22, align 4
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 2
  %42 = load i32, i32* @RW_READER, align 4
  %43 = call i32 @rw_enter(i32* %41, i32 %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %8
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %25, align 4
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* %25, align 4
  %56 = zext i32 %55 to i64
  %57 = shl i64 1, %56
  %58 = call i32 @P2ROUNDUP(i64 %54, i64 %57)
  %59 = load i64, i64* %11, align 8
  %60 = load i32, i32* %25, align 4
  %61 = zext i32 %60 to i64
  %62 = shl i64 1, %61
  %63 = call i32 @P2ALIGN(i64 %59, i64 %62)
  %64 = sub nsw i32 %58, %63
  %65 = load i32, i32* %25, align 4
  %66 = ashr i32 %64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %20, align 8
  br label %103

68:                                               ; preds = %8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %71, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %68
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* %12, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @zfs_panic_recover(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %88, i64 %91, i32 %93, i32 %95)
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 2
  %99 = call i32 @rw_exit(i32* %98)
  %100 = load i32, i32* @EIO, align 4
  %101 = call i32 @SET_ERROR(i32 %100)
  store i32 %101, i32* %9, align 4
  br label %272

102:                                              ; preds = %68
  store i64 1, i64* %20, align 8
  br label %103

103:                                              ; preds = %102, %48
  %104 = load i64, i64* %20, align 8
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = load i32, i32* @KM_SLEEP, align 4
  %108 = call i32** @kmem_zalloc(i32 %106, i32 %107)
  store i32** %108, i32*** %18, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %115 = call i32* @zio_root(i32 %113, i32* null, i32* null, i32 %114)
  store i32* %115, i32** %24, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i64 @dbuf_whichblock(%struct.TYPE_18__* %116, i32 0, i64 %117)
  store i64 %118, i64* %19, align 8
  store i64 0, i64* %21, align 8
  br label %119

119:                                              ; preds = %158, %103
  %120 = load i64, i64* %21, align 8
  %121 = load i64, i64* %20, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %161

123:                                              ; preds = %119
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %21, align 8
  %127 = add nsw i64 %125, %126
  %128 = load i8*, i8** %14, align 8
  %129 = call %struct.TYPE_19__* @dbuf_hold(%struct.TYPE_18__* %124, i64 %127, i8* %128)
  store %struct.TYPE_19__* %129, %struct.TYPE_19__** %26, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %131 = icmp eq %struct.TYPE_19__* %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %123
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = call i32 @rw_exit(i32* %134)
  %136 = load i32**, i32*** %18, align 8
  %137 = load i64, i64* %20, align 8
  %138 = load i8*, i8** %14, align 8
  %139 = call i32 @dmu_buf_rele_array(i32** %136, i64 %137, i8* %138)
  %140 = load i32*, i32** %24, align 8
  %141 = call i32 @zio_nowait(i32* %140)
  %142 = load i32, i32* @EIO, align 4
  %143 = call i32 @SET_ERROR(i32 %142)
  store i32 %143, i32* %9, align 4
  br label %272

144:                                              ; preds = %123
  %145 = load i64, i64* %13, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %149 = load i32*, i32** %24, align 8
  %150 = load i32, i32* %22, align 4
  %151 = call i32 @dbuf_read(%struct.TYPE_19__* %148, i32* %149, i32 %150)
  br label %152

152:                                              ; preds = %147, %144
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = load i32**, i32*** %18, align 8
  %156 = load i64, i64* %21, align 8
  %157 = getelementptr inbounds i32*, i32** %155, i64 %156
  store i32* %154, i32** %157, align 8
  br label %158

158:                                              ; preds = %152
  %159 = load i64, i64* %21, align 8
  %160 = add nsw i64 %159, 1
  store i64 %160, i64* %21, align 8
  br label %119

161:                                              ; preds = %119
  %162 = load i32, i32* %17, align 4
  %163 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %189

166:                                              ; preds = %161
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %168 = call i64 @DNODE_META_IS_CACHEABLE(%struct.TYPE_18__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %166
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* @zfetch_array_rd_sz, align 8
  %173 = icmp sle i64 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 3
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* %20, align 8
  %179 = load i64, i64* %13, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %183 = call i64 @DNODE_IS_CACHEABLE(%struct.TYPE_18__* %182)
  %184 = icmp ne i64 %183, 0
  br label %185

185:                                              ; preds = %181, %174
  %186 = phi i1 [ false, %174 ], [ %184, %181 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @dmu_zfetch(i32* %176, i64 %177, i64 %178, i32 %187)
  br label %189

189:                                              ; preds = %185, %170, %166, %161
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 2
  %192 = call i32 @rw_exit(i32* %191)
  %193 = load i32*, i32** %24, align 8
  %194 = call i32 @zio_wait(i32* %193)
  store i32 %194, i32* %23, align 4
  %195 = load i32, i32* %23, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %189
  %198 = load i32**, i32*** %18, align 8
  %199 = load i64, i64* %20, align 8
  %200 = load i8*, i8** %14, align 8
  %201 = call i32 @dmu_buf_rele_array(i32** %198, i64 %199, i8* %200)
  %202 = load i32, i32* %23, align 4
  store i32 %202, i32* %9, align 4
  br label %272

203:                                              ; preds = %189
  %204 = load i64, i64* %13, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %266

206:                                              ; preds = %203
  store i64 0, i64* %21, align 8
  br label %207

207:                                              ; preds = %262, %206
  %208 = load i64, i64* %21, align 8
  %209 = load i64, i64* %20, align 8
  %210 = icmp slt i64 %208, %209
  br i1 %210, label %211, label %265

211:                                              ; preds = %207
  %212 = load i32**, i32*** %18, align 8
  %213 = load i64, i64* %21, align 8
  %214 = getelementptr inbounds i32*, i32** %212, i64 %213
  %215 = load i32*, i32** %214, align 8
  %216 = bitcast i32* %215 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %216, %struct.TYPE_19__** %27, align 8
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 1
  %219 = call i32 @mutex_enter(i32* %218)
  br label %220

220:                                              ; preds = %234, %211
  %221 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @DB_READ, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @DB_FILL, align 8
  %231 = icmp eq i64 %229, %230
  br label %232

232:                                              ; preds = %226, %220
  %233 = phi i1 [ true, %220 ], [ %231, %226 ]
  br i1 %233, label %234, label %240

234:                                              ; preds = %232
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 2
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = call i32 @cv_wait(i32* %236, i32* %238)
  br label %220

240:                                              ; preds = %232
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %242 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @DB_UNCACHED, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load i32, i32* @EIO, align 4
  %248 = call i32 @SET_ERROR(i32 %247)
  store i32 %248, i32* %23, align 4
  br label %249

249:                                              ; preds = %246, %240
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %27, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 1
  %252 = call i32 @mutex_exit(i32* %251)
  %253 = load i32, i32* %23, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load i32**, i32*** %18, align 8
  %257 = load i64, i64* %20, align 8
  %258 = load i8*, i8** %14, align 8
  %259 = call i32 @dmu_buf_rele_array(i32** %256, i64 %257, i8* %258)
  %260 = load i32, i32* %23, align 4
  store i32 %260, i32* %9, align 4
  br label %272

261:                                              ; preds = %249
  br label %262

262:                                              ; preds = %261
  %263 = load i64, i64* %21, align 8
  %264 = add nsw i64 %263, 1
  store i64 %264, i64* %21, align 8
  br label %207

265:                                              ; preds = %207
  br label %266

266:                                              ; preds = %265, %203
  %267 = load i64, i64* %20, align 8
  %268 = trunc i64 %267 to i32
  %269 = load i32*, i32** %15, align 8
  store i32 %268, i32* %269, align 4
  %270 = load i32**, i32*** %18, align 8
  %271 = load i32***, i32**** %16, align 8
  store i32** %270, i32*** %271, align 8
  store i32 0, i32* %9, align 4
  br label %272

272:                                              ; preds = %266, %255, %197, %132, %76
  %273 = load i32, i32* %9, align 4
  ret i32 %273
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @P2ROUNDUP(i64, i64) #1

declare dso_local i32 @P2ALIGN(i64, i64) #1

declare dso_local i32 @zfs_panic_recover(i8*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32** @kmem_zalloc(i32, i32) #1

declare dso_local i32* @zio_root(i32, i32*, i32*, i32) #1

declare dso_local i64 @dbuf_whichblock(%struct.TYPE_18__*, i32, i64) #1

declare dso_local %struct.TYPE_19__* @dbuf_hold(%struct.TYPE_18__*, i64, i8*) #1

declare dso_local i32 @dmu_buf_rele_array(i32**, i64, i8*) #1

declare dso_local i32 @zio_nowait(i32*) #1

declare dso_local i32 @dbuf_read(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i64 @DNODE_META_IS_CACHEABLE(%struct.TYPE_18__*) #1

declare dso_local i32 @dmu_zfetch(i32*, i64, i64, i32) #1

declare dso_local i64 @DNODE_IS_CACHEABLE(%struct.TYPE_18__*) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
