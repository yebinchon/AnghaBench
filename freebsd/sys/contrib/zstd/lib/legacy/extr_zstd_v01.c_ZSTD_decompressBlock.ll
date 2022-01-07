; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decompressBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v01.c_ZSTD_decompressBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i64, i8*, i64)* @ZSTD_decompressBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_decompressBlock(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i64 0, i64* %14, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @ZSTDv01_decodeLiteralsBlock(i8* %18, i8* %19, i64 %20, i32** %13, i64* %14, i8* %21, i64 %22)
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %15, align 8
  %25 = call i64 @ZSTDv01_isError(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %15, align 8
  store i64 %28, i64* %6, align 8
  br label %44

29:                                               ; preds = %5
  %30 = load i64, i64* %15, align 8
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 %30
  store i32* %32, i32** %12, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %11, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %11, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @ZSTD_decompressSequences(i8* %36, i8* %37, i64 %38, i32* %39, i64 %40, i32* %41, i64 %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %29, %27
  %45 = load i64, i64* %6, align 8
  ret i64 %45
}

declare dso_local i64 @ZSTDv01_decodeLiteralsBlock(i8*, i8*, i64, i32**, i64*, i8*, i64) #1

declare dso_local i64 @ZSTDv01_isError(i64) #1

declare dso_local i64 @ZSTD_decompressSequences(i8*, i8*, i64, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
