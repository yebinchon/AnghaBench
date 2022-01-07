; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompressContinue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/legacy/extr_zstd_v05.c_ZSTDv05_decompressContinue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i32, i8*, i32 }
%struct.TYPE_9__ = type { i32 }

@srcSize_wrong = common dso_local global i32 0, align 4
@ZSTDv05_frameHeaderSize_min = common dso_local global i64 0, align 8
@GENERIC = common dso_local global i32 0, align 4
@ZSTDv05_blockHeaderSize = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTDv05_decompressContinue(%struct.TYPE_10__* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_9__, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @srcSize_wrong, align 4
  %23 = call i64 @ERROR(i32 %22)
  store i64 %23, i64* %6, align 8
  br label %162

24:                                               ; preds = %5
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @ZSTDv05_checkContinuity(%struct.TYPE_10__* %25, i8* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %159 [
    i32 132, label %31
    i32 134, label %72
    i32 135, label %93
    i32 133, label %122
  ]

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @srcSize_wrong, align 4
  %37 = call i64 @ERROR(i32 %36)
  store i64 %37, i64* %6, align 8
  br label %162

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %42 = call i64 @ZSTDv05_decodeFrameHeader_Part1(%struct.TYPE_10__* %39, i8* %40, i64 %41)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ZSTDv05_isError(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %6, align 8
  br label %162

54:                                               ; preds = %38
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %60 = call i32 @memcpy(i32 %57, i8* %58, i64 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ZSTDv05_frameHeaderSize_min, align 8
  %65 = icmp ugt i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %54
  %67 = load i32, i32* @GENERIC, align 4
  %68 = call i64 @ERROR(i32 %67)
  store i64 %68, i64* %6, align 8
  br label %162

69:                                               ; preds = %54
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %24, %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @ZSTDv05_decodeFrameHeader_Part2(%struct.TYPE_10__* %73, i32 %76, i64 %79)
  store i64 %80, i64* %12, align 8
  %81 = load i64, i64* %12, align 8
  %82 = call i32 @ZSTDv05_isError(i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %72
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %6, align 8
  br label %162

86:                                               ; preds = %72
  %87 = load i8*, i8** @ZSTDv05_blockHeaderSize, align 8
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i32 135, i32* %92, align 8
  store i64 0, i64* %6, align 8
  br label %162

93:                                               ; preds = %24
  %94 = load i8*, i8** %10, align 8
  %95 = load i8*, i8** @ZSTDv05_blockHeaderSize, align 8
  %96 = call i64 @ZSTDv05_getcBlockSize(i8* %94, i8* %95, %struct.TYPE_9__* %13)
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @ZSTDv05_isError(i64 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %93
  %101 = load i64, i64* %14, align 8
  store i64 %101, i64* %6, align 8
  br label %162

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 130
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32 132, i32* %110, align 8
  br label %121

111:                                              ; preds = %102
  %112 = load i64, i64* %14, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  store i32 133, i32* %120, align 8
  br label %121

121:                                              ; preds = %111, %106
  store i64 0, i64* %6, align 8
  br label %162

122:                                              ; preds = %24
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  switch i32 %125, label %143 [
    i32 131, label %126
    i32 129, label %133
    i32 128, label %139
    i32 130, label %142
  ]

126:                                              ; preds = %122
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = load i8*, i8** %8, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i64 @ZSTDv05_decompressBlock_internal(%struct.TYPE_10__* %127, i8* %128, i64 %129, i8* %130, i64 %131)
  store i64 %132, i64* %15, align 8
  br label %146

133:                                              ; preds = %122
  %134 = load i8*, i8** %8, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = load i64, i64* %11, align 8
  %138 = call i64 @ZSTDv05_copyRawBlock(i8* %134, i64 %135, i8* %136, i64 %137)
  store i64 %138, i64* %15, align 8
  br label %146

139:                                              ; preds = %122
  %140 = load i32, i32* @GENERIC, align 4
  %141 = call i64 @ERROR(i32 %140)
  store i64 %141, i64* %6, align 8
  br label %162

142:                                              ; preds = %122
  store i64 0, i64* %15, align 8
  br label %146

143:                                              ; preds = %122
  %144 = load i32, i32* @GENERIC, align 4
  %145 = call i64 @ERROR(i32 %144)
  store i64 %145, i64* %6, align 8
  br label %162

146:                                              ; preds = %142, %133, %126
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  store i32 135, i32* %148, align 8
  %149 = load i8*, i8** @ZSTDv05_blockHeaderSize, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = load i64, i64* %15, align 8
  %155 = getelementptr inbounds i8, i8* %153, i64 %154
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  %158 = load i64, i64* %15, align 8
  store i64 %158, i64* %6, align 8
  br label %162

159:                                              ; preds = %24
  %160 = load i32, i32* @GENERIC, align 4
  %161 = call i64 @ERROR(i32 %160)
  store i64 %161, i64* %6, align 8
  br label %162

162:                                              ; preds = %159, %146, %143, %139, %121, %100, %86, %84, %66, %50, %35, %21
  %163 = load i64, i64* %6, align 8
  ret i64 %163
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTDv05_checkContinuity(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @ZSTDv05_decodeFrameHeader_Part1(%struct.TYPE_10__*, i8*, i64) #1

declare dso_local i32 @ZSTDv05_isError(i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @ZSTDv05_decodeFrameHeader_Part2(%struct.TYPE_10__*, i32, i64) #1

declare dso_local i64 @ZSTDv05_getcBlockSize(i8*, i8*, %struct.TYPE_9__*) #1

declare dso_local i64 @ZSTDv05_decompressBlock_internal(%struct.TYPE_10__*, i8*, i64, i8*, i64) #1

declare dso_local i64 @ZSTDv05_copyRawBlock(i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
