; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress1X2_usingDTable_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v07.c_HUFv07_decompress1X2_usingDTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@corruption_detected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32*)* @HUFv07_decompress1X2_usingDTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUFv07_decompress1X2_usingDTable_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %12, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %13, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = bitcast i32* %26 to i8*
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %15, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i32 @HUFv07_getDTableDesc(i32* %30)
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %18, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = call i64 @BITv07_initDStream(i32* %16, i8* %35, i64 %36)
  store i64 %37, i64* %19, align 8
  %38 = load i64, i64* %19, align 8
  %39 = call i64 @HUFv07_isError(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i64, i64* %19, align 8
  store i64 %42, i64* %6, align 8
  br label %56

43:                                               ; preds = %5
  %44 = load i32*, i32** %12, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %18, align 4
  %48 = call i32 @HUFv07_decodeStreamX2(i32* %44, i32* %16, i32* %45, i32* %46, i32 %47)
  %49 = call i32 @BITv07_endOfDStream(i32* %16)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* @corruption_detected, align 4
  %53 = call i64 @ERROR(i32 %52)
  store i64 %53, i64* %6, align 8
  br label %56

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %6, align 8
  br label %56

56:                                               ; preds = %54, %51, %41
  %57 = load i64, i64* %6, align 8
  ret i64 %57
}

declare dso_local i32 @HUFv07_getDTableDesc(i32*) #1

declare dso_local i64 @BITv07_initDStream(i32*, i8*, i64) #1

declare dso_local i64 @HUFv07_isError(i64) #1

declare dso_local i32 @HUFv07_decodeStreamX2(i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @BITv07_endOfDStream(i32*) #1

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
