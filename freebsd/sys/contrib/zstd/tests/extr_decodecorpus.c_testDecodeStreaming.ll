; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_testDecodeStreaming.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_testDecodeStreaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64 }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i32, i64 }

@memory_allocation = common dso_local global i32 0, align 4
@DECOMPRESSED_BUFFER = common dso_local global i32 0, align 4
@MAX_DECOMPRESSED_SIZE = common dso_local global i64 0, align 8
@corruption_detected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*)* @testDecodeStreaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @testDecodeStreaming(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = call i32* (...) @ZSTD_createDStream()
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @memory_allocation, align 4
  %13 = call i64 @ERROR(i32 %12)
  store i64 %13, i64* %2, align 8
  br label %82

14:                                               ; preds = %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = ptrtoint i32* %23 to i64
  %29 = ptrtoint i32* %27 to i64
  %30 = sub i64 %28, %29
  %31 = sdiv exact i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @DECOMPRESSED_BUFFER, align 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = call i64 (...) @ZSTD_DStreamOutSize()
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i64 %37, i64* %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @ZSTD_initDStream(i32* %39)
  br label %41

41:                                               ; preds = %14, %52
  %42 = load i32*, i32** %4, align 8
  %43 = call i64 @ZSTD_decompressStream(i32* %42, %struct.TYPE_8__* %6, %struct.TYPE_9__* %5)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @ZSTD_isError(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %78

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %62

52:                                               ; preds = %48
  %53 = call i64 (...) @ZSTD_DStreamOutSize()
  %54 = load i64, i64* @MAX_DECOMPRESSED_SIZE, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = sub nsw i64 %54, %56
  %58 = call i64 @MIN(i64 %53, i64 %57)
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %41

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @memcmp(i32 %66, i32 %69, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @corruption_detected, align 4
  %76 = call i64 @ERROR(i32 %75)
  store i64 %76, i64* %2, align 8
  br label %82

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %47
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 @ZSTD_freeDStream(i32* %79)
  %81 = load i64, i64* %7, align 8
  store i64 %81, i64* %2, align 8
  br label %82

82:                                               ; preds = %78, %74, %11
  %83 = load i64, i64* %2, align 8
  ret i64 %83
}

declare dso_local i32* @ZSTD_createDStream(...) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_DStreamOutSize(...) #1

declare dso_local i32 @ZSTD_initDStream(i32*) #1

declare dso_local i64 @ZSTD_decompressStream(i32*, %struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

declare dso_local i32 @ZSTD_freeDStream(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
