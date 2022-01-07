; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_decompressContinue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_decompressContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_cSize = common dso_local global i32 0, align 4
@g_zdc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*)* @local_ZSTD_decompressContinue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @local_ZSTD_decompressContinue(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i64 0, i64* %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32, i32* @g_cSize, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %14, align 8
  %26 = load i64, i64* %9, align 8
  store i64 %26, i64* %15, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i32, i32* @g_zdc, align 4
  %30 = call i32 @ZSTD_decompressBegin(i32 %29)
  br label %31

31:                                               ; preds = %35, %5
  %32 = load i32*, i32** %12, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %31
  %36 = load i32, i32* @g_zdc, align 4
  %37 = call i64 @ZSTD_nextSrcSizeToDecompress(i32 %36)
  store i64 %37, i64* %16, align 8
  %38 = load i32, i32* @g_zdc, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i64, i64* %15, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %16, align 8
  %43 = call i64 @ZSTD_decompressContinue(i32 %38, i32* %39, i64 %40, i32* %41, i64 %42)
  store i64 %43, i64* %17, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 %44
  store i32* %46, i32** %12, align 8
  %47 = load i64, i64* %17, align 8
  %48 = load i64, i64* %11, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %11, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 %50
  store i32* %52, i32** %14, align 8
  %53 = load i64, i64* %17, align 8
  %54 = load i64, i64* %15, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %15, align 8
  br label %31

56:                                               ; preds = %31
  %57 = load i64, i64* %11, align 8
  ret i64 %57
}

declare dso_local i32 @ZSTD_decompressBegin(i32) #1

declare dso_local i64 @ZSTD_nextSrcSizeToDecompress(i32) #1

declare dso_local i64 @ZSTD_decompressContinue(i32, i32*, i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
