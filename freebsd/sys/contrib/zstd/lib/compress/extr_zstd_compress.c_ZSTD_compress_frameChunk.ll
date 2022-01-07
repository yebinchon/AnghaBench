; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress_frameChunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress_frameChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i64, %struct.TYPE_17__, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i64 }

@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ZSTD_compress_frameChunk (blockSize=%u)\00", align 1
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@MIN_CBLOCK_SIZE = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"not enough space to store compressed block\00", align 1
@bt_rle = common dso_local global i64 0, align 8
@bt_compressed = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"ZSTD_compress_frameChunk: adding a block of size %u\00", align 1
@ZSTDcs_ending = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_16__*, i8*, i64, i8*, i64, i32)* @ZSTD_compress_frameChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compress_frameChunk(%struct.TYPE_16__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_15__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %11, align 8
  store i64 %26, i64* %14, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %15, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i32*
  store i32* %30, i32** %16, align 8
  %31 = load i32*, i32** %16, align 8
  store i32* %31, i32** %17, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 1, %36
  store i32 %37, i32* %18, align 4
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %44 = icmp sle i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i64, i64* %13, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %6
  %57 = load i64, i64* %11, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 6
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @XXH64_update(i32* %61, i8* %62, i64 %63)
  br label %65

65:                                               ; preds = %59, %56, %6
  br label %66

66:                                               ; preds = %184, %65
  %67 = load i64, i64* %14, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %212

69:                                               ; preds = %66
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %19, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp uge i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = and i32 %73, %77
  store i32 %78, i32* %20, align 4
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %81 = load i64, i64* @MIN_CBLOCK_SIZE, align 8
  %82 = add i64 %80, %81
  %83 = icmp ult i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* @dstSize_tooSmall, align 4
  %86 = call i32 @RETURN_ERROR_IF(i32 %84, i32 %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %13, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %69
  %91 = load i64, i64* %14, align 8
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %90, %69
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i32*, i32** %15, align 8
  %99 = load i32*, i32** %15, align 8
  %100 = load i64, i64* %13, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call i32 @ZSTD_overflowCorrectIfNeeded(%struct.TYPE_15__* %93, i32* %95, %struct.TYPE_17__* %97, i32* %98, i32* %101)
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32*, i32** %15, align 8
  %106 = load i64, i64* %13, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %18, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 2
  %113 = call i32 @ZSTD_checkDictValidity(%struct.TYPE_11__* %104, i32* %107, i32 %108, i32* %110, i32* %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp slt i64 %116, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %92
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %122, %92
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %131 = load i32*, i32** %17, align 8
  %132 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %136 = sub i64 %134, %135
  %137 = load i32*, i32** %15, align 8
  %138 = load i64, i64* %13, align 8
  %139 = call i64 @ZSTD_compressBlock_internal(%struct.TYPE_16__* %130, i32* %133, i64 %136, i32* %137, i64 %138, i32 1)
  store i64 %139, i64* %21, align 8
  %140 = load i64, i64* %21, align 8
  %141 = call i32 @FORWARD_IF_ERROR(i64 %140)
  %142 = load i64, i64* %21, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %129
  %145 = load i32*, i32** %17, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load i32, i32* %20, align 4
  %150 = call i64 @ZSTD_noCompressBlock(i32* %145, i64 %146, i32* %147, i64 %148, i32 %149)
  store i64 %150, i64* %21, align 8
  %151 = load i64, i64* %21, align 8
  %152 = call i32 @FORWARD_IF_ERROR(i64 %151)
  br label %184

153:                                              ; preds = %129
  %154 = load i64, i64* %21, align 8
  %155 = icmp eq i64 %154, 1
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i32, i32* %20, align 4
  %158 = load i64, i64* @bt_rle, align 8
  %159 = trunc i64 %158 to i32
  %160 = shl i32 %159, 1
  %161 = add nsw i32 %157, %160
  %162 = load i64, i64* %13, align 8
  %163 = shl i64 %162, 3
  %164 = trunc i64 %163 to i32
  %165 = add nsw i32 %161, %164
  br label %176

166:                                              ; preds = %153
  %167 = load i32, i32* %20, align 4
  %168 = load i64, i64* @bt_compressed, align 8
  %169 = trunc i64 %168 to i32
  %170 = shl i32 %169, 1
  %171 = add nsw i32 %167, %170
  %172 = load i64, i64* %21, align 8
  %173 = shl i64 %172, 3
  %174 = trunc i64 %173 to i32
  %175 = add nsw i32 %171, %174
  br label %176

176:                                              ; preds = %166, %156
  %177 = phi i32 [ %165, %156 ], [ %175, %166 ]
  store i32 %177, i32* %22, align 4
  %178 = load i32*, i32** %17, align 8
  %179 = load i32, i32* %22, align 4
  %180 = call i32 @MEM_writeLE24(i32* %178, i32 %179)
  %181 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %182 = load i64, i64* %21, align 8
  %183 = add i64 %182, %181
  store i64 %183, i64* %21, align 8
  br label %184

184:                                              ; preds = %176, %144
  %185 = load i64, i64* %13, align 8
  %186 = load i32*, i32** %15, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 %185
  store i32* %187, i32** %15, align 8
  %188 = load i64, i64* %14, align 8
  %189 = load i64, i64* %13, align 8
  %190 = icmp uge i64 %188, %189
  %191 = zext i1 %190 to i32
  %192 = call i32 @assert(i32 %191)
  %193 = load i64, i64* %13, align 8
  %194 = load i64, i64* %14, align 8
  %195 = sub i64 %194, %193
  store i64 %195, i64* %14, align 8
  %196 = load i64, i64* %21, align 8
  %197 = load i32*, i32** %17, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 %196
  store i32* %198, i32** %17, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* %21, align 8
  %201 = icmp uge i64 %199, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load i64, i64* %21, align 8
  %205 = load i64, i64* %9, align 8
  %206 = sub i64 %205, %204
  store i64 %206, i64* %9, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  store i64 0, i64* %208, align 8
  %209 = load i64, i64* %21, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %210)
  br label %66

212:                                              ; preds = %66
  %213 = load i32, i32* %12, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  %216 = load i32*, i32** %17, align 8
  %217 = load i32*, i32** %16, align 8
  %218 = icmp ugt i32* %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %215
  %220 = load i32, i32* @ZSTDcs_ending, align 4
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %219, %215, %212
  %224 = load i32*, i32** %17, align 8
  %225 = load i32*, i32** %16, align 8
  %226 = ptrtoint i32* %224 to i64
  %227 = ptrtoint i32* %225 to i64
  %228 = sub i64 %226, %227
  %229 = sdiv exact i64 %228, 4
  ret i64 %229
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32) #1

declare dso_local i32 @XXH64_update(i32*, i8*, i64) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*) #1

declare dso_local i32 @ZSTD_overflowCorrectIfNeeded(%struct.TYPE_15__*, i32*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32 @ZSTD_checkDictValidity(%struct.TYPE_11__*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @ZSTD_compressBlock_internal(%struct.TYPE_16__*, i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i64 @ZSTD_noCompressBlock(i32*, i64, i32*, i64, i32) #1

declare dso_local i32 @MEM_writeLE24(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
