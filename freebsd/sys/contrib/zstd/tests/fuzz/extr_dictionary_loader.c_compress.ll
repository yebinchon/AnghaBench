; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_dictionary_loader.c_compress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/fuzz/extr_dictionary_loader.c_compress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*, i64, i32, i32)* @compress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @compress(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = call i32* (...) @ZSTD_createCCtx()
  store i32* %19, i32** %17, align 8
  %20 = load i32*, i32** %17, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* %16, align 4
  %25 = call i32 @ZSTD_CCtx_loadDictionary_advanced(i32* %20, i8* %21, i64 %22, i32 %23, i32 %24)
  %26 = call i32 @FUZZ_ZASSERT(i32 %25)
  %27 = load i32*, i32** %17, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @ZSTD_compress2(i32* %27, i8* %28, i64 %29, i8* %30, i64 %31)
  store i64 %32, i64* %18, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = call i32 @ZSTD_freeCCtx(i32* %33)
  %35 = load i64, i64* %18, align 8
  ret i64 %35
}

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32 @FUZZ_ZASSERT(i32) #1

declare dso_local i32 @ZSTD_CCtx_loadDictionary_advanced(i32*, i8*, i64, i32, i32) #1

declare dso_local i64 @ZSTD_compress2(i32*, i8*, i64, i8*, i64) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
