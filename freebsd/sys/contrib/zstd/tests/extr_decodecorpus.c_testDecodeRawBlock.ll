; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_testDecodeRawBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_testDecodeRawBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@DECOMPRESSED_BUFFER = common dso_local global i32 0, align 4
@MAX_DECOMPRESSED_SIZE = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*)* @testDecodeRawBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @testDecodeRawBlock(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = call i32* (...) @ZSTD_createDCtx()
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i64 @ZSTD_decompressBegin(i32* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @ZSTD_isError(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, i64* %5, align 8
  store i64 %13, i64* %2, align 8
  br label %67

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @DECOMPRESSED_BUFFER, align 4
  %17 = load i32, i32* @MAX_DECOMPRESSED_SIZE, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  %29 = ptrtoint i32* %24 to i64
  %30 = ptrtoint i32* %28 to i64
  %31 = sub i64 %29, %30
  %32 = sdiv exact i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i64 @ZSTD_decompressBlock(i32* %15, i32 %16, i32 %17, i64 %20, i32 %33)
  store i64 %34, i64* %5, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ZSTD_freeDCtx(i32* %35)
  %37 = load i64, i64* %5, align 8
  %38 = call i64 @ZSTD_isError(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %14
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %2, align 8
  br label %67

42:                                               ; preds = %14
  %43 = load i32, i32* @DECOMPRESSED_BUFFER, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = ptrtoint i32* %50 to i64
  %56 = ptrtoint i32* %54 to i64
  %57 = sub i64 %55, %56
  %58 = sdiv exact i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i64 @memcmp(i32 %43, i64 %46, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %42
  %63 = load i32, i32* @corruption_detected, align 4
  %64 = call i64 @ERROR(i32 %63)
  store i64 %64, i64* %2, align 8
  br label %67

65:                                               ; preds = %42
  %66 = load i64, i64* %5, align 8
  store i64 %66, i64* %2, align 8
  br label %67

67:                                               ; preds = %65, %62, %40, %12
  %68 = load i64, i64* %2, align 8
  ret i64 %68
}

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i64 @ZSTD_decompressBegin(i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decompressBlock(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

declare dso_local i64 @memcmp(i32, i64, i32) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
