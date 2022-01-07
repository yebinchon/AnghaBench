; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder_mt.c_stream_encoder_mt_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder_mt.c_stream_encoder_mt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32*, i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i32, i64, i64, i32, %struct.TYPE_19__, i32*, %struct.TYPE_15__*, i32, i32, i32*, i32*, i64, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { i32, i64, i32 }

@UINT64_MAX = common dso_local global i64 0, align 8
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_CHECK_ID_MAX = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@LZMA_UNSUPPORTED_CHECK = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@stream_encode_mt = common dso_local global i32 0, align 4
@stream_encoder_mt_end = common dso_local global i32 0, align 4
@get_progress = common dso_local global i32 0, align 4
@LZMA_VLI_UNKNOWN = common dso_local global i64 0, align 8
@LZMA_NEXT_CODER_INIT = common dso_local global i32 0, align 4
@SEQ_STREAM_HEADER = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_18__*)* @stream_encoder_mt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_encoder_mt_init(%struct.TYPE_17__* %0, i32* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_18__*)* @stream_encoder_mt_init, %struct.TYPE_17__* %14, i32* %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %18 = call i32 @get_options(%struct.TYPE_18__* %17, i32* %8, i32** %9, i64* %10, i64* %11)
  %19 = call i32 @return_if_error(i32 %18)
  %20 = load i32*, i32** %9, align 8
  %21 = call i64 @lzma_raw_encoder_memusage(i32* %20)
  %22 = load i64, i64* @UINT64_MAX, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %263

26:                                               ; preds = %3
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @LZMA_CHECK_ID_MAX, align 4
  %32 = icmp ugt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %34, i32* %4, align 4
  br label %263

35:                                               ; preds = %26
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @lzma_check_is_supported(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @LZMA_UNSUPPORTED_CHECK, align 4
  store i32 %42, i32* %4, align 4
  br label %263

43:                                               ; preds = %35
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  store %struct.TYPE_16__* %46, %struct.TYPE_16__** %12, align 8
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %48 = icmp eq %struct.TYPE_16__* %47, null
  br i1 %48, label %49, label %114

49:                                               ; preds = %43
  %50 = load i32*, i32** %6, align 8
  %51 = call i8* @lzma_alloc(i32 144, i32* %50)
  %52 = bitcast i8* %51 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %12, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %54 = icmp eq %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %56, i32* %4, align 4
  br label %263

57:                                               ; preds = %49
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 3
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %60, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 18
  %63 = call i64 @mythread_mutex_init(i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @lzma_free(%struct.TYPE_16__* %66, i32* %67)
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %70, align 8
  %71 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %71, i32* %4, align 4
  br label %263

72:                                               ; preds = %57
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 19
  %75 = call i64 @mythread_cond_init(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 18
  %80 = call i32 @mythread_mutex_destroy(i32* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = call i32 @lzma_free(%struct.TYPE_16__* %81, i32* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %85, align 8
  %86 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %86, i32* %4, align 4
  br label %263

87:                                               ; preds = %72
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 2
  store i32* @stream_encode_mt, i32** %89, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  store i32* @stream_encoder_mt_end, i32** %91, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  store i32* @get_progress, i32** %93, align 8
  %94 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i64 %94, i64* %99, align 8
  %100 = load i32, i32* @LZMA_NEXT_CODER_INIT, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 17
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 7
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 10
  %107 = call i32 @memzero(i32* %106, i32 4)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 11
  store i32* null, i32** %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 13
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %87, %43
  %115 = load i32, i32* @SEQ_STREAM_HEADER, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 16
  store i32 %115, i32* %117, align 4
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  %121 = load i32, i32* @LZMA_OK, align 4
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 15
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 14
  store i32* null, i32** %125, align 8
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp sgt i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = call i32 @assert(i32 %130)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %174

139:                                              ; preds = %114
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = call i32 @threads_end(%struct.TYPE_16__* %140, i32* %141)
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 11
  store i32* null, i32** %144, align 8
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i32 0, i32* %146, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 13
  store i64 0, i64* %148, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 12
  store i32* null, i32** %150, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = mul i64 %154, 4
  %156 = trunc i64 %155 to i32
  %157 = load i32*, i32** %6, align 8
  %158 = call i8* @lzma_alloc(i32 %156, i32* %157)
  %159 = bitcast i8* %158 to i32*
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 11
  store i32* %159, i32** %161, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 11
  %164 = load i32*, i32** %163, align 8
  %165 = icmp eq i32* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %139
  %167 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %167, i32* %4, align 4
  br label %263

168:                                              ; preds = %139
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  br label %177

174:                                              ; preds = %114
  %175 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %176 = call i32 @threads_stop(%struct.TYPE_16__* %175, i32 1)
  br label %177

177:                                              ; preds = %174, %168
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 10
  %180 = load i32*, i32** %6, align 8
  %181 = load i64, i64* %11, align 8
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @lzma_outq_init(i32* %179, i32* %180, i64 %181, i32 %184)
  %186 = call i32 @return_if_error(i32 %185)
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 9
  store i32 %189, i32* %191, align 8
  store i64 0, i64* %13, align 8
  br label %192

192:                                              ; preds = %212, %177
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = load i64, i64* %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %192
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 8
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = load i64, i64* %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %208, align 8
  %210 = load i32*, i32** %6, align 8
  %211 = call i32 @lzma_free(%struct.TYPE_16__* %209, i32* %210)
  br label %212

212:                                              ; preds = %202
  %213 = load i64, i64* %13, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %13, align 8
  br label %192

215:                                              ; preds = %192
  %216 = load i32*, i32** %9, align 8
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 8
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = load i32*, i32** %6, align 8
  %221 = call i32 @lzma_filters_copy(i32* %216, %struct.TYPE_15__* %219, i32* %220)
  %222 = call i32 @return_if_error(i32 %221)
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 7
  %225 = load i32*, i32** %224, align 8
  %226 = load i32*, i32** %6, align 8
  %227 = call i32 @lzma_index_end(i32* %225, i32* %226)
  %228 = load i32*, i32** %6, align 8
  %229 = call i32* @lzma_index_init(i32* %228)
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 7
  store i32* %229, i32** %231, align 8
  %232 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 7
  %234 = load i32*, i32** %233, align 8
  %235 = icmp eq i32* %234, null
  br i1 %235, label %236, label %238

236:                                              ; preds = %215
  %237 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %237, i32* %4, align 4
  br label %263

238:                                              ; preds = %215
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 1
  store i64 0, i64* %241, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 6
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  store i64 %244, i64* %247, align 8
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 6
  %250 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @lzma_stream_header_encode(%struct.TYPE_19__* %249, i32 %252)
  %254 = call i32 @return_if_error(i32 %253)
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 4
  store i64 0, i64* %256, align 8
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 3
  store i64 0, i64* %258, align 8
  %259 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* @LZMA_OK, align 4
  store i32 %262, i32* %4, align 4
  br label %263

263:                                              ; preds = %238, %236, %166, %77, %65, %55, %41, %33, %24
  %264 = load i32, i32* %4, align 4
  ret i32 %264
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_17__*, i32*, %struct.TYPE_18__*)*, %struct.TYPE_17__*, i32*) #1

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @get_options(%struct.TYPE_18__*, i32*, i32**, i64*, i64*) #1

declare dso_local i64 @lzma_raw_encoder_memusage(i32*) #1

declare dso_local i32 @lzma_check_is_supported(i64) #1

declare dso_local i8* @lzma_alloc(i32, i32*) #1

declare dso_local i64 @mythread_mutex_init(i32*) #1

declare dso_local i32 @lzma_free(%struct.TYPE_16__*, i32*) #1

declare dso_local i64 @mythread_cond_init(i32*) #1

declare dso_local i32 @mythread_mutex_destroy(i32*) #1

declare dso_local i32 @memzero(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @threads_end(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @threads_stop(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @lzma_outq_init(i32*, i32*, i64, i32) #1

declare dso_local i32 @lzma_filters_copy(i32*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @lzma_index_end(i32*, i32*) #1

declare dso_local i32* @lzma_index_init(i32*) #1

declare dso_local i32 @lzma_stream_header_encode(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
