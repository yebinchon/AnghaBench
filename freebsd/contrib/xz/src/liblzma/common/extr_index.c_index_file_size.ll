; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index.c_index_file_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index.c_index_file_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZMA_STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@LZMA_VLI_MAX = common dso_local global i64 0, align 8
@LZMA_VLI_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64)* @index_file_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @index_file_size(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %15 = mul nsw i32 2, %14
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load i64, i64* %11, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* %8, align 8
  %21 = call i64 @vli_ceil4(i64 %20)
  %22 = add nsw i64 %19, %21
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* @LZMA_VLI_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  store i64 %27, i64* %6, align 8
  br label %41

28:                                               ; preds = %5
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @index_size(i64 %29, i64 %30)
  %32 = load i64, i64* %12, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %12, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @LZMA_VLI_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  store i64 %38, i64* %6, align 8
  br label %41

39:                                               ; preds = %28
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %39, %37, %26
  %42 = load i64, i64* %6, align 8
  ret i64 %42
}

declare dso_local i64 @vli_ceil4(i64) #1

declare dso_local i64 @index_size(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
