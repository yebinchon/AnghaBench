; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_legacy.c_testSimpleAPI.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_legacy.c_testSimpleAPI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXPECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ERROR: Not enough memory!\0A\00", align 1
@COMPRESSED = common dso_local global i32 0, align 4
@COMPRESSED_SIZE = common dso_local global i32 0, align 4
@ZSTD_error_prefix_unknown = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"ERROR: Invalid frame magic number, was this compiled without legacy support?\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ERROR: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ERROR: Wrong decoded size\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"ERROR: Wrong decoded output produced\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Simple API OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @testSimpleAPI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testSimpleAPI() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @EXPECTED, align 4
  %6 = call i64 @strlen(i32 %5)
  store i64 %6, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i8* @malloc(i64 %7)
  store i8* %8, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  %12 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %51

13:                                               ; preds = %0
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %2, align 8
  %16 = load i32, i32* @COMPRESSED, align 4
  %17 = load i32, i32* @COMPRESSED_SIZE, align 4
  %18 = call i64 @ZSTD_decompress(i8* %14, i64 %15, i32 %16, i32 %17)
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @ZSTD_isError(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @ZSTD_error_prefix_unknown, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  br label %32

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @ZSTD_getErrorName(i64 %29)
  %31 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %26
  store i32 1, i32* %1, align 4
  br label %51

33:                                               ; preds = %13
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %2, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* @EXPECTED, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %2, align 8
  %43 = call i64 @memcmp(i32 %40, i8* %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %1, align 4
  br label %51

47:                                               ; preds = %39
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @free(i8* %48)
  %50 = call i32 (i8*, ...) @DISPLAY(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %51

51:                                               ; preds = %47, %45, %32, %11
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @DISPLAY(i8*, ...) #1

declare dso_local i64 @ZSTD_decompress(i8*, i64, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @ZSTD_getErrorName(i64) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
