; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_decoder.c_update_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_decoder.c_update_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LZMA_VLI_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64)* @update_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_size(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @LZMA_VLI_MAX, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = load i64, i64* @LZMA_VLI_MAX, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64*, i64** %5, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %7, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %19, %21
  %23 = load i64, i64* %6, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %13
  store i32 1, i32* %4, align 4
  br label %31

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = load i64*, i64** %5, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, %27
  store i64 %30, i64* %28, align 8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
