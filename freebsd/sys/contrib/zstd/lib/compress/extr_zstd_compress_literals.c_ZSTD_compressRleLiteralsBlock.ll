; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_literals.c_ZSTD_compressRleLiteralsBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_literals.c_ZSTD_compressRleLiteralsBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@set_rle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compressRleLiteralsBlock(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ugt i64 %13, 31
  %15 = zext i1 %14 to i32
  %16 = add nsw i32 1, %15
  %17 = load i64, i64* %8, align 8
  %18 = icmp ugt i64 %17, 4095
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* %10, align 4
  switch i32 %22, label %52 [
    i32 1, label %23
    i32 2, label %32
    i32 3, label %42
  ]

23:                                               ; preds = %4
  %24 = load i32, i32* @set_rle, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %8, align 8
  %27 = shl i64 %26, 3
  %28 = add i64 %25, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %29, i32* %31, align 4
  br label %54

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @set_rle, align 4
  %35 = add nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %8, align 8
  %38 = shl i64 %37, 4
  %39 = add i64 %36, %38
  %40 = trunc i64 %39 to i32
  %41 = call i32 @MEM_writeLE16(i32* %33, i32 %40)
  br label %54

42:                                               ; preds = %4
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @set_rle, align 4
  %45 = add nsw i32 %44, 12
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = shl i64 %47, 4
  %49 = add i64 %46, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @MEM_writeLE32(i32* %43, i32 %50)
  br label %54

52:                                               ; preds = %4
  %53 = call i32 @assert(i32 0)
  br label %54

54:                                               ; preds = %52, %42, %32, %23
  %55 = load i8*, i8** %7, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  ret i64 %64
}

declare dso_local i32 @MEM_writeLE16(i32*, i32) #1

declare dso_local i32 @MEM_writeLE32(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
