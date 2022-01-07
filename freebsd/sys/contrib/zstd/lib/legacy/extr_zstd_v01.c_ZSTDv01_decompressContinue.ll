; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v01.c_ZSTDv01_decompressContinue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v01.c_ZSTDv01_decompressContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i32, i64, i8* }
%struct.TYPE_6__ = type { i64 }

@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTD_magicNumber = common dso_local global i64 0, align 8
@prefix_unknown = common dso_local global i32 0, align 4
@ZSTD_blockHeaderSize = common dso_local global i8* null, align 8
@GENERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDv01_decompressContinue(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %12, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @srcSize_wrong, align 4
  %26 = call i64 @ERROR(i32 %25)
  store i64 %26, i64* %6, align 8
  br label %129

27:                                               ; preds = %5
  %28 = load i8*, i8** %8, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @ZSTD_readBE32(i8* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* @ZSTD_magicNumber, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @prefix_unknown, align 4
  %50 = call i64 @ERROR(i32 %49)
  store i64 %50, i64* %6, align 8
  br label %129

51:                                               ; preds = %42
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  store i64 0, i64* %6, align 8
  br label %129

58:                                               ; preds = %37
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load i8*, i8** %10, align 8
  %65 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %66 = call i64 @ZSTDv01_getcBlockSize(i8* %64, i8* %65, %struct.TYPE_6__* %14)
  store i64 %66, i64* %15, align 8
  %67 = load i64, i64* %15, align 8
  %68 = call i64 @ZSTDv01_isError(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i64, i64* %15, align 8
  store i64 %71, i64* %6, align 8
  br label %129

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 130
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  br label %91

81:                                               ; preds = %72
  %82 = load i64, i64* %15, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  store i32 2, i32* %90, align 8
  br label %91

91:                                               ; preds = %81, %76
  store i64 0, i64* %6, align 8
  br label %129

92:                                               ; preds = %58
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  switch i64 %95, label %113 [
    i64 131, label %96
    i64 129, label %103
    i64 128, label %109
    i64 130, label %112
  ]

96:                                               ; preds = %92
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i64 @ZSTD_decompressBlock(%struct.TYPE_5__* %97, i8* %98, i64 %99, i8* %100, i64 %101)
  store i64 %102, i64* %16, align 8
  br label %116

103:                                              ; preds = %92
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load i8*, i8** %10, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i64 @ZSTD_copyUncompressedBlock(i8* %104, i64 %105, i8* %106, i64 %107)
  store i64 %108, i64* %16, align 8
  br label %116

109:                                              ; preds = %92
  %110 = load i32, i32* @GENERIC, align 4
  %111 = call i64 @ERROR(i32 %110)
  store i64 %111, i64* %6, align 8
  br label %129

112:                                              ; preds = %92
  store i64 0, i64* %16, align 8
  br label %116

113:                                              ; preds = %92
  %114 = load i32, i32* @GENERIC, align 4
  %115 = call i64 @ERROR(i32 %114)
  store i64 %115, i64* %6, align 8
  br label %129

116:                                              ; preds = %112, %103, %96
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load i8*, i8** @ZSTD_blockHeaderSize, align 8
  %120 = ptrtoint i8* %119 to i64
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i64 %120, i64* %122, align 8
  %123 = load i8*, i8** %8, align 8
  %124 = load i64, i64* %16, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* %16, align 8
  store i64 %128, i64* %6, align 8
  br label %129

129:                                              ; preds = %116, %113, %109, %91, %70, %51, %48, %24
  %130 = load i64, i64* %6, align 8
  ret i64 %130
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_readBE32(i8*) #1

declare dso_local i64 @ZSTDv01_getcBlockSize(i8*, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @ZSTDv01_isError(i64) #1

declare dso_local i64 @ZSTD_decompressBlock(%struct.TYPE_5__*, i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTD_copyUncompressedBlock(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
