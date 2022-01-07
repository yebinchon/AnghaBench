; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_buildSeqTable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_buildSeqTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxSeq = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"impossible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i32, i32, i64, i8*, i64, i64*, i64*, i32*, i64, i32, i32)* @ZSTD_buildSeqTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_buildSeqTable(i32* %0, i32** %1, i32 %2, i32 %3, i64 %4, i8* %5, i64 %6, i64* %7, i64* %8, i32* %9, i64 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  store i32* %0, i32** %15, align 8
  store i32** %1, i32*** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i8* %5, i8** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i32* %9, i32** %24, align 8
  store i64 %10, i64* %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %37 = load i32, i32* %17, align 4
  switch i32 %37, label %128 [
    i32 128, label %38
    i32 131, label %71
    i32 129, label %74
    i32 130, label %98
  ]

38:                                               ; preds = %13
  %39 = load i64, i64* %21, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @srcSize_wrong, align 4
  %44 = call i32 @RETURN_ERROR_IF(i32 %42, i32 %43)
  %45 = load i8*, i8** %20, align 8
  %46 = bitcast i8* %45 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ugt i32 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @corruption_detected, align 4
  %52 = call i32 @RETURN_ERROR_IF(i32 %50, i32 %51)
  %53 = load i8*, i8** %20, align 8
  %54 = bitcast i8* %53 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  store i64 %56, i64* %28, align 8
  %57 = load i64*, i64** %22, align 8
  %58 = load i64, i64* %28, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %29, align 8
  %61 = load i64*, i64** %23, align 8
  %62 = load i64, i64* %28, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %30, align 8
  %65 = load i32*, i32** %15, align 8
  %66 = load i64, i64* %29, align 8
  %67 = load i64, i64* %30, align 8
  %68 = call i32 @ZSTD_buildSeqTable_rle(i32* %65, i64 %66, i64 %67)
  %69 = load i32*, i32** %15, align 8
  %70 = load i32**, i32*** %16, align 8
  store i32* %69, i32** %70, align 8
  store i64 1, i64* %14, align 8
  br label %132

71:                                               ; preds = %13
  %72 = load i32*, i32** %24, align 8
  %73 = load i32**, i32*** %16, align 8
  store i32* %72, i32** %73, align 8
  store i64 0, i64* %14, align 8
  br label %132

74:                                               ; preds = %13
  %75 = load i64, i64* %25, align 8
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* @corruption_detected, align 4
  %80 = call i32 @RETURN_ERROR_IF(i32 %78, i32 %79)
  %81 = load i32, i32* %26, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %74
  %84 = load i32, i32* %27, align 4
  %85 = icmp sgt i32 %84, 24
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i32**, i32*** %16, align 8
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to i8*
  store i8* %89, i8** %31, align 8
  %90 = load i64, i64* %19, align 8
  %91 = call i32 @SEQSYMBOL_TABLE_SIZE(i64 %90)
  %92 = sext i32 %91 to i64
  %93 = mul i64 4, %92
  store i64 %93, i64* %32, align 8
  %94 = load i8*, i8** %31, align 8
  %95 = load i64, i64* %32, align 8
  %96 = call i32 @PREFETCH_AREA(i8* %94, i64 %95)
  br label %97

97:                                               ; preds = %86, %83, %74
  store i64 0, i64* %14, align 8
  br label %132

98:                                               ; preds = %13
  %99 = load i32, i32* @MaxSeq, align 4
  %100 = add nsw i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = call i8* @llvm.stacksave()
  store i8* %102, i8** %34, align 8
  %103 = alloca i32, i64 %101, align 16
  store i64 %101, i64* %35, align 8
  %104 = load i8*, i8** %20, align 8
  %105 = load i64, i64* %21, align 8
  %106 = call i64 @FSE_readNCount(i32* %103, i32* %18, i32* %33, i8* %104, i64 %105)
  store i64 %106, i64* %36, align 8
  %107 = load i64, i64* %36, align 8
  %108 = call i32 @FSE_isError(i64 %107)
  %109 = load i32, i32* @corruption_detected, align 4
  %110 = call i32 @RETURN_ERROR_IF(i32 %108, i32 %109)
  %111 = load i32, i32* %33, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* %19, align 8
  %114 = icmp ugt i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* @corruption_detected, align 4
  %117 = call i32 @RETURN_ERROR_IF(i32 %115, i32 %116)
  %118 = load i32*, i32** %15, align 8
  %119 = load i32, i32* %18, align 4
  %120 = load i64*, i64** %22, align 8
  %121 = load i64*, i64** %23, align 8
  %122 = load i32, i32* %33, align 4
  %123 = call i32 @ZSTD_buildFSETable(i32* %118, i32* %103, i32 %119, i64* %120, i64* %121, i32 %122)
  %124 = load i32*, i32** %15, align 8
  %125 = load i32**, i32*** %16, align 8
  store i32* %124, i32** %125, align 8
  %126 = load i64, i64* %36, align 8
  store i64 %126, i64* %14, align 8
  %127 = load i8*, i8** %34, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %132

128:                                              ; preds = %13
  %129 = call i32 @assert(i32 0)
  %130 = load i32, i32* @GENERIC, align 4
  %131 = call i32 @RETURN_ERROR(i32 %130, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %38, %71, %97, %98, %128
  %133 = load i64, i64* %14, align 8
  ret i64 %133
}

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @ZSTD_buildSeqTable_rle(i32*, i64, i64) #1

declare dso_local i32 @SEQSYMBOL_TABLE_SIZE(i64) #1

declare dso_local i32 @PREFETCH_AREA(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @FSE_readNCount(i32*, i32*, i32*, i8*, i64) #1

declare dso_local i32 @FSE_isError(i64) #1

declare dso_local i32 @ZSTD_buildFSETable(i32*, i32*, i32, i64*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
