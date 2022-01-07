; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_stream_round_trip.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_stream_round_trip.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bufSize = common dso_local global i64 0, align 8
@cBuf = common dso_local global i32* null, align 8
@rBuf = common dso_local global i32* null, align 8
@cctx = common dso_local global i32* null, align 8
@dctx = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Incorrect regenerated size\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corruption!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32* @FUZZ_dataProducer_create(i32* %9, i64 %10)
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @FUZZ_dataProducer_reserveDataPrefix(i32* %12)
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @ZSTD_compressBound(i64 %14)
  %16 = mul nsw i32 %15, 15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @bufSize, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %2
  %22 = load i32*, i32** @cBuf, align 8
  %23 = call i32 @free(i32* %22)
  %24 = load i32*, i32** @rBuf, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @malloc(i64 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** @cBuf, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @malloc(i64 %29)
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** @rBuf, align 8
  %32 = load i64, i64* %5, align 8
  store i64 %32, i64* @bufSize, align 8
  %33 = load i32*, i32** @cBuf, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32*, i32** @rBuf, align 8
  %37 = icmp ne i32* %36, null
  br label %38

38:                                               ; preds = %35, %21
  %39 = phi i1 [ false, %21 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @FUZZ_ASSERT(i32 %40)
  br label %42

42:                                               ; preds = %38, %2
  %43 = load i32*, i32** @cctx, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = call i32* (...) @ZSTD_createCCtx()
  store i32* %46, i32** @cctx, align 8
  %47 = load i32*, i32** @cctx, align 8
  %48 = ptrtoint i32* %47 to i32
  %49 = call i32 @FUZZ_ASSERT(i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32*, i32** @dctx, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = call i32* (...) @ZSTD_createDCtx()
  store i32* %54, i32** @dctx, align 8
  %55 = load i32*, i32** @dctx, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = call i32 @FUZZ_ASSERT(i32 %56)
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32*, i32** @cBuf, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i32*, i32** %3, align 8
  %62 = load i64, i64* %4, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i64 @compress(i32* %59, i64 %60, i32* %61, i64 %62, i32* %63)
  store i64 %64, i64* %7, align 8
  %65 = load i32*, i32** @dctx, align 8
  %66 = load i32*, i32** @rBuf, align 8
  %67 = load i64, i64* %5, align 8
  %68 = load i32*, i32** @cBuf, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i64 @ZSTD_decompressDCtx(i32* %65, i32* %66, i64 %67, i32* %68, i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @FUZZ_ZASSERT(i64 %71)
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %4, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @FUZZ_ASSERT_MSG(i32 %76, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %78 = load i32*, i32** %3, align 8
  %79 = load i32*, i32** @rBuf, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @memcmp(i32* %78, i32* %79, i64 %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @FUZZ_ASSERT_MSG(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @FUZZ_dataProducer_free(i32* %86)
  %88 = load i32*, i32** @cctx, align 8
  %89 = call i32 @ZSTD_freeCCtx(i32* %88)
  store i32* null, i32** @cctx, align 8
  %90 = load i32*, i32** @dctx, align 8
  %91 = call i32 @ZSTD_freeDCtx(i32* %90)
  store i32* null, i32** @dctx, align 8
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_reserveDataPrefix(i32*) #1

declare dso_local i32 @ZSTD_compressBound(i64) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @FUZZ_ASSERT(i32) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i64 @compress(i32*, i64, i32*, i64, i32*) #1

declare dso_local i64 @ZSTD_decompressDCtx(i32*, i32*, i64, i32*, i64) #1

declare dso_local i32 @FUZZ_ZASSERT(i64) #1

declare dso_local i32 @FUZZ_ASSERT_MSG(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
