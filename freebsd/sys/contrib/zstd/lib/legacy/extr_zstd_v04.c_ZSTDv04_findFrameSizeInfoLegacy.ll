; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_ZSTDv04_findFrameSizeInfoLegacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v04.c_ZSTDv04_findFrameSizeInfoLegacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZSTD_frameHeaderSize_min = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_MAGICNUMBER = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@BLOCKSIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTDv04_findFrameSizeInfoLegacy(i8* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @ZSTD_frameHeaderSize_min, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load i64*, i64** %7, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = load i32, i32* @srcSize_wrong, align 4
  %24 = call i64 @ERROR(i32 %23)
  %25 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %21, i64* %22, i64 %24)
  br label %98

26:                                               ; preds = %4
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @MEM_readLE32(i8* %27)
  %29 = load i64, i64* @ZSTD_MAGICNUMBER, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i64*, i64** %7, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* @prefix_unknown, align 4
  %35 = call i64 @ERROR(i32 %34)
  %36 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %32, i64* %33, i64 %35)
  br label %98

37:                                               ; preds = %26
  %38 = load i64, i64* @ZSTD_frameHeaderSize_min, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 %38
  store i32* %40, i32** %9, align 8
  %41 = load i64, i64* @ZSTD_frameHeaderSize_min, align 8
  %42 = load i64, i64* %10, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %37, %76
  %45 = load i32*, i32** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i64 @ZSTD_getcBlockSize(i32* %45, i64 %46, i32* %12)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i64 @ZSTD_isError(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i64*, i64** %7, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %13, align 8
  %55 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %52, i64* %53, i64 %54)
  br label %98

56:                                               ; preds = %44
  %57 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  store i32* %59, i32** %9, align 8
  %60 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %10, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %56
  %67 = load i64*, i64** %7, align 8
  %68 = load i64*, i64** %8, align 8
  %69 = load i32, i32* @srcSize_wrong, align 4
  %70 = call i64 @ERROR(i32 %69)
  %71 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %67, i64* %68, i64 %70)
  br label %98

72:                                               ; preds = %56
  %73 = load i64, i64* %13, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  br label %85

76:                                               ; preds = %72
  %77 = load i64, i64* %13, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 %77
  store i32* %79, i32** %9, align 8
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %10, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %44

85:                                               ; preds = %75
  %86 = load i32*, i32** %9, align 8
  %87 = load i8*, i8** %5, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = ptrtoint i32* %86 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = load i64*, i64** %7, align 8
  store i64 %92, i64* %93, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* @BLOCKSIZE, align 8
  %96 = mul i64 %94, %95
  %97 = load i64*, i64** %8, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %85, %66, %51, %31, %20
  ret void
}

declare dso_local i32 @ZSTD_errorFrameSizeInfoLegacy(i64*, i64*, i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ZSTD_getcBlockSize(i32*, i64, i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
