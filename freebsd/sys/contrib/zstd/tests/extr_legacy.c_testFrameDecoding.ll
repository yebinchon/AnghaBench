; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_legacy.c_testFrameDecoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_legacy.c_testFrameDecoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPECTED = common dso_local global i32 0, align 4
@COMPRESSED = common dso_local global i8* null, align 8
@COMPRESSED_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [59 x i8] c"ERROR: ZSTD_decompressBound: decompressed bound too small\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"ERROR: ZSTD_findFrameCompressedSize: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"ERROR: ZSTD_findFrameCompressedSize: expected frameSize to align with src buffer\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Frame Decoding OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @testFrameDecoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testFrameDecoding() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @EXPECTED, align 4
  %6 = call i64 @strlen(i32 %5)
  %7 = load i8*, i8** @COMPRESSED, align 8
  %8 = load i64, i64* @COMPRESSED_SIZE, align 8
  %9 = call i64 @ZSTD_decompressBound(i8* %7, i64 %8)
  %10 = icmp sgt i64 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %46

13:                                               ; preds = %0
  %14 = load i8*, i8** @COMPRESSED, align 8
  store i8* %14, i8** %2, align 8
  %15 = load i64, i64* @COMPRESSED_SIZE, align 8
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %13, %43
  %17 = load i8*, i8** %2, align 8
  %18 = load i64, i64* %3, align 8
  %19 = call i64 @ZSTD_findFrameCompressedSize(i8* %17, i64 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @ZSTD_isError(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @ZSTD_getErrorName(i64 %24)
  %26 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  store i32 1, i32* %1, align 4
  br label %46

27:                                               ; preds = %16
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %3, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %46

33:                                               ; preds = %27
  %34 = load i64, i64* %4, align 8
  %35 = load i8*, i8** %2, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  store i8* %36, i8** %2, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %3, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %3, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %44

43:                                               ; preds = %33
  br label %16

44:                                               ; preds = %42
  %45 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %46

46:                                               ; preds = %44, %31, %23, %11
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @ZSTD_decompressBound(i8*, i64) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i64 @ZSTD_findFrameCompressedSize(i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
