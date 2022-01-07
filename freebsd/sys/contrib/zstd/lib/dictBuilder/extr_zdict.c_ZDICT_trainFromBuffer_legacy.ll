; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_zdict.c_ZDICT_trainFromBuffer_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_zdict.c_ZDICT_trainFromBuffer_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZDICT_MIN_SAMPLES_SIZE = common dso_local global i64 0, align 8
@NOISELENGTH = common dso_local global i64 0, align 8
@memory_allocation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZDICT_trainFromBuffer_legacy(i8* %0, i64 %1, i8* %2, i64* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i64*, i64** %11, align 8
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @ZDICT_totalSampleSize(i64* %17, i32 %18)
  store i64 %19, i64* %16, align 8
  %20 = load i64, i64* %16, align 8
  %21 = load i64, i64* @ZDICT_MIN_SAMPLES_SIZE, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %54

24:                                               ; preds = %6
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* @NOISELENGTH, align 8
  %27 = add i64 %25, %26
  %28 = call i8* @malloc(i64 %27)
  store i8* %28, i8** %15, align 8
  %29 = load i8*, i8** %15, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* @memory_allocation, align 4
  %33 = call i64 @ERROR(i32 %32)
  store i64 %33, i64* %7, align 8
  br label %54

34:                                               ; preds = %24
  %35 = load i8*, i8** %15, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load i64, i64* %16, align 8
  %38 = call i32 @memcpy(i8* %35, i8* %36, i64 %37)
  %39 = load i8*, i8** %15, align 8
  %40 = load i64, i64* %16, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = load i64, i64* @NOISELENGTH, align 8
  %43 = call i32 @ZDICT_fillNoise(i8* %41, i64 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i8*, i8** %15, align 8
  %47 = load i64*, i64** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i64 @ZDICT_trainFromBuffer_unsafe_legacy(i8* %44, i64 %45, i8* %46, i64* %47, i32 %48, i32 %49)
  store i64 %50, i64* %14, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = call i32 @free(i8* %51)
  %53 = load i64, i64* %14, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %34, %31, %23
  %55 = load i64, i64* %7, align 8
  ret i64 %55
}

declare dso_local i64 @ZDICT_totalSampleSize(i64*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @ZDICT_fillNoise(i8*, i64) #1

declare dso_local i64 @ZDICT_trainFromBuffer_unsafe_legacy(i8*, i64, i8*, i64*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
