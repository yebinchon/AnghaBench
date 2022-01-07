; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dmamap_load_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v4.c__bus_dmamap_load_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmap = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i64, i32, %struct.sync_list*, i32* }
%struct.sync_list = type { i32, i32, i64, i32 }

@maploads_total = common dso_local global i32 0, align 4
@DMAMAP_COHERENT = common dso_local global i32 0, align 4
@maploads_coherent = common dso_local global i32 0, align 4
@DMAMAP_DMAMEM_ALLOC = common dso_local global i32 0, align 4
@maploads_dmamem = common dso_local global i32 0, align 4
@BUS_DMA_LOAD_MBUF = common dso_local global i32 0, align 4
@maploads_mbuf = common dso_local global i32 0, align 4
@DMAMAP_CACHE_ALIGNED = common dso_local global i32 0, align 4
@BUS_DMA_COULD_BOUNCE = common dso_local global i32 0, align 4
@maploads_bounced = common dso_local global i32 0, align 4
@KTR_BUSDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"lowaddr= %d boundary= %d, alignment= %d\00", align 1
@kernel_pmap = common dso_local global %struct.pmap* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bus_dmamap_load_buffer(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i8* %2, i64 %3, %struct.pmap* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pmap*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.sync_list*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store %struct.pmap* %4, %struct.pmap** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %20, align 4
  %26 = load i8*, i8** %12, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i32 0, i32* %25, align 4
  %28 = load i32, i32* @maploads_total, align 4
  %29 = call i32 @counter_u64_add(i32 %28, i32 1)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DMAMAP_COHERENT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %8
  %37 = load i32, i32* @maploads_coherent, align 4
  %38 = call i32 @counter_u64_add(i32 %37, i32 1)
  br label %39

39:                                               ; preds = %36, %8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMAMAP_DMAMEM_ALLOC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @maploads_dmamem, align 4
  %48 = call i32 @counter_u64_add(i32 %47, i32 1)
  br label %49

49:                                               ; preds = %46, %39
  %50 = load i32*, i32** %16, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %16, align 8
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @BUS_DMA_LOAD_MBUF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load i32, i32* @maploads_mbuf, align 4
  %63 = call i32 @counter_u64_add(i32 %62, i32 1)
  %64 = load i32, i32* @DMAMAP_CACHE_ALIGNED, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %61, %56
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %69
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %79 = load %struct.pmap*, %struct.pmap** %14, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @_bus_dmamap_count_pages(%struct.TYPE_17__* %77, %struct.TYPE_16__* %78, %struct.pmap* %79, i8* %80, i64 %81, i32 %82)
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %76
  %89 = load i32, i32* @maploads_bounced, align 4
  %90 = call i32 @counter_u64_add(i32 %89, i32 1)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__* %91, %struct.TYPE_16__* %92, i32 %93)
  store i32 %94, i32* %25, align 4
  %95 = load i32, i32* %25, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* %25, align 4
  store i32 %98, i32* %9, align 4
  br label %304

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %76
  br label %101

101:                                              ; preds = %100, %69
  %102 = load i32, i32* @KTR_BUSDMA, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @CTR3(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %105, i32 %108, i32 %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 3
  %115 = load %struct.sync_list*, %struct.sync_list** %114, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %115, i64 %119
  %121 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %120, i64 -1
  store %struct.sync_list* %121, %struct.sync_list** %21, align 8
  br label %122

122:                                              ; preds = %287, %101
  %123 = load i64, i64* %13, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %294

125:                                              ; preds = %122
  %126 = load %struct.pmap*, %struct.pmap** %14, align 8
  %127 = load %struct.pmap*, %struct.pmap** @kernel_pmap, align 8
  %128 = icmp eq %struct.pmap* %126, %127
  %129 = zext i1 %128 to i32
  %130 = call i64 @__predict_true(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load i64, i64* %23, align 8
  %134 = call i32 @pmap_kextract(i64 %133)
  store i32 %134, i32* %19, align 4
  %135 = load i64, i64* %23, align 8
  store i64 %135, i64* %22, align 8
  br label %146

136:                                              ; preds = %125
  %137 = load %struct.pmap*, %struct.pmap** %14, align 8
  %138 = load i64, i64* %23, align 8
  %139 = call i32 @pmap_extract(%struct.pmap* %137, i64 %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* @DMAMAP_COHERENT, align 4
  %141 = xor i32 %140, -1
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = and i32 %144, %141
  store i32 %145, i32* %143, align 8
  store i64 0, i64* %22, align 8
  br label %146

146:                                              ; preds = %136, %132
  %147 = load i64, i64* @PAGE_SIZE, align 8
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* @PAGE_MASK, align 4
  %150 = and i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = sub nsw i64 %147, %151
  store i64 %152, i64* %18, align 8
  %153 = load i64, i64* %18, align 8
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp sgt i64 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %146
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %18, align 8
  br label %162

162:                                              ; preds = %158, %146
  %163 = load i64, i64* %13, align 8
  %164 = load i64, i64* %18, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %162
  %167 = load i64, i64* %13, align 8
  store i64 %167, i64* %18, align 8
  br label %168

168:                                              ; preds = %166, %162
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @BUS_DMA_COULD_BOUNCE, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %168
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %175
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %182 = load i32, i32* %19, align 4
  %183 = call i64 @run_filter(%struct.TYPE_17__* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %192

185:                                              ; preds = %180
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %188 = load i64, i64* %22, align 8
  %189 = load i32, i32* %19, align 4
  %190 = load i64, i64* %18, align 8
  %191 = call i32 @add_bounce_page(%struct.TYPE_17__* %186, %struct.TYPE_16__* %187, i64 %188, i32 %189, i64 %190)
  store i32 %191, i32* %19, align 4
  br label %276

192:                                              ; preds = %180, %175, %168
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = icmp sgt i32 %195, 0
  br i1 %196, label %197, label %218

197:                                              ; preds = %192
  %198 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %199 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @VM_PAGE_TO_PHYS(i32 %200)
  %202 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %203 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %201, %204
  %206 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %207 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %205, %208
  store i32 %209, i32* %20, align 4
  %210 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %211 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %214 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %212, %216
  store i64 %217, i64* %24, align 8
  br label %218

218:                                              ; preds = %197, %192
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %237, label %223

223:                                              ; preds = %218
  %224 = load i64, i64* %22, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i64, i64* %22, align 8
  %228 = load i64, i64* %24, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %237, label %230

230:                                              ; preds = %226, %223
  %231 = load i64, i64* %22, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %267

233:                                              ; preds = %230
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %20, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %267

237:                                              ; preds = %233, %226, %218
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 8
  %242 = sext i32 %241 to i64
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = icmp sgt i64 %242, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  br label %295

248:                                              ; preds = %237
  %249 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %250 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %249, i32 1
  store %struct.sync_list* %250, %struct.sync_list** %21, align 8
  %251 = load i64, i64* %22, align 8
  %252 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %253 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %252, i32 0, i32 2
  store i64 %251, i64* %253, align 8
  %254 = load i64, i64* %18, align 8
  %255 = trunc i64 %254 to i32
  %256 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %257 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 4
  %258 = load i32, i32* %19, align 4
  %259 = call i32 @PHYS_TO_VM_PAGE(i32 %258)
  %260 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %261 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* @PAGE_MASK, align 4
  %264 = and i32 %262, %263
  %265 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %266 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %265, i32 0, i32 0
  store i32 %264, i32* %266, align 8
  br label %275

267:                                              ; preds = %233, %230
  %268 = load i64, i64* %18, align 8
  %269 = load %struct.sync_list*, %struct.sync_list** %21, align 8
  %270 = getelementptr inbounds %struct.sync_list, %struct.sync_list* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %272, %268
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %270, align 4
  br label %275

275:                                              ; preds = %267, %248
  br label %276

276:                                              ; preds = %275, %185
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %279 = load i32, i32* %19, align 4
  %280 = load i64, i64* %18, align 8
  %281 = load i32*, i32** %16, align 8
  %282 = load i32*, i32** %17, align 8
  %283 = call i64 @_bus_dmamap_addseg(%struct.TYPE_17__* %277, %struct.TYPE_16__* %278, i32 %279, i64 %280, i32* %281, i32* %282)
  store i64 %283, i64* %18, align 8
  %284 = load i64, i64* %18, align 8
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %276
  br label %294

287:                                              ; preds = %276
  %288 = load i64, i64* %18, align 8
  %289 = load i64, i64* %23, align 8
  %290 = add nsw i64 %289, %288
  store i64 %290, i64* %23, align 8
  %291 = load i64, i64* %18, align 8
  %292 = load i64, i64* %13, align 8
  %293 = sub nsw i64 %292, %291
  store i64 %293, i64* %13, align 8
  br label %122

294:                                              ; preds = %286, %122
  br label %295

295:                                              ; preds = %294, %247
  %296 = load i64, i64* %13, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %295
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %301 = call i32 @bus_dmamap_unload(%struct.TYPE_17__* %299, %struct.TYPE_16__* %300)
  %302 = load i32, i32* @EFBIG, align 4
  store i32 %302, i32* %9, align 4
  br label %304

303:                                              ; preds = %295
  store i32 0, i32* %9, align 4
  br label %304

304:                                              ; preds = %303, %298, %97
  %305 = load i32, i32* %9, align 4
  ret i32 %305
}

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @_bus_dmamap_count_pages(%struct.TYPE_17__*, %struct.TYPE_16__*, %struct.pmap*, i8*, i64, i32) #1

declare dso_local i32 @_bus_dmamap_reserve_pages(%struct.TYPE_17__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @pmap_kextract(i64) #1

declare dso_local i32 @pmap_extract(%struct.pmap*, i64) #1

declare dso_local i64 @run_filter(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @add_bounce_page(%struct.TYPE_17__*, %struct.TYPE_16__*, i64, i32, i64) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i64 @_bus_dmamap_addseg(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i64, i32*, i32*) #1

declare dso_local i32 @bus_dmamap_unload(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
