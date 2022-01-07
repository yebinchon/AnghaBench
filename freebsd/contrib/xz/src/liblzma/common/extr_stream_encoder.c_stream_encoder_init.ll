; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder.c_stream_encoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder.c_stream_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_15__*, i32*, i32*, i32*)*, i32*, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32, i32*, %struct.TYPE_13__, i32, i8*, i8*, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }

@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@stream_encode = common dso_local global i32 0, align 4
@stream_encoder_end = common dso_local global i32 0, align 4
@LZMA_VLI_UNKNOWN = common dso_local global i32 0, align 4
@LZMA_NEXT_CODER_INIT = common dso_local global i8* null, align 8
@SEQ_STREAM_HEADER = common dso_local global i32 0, align 4
@LZMA_STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i32*, i32)* @stream_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_encoder_init(%struct.TYPE_16__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_16__*, i32*, i32*, i32)* @stream_encoder_init, %struct.TYPE_16__* %12, i32* %13)
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %18, i32* %5, align 4
  br label %100

19:                                               ; preds = %4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %10, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %24 = icmp eq %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %56

25:                                               ; preds = %19
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.TYPE_15__* @lzma_alloc(i32 80, i32* %26)
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %10, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %29 = icmp eq %struct.TYPE_15__* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %31, i32* %5, align 4
  br label %100

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 3
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  store i32* @stream_encode, i32** %37, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  store i32* @stream_encoder_end, i32** %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i32 (%struct.TYPE_15__*, i32*, i32*, i32*)* @stream_encoder_update, i32 (%struct.TYPE_15__*, i32*, i32*, i32*)** %41, align 8
  %42 = load i32, i32* @LZMA_VLI_UNKNOWN, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load i8*, i8** @LZMA_NEXT_CODER_INIT, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 7
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** @LZMA_NEXT_CODER_INIT, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %32, %19
  %57 = load i32, i32* @SEQ_STREAM_HEADER, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @lzma_index_end(i32* %69, i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32* @lzma_index_init(i32* %72)
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  store i32* %73, i32** %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %56
  %81 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %81, i32* %5, align 4
  br label %100

82:                                               ; preds = %56
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  store i32 0, i32* %85, align 4
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @lzma_stream_header_encode(%struct.TYPE_14__* %11, i32 %88)
  %90 = call i32 @return_if_error(i32 %89)
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @stream_encoder_update(%struct.TYPE_15__* %96, i32* %97, i32* %98, i32* null)
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %82, %80, %30, %17
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_16__*, i32*, i32*, i32)*, %struct.TYPE_16__*, i32*) #1

declare dso_local %struct.TYPE_15__* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @stream_encoder_update(%struct.TYPE_15__*, i32*, i32*, i32*) #1

declare dso_local i32 @lzma_index_end(i32*, i32*) #1

declare dso_local i32* @lzma_index_init(i32*) #1

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_stream_header_encode(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
