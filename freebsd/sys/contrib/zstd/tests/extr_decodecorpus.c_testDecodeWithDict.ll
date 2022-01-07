; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_testDecodeWithDict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_testDecodeWithDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64 }

@ZDICT_DICTSIZE_MIN = common dso_local global i32 0, align 4
@ZDICT_CONTENTSIZE_MIN = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@gt_frame = common dso_local global i64 0, align 8
@DECOMPRESSED_BUFFER = common dso_local global i32 0, align 4
@MAX_DECOMPRESSED_SIZE = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @testDecodeWithDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @testDecodeWithDict(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %17 = call i32 @RAND(i32* %4)
  %18 = srem i32 %17, 10485760
  %19 = load i32, i32* @ZDICT_DICTSIZE_MIN, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @ZDICT_CONTENTSIZE_MIN, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %6, align 8
  %24 = call i32 @RAND(i32* %4)
  store i32 %24, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32* @malloc(i64 %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @GENERIC, align 4
  %31 = call i64 @ERROR(i32 %30)
  store i64 %31, i64* %3, align 8
  br label %149

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i64, i64* %6, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i64 @genRandomDict(i32 %33, i32 %34, i64 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @GENERIC, align 4
  %41 = call i64 @ERROR(i32 %40)
  store i64 %41, i64* %8, align 8
  br label %145

42:                                               ; preds = %32
  %43 = call i32* (...) @ZSTD_createDCtx()
  store i32* %43, i32** %12, align 8
  %44 = load i64, i64* %6, align 8
  %45 = udiv i64 %44, 4
  %46 = call i64 @MAX(i64 %45, i32 256)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %14, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %15, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32* %52, i32** %16, align 8
  %53 = load i64, i64* %15, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @initDictInfo(i32 1, i64 %53, i32* %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* @gt_frame, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %42
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @generateFrame(i32 %61, %struct.TYPE_4__* %10, i32 %62)
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* @DECOMPRESSED_BUFFER, align 4
  %66 = load i32, i32* @MAX_DECOMPRESSED_SIZE, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = ptrtoint i32* %71 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = load i32*, i32** %9, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i64 @ZSTD_decompress_usingDict(i32* %64, i32 %65, i32 %66, i64 %68, i32 %79, i32* %80, i64 %81)
  store i64 %82, i64* %13, align 8
  br label %116

83:                                               ; preds = %42
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @generateCompressedBlock(i32 %84, %struct.TYPE_4__* %10, i32 %85)
  %87 = load i32*, i32** %12, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @ZSTD_decompressBegin_usingDict(i32* %87, i32* %88, i64 %89)
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = call i64 @ZSTD_isError(i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %83
  %95 = load i64, i64* %13, align 8
  store i64 %95, i64* %8, align 8
  %96 = load i32*, i32** %12, align 8
  %97 = call i32 @ZSTD_freeDCtx(i32* %96)
  br label %145

98:                                               ; preds = %83
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* @DECOMPRESSED_BUFFER, align 4
  %101 = load i32, i32* @MAX_DECOMPRESSED_SIZE, align 4
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = ptrtoint i32* %106 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i64 @ZSTD_decompressBlock(i32* %99, i32 %100, i32 %101, i64 %103, i32 %114)
  store i64 %115, i64* %13, align 8
  br label %116

116:                                              ; preds = %98, %60
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @ZSTD_freeDCtx(i32* %117)
  %119 = load i64, i64* %13, align 8
  %120 = call i64 @ZSTD_isError(i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i64, i64* %13, align 8
  store i64 %123, i64* %8, align 8
  br label %145

124:                                              ; preds = %116
  %125 = load i32, i32* @DECOMPRESSED_BUFFER, align 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = inttoptr i64 %129 to i32*
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to i32*
  %134 = ptrtoint i32* %130 to i64
  %135 = ptrtoint i32* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 4
  %138 = trunc i64 %137 to i32
  %139 = call i64 @memcmp(i32 %125, i64 %127, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %124
  %142 = load i32, i32* @corruption_detected, align 4
  %143 = call i64 @ERROR(i32 %142)
  store i64 %143, i64* %8, align 8
  br label %145

144:                                              ; preds = %124
  br label %145

145:                                              ; preds = %144, %141, %122, %94, %39
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @free(i32* %146)
  %148 = load i64, i64* %8, align 8
  store i64 %148, i64* %3, align 8
  br label %149

149:                                              ; preds = %145, %29
  %150 = load i64, i64* %3, align 8
  ret i64 %150
}

declare dso_local i32 @RAND(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @genRandomDict(i32, i32, i64, i32*) #1

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i32 @initDictInfo(i32, i64, i32*, i32) #1

declare dso_local i32 @generateFrame(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @ZSTD_decompress_usingDict(i32*, i32, i32, i64, i32, i32*, i64) #1

declare dso_local i32 @generateCompressedBlock(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @ZSTD_decompressBegin_usingDict(i32*, i32*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

declare dso_local i64 @ZSTD_decompressBlock(i32*, i32, i32, i64, i32) #1

declare dso_local i64 @memcmp(i32, i64, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
