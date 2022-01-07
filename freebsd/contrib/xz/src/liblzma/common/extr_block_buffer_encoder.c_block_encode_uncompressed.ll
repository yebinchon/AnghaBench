; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_buffer_encoder.c_block_encode_uncompressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_buffer_encoder.c_block_encode_uncompressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@LZMA_DICT_SIZE_MIN = common dso_local global i32 0, align 4
@LZMA_FILTER_LZMA2 = common dso_local global i32 0, align 4
@LZMA_VLI_UNKNOWN = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i64 0, align 8
@LZMA_PROG_ERROR = common dso_local global i64 0, align 8
@LZMA_BUF_ERROR = common dso_local global i64 0, align 8
@LZMA2_CHUNK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32*, i64, i32*, i64*, i64)* @block_encode_uncompressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_encode_uncompressed(%struct.TYPE_9__* %0, i32* %1, i64 %2, i32* %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca [2 x %struct.TYPE_8__], align 16
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %21 = load i32, i32* @LZMA_DICT_SIZE_MIN, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32, i32* @LZMA_FILTER_LZMA2, align 4
  %23 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 16
  %25 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %26, align 8
  %27 = load i32, i32* @LZMA_VLI_UNKNOWN, align 4
  %28 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 16
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %16, align 8
  %33 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %15, i64 0, i64 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = call i64 @lzma_block_header_size(%struct.TYPE_9__* %36)
  %38 = load i64, i64* @LZMA_OK, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %6
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %43, align 8
  %44 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %44, i64* %7, align 8
  br label %166

45:                                               ; preds = %6
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @lzma2_bound(i64 %49)
  %51 = icmp eq i64 %48, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load i64, i64* %13, align 8
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %54, %56
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  %65 = icmp ult i64 %57, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %45
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %69, align 8
  %70 = load i64, i64* @LZMA_BUF_ERROR, align 8
  store i64 %70, i64* %7, align 8
  br label %166

71:                                               ; preds = %45
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i64*, i64** %12, align 8
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = call i64 @lzma_block_header_encode(%struct.TYPE_9__* %72, i32* %76)
  %78 = load i64, i64* @LZMA_OK, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %71
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  store %struct.TYPE_8__* %81, %struct.TYPE_8__** %83, align 8
  %84 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %84, i64* %7, align 8
  br label %166

85:                                               ; preds = %71
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64*, i64** %12, align 8
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %91
  store i64 %94, i64* %92, align 8
  store i64 0, i64* %17, align 8
  store i32 1, i32* %18, align 4
  br label %95

95:                                               ; preds = %99, %85
  %96 = load i64, i64* %17, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %153

99:                                               ; preds = %95
  %100 = load i32, i32* %18, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = load i64*, i64** %12, align 8
  %103 = load i64, i64* %102, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %102, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %105, align 4
  store i32 2, i32* %18, align 4
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* %17, align 8
  %108 = sub i64 %106, %107
  %109 = load i32, i32* @LZMA2_CHUNK_MAX, align 4
  %110 = call i64 @my_min(i64 %108, i32 %109)
  store i64 %110, i64* %19, align 8
  %111 = load i64, i64* %19, align 8
  %112 = sub i64 %111, 1
  %113 = lshr i64 %112, 8
  %114 = trunc i64 %113 to i32
  %115 = load i32*, i32** %11, align 8
  %116 = load i64*, i64** %12, align 8
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %116, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %119, align 4
  %120 = load i64, i64* %19, align 8
  %121 = sub i64 %120, 1
  %122 = and i64 %121, 255
  %123 = trunc i64 %122 to i32
  %124 = load i32*, i32** %11, align 8
  %125 = load i64*, i64** %12, align 8
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = getelementptr inbounds i32, i32* %124, i64 %126
  store i32 %123, i32* %128, align 4
  %129 = load i64*, i64** %12, align 8
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %19, align 8
  %132 = add i64 %130, %131
  %133 = load i64, i64* %13, align 8
  %134 = icmp ule i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32*, i32** %11, align 8
  %138 = load i64*, i64** %12, align 8
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32*, i32** %9, align 8
  %142 = load i64, i64* %17, align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i64, i64* %19, align 8
  %145 = call i32 @memcpy(i32* %140, i32* %143, i64 %144)
  %146 = load i64, i64* %19, align 8
  %147 = load i64, i64* %17, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %17, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i64*, i64** %12, align 8
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %151, %149
  store i64 %152, i64* %150, align 8
  br label %95

153:                                              ; preds = %95
  %154 = load i32*, i32** %11, align 8
  %155 = load i64*, i64** %12, align 8
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = getelementptr inbounds i32, i32* %154, i64 %156
  store i32 0, i32* %158, align 4
  %159 = load i64*, i64** %12, align 8
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %13, align 8
  %162 = icmp ule i64 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i32 @assert(i32 %163)
  %165 = load i64, i64* @LZMA_OK, align 8
  store i64 %165, i64* %7, align 8
  br label %166

166:                                              ; preds = %153, %80, %66, %40
  %167 = load i64, i64* %7, align 8
  ret i64 %167
}

declare dso_local i64 @lzma_block_header_size(%struct.TYPE_9__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lzma2_bound(i64) #1

declare dso_local i64 @lzma_block_header_encode(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @my_min(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
