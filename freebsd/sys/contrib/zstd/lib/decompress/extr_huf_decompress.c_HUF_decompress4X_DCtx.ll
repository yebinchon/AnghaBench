; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X_DCtx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_huf_decompress.c_HUF_decompress4X_DCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dstSize_tooSmall = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_decompress4X_DCtx(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
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
  br label %68

18:                                               ; preds = %5
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ugt i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @corruption_detected, align 4
  %24 = call i64 @ERROR(i32 %23)
  store i64 %24, i64* %6, align 8
  br label %68

25:                                               ; preds = %18
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @memcpy(i8* %30, i8* %31, i64 %32)
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %6, align 8
  br label %68

35:                                               ; preds = %25
  %36 = load i64, i64* %11, align 8
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @memset(i8* %39, i32 %42, i64 %43)
  %45 = load i64, i64* %9, align 8
  store i64 %45, i64* %6, align 8
  br label %68

46:                                               ; preds = %35
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i32 @HUF_selectDecoder(i64 %47, i64 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i64 @HUF_decompress4X2_DCtx(i32* %53, i8* %54, i64 %55, i8* %56, i64 %57)
  br label %66

59:                                               ; preds = %46
  %60 = load i32*, i32** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @HUF_decompress4X1_DCtx(i32* %60, i8* %61, i64 %62, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %52
  %67 = phi i64 [ %58, %52 ], [ %65, %59 ]
  store i64 %67, i64* %6, align 8
  br label %68

68:                                               ; preds = %66, %38, %29, %22, %15
  %69 = load i64, i64* %6, align 8
  ret i64 %69
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @HUF_selectDecoder(i64, i64) #1

declare dso_local i64 @HUF_decompress4X2_DCtx(i32*, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUF_decompress4X1_DCtx(i32*, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
