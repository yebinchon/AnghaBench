; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_simple_round_trip.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_simple_round_trip.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cctx = common dso_local global i32* null, align 8
@dctx = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Incorrect regenerated size\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corruption!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i8* @malloc(i64 %12)
  store i8* %13, i8** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @ZSTD_compressBound(i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32* @FUZZ_dataProducer_create(i32* %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @FUZZ_dataProducer_reserveDataPrefix(i32* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i64 @FUZZ_dataProducer_uint32Range(i32* %21, i32 0, i32 1)
  %23 = load i64, i64* %7, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br label %32

32:                                               ; preds = %29, %2
  %33 = phi i1 [ false, %2 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @FUZZ_ASSERT(i32 %34)
  %36 = load i32*, i32** @cctx, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = call i32* (...) @ZSTD_createCCtx()
  store i32* %39, i32** @cctx, align 8
  %40 = load i32*, i32** @cctx, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = call i32 @FUZZ_ASSERT(i32 %41)
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32*, i32** @dctx, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = call i32* (...) @ZSTD_createDCtx()
  store i32* %47, i32** @dctx, align 8
  %48 = load i32*, i32** @dctx, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = call i32 @FUZZ_ASSERT(i32 %49)
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i64 @roundTripTest(i8* %52, i64 %53, i8* %54, i64 %55, i32* %56, i64 %57, i32* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @FUZZ_ZASSERT(i64 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @FUZZ_ASSERT_MSG(i32 %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %67 = load i32*, i32** %3, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @memcmp(i32* %67, i8* %68, i64 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @FUZZ_ASSERT_MSG(i32 %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @FUZZ_dataProducer_free(i32* %79)
  %81 = load i32*, i32** @cctx, align 8
  %82 = call i32 @ZSTD_freeCCtx(i32* %81)
  store i32* null, i32** @cctx, align 8
  %83 = load i32*, i32** @dctx, align 8
  %84 = call i32 @ZSTD_freeDCtx(i32* %83)
  store i32* null, i32** @dctx, align 8
  ret i32 0
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_reserveDataPrefix(i32*) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i32 @FUZZ_ASSERT(i32) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i64 @roundTripTest(i8*, i64, i8*, i64, i32*, i64, i32*) #1

declare dso_local i32 @FUZZ_ZASSERT(i64) #1

declare dso_local i32 @FUZZ_ASSERT_MSG(i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
