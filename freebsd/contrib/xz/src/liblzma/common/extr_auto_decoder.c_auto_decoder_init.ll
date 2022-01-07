; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_auto_decoder.c_auto_decoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_auto_decoder.c_auto_decoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@LZMA_SUPPORTED_FLAGS = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@auto_decode = common dso_local global i32 0, align 4
@auto_decoder_end = common dso_local global i32 0, align 4
@auto_decoder_get_check = common dso_local global i32 0, align 4
@auto_decoder_memconfig = common dso_local global i32 0, align 4
@LZMA_NEXT_CODER_INIT = common dso_local global i32 0, align 4
@SEQ_INIT = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32)* @auto_decoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_decoder_init(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_7__*, i32*, i32, i32)* @auto_decoder_init, %struct.TYPE_7__* %11, i32* %12)
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @LZMA_SUPPORTED_FLAGS, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %20, i32* %5, align 4
  br label %61

21:                                               ; preds = %4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %10, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = icmp eq %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = call %struct.TYPE_8__* @lzma_alloc(i32 16, i32* %28)
  store %struct.TYPE_8__* %29, %struct.TYPE_8__** %10, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = icmp eq %struct.TYPE_8__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %33, i32* %5, align 4
  br label %61

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i32* @auto_decode, i32** %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 2
  store i32* @auto_decoder_end, i32** %41, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  store i32* @auto_decoder_get_check, i32** %43, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32* @auto_decoder_memconfig, i32** %45, align 8
  %46 = load i32, i32* @LZMA_NEXT_CODER_INIT, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %34, %21
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @my_max(i32 1, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @SEQ_INIT, align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @LZMA_OK, align 4
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %49, %32, %19
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_7__*, i32*, i32, i32)*, %struct.TYPE_7__*, i32*) #1

declare dso_local %struct.TYPE_8__* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @my_max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
