; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_filter_common.c_lzma_raw_coder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_filter_common.c_lzma_raw_coder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32*, i32, i32 }

@LZMA_FILTERS_MAX = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i64 0, align 8
@LZMA_VLI_UNKNOWN = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lzma_raw_coder_init(i32* %0, i32* %1, %struct.TYPE_11__* %2, %struct.TYPE_10__* (i32)* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__* (i32)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_10__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_10__*, align 8
  %21 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_10__* (i32)* %3, %struct.TYPE_10__* (i32)** %10, align 8
  store i32 %4, i32* %11, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %23 = call i32 @validate_chain(%struct.TYPE_11__* %22, i64* %12)
  %24 = call i32 @return_if_error(i32 %23)
  %25 = load i32, i32* @LZMA_FILTERS_MAX, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca %struct.TYPE_9__, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %5
  store i64 0, i64* %15, align 8
  br label %33

33:                                               ; preds = %81, %32
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %12, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %15, align 8
  %40 = sub i64 %38, %39
  %41 = sub i64 %40, 1
  store i64 %41, i64* %16, align 8
  %42 = load %struct.TYPE_10__* (i32)*, %struct.TYPE_10__* (i32)** %10, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = load i64, i64* %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.TYPE_10__* %42(i32 %47)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %17, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %50 = icmp eq %struct.TYPE_10__* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %37
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %37
  %57 = load i64, i64* @LZMA_OPTIONS_ERROR, align 8
  store i64 %57, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %154

58:                                               ; preds = %51
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32* %69, i32** %72, align 16
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %74 = load i64, i64* %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %58
  %82 = load i64, i64* %15, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  br label %33

84:                                               ; preds = %33
  br label %134

85:                                               ; preds = %5
  store i64 0, i64* %19, align 8
  br label %86

86:                                               ; preds = %130, %85
  %87 = load i64, i64* %19, align 8
  %88 = load i64, i64* %12, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %133

90:                                               ; preds = %86
  %91 = load %struct.TYPE_10__* (i32)*, %struct.TYPE_10__* (i32)** %10, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %93 = load i64, i64* %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call %struct.TYPE_10__* %91(i32 %96)
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %20, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %99 = icmp eq %struct.TYPE_10__* %98, null
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %100, %90
  %106 = load i64, i64* @LZMA_OPTIONS_ERROR, align 8
  store i64 %106, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %154

107:                                              ; preds = %100
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %109 = load i64, i64* %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %19, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %19, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32* %118, i32** %121, align 16
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %123 = load i64, i64* %19, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i64, i64* %19, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %107
  %131 = load i64, i64* %19, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %19, align 8
  br label %86

133:                                              ; preds = %86
  br label %134

134:                                              ; preds = %133, %84
  %135 = load i32, i32* @LZMA_VLI_UNKNOWN, align 4
  %136 = load i64, i64* %12, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i32 %135, i32* %138, align 8
  %139 = load i64, i64* %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  store i32* null, i32** %141, align 16
  %142 = load i32*, i32** %7, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = call i64 @lzma_next_filter_init(i32* %142, i32* %143, %struct.TYPE_9__* %29)
  store i64 %144, i64* %21, align 8
  %145 = load i64, i64* %21, align 8
  %146 = load i64, i64* @LZMA_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %134
  %149 = load i32*, i32** %7, align 8
  %150 = load i32*, i32** %8, align 8
  %151 = call i32 @lzma_next_end(i32* %149, i32* %150)
  br label %152

152:                                              ; preds = %148, %134
  %153 = load i64, i64* %21, align 8
  store i64 %153, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %154

154:                                              ; preds = %152, %105, %56
  %155 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %155)
  %156 = load i64, i64* %6, align 8
  ret i64 %156
}

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @validate_chain(%struct.TYPE_11__*, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @lzma_next_filter_init(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @lzma_next_end(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
