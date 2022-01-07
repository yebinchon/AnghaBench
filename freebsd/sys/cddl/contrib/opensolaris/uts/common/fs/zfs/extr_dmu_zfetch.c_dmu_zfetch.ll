; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_zfetch.c_dmu_zfetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_zfetch.c_dmu_zfetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64, i64, i64, i32, i32 }

@zfs_prefetch_disable = common dso_local global i64 0, align 8
@RW_READER = common dso_local global i32 0, align 4
@zfetchstat_misses = common dso_local global i32 0, align 4
@zfetch_max_distance = common dso_local global i32 0, align 4
@zfetch_max_idistance = common dso_local global i32 0, align 4
@SPA_BLKPTRSHIFT = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@ARC_FLAG_PREDICTIVE_PREFETCH = common dso_local global i32 0, align 4
@zfetchstat_hits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_zfetch(%struct.TYPE_12__* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add nsw i64 %24, %25
  store i64 %26, i64* %20, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %21, align 8
  %34 = load i64, i64* @zfs_prefetch_disable, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %283

37:                                               ; preds = %4
  %38 = load i32*, i32** %21, align 8
  %39 = call i32 @spa_indirect_vdevs_loaded(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  br label %283

42:                                               ; preds = %37
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %283

46:                                               ; preds = %42
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* @RW_READER, align 4
  %50 = call i32 @rw_enter(i32* %48, i32 %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = call %struct.TYPE_11__* @list_head(i32* %52)
  store %struct.TYPE_11__* %53, %struct.TYPE_11__** %9, align 8
  br label %54

54:                                               ; preds = %108, %46
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %56 = icmp ne %struct.TYPE_11__* %55, null
  br i1 %56, label %57, label %113

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  br i1 %62, label %70, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* %6, align 8
  %65 = add nsw i64 %64, 1
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %107

70:                                               ; preds = %63, %57
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 3
  %73 = call i32 @mutex_enter(i32* %72)
  %74 = load i64, i64* %6, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %70
  br label %113

80:                                               ; preds = %70
  %81 = load i64, i64* %6, align 8
  %82 = add nsw i64 %81, 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %87
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = call i32 @mutex_exit(i32* %96)
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  %100 = call i32 @rw_exit(i32* %99)
  br label %283

101:                                              ; preds = %87
  br label %113

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 3
  %106 = call i32 @mutex_exit(i32* %105)
  br label %107

107:                                              ; preds = %103, %63
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %112 = call %struct.TYPE_11__* @list_next(i32* %110, %struct.TYPE_11__* %111)
  store %struct.TYPE_11__* %112, %struct.TYPE_11__** %9, align 8
  br label %54

113:                                              ; preds = %101, %79, %54
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %115 = icmp eq %struct.TYPE_11__* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load i32, i32* @zfetchstat_misses, align 4
  %118 = call i32 @ZFETCHSTAT_BUMP(i32 %117)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = call i64 @rw_tryupgrade(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = load i64, i64* %20, align 8
  %126 = call i32 @dmu_zfetch_stream_create(%struct.TYPE_12__* %124, i64 %125)
  br label %127

127:                                              ; preds = %123, %116
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = call i32 @rw_exit(i32* %129)
  br label %283

131:                                              ; preds = %113
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %20, align 8
  %136 = call i64 @MAX(i64 %134, i64 %135)
  store i64 %136, i64* %10, align 8
  %137 = load i64, i64* %8, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %131
  %140 = load i32, i32* @zfetch_max_distance, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = ashr i32 %140, %145
  store i32 %146, i32* %17, align 4
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* %6, align 8
  %151 = sub nsw i64 %149, %150
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %151, %152
  store i64 %153, i64* %14, align 8
  %154 = load i32, i32* %17, align 4
  %155 = sext i32 %154 to i64
  %156 = load i64, i64* %10, align 8
  %157 = load i64, i64* %20, align 8
  %158 = sub nsw i64 %156, %157
  %159 = sub nsw i64 %155, %158
  store i64 %159, i64* %15, align 8
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* %15, align 8
  %162 = call i32 @MIN(i64 %160, i64 %161)
  store i32 %162, i32* %18, align 4
  br label %164

163:                                              ; preds = %131
  store i32 0, i32* %18, align 4
  br label %164

164:                                              ; preds = %163, %139
  %165 = load i64, i64* %10, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %165, %167
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  store i64 %168, i64* %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @MAX(i64 %173, i64 %176)
  store i64 %177, i64* %11, align 8
  %178 = load i32, i32* @zfetch_max_idistance, align 4
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = ashr i32 %178, %183
  store i32 %184, i32* %17, align 4
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = sub nsw i64 %187, %188
  %190 = load i64, i64* %7, align 8
  %191 = add nsw i64 %189, %190
  %192 = load i32, i32* %18, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %191, %193
  store i64 %194, i64* %14, align 8
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* %20, align 8
  %199 = sub nsw i64 %197, %198
  %200 = sub nsw i64 %196, %199
  store i64 %200, i64* %15, align 8
  %201 = load i64, i64* %14, align 8
  %202 = load i64, i64* %15, align 8
  %203 = call i32 @MIN(i64 %201, i64 %202)
  store i32 %203, i32* %19, align 4
  %204 = load i64, i64* %11, align 8
  %205 = load i32, i32* %19, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %204, %206
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  store i64 %207, i64* %209, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SPA_BLKPTRSHIFT, align 4
  %216 = sub nsw i32 %214, %215
  store i32 %216, i32* %16, align 4
  %217 = load i64, i64* %11, align 8
  %218 = load i32, i32* %16, align 4
  %219 = shl i32 1, %218
  %220 = call i32 @P2ROUNDUP(i64 %217, i32 %219)
  %221 = load i32, i32* %16, align 4
  %222 = ashr i32 %220, %221
  %223 = sext i32 %222 to i64
  store i64 %223, i64* %12, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %16, align 4
  %228 = shl i32 1, %227
  %229 = call i32 @P2ROUNDUP(i64 %226, i32 %228)
  %230 = load i32, i32* %16, align 4
  %231 = ashr i32 %229, %230
  %232 = sext i32 %231 to i64
  store i64 %232, i64* %13, align 8
  %233 = call i32 (...) @gethrtime()
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 4
  store i32 %233, i32* %235, align 4
  %236 = load i64, i64* %20, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  store i64 %236, i64* %238, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 3
  %241 = call i32 @mutex_exit(i32* %240)
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = call i32 @rw_exit(i32* %243)
  store i32 0, i32* %22, align 4
  br label %245

245:                                              ; preds = %260, %164
  %246 = load i32, i32* %22, align 4
  %247 = load i32, i32* %18, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %245
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %251, align 8
  %253 = load i64, i64* %10, align 8
  %254 = load i32, i32* %22, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %253, %255
  %257 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %258 = load i32, i32* @ARC_FLAG_PREDICTIVE_PREFETCH, align 4
  %259 = call i32 @dbuf_prefetch(%struct.TYPE_13__* %252, i32 0, i64 %256, i32 %257, i32 %258)
  br label %260

260:                                              ; preds = %249
  %261 = load i32, i32* %22, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %22, align 4
  br label %245

263:                                              ; preds = %245
  %264 = load i64, i64* %12, align 8
  store i64 %264, i64* %23, align 8
  br label %265

265:                                              ; preds = %277, %263
  %266 = load i64, i64* %23, align 8
  %267 = load i64, i64* %13, align 8
  %268 = icmp slt i64 %266, %267
  br i1 %268, label %269, label %280

269:                                              ; preds = %265
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = load i64, i64* %23, align 8
  %274 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %275 = load i32, i32* @ARC_FLAG_PREDICTIVE_PREFETCH, align 4
  %276 = call i32 @dbuf_prefetch(%struct.TYPE_13__* %272, i32 1, i64 %273, i32 %274, i32 %275)
  br label %277

277:                                              ; preds = %269
  %278 = load i64, i64* %23, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %23, align 8
  br label %265

280:                                              ; preds = %265
  %281 = load i32, i32* @zfetchstat_hits, align 4
  %282 = call i32 @ZFETCHSTAT_BUMP(i32 %281)
  br label %283

283:                                              ; preds = %280, %127, %94, %45, %41, %36
  ret void
}

declare dso_local i32 @spa_indirect_vdevs_loaded(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @list_head(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local %struct.TYPE_11__* @list_next(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @ZFETCHSTAT_BUMP(i32) #1

declare dso_local i64 @rw_tryupgrade(i32*) #1

declare dso_local i32 @dmu_zfetch_stream_create(%struct.TYPE_12__*, i64) #1

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @P2ROUNDUP(i64, i32) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @dbuf_prefetch(%struct.TYPE_13__*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
