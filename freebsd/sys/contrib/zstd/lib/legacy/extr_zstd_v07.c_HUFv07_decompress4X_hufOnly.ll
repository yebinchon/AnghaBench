; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress4X_hufOnly.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress4X_hufOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUFv07_decompress4X_hufOnly(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i32, i32* @dstSize_tooSmall, align 4
  %17 = call i64 @ERROR(i32 %16)
  store i64 %17, i64* %6, align 8
  br label %50

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %11, align 8
  %24 = icmp ule i64 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %22, %18
  %26 = load i32, i32* @corruption_detected, align 4
  %27 = call i64 @ERROR(i32 %26)
  store i64 %27, i64* %6, align 8
  br label %50

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i64 @HUFv07_selectDecoder(i64 %29, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32*, i32** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i64 @HUFv07_decompress4X4_DCtx(i32* %35, i8* %36, i64 %37, i8* %38, i64 %39)
  br label %48

41:                                               ; preds = %28
  %42 = load i32*, i32** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @HUFv07_decompress4X2_DCtx(i32* %42, i8* %43, i64 %44, i8* %45, i64 %46)
  br label %48

48:                                               ; preds = %41, %34
  %49 = phi i64 [ %40, %34 ], [ %47, %41 ]
  store i64 %49, i64* %6, align 8
  br label %50

50:                                               ; preds = %48, %25, %15
  %51 = load i64, i64* %6, align 8
  ret i64 %51
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUFv07_selectDecoder(i64, i64) #1

declare dso_local i64 @HUFv07_decompress4X4_DCtx(i32*, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUFv07_decompress4X2_DCtx(i32*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
