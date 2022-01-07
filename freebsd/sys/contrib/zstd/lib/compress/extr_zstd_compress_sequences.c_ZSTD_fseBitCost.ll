; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_fseBitCost.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress_sequences.c_ZSTD_fseBitCost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Repeat FSE_CTable has maxSymbolValue %u < %u\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Repeat FSE_CTable has Prob[%u] == 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @ZSTD_fseBitCost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_fseBitCost(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 8, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @FSE_initCState(%struct.TYPE_3__* %10, i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @ZSTD_getFSEMaxSymbolValue(i32* %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp ult i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @GENERIC, align 4
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @ZSTD_getFSEMaxSymbolValue(i32* %22)
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32, i32, i8*, i32, ...) @RETURN_ERROR_IF(i32 %20, i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %66, %3
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %69

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, 1
  %35 = shl i32 %34, 8
  store i32 %35, i32* %12, align 4
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @FSE_bitCost(i32 %37, i32 %38, i32 %39, i32 8)
  store i32 %40, i32* %13, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  br label %66

48:                                               ; preds = %30
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp uge i32 %49, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* @GENERIC, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (i32, i32, i8*, i32, ...) @RETURN_ERROR_IF(i32 %52, i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul i32 %60, %61
  %63 = zext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %8, align 8
  br label %66

66:                                               ; preds = %48, %47
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %26

69:                                               ; preds = %26
  %70 = load i64, i64* %8, align 8
  %71 = lshr i64 %70, 8
  ret i64 %71
}

declare dso_local i32 @FSE_initCState(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*, i32, ...) #1

declare dso_local i32 @ZSTD_getFSEMaxSymbolValue(i32*) #1

declare dso_local i32 @FSE_bitCost(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
