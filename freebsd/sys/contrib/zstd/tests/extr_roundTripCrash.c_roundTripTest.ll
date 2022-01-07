; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_roundTripCrash.c_roundTripTest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_roundTripCrash.c_roundTripTest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@roundTripTest.maxClevel = internal constant i32 19, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Compression error : %s \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*, i64)* @roundTripTest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @roundTripTest(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = call i64 @MIN(i32 128, i64 %18)
  store i64 %19, i64* %14, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i32 @XXH32(i8* %20, i64 %21, i32 0)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = urem i32 %23, 19
  store i32 %24, i32* %16, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @ZSTD_compress(i8* %25, i64 %26, i8* %27, i64 %28, i32 %29)
  store i64 %30, i64* %17, align 8
  %31 = load i64, i64* %17, align 8
  %32 = call i64 @ZSTD_isError(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %6
  %35 = load i32, i32* @stderr, align 4
  %36 = load i64, i64* %17, align 8
  %37 = call i8* @ZSTD_getErrorName(i64 %36)
  %38 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i64, i64* %17, align 8
  store i64 %39, i64* %7, align 8
  br label %46

40:                                               ; preds = %6
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i64, i64* %17, align 8
  %45 = call i64 @ZSTD_decompress(i8* %41, i64 %42, i8* %43, i64 %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @XXH32(i8*, i64, i32) #1

declare dso_local i64 @ZSTD_compress(i8*, i64, i8*, i64, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @ZSTD_getErrorName(i64) #1

declare dso_local i64 @ZSTD_decompress(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
