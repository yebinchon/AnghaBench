; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_dictionary_round_trip.c_roundTripTest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_dictionary_round_trip.c_roundTripTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ZSTD_dct_auto = common dso_local global i64 0, align 8
@kMinClevel = common dso_local global i32 0, align 4
@kMaxClevel = common dso_local global i32 0, align 4
@cctx = common dso_local global i32 0, align 4
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@dctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*, i64, i32*)* @roundTripTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundTripTest(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_3__, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load i64, i64* @ZSTD_dct_auto, align 8
  store i64 %20, i64* %15, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i64 @FUZZ_train(i8* %21, i64 %22, i32* %23)
  %25 = bitcast %struct.TYPE_3__* %16 to i64*
  store i64 %24, i64* %25, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = call i64 @FUZZ_dataProducer_uint32Range(i32* %26, i32 0, i32 15)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %7
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* @kMinClevel, align 4
  %32 = load i32, i32* @kMaxClevel, align 4
  %33 = call i32 @FUZZ_dataProducer_int32Range(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* @cctx, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i8*, i8** %12, align 8
  %38 = load i64, i64* %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %18, align 4
  %44 = call i64 @ZSTD_compress_usingDict(i32 %34, i8* %35, i64 %36, i8* %37, i64 %38, i32 %40, i32 %42, i32 %43)
  store i64 %44, i64* %17, align 8
  br label %73

45:                                               ; preds = %7
  %46 = load i32*, i32** %14, align 8
  %47 = call i64 @FUZZ_dataProducer_uint32Range(i32* %46, i32 0, i32 2)
  store i64 %47, i64* %15, align 8
  %48 = load i32, i32* @cctx, align 4
  %49 = load i64, i64* %13, align 8
  %50 = load i32*, i32** %14, align 8
  %51 = call i32 @FUZZ_setRandomParameters(i32 %48, i64 %49, i32* %50)
  %52 = load i32, i32* @cctx, align 4
  %53 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %54 = call i64 @ZSTD_CCtx_setParameter(i32 %52, i32 %53, i32 0)
  %55 = call i32 @FUZZ_ZASSERT(i64 %54)
  %56 = load i32, i32* @cctx, align 4
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = call i64 @FUZZ_dataProducer_uint32Range(i32* %61, i32 0, i32 1)
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* %15, align 8
  %65 = call i64 @ZSTD_CCtx_loadDictionary_advanced(i32 %56, i32 %58, i32 %60, i32 %63, i64 %64)
  %66 = call i32 @FUZZ_ZASSERT(i64 %65)
  %67 = load i32, i32* @cctx, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i64 @ZSTD_compress2(i32 %67, i8* %68, i64 %69, i8* %70, i64 %71)
  store i64 %72, i64* %17, align 8
  br label %73

73:                                               ; preds = %45, %29
  %74 = load i64, i64* %17, align 8
  %75 = call i32 @FUZZ_ZASSERT(i64 %74)
  %76 = load i32, i32* @dctx, align 4
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = call i64 @FUZZ_dataProducer_uint32Range(i32* %81, i32 0, i32 1)
  %83 = trunc i64 %82 to i32
  %84 = load i64, i64* %15, align 8
  %85 = call i64 @ZSTD_DCtx_loadDictionary_advanced(i32 %76, i32 %78, i32 %80, i32 %83, i64 %84)
  %86 = call i32 @FUZZ_ZASSERT(i64 %85)
  %87 = load i32, i32* @dctx, align 4
  %88 = load i8*, i8** %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load i64, i64* %17, align 8
  %92 = call i64 @ZSTD_decompressDCtx(i32 %87, i8* %88, i64 %89, i8* %90, i64 %91)
  store i64 %92, i64* %19, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @free(i32 %94)
  %96 = load i64, i64* %19, align 8
  ret i64 %96
}

declare dso_local i64 @FUZZ_train(i8*, i64, i32*) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i32 @FUZZ_dataProducer_int32Range(i32*, i32, i32) #1

declare dso_local i64 @ZSTD_compress_usingDict(i32, i8*, i64, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @FUZZ_setRandomParameters(i32, i64, i32*) #1

declare dso_local i32 @FUZZ_ZASSERT(i64) #1

declare dso_local i64 @ZSTD_CCtx_setParameter(i32, i32, i32) #1

declare dso_local i64 @ZSTD_CCtx_loadDictionary_advanced(i32, i32, i32, i32, i64) #1

declare dso_local i64 @ZSTD_compress2(i32, i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTD_DCtx_loadDictionary_advanced(i32, i32, i32, i32, i64) #1

declare dso_local i64 @ZSTD_decompressDCtx(i32, i8*, i64, i8*, i64) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
