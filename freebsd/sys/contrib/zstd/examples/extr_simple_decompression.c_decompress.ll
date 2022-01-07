; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_simple_decompression.c_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_simple_decompression.c_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_CONTENTSIZE_ERROR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: not compressed by zstd!\00", align 1
@ZSTD_CONTENTSIZE_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: original size unknown!\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"Impossible because zstd will check this condition!\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%25s : %6u -> %7u \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decompress(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = call i8* @mallocAndLoadFile_orDie(i8* %8, i64* %3)
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @ZSTD_getFrameContentSize(i8* %10, i64 %11)
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @ZSTD_CONTENTSIZE_ERROR, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 (i32, i8*, ...) @CHECK(i32 %16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @ZSTD_CONTENTSIZE_UNKNOWN, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 (i32, i8*, ...) @CHECK(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @malloc_orDie(i64 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i64 @ZSTD_decompress(i8* %27, i64 %28, i8* %29, i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @CHECK_ZSTD(i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 (i32, i8*, ...) @CHECK(i32 %37, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i8*, i8** %2, align 8
  %40 = load i64, i64* %3, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i64, i64* %5, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %39, i32 %41, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @free(i8* %45)
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @free(i8* %47)
  ret void
}

declare dso_local i8* @mallocAndLoadFile_orDie(i8*, i64*) #1

declare dso_local i64 @ZSTD_getFrameContentSize(i8*, i64) #1

declare dso_local i32 @CHECK(i32, i8*, ...) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i64 @ZSTD_decompress(i8*, i64, i8*, i64) #1

declare dso_local i32 @CHECK_ZSTD(i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
