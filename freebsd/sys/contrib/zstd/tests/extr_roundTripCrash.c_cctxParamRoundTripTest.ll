; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_roundTripCrash.c_cctxParamRoundTripTest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_roundTripCrash.c_cctxParamRoundTripTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i32 }
%struct.TYPE_5__ = type { i8*, i64, i32, i32 }

@cctxParamRoundTripTest.maxClevel = internal constant i32 19, align 4
@ZSTD_c_compressionLevel = common dso_local global i32 0, align 4
@ZSTD_c_nbWorkers = common dso_local global i32 0, align 4
@ZSTD_c_overlapLog = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*, i64)* @cctxParamRoundTripTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cctxParamRoundTripTest(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_5__, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %20 = call i32* (...) @ZSTD_createCCtx()
  store i32* %20, i32** %13, align 8
  %21 = call i32* (...) @ZSTD_createCCtxParams()
  store i32* %21, i32** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %23 = load i8*, i8** %11, align 8
  store i8* %23, i8** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %30 = load i64, i64* %10, align 8
  store i64 %30, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  store i32 0, i32* %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = load i64, i64* %12, align 8
  %34 = call i64 @MIN(i32 128, i64 %33)
  store i64 %34, i64* %17, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %17, align 8
  %37 = call i32 @XXH32(i8* %35, i64 %36, i32 0)
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* %18, align 4
  %39 = urem i32 %38, 19
  store i32 %39, i32* %19, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* @ZSTD_c_compressionLevel, align 4
  %42 = load i32, i32* %19, align 4
  %43 = call i32 @ZSTD_CCtxParams_setParameter(i32* %40, i32 %41, i32 %42)
  %44 = call i32 @CHECK_Z(i32 %43)
  %45 = load i32*, i32** %14, align 8
  %46 = load i32, i32* @ZSTD_c_nbWorkers, align 4
  %47 = call i32 @ZSTD_CCtxParams_setParameter(i32* %45, i32 %46, i32 2)
  %48 = call i32 @CHECK_Z(i32 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* @ZSTD_c_overlapLog, align 4
  %51 = call i32 @ZSTD_CCtxParams_setParameter(i32* %49, i32 %50, i32 5)
  %52 = call i32 @CHECK_Z(i32 %51)
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %14, align 8
  %55 = call i32 @ZSTD_CCtx_setParametersUsingCCtxParams(i32* %53, i32* %54)
  %56 = call i32 @CHECK_Z(i32 %55)
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @ZSTD_e_end, align 4
  %59 = call i32 @ZSTD_compressStream2(i32* %57, %struct.TYPE_5__* %16, %struct.TYPE_6__* %15, i32 %58)
  %60 = call i32 @CHECK_Z(i32 %59)
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @ZSTD_freeCCtxParams(i32* %61)
  %63 = load i32*, i32** %13, align 8
  %64 = call i32 @ZSTD_freeCCtx(i32* %63)
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @ZSTD_decompress(i8* %65, i64 %66, i8* %67, i32 %69)
  ret i64 %70
}

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32* @ZSTD_createCCtxParams(...) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @XXH32(i8*, i64, i32) #1

declare dso_local i32 @CHECK_Z(i32) #1

declare dso_local i32 @ZSTD_CCtxParams_setParameter(i32*, i32, i32) #1

declare dso_local i32 @ZSTD_CCtx_setParametersUsingCCtxParams(i32*, i32*) #1

declare dso_local i32 @ZSTD_compressStream2(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ZSTD_freeCCtxParams(i32*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i64 @ZSTD_decompress(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
