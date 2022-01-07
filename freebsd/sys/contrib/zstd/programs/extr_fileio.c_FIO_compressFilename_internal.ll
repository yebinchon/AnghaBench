; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_compressFilename_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_compressFilename_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: %u bytes \0A\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"zstd: %s: file cannot be compressed as gzip (zstd compiled without ZSTD_GZCOMPRESS) -- ignored \0A\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"zstd: %s: file cannot be compressed as xz/lzma (zstd compiled without ZSTD_LZMACOMPRESS) -- ignored \0A\00", align 1
@.str.3 = private unnamed_addr constant [97 x i8] c"zstd: %s: file cannot be compressed as lz4 (zstd compiled without ZSTD_LZ4COMPRESS) -- ignored \0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\0D%79s\0D\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"%-20s :%6.2f%%   (%6llu => %6llu bytes, %s) \0A\00", align 1
@CLOCKS_PER_SEC = common dso_local global double 0.000000e+00, align 8
@.str.7 = private unnamed_addr constant [52 x i8] c"%-20s : Completed in %.2f sec  (cpu load : %.0f%%)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i8*, i32)* @FIO_compressFilename_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FIO_compressFilename_internal(%struct.TYPE_4__* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = call i32 (...) @UTIL_getTime()
  store i32 %21, i32* %11, align 4
  %22 = call i64 (...) @clock()
  store i64 %22, i64* %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @UTIL_getFileSize(i8* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %15, align 4
  %27 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %31 [
    i32 128, label %32
    i32 132, label %38
    i32 129, label %42
    i32 130, label %42
    i32 131, label %46
  ]

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %5, %31
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @FIO_compressZstdFrame(%struct.TYPE_4__* %33, i32* %7, i8* %34, i32 %35, i32 %36, i32* %13)
  store i32 %37, i32* %14, align 4
  br label %50

38:                                               ; preds = %5
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @EXM_THROW(i32 20, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %50

42:                                               ; preds = %5, %5
  %43 = load i32, i32* %10, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @EXM_THROW(i32 20, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i8* %44)
  br label %50

46:                                               ; preds = %5
  %47 = load i32, i32* %10, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @EXM_THROW(i32 20, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %46, %42, %38, %32
  %51 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sitofp i32 %53 to double
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = add nsw i32 %55, %59
  %61 = sitofp i32 %60 to double
  %62 = fdiv double %54, %61
  %63 = fmul double %62, 1.000000e+02
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = load i8*, i8** %8, align 8
  %69 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* %52, double %63, i64 %65, i64 %67, i8* %68)
  %70 = call i64 (...) @clock()
  store i64 %70, i64* %16, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i64, i64* %12, align 8
  %73 = sub nsw i64 %71, %72
  %74 = sitofp i64 %73 to double
  %75 = load double, double* @CLOCKS_PER_SEC, align 8
  %76 = fdiv double %74, %75
  store double %76, double* %17, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @UTIL_clockSpanNano(i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %18, align 4
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %80, 1.000000e+09
  store double %81, double* %19, align 8
  %82 = load double, double* %17, align 8
  %83 = load double, double* %19, align 8
  %84 = fdiv double %82, %83
  %85 = fmul double %84, 1.000000e+02
  store double %85, double* %20, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load double, double* %19, align 8
  %88 = load double, double* %20, align 8
  %89 = call i32 (i32, i8*, i8*, ...) @DISPLAYLEVEL(i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i8* %86, double %87, double %88)
  ret i32 0
}

declare dso_local i32 @UTIL_getTime(...) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @UTIL_getFileSize(i8*) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i8*, ...) #1

declare dso_local i32 @FIO_compressZstdFrame(%struct.TYPE_4__*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i8*) #1

declare dso_local i32 @UTIL_clockSpanNano(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
