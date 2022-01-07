; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_reset_session_only = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compress2(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @ZSTD_reset_session_only, align 4
  %16 = call i32 @ZSTD_CCtx_reset(i32* %14, i32 %15)
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @ZSTD_e_end, align 4
  %23 = call i64 @ZSTD_compressStream2_simpleArgs(i32* %17, i8* %18, i64 %19, i64* %11, i8* %20, i64 %21, i64* %12, i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @FORWARD_IF_ERROR(i64 %24)
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load i32, i32* @dstSize_tooSmall, align 4
  %35 = call i32 @RETURN_ERROR(i32 %34)
  br label %36

36:                                               ; preds = %28, %5
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i64, i64* %11, align 8
  ret i64 %42
}

declare dso_local i32 @ZSTD_CCtx_reset(i32*, i32) #1

declare dso_local i64 @ZSTD_compressStream2_simpleArgs(i32*, i8*, i64, i64*, i8*, i64, i64*, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RETURN_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
