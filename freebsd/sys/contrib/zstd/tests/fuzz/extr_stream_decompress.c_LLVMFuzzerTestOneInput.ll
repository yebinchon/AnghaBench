; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_stream_decompress.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_stream_decompress.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@buf = common dso_local global i32* null, align 8
@kBufSize = common dso_local global i32 0, align 4
@dstream = common dso_local global i32* null, align 8
@ZSTD_reset_session_only = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32* @FUZZ_dataProducer_create(i32* %9, i64 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @FUZZ_dataProducer_reserveDataPrefix(i32* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i32*, i32** @buf, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @kBufSize, align 4
  %18 = call i32* @malloc(i32 %17)
  store i32* %18, i32** @buf, align 8
  %19 = load i32*, i32** @buf, align 8
  %20 = call i32 @FUZZ_ASSERT(i32* %19)
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32*, i32** @dstream, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = call i32* (...) @ZSTD_createDStream()
  store i32* %25, i32** @dstream, align 8
  %26 = load i32*, i32** @dstream, align 8
  %27 = call i32 @FUZZ_ASSERT(i32* %26)
  br label %33

28:                                               ; preds = %21
  %29 = load i32*, i32** @dstream, align 8
  %30 = load i32, i32* @ZSTD_reset_session_only, align 4
  %31 = call i32 @ZSTD_DCtx_reset(i32* %29, i32 %30)
  %32 = call i32 @FUZZ_ZASSERT(i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i64, i64* %4, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = call { i64, i64 } @makeInBuffer(i32** %3, i64* %4, i32* %38)
  %40 = bitcast %struct.TYPE_4__* %6 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = extractvalue { i64, i64 } %39, 0
  store i64 %42, i64* %41, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = extractvalue { i64, i64 } %39, 1
  store i64 %44, i64* %43, align 8
  br label %45

45:                                               ; preds = %60, %37
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @makeOutBuffer(i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32*, i32** @dstream, align 8
  %55 = call i64 @ZSTD_decompressStream(i32* %54, i32* %7, %struct.TYPE_4__* %6)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i64 @ZSTD_isError(i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %63

60:                                               ; preds = %51
  br label %45

61:                                               ; preds = %45
  br label %34

62:                                               ; preds = %34
  br label %63

63:                                               ; preds = %62, %59
  %64 = load i32*, i32** @dstream, align 8
  %65 = call i32 @ZSTD_freeDStream(i32* %64)
  store i32* null, i32** @dstream, align 8
  %66 = load i32*, i32** %5, align 8
  %67 = call i32 @FUZZ_dataProducer_free(i32* %66)
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_reserveDataPrefix(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @FUZZ_ASSERT(i32*) #1

declare dso_local i32* @ZSTD_createDStream(...) #1

declare dso_local i32 @FUZZ_ZASSERT(i32) #1

declare dso_local i32 @ZSTD_DCtx_reset(i32*, i32) #1

declare dso_local { i64, i64 } @makeInBuffer(i32**, i64*, i32*) #1

declare dso_local i32 @makeOutBuffer(i32*) #1

declare dso_local i64 @ZSTD_decompressStream(i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_freeDStream(i32*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
