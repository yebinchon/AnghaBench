; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_decoder.c_lzma_stream_decoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_decoder.c_lzma_stream_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@LZMA_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@stream_decode = common dso_local global i32 0, align 4
@stream_decoder_end = common dso_local global i32 0, align 4
@stream_decoder_get_check = common dso_local global i32 0, align 4
@stream_decoder_memconfig = common dso_local global i32 0, align 4
@LZMA_NEXT_CODER_INIT = common dso_local global i32 0, align 4
@LZMA_MEMUSAGE_BASE = common dso_local global i32 0, align 4
@LZMA_TELL_NO_CHECK = common dso_local global i32 0, align 4
@LZMA_TELL_UNSUPPORTED_CHECK = common dso_local global i32 0, align 4
@LZMA_TELL_ANY_CHECK = common dso_local global i32 0, align 4
@LZMA_IGNORE_CHECK = common dso_local global i32 0, align 4
@LZMA_CONCATENATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_stream_decoder_init(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_9__*, i32*, i32, i32)* @lzma_stream_decoder_init, %struct.TYPE_9__* %11, i32* %12)
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @LZMA_SUPPORTED_FLAGS, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %20, i32* %5, align 4
  br label %99

21:                                               ; preds = %4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_8__* @lzma_alloc(i32 48, i32* %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %10, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = icmp eq %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %33, i32* %5, align 4
  br label %99

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store i32* @stream_decode, i32** %39, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32* @stream_decoder_end, i32** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32* @stream_decoder_get_check, i32** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32* @stream_decoder_memconfig, i32** %45, align 8
  %46 = load i32, i32* @LZMA_NEXT_CODER_INIT, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %34, %21
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @my_max(i32 1, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @LZMA_MEMUSAGE_BASE, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LZMA_TELL_NO_CHECK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @LZMA_TELL_UNSUPPORTED_CHECK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @LZMA_TELL_ANY_CHECK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @LZMA_IGNORE_CHECK, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @LZMA_CONCATENATED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 5
  store i32 1, i32* %95, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = call i32 @stream_decoder_reset(%struct.TYPE_8__* %96, i32* %97)
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %51, %32, %19
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_9__*, i32*, i32, i32)*, %struct.TYPE_9__*, i32*) #1

declare dso_local %struct.TYPE_8__* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @my_max(i32, i32) #1

declare dso_local i32 @stream_decoder_reset(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
