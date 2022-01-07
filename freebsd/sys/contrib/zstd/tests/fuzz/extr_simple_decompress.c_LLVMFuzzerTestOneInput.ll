; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_simple_decompress.c_LLVMFuzzerTestOneInput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_simple_decompress.c_LLVMFuzzerTestOneInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dctx = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerTestOneInput(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32* @FUZZ_dataProducer_create(i32* %8, i64 %9)
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @FUZZ_dataProducer_reserveDataPrefix(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i8*, i8** @dctx, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = call i8* (...) @ZSTD_createDCtx()
  store i8* %16, i8** @dctx, align 8
  %17 = load i8*, i8** @dctx, align 8
  %18 = call i32 @FUZZ_ASSERT(i8* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = mul i64 10, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @FUZZ_dataProducer_uint32Range(i32* %20, i32 0, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i8* @malloc(i64 %25)
  store i8* %26, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @FUZZ_ASSERT(i8* %27)
  %29 = load i8*, i8** @dctx, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @ZSTD_decompressDCtx(i8* %29, i8* %30, i64 %31, i32* %32, i64 %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @FUZZ_dataProducer_free(i32* %37)
  %39 = load i8*, i8** @dctx, align 8
  %40 = call i32 @ZSTD_freeDCtx(i8* %39)
  store i8* null, i8** @dctx, align 8
  ret i32 0
}

declare dso_local i32* @FUZZ_dataProducer_create(i32*, i64) #1

declare dso_local i64 @FUZZ_dataProducer_reserveDataPrefix(i32*) #1

declare dso_local i8* @ZSTD_createDCtx(...) #1

declare dso_local i32 @FUZZ_ASSERT(i8*) #1

declare dso_local i64 @FUZZ_dataProducer_uint32Range(i32*, i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @ZSTD_decompressDCtx(i8*, i8*, i64, i32*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @FUZZ_dataProducer_free(i32*) #1

declare dso_local i32 @ZSTD_freeDCtx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
