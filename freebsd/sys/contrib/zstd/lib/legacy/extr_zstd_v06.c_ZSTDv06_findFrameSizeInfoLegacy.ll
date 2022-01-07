; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_findFrameSizeInfoLegacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v06.c_ZSTDv06_findFrameSizeInfoLegacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@bt_compressed = common dso_local global i32 0, align 4
@ZSTDv06_MAGICNUMBER = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@ZSTDv06_blockHeaderSize = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTDv06_BLOCKSIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZSTDv06_findFrameSizeInfoLegacy(i8* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_3__, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i64, i64* %6, align 8
  store i64 %17, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %19 = load i32, i32* @bt_compressed, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @ZSTDv06_frameHeaderSize(i8* %21, i64 %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %13, align 8
  %25 = call i64 @ZSTDv06_isError(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i64*, i64** %7, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %13, align 8
  %31 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %28, i64* %29, i64 %30)
  br label %116

32:                                               ; preds = %4
  %33 = load i8*, i8** %5, align 8
  %34 = call i64 @MEM_readLE32(i8* %33)
  %35 = load i64, i64* @ZSTDv06_MAGICNUMBER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i64*, i64** %7, align 8
  %39 = load i64*, i64** %8, align 8
  %40 = load i32, i32* @prefix_unknown, align 4
  %41 = call i64 @ERROR(i32 %40)
  %42 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %38, i64* %39, i64 %41)
  br label %116

43:                                               ; preds = %32
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %47 = add i64 %45, %46
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load i64*, i64** %7, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i32, i32* @srcSize_wrong, align 4
  %53 = call i64 @ERROR(i32 %52)
  %54 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %50, i64* %51, i64 %53)
  br label %116

55:                                               ; preds = %43
  %56 = load i64, i64* %13, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 %56
  store i32* %58, i32** %9, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %10, align 8
  %61 = sub i64 %60, %59
  store i64 %61, i64* %10, align 8
  br label %62

62:                                               ; preds = %55, %94
  %63 = load i32*, i32** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @ZSTDv06_getcBlockSize(i32* %63, i64 %64, %struct.TYPE_3__* %12)
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i64 @ZSTDv06_isError(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i64*, i64** %7, align 8
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %70, i64* %71, i64 %72)
  br label %116

74:                                               ; preds = %62
  %75 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 %75
  store i32* %77, i32** %9, align 8
  %78 = load i64, i64* @ZSTDv06_blockHeaderSize, align 8
  %79 = load i64, i64* %10, align 8
  %80 = sub i64 %79, %78
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i64, i64* %10, align 8
  %83 = icmp ugt i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load i64*, i64** %7, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = load i32, i32* @srcSize_wrong, align 4
  %88 = call i64 @ERROR(i32 %87)
  %89 = call i32 @ZSTD_errorFrameSizeInfoLegacy(i64* %85, i64* %86, i64 %88)
  br label %116

90:                                               ; preds = %74
  %91 = load i64, i64* %14, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %103

94:                                               ; preds = %90
  %95 = load i64, i64* %14, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 %95
  store i32* %97, i32** %9, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %10, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %11, align 8
  br label %62

103:                                              ; preds = %93
  %104 = load i32*, i32** %9, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = ptrtoint i32* %104 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @ZSTDv06_BLOCKSIZE_MAX, align 8
  %114 = mul i64 %112, %113
  %115 = load i64*, i64** %8, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %103, %84, %69, %49, %37, %27
  ret void
}

declare dso_local i64 @ZSTDv06_frameHeaderSize(i8*, i64) #1

declare dso_local i64 @ZSTDv06_isError(i64) #1

declare dso_local i32 @ZSTD_errorFrameSizeInfoLegacy(i64*, i64*, i64) #1

declare dso_local i64 @MEM_readLE32(i8*) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTDv06_getcBlockSize(i32*, i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
