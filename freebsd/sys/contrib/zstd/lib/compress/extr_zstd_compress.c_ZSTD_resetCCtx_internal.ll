; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_resetCCtx_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_resetCCtx_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64*, i64, i64, i64, i8*, i64, i8*, i64, %struct.TYPE_21__, i32*, %struct.TYPE_22__, %struct.TYPE_20__, i64, i32, i32, %struct.TYPE_23__, i64, i64, i32, i64, i32 }
%struct.TYPE_21__ = type { i32, i32*, i32*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_26__, i32*, i32* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i64, i32*, i8*, i8*, i8*, i8* }
%struct.TYPE_23__ = type { %struct.TYPE_18__, %struct.TYPE_25__, %struct.TYPE_19__ }
%struct.TYPE_18__ = type { i64, i64, i32, i64, i32 }
%struct.TYPE_19__ = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"ZSTD_resetCCtx_internal: pledgedSrcSize=%u, wlog=%u\00", align 1
@ZSTD_BLOCKSIZE_MAX = common dso_local global i64 0, align 8
@WILDCOPY_OVERLENGTH = common dso_local global i64 0, align 8
@ZSTDb_buffered = common dso_local global i64 0, align 8
@ZSTDirp_continue = common dso_local global i32 0, align 4
@ZSTDirp_reset = common dso_local global i32 0, align 4
@HUF_WORKSPACE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Need %zuKB workspace, including %zuKB for match state, and %zuKB for buffers\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"windowSize: %zu - blockSize: %zu\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Resize workspaceSize from %zuKB to %zuKB\00", align 1
@memory_allocation = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"static cctx : no resize\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"reserving object space\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"couldn't allocate prevCBlock\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"couldn't allocate nextCBlock\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"couldn't allocate entropyWorkspace\00", align 1
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [38 x i8] c"pledged content size : %u ; flag : %u\00", align 1
@ZSTDcs_init = common dso_local global i32 0, align 4
@ZSTD_resetTarget_CCtx = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [54 x i8] c"wksp: finished allocating, %zd bytes remain available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*, %struct.TYPE_23__*, i64, i32, i64)* @ZSTD_resetCCtx_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_resetCCtx_internal(%struct.TYPE_24__* %0, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 %4, i64* %9, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 21
  store i32* %33, i32** %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %37)
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %40 = bitcast %struct.TYPE_25__* %39 to { i64, i32 }*
  %41 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %40, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ZSTD_checkCParams(i64 %42, i32 %44)
  %46 = call i32 @ZSTD_isError(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %83

57:                                               ; preds = %5
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %60 = call i32 @ZSTD_ldm_adjustParameters(%struct.TYPE_18__* %58, %struct.TYPE_25__* %59)
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp uge i64 %63, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %72, 32
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ZSTD_rollingHash_primePower(i32 %78)
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 9
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 3
  store i32 %79, i32* %82, align 8
  br label %83

83:                                               ; preds = %57, %5
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = shl i64 1, %86
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @MIN(i64 %87, i64 %88)
  %90 = call i64 @MAX(i32 1, i64 %89)
  store i64 %90, i64* %11, align 8
  %91 = load i64, i64* @ZSTD_BLOCKSIZE_MAX, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i64 @MIN(i64 %91, i64 %92)
  store i64 %93, i64* %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 3
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 3, i32 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %12, align 8
  %102 = load i64, i64* %13, align 8
  %103 = udiv i64 %101, %102
  store i64 %103, i64* %14, align 8
  %104 = load i64, i64* @WILDCOPY_OVERLENGTH, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %104, %105
  %107 = call i32 @ZSTD_cwksp_alloc_size(i64 %106)
  %108 = load i64, i64* %14, align 8
  %109 = mul i64 %108, 4
  %110 = call i32 @ZSTD_cwksp_alloc_size(i64 %109)
  %111 = add nsw i32 %107, %110
  %112 = load i64, i64* %14, align 8
  %113 = mul i64 %112, 4
  %114 = call i32 @ZSTD_cwksp_alloc_size(i64 %113)
  %115 = mul nsw i32 3, %114
  %116 = add nsw i32 %111, %115
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %15, align 8
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @ZSTDb_buffered, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %83
  %122 = load i64, i64* %12, align 8
  %123 = call i32 @ZSTD_compressBound(i64 %122)
  %124 = add nsw i32 %123, 1
  br label %126

125:                                              ; preds = %83
  br label %126

126:                                              ; preds = %125, %121
  %127 = phi i32 [ %124, %121 ], [ 0, %125 ]
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %16, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* @ZSTDb_buffered, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i64, i64* %11, align 8
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %133, %134
  br label %137

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %132
  %138 = phi i64 [ %135, %132 ], [ 0, %136 ]
  store i64 %138, i64* %17, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %140 = call i64 @ZSTD_sizeof_matchState(%struct.TYPE_25__* %139, i32 1)
  store i64 %140, i64* %18, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %142 = load i64, i64* %12, align 8
  %143 = call i64 @ZSTD_ldm_getMaxNbSeq(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %141, i64 %142)
  store i64 %143, i64* %19, align 8
  %144 = load i32, i32* @ZSTDirp_continue, align 4
  store i32 %144, i32* %20, align 4
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 11
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @ZSTD_indexTooCloseToMax(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %137
  %153 = load i32, i32* @ZSTDirp_reset, align 4
  store i32 %153, i32* %20, align 4
  br label %154

154:                                              ; preds = %152, %137
  %155 = load i32*, i32** %10, align 8
  %156 = call i32 @ZSTD_cwksp_bump_oversized_duration(i32* %155, i32 0)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 20
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %154
  %162 = call i32 @ZSTD_cwksp_alloc_size(i64 328)
  br label %164

163:                                              ; preds = %154
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = sext i32 %165 to i64
  store i64 %166, i64* %21, align 8
  %167 = load i32, i32* @HUF_WORKSPACE_SIZE, align 4
  %168 = sext i32 %167 to i64
  %169 = call i32 @ZSTD_cwksp_alloc_size(i64 %168)
  %170 = sext i32 %169 to i64
  store i64 %170, i64* %22, align 8
  %171 = call i32 @ZSTD_cwksp_alloc_size(i64 4)
  %172 = mul nsw i32 2, %171
  %173 = sext i32 %172 to i64
  store i64 %173, i64* %23, align 8
  %174 = load i64, i64* %17, align 8
  %175 = call i32 @ZSTD_cwksp_alloc_size(i64 %174)
  %176 = load i64, i64* %16, align 8
  %177 = call i32 @ZSTD_cwksp_alloc_size(i64 %176)
  %178 = add nsw i32 %175, %177
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %24, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %181 = call i64 @ZSTD_ldm_getTableSize(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %180)
  store i64 %181, i64* %25, align 8
  %182 = load i64, i64* %19, align 8
  %183 = mul i64 %182, 4
  %184 = call i32 @ZSTD_cwksp_alloc_size(i64 %183)
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %26, align 8
  %186 = load i64, i64* %21, align 8
  %187 = load i64, i64* %22, align 8
  %188 = add i64 %186, %187
  %189 = load i64, i64* %23, align 8
  %190 = add i64 %188, %189
  %191 = load i64, i64* %25, align 8
  %192 = add i64 %190, %191
  %193 = load i64, i64* %26, align 8
  %194 = add i64 %192, %193
  %195 = load i64, i64* %18, align 8
  %196 = add i64 %194, %195
  %197 = load i64, i64* %15, align 8
  %198 = add i64 %196, %197
  %199 = load i64, i64* %24, align 8
  %200 = add i64 %198, %199
  store i64 %200, i64* %27, align 8
  %201 = load i32*, i32** %10, align 8
  %202 = call i32 @ZSTD_cwksp_sizeof(i32* %201)
  %203 = sext i32 %202 to i64
  %204 = load i64, i64* %27, align 8
  %205 = icmp ult i64 %203, %204
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %28, align 4
  %207 = load i32*, i32** %10, align 8
  %208 = load i64, i64* %27, align 8
  %209 = call i32 @ZSTD_cwksp_check_wasteful(i32* %207, i64 %208)
  store i32 %209, i32* %29, align 4
  %210 = load i64, i64* %27, align 8
  %211 = lshr i64 %210, 10
  %212 = load i64, i64* %18, align 8
  %213 = lshr i64 %212, 10
  %214 = load i64, i64* %24, align 8
  %215 = lshr i64 %214, 10
  %216 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %211, i64 %213, i64 %215)
  %217 = load i64, i64* %11, align 8
  %218 = load i64, i64* %12, align 8
  %219 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %217, i64 %218)
  %220 = load i32, i32* %28, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %164
  %223 = load i32, i32* %29, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %299

225:                                              ; preds = %222, %164
  %226 = load i32*, i32** %10, align 8
  %227 = call i32 @ZSTD_cwksp_sizeof(i32* %226)
  %228 = ashr i32 %227, 10
  %229 = load i64, i64* %27, align 8
  %230 = lshr i64 %229, 10
  %231 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %228, i64 %230)
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 20
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* @memory_allocation, align 4
  %236 = call i32 @RETURN_ERROR_IF(i64 %234, i32 %235, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %237 = load i32, i32* @ZSTDirp_reset, align 4
  store i32 %237, i32* %20, align 4
  %238 = load i32*, i32** %10, align 8
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i32 0, i32 19
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @ZSTD_cwksp_free(i32* %238, i32 %241)
  %243 = load i32*, i32** %10, align 8
  %244 = load i64, i64* %27, align 8
  %245 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %245, i32 0, i32 19
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @ZSTD_cwksp_create(i32* %243, i64 %244, i32 %247)
  %249 = call i32 @FORWARD_IF_ERROR(i32 %248)
  %250 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %251 = load i32*, i32** %10, align 8
  %252 = call i32 @ZSTD_cwksp_check_available(i32* %251, i32 8)
  %253 = call i32 @assert(i32 %252)
  %254 = load i32*, i32** %10, align 8
  %255 = call i64 @ZSTD_cwksp_reserve_object(i32* %254, i32 4)
  %256 = inttoptr i64 %255 to i32*
  %257 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %257, i32 0, i32 11
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 1
  store i32* %256, i32** %259, align 8
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 11
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = icmp eq i32* %263, null
  %265 = zext i1 %264 to i32
  %266 = sext i32 %265 to i64
  %267 = load i32, i32* @memory_allocation, align 4
  %268 = call i32 @RETURN_ERROR_IF(i64 %266, i32 %267, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %269 = load i32*, i32** %10, align 8
  %270 = call i64 @ZSTD_cwksp_reserve_object(i32* %269, i32 4)
  %271 = inttoptr i64 %270 to i32*
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 11
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 2
  store i32* %271, i32** %274, align 8
  %275 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %275, i32 0, i32 11
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 2
  %278 = load i32*, i32** %277, align 8
  %279 = icmp eq i32* %278, null
  %280 = zext i1 %279 to i32
  %281 = sext i32 %280 to i64
  %282 = load i32, i32* @memory_allocation, align 4
  %283 = call i32 @RETURN_ERROR_IF(i64 %281, i32 %282, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %284 = load i32*, i32** %10, align 8
  %285 = load i32, i32* @HUF_WORKSPACE_SIZE, align 4
  %286 = call i64 @ZSTD_cwksp_reserve_object(i32* %284, i32 %285)
  %287 = inttoptr i64 %286 to i64*
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 1
  store i64* %287, i64** %289, align 8
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 11
  %292 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %291, i32 0, i32 2
  %293 = load i32*, i32** %292, align 8
  %294 = icmp eq i32* %293, null
  %295 = zext i1 %294 to i32
  %296 = sext i32 %295 to i64
  %297 = load i32, i32* @memory_allocation, align 4
  %298 = call i32 @RETURN_ERROR_IF(i64 %296, i32 %297, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %299

299:                                              ; preds = %225, %222
  %300 = load i32*, i32** %10, align 8
  %301 = call i32 @ZSTD_cwksp_clear(i32* %300)
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 16
  %304 = bitcast %struct.TYPE_23__* %303 to i8*
  %305 = bitcast %struct.TYPE_23__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %304, i8* align 8 %305, i64 64, i1 false)
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 11
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %311 = bitcast %struct.TYPE_25__* %309 to i8*
  %312 = bitcast %struct.TYPE_25__* %310 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %311, i8* align 8 %312, i64 16, i1 false)
  %313 = load i64, i64* %7, align 8
  %314 = add nsw i64 %313, 1
  %315 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 2
  store i64 %314, i64* %316, align 8
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %317, i32 0, i32 18
  store i64 0, i64* %318, align 8
  %319 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %320 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %319, i32 0, i32 17
  store i64 0, i64* %320, align 8
  %321 = load i64, i64* %7, align 8
  %322 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %299
  %325 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %325, i32 0, i32 16
  %327 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  store i32 0, i32* %328, align 8
  br label %329

329:                                              ; preds = %324, %299
  %330 = load i64, i64* %7, align 8
  %331 = trunc i64 %330 to i32
  %332 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %333 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %332, i32 0, i32 16
  %334 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %333, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %331, i32 %336)
  %338 = load i64, i64* %12, align 8
  %339 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %339, i32 0, i32 3
  store i64 %338, i64* %340, align 8
  %341 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %341, i32 0, i32 15
  %343 = call i32 @XXH64_reset(i32* %342, i32 0)
  %344 = load i32, i32* @ZSTDcs_init, align 4
  %345 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %345, i32 0, i32 14
  store i32 %344, i32* %346, align 8
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 13
  store i64 0, i64* %348, align 8
  %349 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %349, i32 0, i32 11
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 1
  %352 = load i32*, i32** %351, align 8
  %353 = call i32 @ZSTD_reset_compressedBlockState(i32* %352)
  %354 = load i32*, i32** %10, align 8
  %355 = load i64, i64* %12, align 8
  %356 = load i64, i64* @WILDCOPY_OVERLENGTH, align 8
  %357 = add i64 %355, %356
  %358 = call i8* @ZSTD_cwksp_reserve_buffer(i32* %354, i64 %357)
  %359 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %359, i32 0, i32 12
  %361 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %360, i32 0, i32 6
  store i8* %358, i8** %361, align 8
  %362 = load i64, i64* %12, align 8
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 12
  %365 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %364, i32 0, i32 0
  store i64 %362, i64* %365, align 8
  %366 = load i64, i64* %17, align 8
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 4
  store i64 %366, i64* %368, align 8
  %369 = load i32*, i32** %10, align 8
  %370 = load i64, i64* %17, align 8
  %371 = call i8* @ZSTD_cwksp_reserve_buffer(i32* %369, i64 %370)
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i32 0, i32 5
  store i8* %371, i8** %373, align 8
  %374 = load i64, i64* %16, align 8
  %375 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 6
  store i64 %374, i64* %376, align 8
  %377 = load i32*, i32** %10, align 8
  %378 = load i64, i64* %16, align 8
  %379 = call i8* @ZSTD_cwksp_reserve_buffer(i32* %377, i64 %378)
  %380 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %381 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %380, i32 0, i32 7
  store i8* %379, i8** %381, align 8
  %382 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %382, i32 0, i32 3
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %408

386:                                              ; preds = %329
  %387 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = sub i64 %389, %392
  %394 = shl i64 1, %393
  store i64 %394, i64* %30, align 8
  %395 = load i32*, i32** %10, align 8
  %396 = load i64, i64* %30, align 8
  %397 = call i8* @ZSTD_cwksp_reserve_buffer(i32* %395, i64 %396)
  %398 = bitcast i8* %397 to i32*
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 9
  %401 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %400, i32 0, i32 2
  store i32* %398, i32** %401, align 8
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %403, i32 0, i32 2
  %405 = load i32*, i32** %404, align 8
  %406 = load i64, i64* %30, align 8
  %407 = call i32 @memset(i32* %405, i32 0, i64 %406)
  br label %408

408:                                              ; preds = %386, %329
  %409 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %410 = call i32 @ZSTD_referenceExternalSequences(%struct.TYPE_24__* %409, i32* null, i32 0)
  %411 = load i64, i64* %14, align 8
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 12
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i32 0, i32 1
  store i64 %411, i64* %414, align 8
  %415 = load i32*, i32** %10, align 8
  %416 = load i64, i64* %14, align 8
  %417 = mul i64 %416, 4
  %418 = call i8* @ZSTD_cwksp_reserve_buffer(i32* %415, i64 %417)
  %419 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %420 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %419, i32 0, i32 12
  %421 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %420, i32 0, i32 5
  store i8* %418, i8** %421, align 8
  %422 = load i32*, i32** %10, align 8
  %423 = load i64, i64* %14, align 8
  %424 = mul i64 %423, 4
  %425 = call i8* @ZSTD_cwksp_reserve_buffer(i32* %422, i64 %424)
  %426 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %427 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %426, i32 0, i32 12
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 4
  store i8* %425, i8** %428, align 8
  %429 = load i32*, i32** %10, align 8
  %430 = load i64, i64* %14, align 8
  %431 = mul i64 %430, 4
  %432 = call i8* @ZSTD_cwksp_reserve_buffer(i32* %429, i64 %431)
  %433 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %433, i32 0, i32 12
  %435 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %434, i32 0, i32 3
  store i8* %432, i8** %435, align 8
  %436 = load i32*, i32** %10, align 8
  %437 = load i64, i64* %14, align 8
  %438 = mul i64 %437, 4
  %439 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %436, i64 %438)
  %440 = inttoptr i64 %439 to i32*
  %441 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %441, i32 0, i32 12
  %443 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %442, i32 0, i32 2
  store i32* %440, i32** %443, align 8
  %444 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 11
  %446 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %445, i32 0, i32 0
  %447 = load i32*, i32** %10, align 8
  %448 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 1
  %449 = load i32, i32* %8, align 4
  %450 = load i32, i32* %20, align 4
  %451 = load i32, i32* @ZSTD_resetTarget_CCtx, align 4
  %452 = call i32 @ZSTD_reset_matchState(%struct.TYPE_26__* %446, i32* %447, %struct.TYPE_25__* %448, i32 %449, i32 %450, i32 %451)
  %453 = call i32 @FORWARD_IF_ERROR(i32 %452)
  %454 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %496

458:                                              ; preds = %408
  %459 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = shl i64 1, %461
  store i64 %462, i64* %31, align 8
  %463 = load i32*, i32** %10, align 8
  %464 = load i64, i64* %31, align 8
  %465 = mul i64 %464, 4
  %466 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %463, i64 %465)
  %467 = inttoptr i64 %466 to i32*
  %468 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %469 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %468, i32 0, i32 9
  %470 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %469, i32 0, i32 1
  store i32* %467, i32** %470, align 8
  %471 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %471, i32 0, i32 9
  %473 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %472, i32 0, i32 1
  %474 = load i32*, i32** %473, align 8
  %475 = load i64, i64* %31, align 8
  %476 = mul i64 %475, 4
  %477 = call i32 @memset(i32* %474, i32 0, i64 %476)
  %478 = load i32*, i32** %10, align 8
  %479 = load i64, i64* %19, align 8
  %480 = mul i64 %479, 4
  %481 = call i64 @ZSTD_cwksp_reserve_aligned(i32* %478, i64 %480)
  %482 = inttoptr i64 %481 to i32*
  %483 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %483, i32 0, i32 10
  store i32* %482, i32** %484, align 8
  %485 = load i64, i64* %19, align 8
  %486 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %486, i32 0, i32 8
  store i64 %485, i64* %487, align 8
  %488 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %488, i32 0, i32 9
  %490 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %489, i32 0, i32 0
  %491 = call i32 @memset(i32* %490, i32 0, i64 4)
  %492 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %493 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %492, i32 0, i32 9
  %494 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %493, i32 0, i32 0
  %495 = call i32 @ZSTD_window_clear(i32* %494)
  br label %496

496:                                              ; preds = %458, %408
  %497 = load i32*, i32** %10, align 8
  %498 = call i32 @ZSTD_cwksp_available_space(i32* %497)
  %499 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i64 0, i64 0), i32 %498)
  ret i64 0
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_checkCParams(i64, i32) #1

declare dso_local i32 @ZSTD_ldm_adjustParameters(%struct.TYPE_18__*, %struct.TYPE_25__*) #1

declare dso_local i32 @ZSTD_rollingHash_primePower(i32) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @ZSTD_cwksp_alloc_size(i64) #1

declare dso_local i32 @ZSTD_compressBound(i64) #1

declare dso_local i64 @ZSTD_sizeof_matchState(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ZSTD_ldm_getMaxNbSeq(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8, i64) #1

declare dso_local i64 @ZSTD_indexTooCloseToMax(i32) #1

declare dso_local i32 @ZSTD_cwksp_bump_oversized_duration(i32*, i32) #1

declare dso_local i64 @ZSTD_ldm_getTableSize(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

declare dso_local i32 @ZSTD_cwksp_sizeof(i32*) #1

declare dso_local i32 @ZSTD_cwksp_check_wasteful(i32*, i64) #1

declare dso_local i32 @RETURN_ERROR_IF(i64, i32, i8*) #1

declare dso_local i32 @ZSTD_cwksp_free(i32*, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_cwksp_create(i32*, i64, i32) #1

declare dso_local i32 @ZSTD_cwksp_check_available(i32*, i32) #1

declare dso_local i64 @ZSTD_cwksp_reserve_object(i32*, i32) #1

declare dso_local i32 @ZSTD_cwksp_clear(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @XXH64_reset(i32*, i32) #1

declare dso_local i32 @ZSTD_reset_compressedBlockState(i32*) #1

declare dso_local i8* @ZSTD_cwksp_reserve_buffer(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @ZSTD_referenceExternalSequences(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i64 @ZSTD_cwksp_reserve_aligned(i32*, i64) #1

declare dso_local i32 @ZSTD_reset_matchState(%struct.TYPE_26__*, i32*, %struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @ZSTD_window_clear(i32*) #1

declare dso_local i32 @ZSTD_cwksp_available_space(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
