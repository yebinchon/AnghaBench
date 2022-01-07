; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder_mt.c_get_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder_mt.c_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32, i32* }
%struct.TYPE_6__ = type { i32* }

@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@LZMA_THREADS_MAX = common dso_local global i64 0, align 8
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@BLOCK_SIZE_MAX = common dso_local global i64 0, align 8
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*, i32**, i64*, i64*)* @get_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_options(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32** %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32** %2, i32*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %15, i32* %6, align 4
  br label %105

16:                                               ; preds = %5
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @LZMA_THREADS_MAX, align 8
  %31 = icmp sgt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %21, %16
  %33 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %33, i32* %6, align 4
  br label %105

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i32*, i32** %41, align 8
  %43 = load i32**, i32*** %9, align 8
  store i32* %42, i32** %43, align 8
  br label %58

44:                                               ; preds = %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @lzma_easy_preset(%struct.TYPE_6__* %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %52, i32* %6, align 4
  br label %105

53:                                               ; preds = %44
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32**, i32*** %9, align 8
  store i32* %56, i32** %57, align 8
  br label %58

58:                                               ; preds = %53, %39
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BLOCK_SIZE_MAX, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %70, i32* %6, align 4
  br label %105

71:                                               ; preds = %63
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %10, align 8
  store i64 %74, i64* %75, align 8
  br label %93

76:                                               ; preds = %58
  %77 = load i32**, i32*** %9, align 8
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @lzma_mt_block_size(i32* %78)
  %80 = load i64*, i64** %10, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64*, i64** %10, align 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %85, i32* %6, align 4
  br label %105

86:                                               ; preds = %76
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @BLOCK_SIZE_MAX, align 8
  %90 = icmp sle i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  br label %93

93:                                               ; preds = %86, %71
  %94 = load i64*, i64** %10, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @lzma_block_buffer_bound64(i64 %95)
  %97 = load i64*, i64** %11, align 8
  store i64 %96, i64* %97, align 8
  %98 = load i64*, i64** %11, align 8
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %102, i32* %6, align 4
  br label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @LZMA_OK, align 4
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %103, %101, %84, %69, %51, %32, %14
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i64 @lzma_easy_preset(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @lzma_mt_block_size(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @lzma_block_buffer_bound64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
