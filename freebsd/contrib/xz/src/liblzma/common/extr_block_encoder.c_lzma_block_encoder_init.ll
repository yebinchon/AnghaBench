; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_encoder.c_lzma_block_encoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_encoder.c_lzma_block_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32*, i32*, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i64 }

@LZMA_PROG_ERROR = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_CHECK_ID_MAX = common dso_local global i32 0, align 4
@LZMA_UNSUPPORTED_CHECK = common dso_local global i32 0, align 4
@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@block_encode = common dso_local global i32 0, align 4
@block_encoder_end = common dso_local global i32 0, align 4
@block_encoder_update = common dso_local global i32 0, align 4
@LZMA_NEXT_CODER_INIT = common dso_local global i32 0, align 4
@SEQ_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_block_encoder_init(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*)* @lzma_block_encoder_init, %struct.TYPE_10__* %9, i32* %10)
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %92

16:                                               ; preds = %3
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %92

23:                                               ; preds = %16
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @LZMA_CHECK_ID_MAX, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @LZMA_PROG_ERROR, align 4
  store i32 %31, i32* %4, align 4
  br label %92

32:                                               ; preds = %23
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @lzma_check_is_supported(i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @LZMA_UNSUPPORTED_CHECK, align 4
  store i32 %39, i32* %4, align 4
  br label %92

40:                                               ; preds = %32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %8, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = icmp eq %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load i32*, i32** %6, align 8
  %48 = call %struct.TYPE_11__* @lzma_alloc(i32 48, i32* %47)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %8, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %50 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %52, i32* %4, align 4
  br label %92

53:                                               ; preds = %46
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 3
  store %struct.TYPE_11__* %54, %struct.TYPE_11__** %56, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  store i32* @block_encode, i32** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32* @block_encoder_end, i32** %60, align 8
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32* @block_encoder_update, i32** %62, align 8
  %63 = load i32, i32* @LZMA_NEXT_CODER_INIT, align 4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %53, %40
  %67 = load i32, i32* @SEQ_CODE, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 5
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 4
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @lzma_check_init(i32* %80, i64 %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32*, i32** %6, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @lzma_raw_encoder_init(i32* %86, i32* %87, i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %66, %51, %38, %30, %21, %14
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_12__*)*, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @lzma_check_is_supported(i64) #1

declare dso_local %struct.TYPE_11__* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @lzma_check_init(i32*, i64) #1

declare dso_local i32 @lzma_raw_encoder_init(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
