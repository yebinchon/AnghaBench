; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompressBlock_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompressBlock_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i64, i8*, i64)* @ZSTDv05_decompressBlock_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTDv05_decompressBlock_internal(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @BLOCKSIZE, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @srcSize_wrong, align 4
  %21 = call i64 @ERROR(i32 %20)
  store i64 %21, i64* %6, align 8
  br label %45

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load i64, i64* %11, align 8
  %26 = call i64 @ZSTDv05_decodeLiteralsBlock(i32* %23, i8* %24, i64 %25)
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = call i64 @ZSTDv05_isError(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i64, i64* %13, align 8
  store i64 %31, i64* %6, align 8
  br label %45

32:                                               ; preds = %22
  %33 = load i64, i64* %13, align 8
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 %33
  store i32* %35, i32** %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %11, align 8
  %38 = sub i64 %37, %36
  store i64 %38, i64* %11, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i64 @ZSTDv05_decompressSequences(i32* %39, i8* %40, i64 %41, i32* %42, i64 %43)
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %32, %30, %19
  %46 = load i64, i64* %6, align 8
  ret i64 %46
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv05_decodeLiteralsBlock(i32*, i8*, i64) #1

declare dso_local i64 @ZSTDv05_isError(i64) #1

declare dso_local i64 @ZSTDv05_decompressSequences(i32*, i8*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
