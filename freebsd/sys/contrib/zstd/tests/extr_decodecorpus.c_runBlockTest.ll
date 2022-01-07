; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_runBlockTest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_decodecorpus.c_runBlockTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Error in block mode on test seed %u: %s\0A\00", align 1
@gt_block = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Error in block mode with dictionary on test seed %u: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @runBlockTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runBlockTest(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = call i32 @initDictInfo(i32 0, i32 0, i32* null, i32 0)
  store i32 %11, i32* %6, align 4
  %12 = load i64*, i64** %3, align 8
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @generateCompressedBlock(i64 %13, i32* %4, i32 %14)
  %16 = load i64*, i64** %3, align 8
  store i64 %15, i64* %16, align 8
  %17 = call i64 @testDecodeRawBlock(i32* %4)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @ZSTD_isError(i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @ZSTD_getErrorName(i64 %24)
  %26 = call i32 @DISPLAY(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  store i32 1, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load i64*, i64** %3, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @gt_block, align 4
  %31 = call i64 @testDecodeWithDict(i64 %29, i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @ZSTD_isError(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load i64, i64* %5, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @ZSTD_getErrorName(i64 %38)
  %40 = call i32 @DISPLAY(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39)
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %35, %21
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @initDictInfo(i32, i32, i32*, i32) #1

declare dso_local i64 @generateCompressedBlock(i64, i32*, i32) #1

declare dso_local i64 @testDecodeRawBlock(i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @DISPLAY(i8*, i32, i32) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

declare dso_local i64 @testDecodeWithDict(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
