; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_zstd_decompress.c_readSkippableFrameSize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_zstd_decompress.c_readSkippableFrameSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_SKIPPABLEHEADERSIZE = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_FRAMEIDSIZE = common dso_local global i32 0, align 4
@frameParameter_unsupported = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @readSkippableFrameSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @readSkippableFrameSize(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* @ZSTD_SKIPPABLEHEADERSIZE, align 8
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @ZSTD_SKIPPABLEHEADERSIZE, align 8
  %11 = icmp ult i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* @srcSize_wrong, align 4
  %14 = call i32 @RETURN_ERROR_IF(i32 %12, i32 %13)
  %15 = load i8*, i8** %3, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* @ZSTD_FRAMEIDSIZE, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i64 @MEM_readLE32(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @ZSTD_SKIPPABLEHEADERSIZE, align 8
  %23 = add i64 %21, %22
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @frameParameter_unsupported, align 4
  %28 = call i32 @RETURN_ERROR_IF(i32 %26, i32 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp ugt i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* @srcSize_wrong, align 4
  %37 = call i32 @RETURN_ERROR_IF(i32 %35, i32 %36)
  %38 = load i64, i64* %7, align 8
  ret i64 %38
}

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i64 @MEM_readLE32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
