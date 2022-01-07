; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_auto_decoder.c_auto_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_auto_decoder.c_auto_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* }

@LZMA_OK = common dso_local global i32 0, align 4
@LZMA_TELL_NO_CHECK = common dso_local global i32 0, align 4
@LZMA_NO_CHECK = common dso_local global i32 0, align 4
@LZMA_TELL_ANY_CHECK = common dso_local global i32 0, align 4
@LZMA_GET_CHECK = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_CONCATENATED = common dso_local global i32 0, align 4
@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_FINISH = common dso_local global i32 0, align 4
@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)* @auto_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_decode(i8* %0, i32* %1, i32* noalias %2, i64* noalias %3, i64 %4, i32* noalias %5, i64* noalias %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i64* %3, i64** %14, align 8
  store i64 %4, i64* %15, align 8
  store i32* %5, i32** %16, align 8
  store i64* %6, i64** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %20, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %133 [
    i32 128, label %27
    i32 130, label %83
    i32 129, label %116
  ]

27:                                               ; preds = %9
  %28 = load i64*, i64** %14, align 8
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @LZMA_OK, align 4
  store i32 %33, i32* %10, align 4
  br label %136

34:                                               ; preds = %27
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 130, i32* %36, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = load i64*, i64** %14, align 8
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 253
  br i1 %42, label %43, label %55

43:                                               ; preds = %34
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32*, i32** %12, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lzma_stream_decoder_init(%struct.TYPE_5__* %45, i32* %46, i32 %49, i32 %52)
  %54 = call i32 @return_if_error(i32 %53)
  br label %82

55:                                               ; preds = %34
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32*, i32** %12, align 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @lzma_alone_decoder_init(%struct.TYPE_5__* %57, i32* %58, i32 %61, i32 1)
  %63 = call i32 @return_if_error(i32 %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @LZMA_TELL_NO_CHECK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @LZMA_NO_CHECK, align 4
  store i32 %71, i32* %10, align 4
  br label %136

72:                                               ; preds = %55
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @LZMA_TELL_ANY_CHECK, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @LZMA_GET_CHECK, align 4
  store i32 %80, i32* %10, align 4
  br label %136

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %43
  br label %83

83:                                               ; preds = %9, %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %86, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i64*, i64** %14, align 8
  %95 = load i64, i64* %15, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = load i64*, i64** %17, align 8
  %98 = load i64, i64* %18, align 8
  %99 = load i32, i32* %19, align 4
  %100 = call i32 %87(i32 %91, i32* %92, i32* %93, i64* %94, i64 %95, i32* %96, i64* %97, i64 %98, i32 %99)
  store i32 %100, i32* %21, align 4
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* @LZMA_STREAM_END, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %83
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @LZMA_CONCATENATED, align 4
  %109 = and i32 %107, %108
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104, %83
  %112 = load i32, i32* %21, align 4
  store i32 %112, i32* %10, align 4
  br label %136

113:                                              ; preds = %104
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 129, i32* %115, align 8
  br label %116

116:                                              ; preds = %9, %113
  %117 = load i64*, i64** %14, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %15, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %122, i32* %10, align 4
  br label %136

123:                                              ; preds = %116
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @LZMA_FINISH, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = load i32, i32* @LZMA_STREAM_END, align 4
  br label %131

129:                                              ; preds = %123
  %130 = load i32, i32* @LZMA_OK, align 4
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi i32 [ %128, %127 ], [ %130, %129 ]
  store i32 %132, i32* %10, align 4
  br label %136

133:                                              ; preds = %9
  %134 = call i32 @assert(i32 0)
  %135 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %133, %131, %121, %111, %79, %70, %32
  %137 = load i32, i32* %10, align 4
  ret i32 %137
}

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_stream_decoder_init(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @lzma_alone_decoder_init(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
