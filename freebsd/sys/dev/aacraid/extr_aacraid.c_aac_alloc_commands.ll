; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_alloc_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_alloc_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.aac_command*, i32, i32 }
%struct.aac_command = type { i32, i32, i32, %struct.aac_fib*, %struct.aac_softc* }
%struct.aac_fib = type { i32 }
%struct.aac_fibmap = type { i32, i64, %struct.aac_command* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MA_OWNED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Not enough contiguous memory available.\0A\00", align 1
@AAC_FLAGS_NEW_COMM_TYPE1 = common dso_local global i32 0, align 4
@aac_map_command_helper = common dso_local global i32 0, align 4
@fm_link = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_COMM_B = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"total_fibs= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_alloc_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_alloc_commands(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_command*, align 8
  %5 = alloca %struct.aac_fibmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %14 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %12, i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %15, i32 0, i32 9
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @mtx_assert(i32* %16, i32 %17)
  %19 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %20 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %23 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %27 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %285

32:                                               ; preds = %1
  %33 = load i32, i32* @M_AACRAIDBUF, align 4
  %34 = load i32, i32* @M_NOWAIT, align 4
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.aac_fibmap* @malloc(i32 24, i32 %33, i32 %36)
  store %struct.aac_fibmap* %37, %struct.aac_fibmap** %5, align 8
  %38 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %39 = icmp eq %struct.aac_fibmap* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %2, align 4
  br label %285

42:                                               ; preds = %32
  %43 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %44 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %43, i32 0, i32 9
  %45 = call i32 @mtx_unlock(i32* %44)
  %46 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %47 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %50 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %49, i32 0, i32 1
  %51 = bitcast i64* %50 to i8**
  %52 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %53 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %54 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %53, i32 0, i32 0
  %55 = call i64 @bus_dmamem_alloc(i32 %48, i8** %51, i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %42
  %58 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %63 = load i32, i32* @M_AACRAIDBUF, align 4
  %64 = call i32 @free(%struct.aac_fibmap* %62, i32 %63)
  %65 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %66 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %65, i32 0, i32 9
  %67 = call i32 @mtx_lock(i32* %66)
  %68 = load i32, i32* @ENOMEM, align 4
  store i32 %68, i32* %2, align 4
  br label %285

69:                                               ; preds = %42
  %70 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %71 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 31
  store i32 %73, i32* %9, align 4
  %74 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %75 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE1, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %69
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %80, %69
  %86 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %87 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %90 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %93 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %96 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %9, align 4
  %99 = mul nsw i32 %97, %98
  %100 = load i32, i32* @aac_map_command_helper, align 4
  %101 = call i32 @bus_dmamap_load(i32 %88, i32 %91, i64 %94, i32 %99, i32 %100, i32* %6, i32 0)
  %102 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %103 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %102, i32 0, i32 9
  %104 = call i32 @mtx_lock(i32* %103)
  %105 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %106 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %109 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %110, %111
  %113 = call i32 @bzero(i64 %107, i32 %112)
  store i32 0, i32* %7, align 4
  br label %114

114:                                              ; preds = %245, %85
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %117 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %248

120:                                              ; preds = %114
  %121 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %122 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %121, i32 0, i32 8
  %123 = load %struct.aac_command*, %struct.aac_command** %122, align 8
  %124 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %125 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %123, i64 %127
  store %struct.aac_command* %128, %struct.aac_command** %4, align 8
  %129 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %130 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %131 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %130, i32 0, i32 2
  store %struct.aac_command* %129, %struct.aac_command** %131, align 8
  %132 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %133 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %134 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %133, i32 0, i32 4
  store %struct.aac_softc* %132, %struct.aac_softc** %134, align 8
  %135 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %136 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i32*
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %9, align 4
  %141 = mul nsw i32 %139, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  %144 = bitcast i32* %143 to %struct.aac_fib*
  %145 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %146 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %145, i32 0, i32 3
  store %struct.aac_fib* %144, %struct.aac_fib** %146, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %9, align 4
  %150 = mul nsw i32 %148, %149
  %151 = add nsw i32 %147, %150
  %152 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %153 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 8
  %154 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %155 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE1, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %186

160:                                              ; preds = %120
  %161 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %162 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = add i64 %164, 4
  %166 = add i64 %165, 31
  %167 = and i64 %166, -32
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %10, align 4
  %169 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %170 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %169, i32 0, i32 3
  %171 = load %struct.aac_fib*, %struct.aac_fib** %170, align 8
  %172 = bitcast %struct.aac_fib* %171 to i32*
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %175 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sub nsw i32 %173, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %172, i64 %178
  %180 = bitcast i32* %179 to %struct.aac_fib*
  %181 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %182 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %181, i32 0, i32 3
  store %struct.aac_fib* %180, %struct.aac_fib** %182, align 8
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %185 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  br label %209

186:                                              ; preds = %120
  %187 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %188 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 31
  %191 = and i32 %190, -32
  store i32 %191, i32* %11, align 4
  %192 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %193 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %192, i32 0, i32 3
  %194 = load %struct.aac_fib*, %struct.aac_fib** %193, align 8
  %195 = bitcast %struct.aac_fib* %194 to i32*
  %196 = load i32, i32* %11, align 4
  %197 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %198 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %196, %199
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %195, i64 %201
  %203 = bitcast i32* %202 to %struct.aac_fib*
  %204 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %205 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %204, i32 0, i32 3
  store %struct.aac_fib* %203, %struct.aac_fib** %205, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %208 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  br label %209

209:                                              ; preds = %186, %160
  %210 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %211 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %214 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %216 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %215, i32 0, i32 7
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %219 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %218, i32 0, i32 2
  %220 = call i32 @bus_dmamap_create(i32 %217, i32 0, i32* %219)
  store i32 %220, i32* %8, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %209
  br label %248

223:                                              ; preds = %209
  %224 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %225 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp sle i32 %226, 1
  br i1 %227, label %237, label %228

228:                                              ; preds = %223
  %229 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %230 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %233 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = sub nsw i32 %231, %234
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %240

237:                                              ; preds = %228, %223
  %238 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %239 = call i32 @aacraid_release_command(%struct.aac_command* %238)
  br label %240

240:                                              ; preds = %237, %228
  %241 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %242 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 8
  br label %245

245:                                              ; preds = %240
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %114

248:                                              ; preds = %222, %114
  %249 = load i32, i32* %7, align 4
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %248
  %252 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %253 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %252, i32 0, i32 6
  %254 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %255 = load i32, i32* @fm_link, align 4
  %256 = call i32 @TAILQ_INSERT_TAIL(i32* %253, %struct.aac_fibmap* %254, i32 %255)
  %257 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %258 = load i8*, i8** @HBA_FLAGS_DBG_COMM_B, align 8
  %259 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %260 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %257, i8* %258, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %261)
  store i32 0, i32* %2, align 4
  br label %285

263:                                              ; preds = %248
  %264 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %265 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %268 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @bus_dmamap_unload(i32 %266, i32 %269)
  %271 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %272 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %275 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %278 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @bus_dmamem_free(i32 %273, i64 %276, i32 %279)
  %281 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %282 = load i32, i32* @M_AACRAIDBUF, align 4
  %283 = call i32 @free(%struct.aac_fibmap* %281, i32 %282)
  %284 = load i32, i32* @ENOMEM, align 4
  store i32 %284, i32* %2, align 4
  br label %285

285:                                              ; preds = %263, %251, %57, %40, %30
  %286 = load i32, i32* %2, align 4
  ret i32 %286
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, ...) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.aac_fibmap* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(%struct.aac_fibmap*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @aacraid_release_command(%struct.aac_command*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aac_fibmap*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
