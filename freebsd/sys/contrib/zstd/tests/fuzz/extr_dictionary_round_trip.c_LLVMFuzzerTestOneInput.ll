; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_dictionary_round_trip.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_dictionary_round_trip.c_LLVMFuzzerTestOneInput.c"
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
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i32* @FUZZ_dataProducer_create(i32* %11, i64 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i64 @FUZZ_dataProducer_reserveDataPrefix(i32* %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @ZSTD_compressBound(i64 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @FUZZ_dataProducer_uint32Range(i32* %21, i32 0, i32 1)
  %23 = load i64, i64* %8, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i32*, i32** @cctx, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = call i32* (...) @ZSTD_createCCtx()
  store i32* %30, i32** @cctx, align 8
  %31 = load i32*, i32** @cctx, align 8
  %32 = call i32 @FUZZ_ASSERT(i32* %31)
  br label %33

33:                                               ; preds = %29, %2
  %34 = load i32*, i32** @dctx, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = call i32* (...) @ZSTD_createDCtx()
  store i32* %37, i32** @dctx, align 8
  %38 = load i32*, i32** @dctx, align 8
  %39 = call i32 @FUZZ_ASSERT(i32* %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i32*, i32** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64 @roundTripTest(i8* %41, i64 %42, i8* %43, i64 %44, i32* %45, i64 %46, i32* %47)
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @FUZZ_ZASSERT(i64 %49)
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @FUZZ_ASSERT_MSG(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %56 = load i32*, i32** %3, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @memcmp(i32* %56, i8* %57, i64 %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @FUZZ_ASSERT_MSG(i32 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i8*, i8** %7, align 8
  %65 = call i32 @free(i8* %64)
  %66 = load i8*, i8** %9, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @FUZZ_dataProducer_free(i32* %68)
  %70 = load i32*, i32** @cctx, align 8
  %71 = call i32 @ZSTD_freeCCtx(i32* %70)
  store i32* null, i32** @cctx, align 8
  %72 = load i32*, i32** @dctx, align 8
  %73 = call i32 @ZSTD_freeDCtx(i32* %72)
  store i32* null, i32** @dctx, align 8
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_reserveDataPrefix(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32 @FUZZ_ASSERT(i32*) #1

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
