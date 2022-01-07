; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_compressionJob.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstdmt_compress.c_ZSTDMT_compressionJob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_18__, i32, i32*, %struct.TYPE_20__, i32, %struct.TYPE_21__ }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64, i32* }
%struct.TYPE_20__ = type { i32, i32* }
%struct.TYPE_21__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { i32* }

@memory_allocation = common dso_local global i32 0, align 4
@ZSTD_dct_auto = common dso_local global i32 0, align 4
@ZSTD_dtlm_fast = common dso_local global i32 0, align 4
@ZSTD_c_forceMaxWindow = common dso_local global i32 0, align 4
@ZSTD_dct_rawContent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"ZSTDMT_compressionJob: flush and overwrite %u bytes of frame header (not first job)\00", align 1
@ZSTD_BLOCKSIZE_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"ZSTDMT_compressionJob: compress %u bytes in %i blocks\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"ZSTDMT_compressionJob: compress new block : cSize==%u bytes (total: %u)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Finished with prefix: %zx\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Finished with source: %zx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ZSTDMT_compressionJob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ZSTDMT_compressionJob(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_19__, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %26 = load i8*, i8** %2, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %27, %struct.TYPE_22__** %3, align 8
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 16
  %30 = bitcast %struct.TYPE_21__* %4 to i8*
  %31 = bitcast %struct.TYPE_21__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = call i32* @ZSTDMT_getCCtx(i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @ZSTDMT_getSeq(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  store i32* %39, i32** %40, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 14
  %43 = bitcast %struct.TYPE_20__* %7 to i8*
  %44 = bitcast %struct.TYPE_20__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 16, i1 false)
  store i64 0, i64* %8, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %1
  %48 = load i32, i32* @memory_allocation, align 4
  %49 = call i64 @ERROR(i32 %48)
  %50 = call i32 @JOB_ERROR(i64 %49)
  br label %51

51:                                               ; preds = %47, %1
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %51
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 15
  %58 = load i32, i32* %57, align 8
  %59 = call { i32, i32* } @ZSTDMT_getBuffer(i32 %58)
  %60 = bitcast %struct.TYPE_20__* %9 to { i32, i32* }*
  %61 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %60, i32 0, i32 0
  %62 = extractvalue { i32, i32* } %59, 0
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %60, i32 0, i32 1
  %64 = extractvalue { i32, i32* } %59, 1
  store i32* %64, i32** %63, align 8
  %65 = bitcast %struct.TYPE_20__* %7 to i8*
  %66 = bitcast %struct.TYPE_20__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 16, i1 false)
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %55
  %71 = load i32, i32* @memory_allocation, align 4
  %72 = call i64 @ERROR(i32 %71)
  %73 = call i32 @JOB_ERROR(i64 %72)
  br label %74

74:                                               ; preds = %70, %55
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 14
  %77 = bitcast %struct.TYPE_20__* %76 to i8*
  %78 = bitcast %struct.TYPE_20__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  br label %79

79:                                               ; preds = %74, %51
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @memory_allocation, align 4
  %90 = call i64 @ERROR(i32 %89)
  %91 = call i32 @JOB_ERROR(i64 %90)
  br label %92

92:                                               ; preds = %88, %84, %79
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  br label %100

100:                                              ; preds = %97, %92
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 13
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %129

107:                                              ; preds = %100
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* @ZSTD_dct_auto, align 4
  %110 = load i32, i32* @ZSTD_dtlm_fast, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 13
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = call i64 @ZSTD_compressBegin_advanced_internal(i32* %108, i32* null, i64 0, i32 %109, i32 %110, i32* %113, %struct.TYPE_21__* %4, i64 %116)
  store i64 %117, i64* %10, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @assert(i32 %120)
  %122 = load i64, i64* %10, align 8
  %123 = call i64 @ZSTD_isError(i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %107
  %126 = load i64, i64* %10, align 8
  %127 = call i32 @JOB_ERROR(i64 %126)
  br label %128

128:                                              ; preds = %125, %107
  br label %180

129:                                              ; preds = %100
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  br label %143

138:                                              ; preds = %129
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  br label %143

143:                                              ; preds = %138, %134
  %144 = phi i64 [ %137, %134 ], [ %142, %138 ]
  store i64 %144, i64* %11, align 8
  %145 = load i32, i32* @ZSTD_c_forceMaxWindow, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  %152 = call i64 @ZSTD_CCtxParams_setParameter(%struct.TYPE_21__* %4, i32 %145, i32 %151)
  store i64 %152, i64* %12, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i64 @ZSTD_isError(i64 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %143
  %157 = load i64, i64* %12, align 8
  %158 = call i32 @JOB_ERROR(i64 %157)
  br label %159

159:                                              ; preds = %156, %143
  %160 = load i32*, i32** %5, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 11
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 11
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* @ZSTD_dct_rawContent, align 4
  %170 = load i32, i32* @ZSTD_dtlm_fast, align 4
  %171 = load i64, i64* %11, align 8
  %172 = call i64 @ZSTD_compressBegin_advanced_internal(i32* %160, i32* %164, i64 %168, i32 %169, i32 %170, i32* null, %struct.TYPE_21__* %4, i64 %171)
  store i64 %172, i64* %13, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i64 @ZSTD_isError(i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %159
  %177 = load i64, i64* %13, align 8
  %178 = call i32 @JOB_ERROR(i64 %177)
  br label %179

179:                                              ; preds = %176, %159
  br label %180

180:                                              ; preds = %179, %128
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 12
  %183 = load i32, i32* %182, align 8
  %184 = load i32*, i32** %5, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = bitcast %struct.TYPE_15__* %186 to { i64, i32* }*
  %193 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %192, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @ZSTDMT_serialState_update(i32 %183, i32* %184, i32* %191, i64 %194, i32* %196, i64 %189)
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %224, label %202

202:                                              ; preds = %180
  %203 = load i32*, i32** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @ZSTD_compressContinue(i32* %203, i32* %205, i32 %207, i32* %211, i64 0)
  store i64 %212, i64* %14, align 8
  %213 = load i64, i64* %14, align 8
  %214 = call i64 @ZSTD_isError(i64 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %202
  %217 = load i64, i64* %14, align 8
  %218 = call i32 @JOB_ERROR(i64 %217)
  br label %219

219:                                              ; preds = %216, %202
  %220 = load i64, i64* %14, align 8
  %221 = call i32 (i32, i8*, i64, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i64 %220)
  %222 = load i32*, i32** %5, align 8
  %223 = call i32 @ZSTD_invalidateRepCodes(i32* %222)
  br label %224

224:                                              ; preds = %219, %180
  %225 = load i32, i32* @ZSTD_BLOCKSIZE_MAX, align 4
  %226 = mul nsw i32 4, %225
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %15, align 8
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* %15, align 8
  %233 = sub i64 %232, 1
  %234 = add i64 %231, %233
  %235 = load i64, i64* %15, align 8
  %236 = udiv i64 %234, %235
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %16, align 4
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  store i32* %241, i32** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  store i32* %243, i32** %18, align 8
  %244 = load i32*, i32** %18, align 8
  store i32* %244, i32** %19, align 8
  %245 = load i32*, i32** %19, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %245, i64 %248
  store i32* %249, i32** %20, align 8
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @INT_MAX, align 8
  %255 = load i64, i64* %15, align 8
  %256 = mul i64 %254, %255
  %257 = icmp ult i64 %253, %256
  %258 = zext i1 %257 to i32
  %259 = call i32 @assert(i32 %258)
  %260 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %260, i32 0, i32 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = call i32 (i32, i8*, i64, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %263, i32 %264)
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 3
  %268 = load i64, i64* %267, align 8
  %269 = icmp eq i64 %268, 0
  %270 = zext i1 %269 to i32
  %271 = call i32 @assert(i32 %270)
  store i32 1, i32* %21, align 4
  br label %272

272:                                              ; preds = %332, %224
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* %16, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %335

276:                                              ; preds = %272
  %277 = load i32*, i32** %5, align 8
  %278 = load i32*, i32** %19, align 8
  %279 = load i32*, i32** %20, align 8
  %280 = load i32*, i32** %19, align 8
  %281 = ptrtoint i32* %279 to i64
  %282 = ptrtoint i32* %280 to i64
  %283 = sub i64 %281, %282
  %284 = sdiv exact i64 %283, 4
  %285 = trunc i64 %284 to i32
  %286 = load i32*, i32** %17, align 8
  %287 = load i64, i64* %15, align 8
  %288 = call i64 @ZSTD_compressContinue(i32* %277, i32* %278, i32 %285, i32* %286, i64 %287)
  store i64 %288, i64* %22, align 8
  %289 = load i64, i64* %22, align 8
  %290 = call i64 @ZSTD_isError(i64 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %276
  %293 = load i64, i64* %22, align 8
  %294 = call i32 @JOB_ERROR(i64 %293)
  br label %295

295:                                              ; preds = %292, %276
  %296 = load i64, i64* %15, align 8
  %297 = load i32*, i32** %17, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 %296
  store i32* %298, i32** %17, align 8
  %299 = load i64, i64* %22, align 8
  %300 = load i32*, i32** %19, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 %299
  store i32* %301, i32** %19, align 8
  %302 = load i32*, i32** %19, align 8
  %303 = load i32*, i32** %20, align 8
  %304 = icmp ult i32* %302, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 @assert(i32 %305)
  %307 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %307, i32 0, i32 6
  %309 = call i32 @ZSTD_PTHREAD_MUTEX_LOCK(i32* %308)
  %310 = load i64, i64* %22, align 8
  %311 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %311, i32 0, i32 3
  %313 = load i64, i64* %312, align 8
  %314 = add i64 %313, %310
  store i64 %314, i64* %312, align 8
  %315 = load i64, i64* %15, align 8
  %316 = load i32, i32* %21, align 4
  %317 = sext i32 %316 to i64
  %318 = mul i64 %315, %317
  %319 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %319, i32 0, i32 4
  store i64 %318, i64* %320, align 8
  %321 = load i64, i64* %22, align 8
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = call i32 (i32, i8*, i64, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i64 %321, i64 %324)
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %326, i32 0, i32 7
  %328 = call i32 @ZSTD_pthread_cond_signal(i32* %327)
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i32 0, i32 6
  %331 = call i32 @ZSTD_pthread_mutex_unlock(i32* %330)
  br label %332

332:                                              ; preds = %295
  %333 = load i32, i32* %21, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %21, align 4
  br label %272

335:                                              ; preds = %272
  %336 = load i64, i64* %15, align 8
  %337 = icmp ugt i64 %336, 0
  %338 = zext i1 %337 to i32
  %339 = call i32 @assert(i32 %338)
  %340 = load i64, i64* %15, align 8
  %341 = load i64, i64* %15, align 8
  %342 = sub i64 %341, 1
  %343 = and i64 %340, %342
  %344 = icmp eq i64 %343, 0
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load i32, i32* %16, align 4
  %348 = icmp sgt i32 %347, 0
  %349 = zext i1 %348 to i32
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 5
  %352 = load i32, i32* %351, align 8
  %353 = or i32 %349, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %421

355:                                              ; preds = %335
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %356, i32 0, i32 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* %15, align 8
  %361 = sub i64 %360, 1
  %362 = and i64 %359, %361
  store i64 %362, i64* %23, align 8
  %363 = load i64, i64* %23, align 8
  %364 = icmp eq i64 %363, 0
  %365 = zext i1 %364 to i32
  %366 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = load i64, i64* %15, align 8
  %371 = icmp uge i64 %369, %370
  %372 = zext i1 %371 to i32
  %373 = and i32 %365, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %355
  %376 = load i64, i64* %15, align 8
  br label %379

377:                                              ; preds = %355
  %378 = load i64, i64* %23, align 8
  br label %379

379:                                              ; preds = %377, %375
  %380 = phi i64 [ %376, %375 ], [ %378, %377 ]
  store i64 %380, i64* %24, align 8
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %398

385:                                              ; preds = %379
  %386 = load i32*, i32** %5, align 8
  %387 = load i32*, i32** %19, align 8
  %388 = load i32*, i32** %20, align 8
  %389 = load i32*, i32** %19, align 8
  %390 = ptrtoint i32* %388 to i64
  %391 = ptrtoint i32* %389 to i64
  %392 = sub i64 %390, %391
  %393 = sdiv exact i64 %392, 4
  %394 = trunc i64 %393 to i32
  %395 = load i32*, i32** %17, align 8
  %396 = load i64, i64* %24, align 8
  %397 = call i64 @ZSTD_compressEnd(i32* %386, i32* %387, i32 %394, i32* %395, i64 %396)
  br label %411

398:                                              ; preds = %379
  %399 = load i32*, i32** %5, align 8
  %400 = load i32*, i32** %19, align 8
  %401 = load i32*, i32** %20, align 8
  %402 = load i32*, i32** %19, align 8
  %403 = ptrtoint i32* %401 to i64
  %404 = ptrtoint i32* %402 to i64
  %405 = sub i64 %403, %404
  %406 = sdiv exact i64 %405, 4
  %407 = trunc i64 %406 to i32
  %408 = load i32*, i32** %17, align 8
  %409 = load i64, i64* %24, align 8
  %410 = call i64 @ZSTD_compressContinue(i32* %399, i32* %400, i32 %407, i32* %408, i64 %409)
  br label %411

411:                                              ; preds = %398, %385
  %412 = phi i64 [ %397, %385 ], [ %410, %398 ]
  store i64 %412, i64* %25, align 8
  %413 = load i64, i64* %25, align 8
  %414 = call i64 @ZSTD_isError(i64 %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %411
  %417 = load i64, i64* %25, align 8
  %418 = call i32 @JOB_ERROR(i64 %417)
  br label %419

419:                                              ; preds = %416, %411
  %420 = load i64, i64* %25, align 8
  store i64 %420, i64* %8, align 8
  br label %421

421:                                              ; preds = %419, %335
  br label %422

422:                                              ; preds = %421
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %423, i32 0, i32 12
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %427 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 3
  %431 = load i64, i64* %430, align 8
  %432 = call i32 @ZSTDMT_serialState_ensureFinished(i32 %425, i64 %428, i64 %431)
  %433 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %434 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %433, i32 0, i32 11
  %435 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = icmp sgt i64 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %422
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 11
  %441 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %440, i32 0, i32 1
  %442 = load i32*, i32** %441, align 8
  %443 = ptrtoint i32* %442 to i64
  %444 = call i32 (i32, i8*, i64, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %443)
  br label %445

445:                                              ; preds = %438, %422
  %446 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %446, i32 0, i32 8
  %448 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %447, i32 0, i32 1
  %449 = load i32*, i32** %448, align 8
  %450 = ptrtoint i32* %449 to i64
  %451 = call i32 (i32, i8*, i64, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i64 %450)
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %452, i32 0, i32 10
  %454 = load i32, i32* %453, align 4
  %455 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %6, i32 0, i32 0
  %456 = load i32*, i32** %455, align 8
  %457 = call i32 @ZSTDMT_releaseSeq(i32 %454, i32* %456)
  %458 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %458, i32 0, i32 9
  %460 = load i32, i32* %459, align 8
  %461 = load i32*, i32** %5, align 8
  %462 = call i32 @ZSTDMT_releaseCCtx(i32 %460, i32* %461)
  %463 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %464 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %463, i32 0, i32 6
  %465 = call i32 @ZSTD_PTHREAD_MUTEX_LOCK(i32* %464)
  %466 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %467 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %466, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = call i64 @ZSTD_isError(i64 %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %445
  %472 = load i64, i64* %8, align 8
  %473 = icmp eq i64 %472, 0
  %474 = zext i1 %473 to i32
  %475 = call i32 @assert(i32 %474)
  br label %476

476:                                              ; preds = %471, %445
  %477 = load i64, i64* %8, align 8
  %478 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %478, i32 0, i32 3
  %480 = load i64, i64* %479, align 8
  %481 = add i64 %480, %477
  store i64 %481, i64* %479, align 8
  %482 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %482, i32 0, i32 8
  %484 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %486, i32 0, i32 4
  store i64 %485, i64* %487, align 8
  %488 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %489 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %488, i32 0, i32 7
  %490 = call i32 @ZSTD_pthread_cond_signal(i32* %489)
  %491 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %491, i32 0, i32 6
  %493 = call i32 @ZSTD_pthread_mutex_unlock(i32* %492)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @ZSTDMT_getCCtx(i32) #2

declare dso_local i32* @ZSTDMT_getSeq(i32) #2

declare dso_local i32 @JOB_ERROR(i64) #2

declare dso_local i64 @ERROR(i32) #2

declare dso_local { i32, i32* } @ZSTDMT_getBuffer(i32) #2

declare dso_local i64 @ZSTD_compressBegin_advanced_internal(i32*, i32*, i64, i32, i32, i32*, %struct.TYPE_21__*, i64) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @ZSTD_isError(i64) #2

declare dso_local i64 @ZSTD_CCtxParams_setParameter(%struct.TYPE_21__*, i32, i32) #2

declare dso_local i32 @ZSTDMT_serialState_update(i32, i32*, i32*, i64, i32*, i64) #2

declare dso_local i64 @ZSTD_compressContinue(i32*, i32*, i32, i32*, i64) #2

declare dso_local i32 @DEBUGLOG(i32, i8*, i64, ...) #2

declare dso_local i32 @ZSTD_invalidateRepCodes(i32*) #2

declare dso_local i32 @ZSTD_PTHREAD_MUTEX_LOCK(i32*) #2

declare dso_local i32 @ZSTD_pthread_cond_signal(i32*) #2

declare dso_local i32 @ZSTD_pthread_mutex_unlock(i32*) #2

declare dso_local i64 @ZSTD_compressEnd(i32*, i32*, i32, i32*, i64) #2

declare dso_local i32 @ZSTDMT_serialState_ensureFinished(i32, i64, i64) #2

declare dso_local i32 @ZSTDMT_releaseSeq(i32, i32*) #2

declare dso_local i32 @ZSTDMT_releaseCCtx(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
