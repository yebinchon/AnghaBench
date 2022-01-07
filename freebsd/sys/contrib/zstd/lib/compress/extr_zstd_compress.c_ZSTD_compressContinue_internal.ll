; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressContinue_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compressContinue_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i64, i64, %struct.TYPE_20__, i32, i64, i32, %struct.TYPE_16__, i32, %struct.TYPE_14__ }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_21__, i32 }

@.str = private unnamed_addr constant [55 x i8] c"ZSTD_compressContinue_internal, stage: %u, srcSize: %u\00", align 1
@ZSTDcs_created = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"missing init (ZSTD_compressBegin)\00", align 1
@ZSTDcs_init = common dso_local global i64 0, align 8
@ZSTDcs_ongoing = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"ZSTD_compressContinue_internal (blockSize=%u)\00", align 1
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"error : pledgedSrcSize = %u, while realSrcSize >= %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i8*, i64, i8*, i64, i64, i64)* @ZSTD_compressContinue_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_compressContinue_internal(%struct.TYPE_19__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 9
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %16, align 8
  store i64 0, i64* %17, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i64, i64* %13, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ZSTDcs_created, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @stage_wrong, align 4
  %36 = call i32 (i32, i32, i8*, ...) @RETURN_ERROR_IF(i32 %34, i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %74

39:                                               ; preds = %7
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ZSTDcs_init, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 1
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ZSTD_writeFrameHeader(i8* %46, i64 %47, %struct.TYPE_20__* %49, i64 %53, i32 %56)
  store i64 %57, i64* %17, align 8
  %58 = load i64, i64* %17, align 8
  %59 = call i32 @FORWARD_IF_ERROR(i64 %58)
  %60 = load i64, i64* %17, align 8
  %61 = load i64, i64* %11, align 8
  %62 = icmp ule i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i64, i64* %17, align 8
  %66 = load i64, i64* %11, align 8
  %67 = sub i64 %66, %65
  store i64 %67, i64* %11, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %17, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8* %70, i8** %10, align 8
  %71 = load i64, i64* @ZSTDcs_ongoing, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %45, %39, %7
  %75 = load i64, i64* %13, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = load i64, i64* %17, align 8
  store i64 %78, i64* %8, align 8
  br label %212

79:                                               ; preds = %74
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %13, align 8
  %84 = call i32 @ZSTD_window_update(%struct.TYPE_21__* %81, i8* %82, i64 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %79
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %93
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i8*, i8** %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = call i32 @ZSTD_window_update(%struct.TYPE_21__* %103, i8* %104, i64 %105)
  br label %107

107:                                              ; preds = %100, %93
  %108 = load i64, i64* %14, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 3
  %116 = load i8*, i8** %12, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = call i32 @ZSTD_overflowCorrectIfNeeded(%struct.TYPE_18__* %111, i32* %113, %struct.TYPE_20__* %115, i8* %116, i32* %120)
  br label %122

122:                                              ; preds = %110, %107
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = call i32 (i32, i8*, i32, ...) @DEBUGLOG(i32 5, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %126)
  %128 = load i64, i64* %14, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %122
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = load i64, i64* %11, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = load i64, i64* %13, align 8
  %136 = load i64, i64* %15, align 8
  %137 = call i64 @ZSTD_compress_frameChunk(%struct.TYPE_19__* %131, i8* %132, i64 %133, i8* %134, i64 %135, i64 %136)
  br label %145

138:                                              ; preds = %122
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i64 @ZSTD_compressBlock_internal(%struct.TYPE_19__* %139, i8* %140, i64 %141, i8* %142, i64 %143, i32 0)
  br label %145

145:                                              ; preds = %138, %130
  %146 = phi i64 [ %137, %130 ], [ %144, %138 ]
  store i64 %146, i64* %18, align 8
  %147 = load i64, i64* %18, align 8
  %148 = call i32 @FORWARD_IF_ERROR(i64 %147)
  %149 = load i64, i64* %13, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %149
  store i64 %153, i64* %151, align 8
  %154 = load i64, i64* %18, align 8
  %155 = load i64, i64* %17, align 8
  %156 = add i64 %154, %155
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = add i64 %160, %156
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %145
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %172, 0
  br label %174

174:                                              ; preds = %169, %145
  %175 = phi i1 [ false, %145 ], [ %173, %169 ]
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = call i32 @assert(i32 %177)
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %208

183:                                              ; preds = %174
  %184 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %185 = icmp eq i64 %184, -1
  %186 = zext i1 %185 to i32
  %187 = call i32 @ZSTD_STATIC_ASSERT(i32 %186)
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = add nsw i64 %190, 1
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp sgt i64 %191, %194
  %196 = zext i1 %195 to i32
  %197 = load i32, i32* @srcSize_wrong, align 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = sub i32 %201, 1
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = call i32 (i32, i32, i8*, ...) @RETURN_ERROR_IF(i32 %196, i32 %197, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %202, i32 %206)
  br label %208

208:                                              ; preds = %183, %174
  %209 = load i64, i64* %18, align 8
  %210 = load i64, i64* %17, align 8
  %211 = add i64 %209, %210
  store i64 %211, i64* %8, align 8
  br label %212

212:                                              ; preds = %208, %77
  %213 = load i64, i64* %8, align 8
  ret i64 %213
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, ...) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*, ...) #1

declare dso_local i64 @ZSTD_writeFrameHeader(i8*, i64, %struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ZSTD_window_update(%struct.TYPE_21__*, i8*, i64) #1

declare dso_local i32 @ZSTD_overflowCorrectIfNeeded(%struct.TYPE_18__*, i32*, %struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i64 @ZSTD_compress_frameChunk(%struct.TYPE_19__*, i8*, i64, i8*, i64, i64) #1

declare dso_local i64 @ZSTD_compressBlock_internal(%struct.TYPE_19__*, i8*, i64, i8*, i64, i32) #1

declare dso_local i32 @ZSTD_STATIC_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
