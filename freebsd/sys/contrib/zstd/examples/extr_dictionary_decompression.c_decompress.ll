; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_dictionary_decompression.c_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_dictionary_decompression.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_CONTENTSIZE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: not compressed by zstd!\00", align 1
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: original size unknown!\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"DictID mismatch: expected %u got %u\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ZSTD_createDCtx() failed!\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Impossible because zstd will check this condition!\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%25s : %6u -> %7u \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompress(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i8* @mallocAndLoadFile_orDie(i8* %13, i64* %5)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @ZSTD_getFrameContentSize(i8* %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 (i32, i8*, ...) @CHECK(i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i32, i8*, ...) @CHECK(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  %30 = load i64, i64* %7, align 8
  %31 = call i8* @malloc_orDie(i64 %30)
  store i8* %31, i8** %8, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @ZSTD_getDictID_fromDDict(i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @ZSTD_getDictID_fromFrame(i8* %34, i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i8*, ...) @CHECK(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  %44 = call i32* (...) @ZSTD_createDCtx()
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i32 (i32, i8*, ...) @CHECK(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32*, i32** %11, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i32*, i32** %4, align 8
  %55 = call i64 @ZSTD_decompress_usingDDict(i32* %49, i8* %50, i64 %51, i8* %52, i64 %53, i32* %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @CHECK_ZSTD(i64 %56)
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* %7, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @CHECK(i32 %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %63 = load i8*, i8** %3, align 8
  %64 = load i64, i64* %5, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i64, i64* %7, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %63, i32 %65, i32 %67)
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @ZSTD_freeDCtx(i32* %69)
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 @free(i8* %71)
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @free(i8* %73)
  ret void
}

declare dso_local i8* @mallocAndLoadFile_orDie(i8*, i64*) #1

declare dso_local i64 @ZSTD_getFrameContentSize(i8*, i64) #1

declare dso_local i32 @CHECK(i32, i8*, ...) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i32 @ZSTD_getDictID_fromDDict(i32*) #1

declare dso_local i32 @ZSTD_getDictID_fromFrame(i8*, i64) #1

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i64 @ZSTD_decompress_usingDDict(i32*, i8*, i64, i8*, i64, i32*) #1

declare dso_local i32 @CHECK_ZSTD(i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
