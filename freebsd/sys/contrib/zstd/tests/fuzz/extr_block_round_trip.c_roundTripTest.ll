; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_block_round_trip.c_roundTripTest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_block_round_trip.c_roundTripTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cctx = common dso_local global i32 0, align 4
@dctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*, i64, i32)* @roundTripTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundTripTest(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = load i64, i64* %14, align 8
  %20 = call i32 @ZSTD_getParams(i32 %18, i64 %19, i32 0)
  store i32 %20, i32* %16, align 4
  %21 = load i32, i32* @cctx, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i64, i64* %14, align 8
  %24 = call i64 @ZSTD_compressBegin_advanced(i32 %21, i32* null, i32 0, i32 %22, i64 %23)
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %17, align 8
  %26 = call i32 @FUZZ_ZASSERT(i64 %25)
  %27 = load i32, i32* @cctx, align 4
  %28 = load i8*, i8** %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i64 @ZSTD_compressBlock(i32 %27, i8* %28, i64 %29, i8* %30, i64 %31)
  store i64 %32, i64* %17, align 8
  %33 = load i64, i64* %17, align 8
  %34 = call i32 @FUZZ_ZASSERT(i64 %33)
  %35 = load i64, i64* %17, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %7
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp uge i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @FUZZ_ASSERT(i32 %41)
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  %47 = load i64, i64* %14, align 8
  store i64 %47, i64* %8, align 8
  br label %57

48:                                               ; preds = %7
  %49 = load i32, i32* @dctx, align 4
  %50 = call i32 @ZSTD_decompressBegin(i32 %49)
  %51 = load i32, i32* @dctx, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %17, align 8
  %56 = call i64 @ZSTD_decompressBlock(i32 %51, i8* %52, i64 %53, i8* %54, i64 %55)
  store i64 %56, i64* %8, align 8
  br label %57

57:                                               ; preds = %48, %37
  %58 = load i64, i64* %8, align 8
  ret i64 %58
}

declare dso_local i32 @ZSTD_getParams(i32, i64, i32) #1

declare dso_local i64 @ZSTD_compressBegin_advanced(i32, i32*, i32, i32, i64) #1

declare dso_local i32 @FUZZ_ZASSERT(i64) #1

declare dso_local i64 @ZSTD_compressBlock(i32, i8*, i64, i8*, i64) #1

declare dso_local i32 @FUZZ_ASSERT(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ZSTD_decompressBegin(i32) #1

declare dso_local i64 @ZSTD_decompressBlock(i32, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
