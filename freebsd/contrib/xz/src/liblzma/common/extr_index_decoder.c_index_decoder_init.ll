; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index_decoder.c_index_decoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index_decoder.c_index_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32*, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }

@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@index_decode = common dso_local global i32 0, align 4
@index_decoder_end = common dso_local global i32 0, align 4
@index_decoder_memconfig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32**, i32)* @index_decoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @index_decoder_init(%struct.TYPE_8__* %0, i32* %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_8__*, i32*, i32**, i32)* @index_decoder_init, %struct.TYPE_8__* %11, i32* %12)
  %14 = load i32**, i32*** %8, align 8
  %15 = icmp eq i32** %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %17, i32* %5, align 4
  br label %55

18:                                               ; preds = %4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = icmp eq %struct.TYPE_9__* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load i32*, i32** %7, align 8
  %26 = call %struct.TYPE_9__* @lzma_alloc(i32 8, i32* %25)
  store %struct.TYPE_9__* %26, %struct.TYPE_9__** %10, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %28 = icmp eq %struct.TYPE_9__* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %30, i32* %5, align 4
  br label %55

31:                                               ; preds = %24
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i32* @index_decode, i32** %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  store i32* @index_decoder_end, i32** %38, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32* @index_decoder_memconfig, i32** %40, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %49

43:                                               ; preds = %18
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @lzma_index_end(i32* %46, i32* %47)
  br label %49

49:                                               ; preds = %43, %31
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32**, i32*** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @index_decoder_reset(%struct.TYPE_9__* %50, i32* %51, i32** %52, i32 %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %49, %29, %16
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_8__*, i32*, i32**, i32)*, %struct.TYPE_8__*, i32*) #1

declare dso_local %struct.TYPE_9__* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @lzma_index_end(i32*, i32*) #1

declare dso_local i32 @index_decoder_reset(%struct.TYPE_9__*, i32*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
