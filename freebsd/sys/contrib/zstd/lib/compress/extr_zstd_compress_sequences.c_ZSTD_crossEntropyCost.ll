; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_crossEntropyCost.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_crossEntropyCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kInverseProbabilityLog256 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16*, i32, i32*, i32)* @ZSTD_crossEntropyCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_crossEntropyCost(i16* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i16* %0, i16** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 8, %14
  store i32 %15, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ule i32 %16, 8
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %67, %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %70

24:                                               ; preds = %20
  %25 = load i16*, i16** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i16, i16* %25, i64 %27
  %29 = load i16, i16* %28, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %24
  %33 = load i16*, i16** %5, align 8
  %34 = load i32, i32* %11, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %33, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = sext i16 %37 to i32
  br label %40

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %32
  %41 = phi i32 [ %38, %32 ], [ 1, %39 ]
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %42, %43
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ugt i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* %13, align 4
  %50 = icmp ult i32 %49, 256
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** @kInverseProbabilityLog256, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = mul i32 %57, %62
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %40
  %68 = load i32, i32* %11, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %20

70:                                               ; preds = %20
  %71 = load i64, i64* %10, align 8
  %72 = lshr i64 %71, 8
  ret i64 %72
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
