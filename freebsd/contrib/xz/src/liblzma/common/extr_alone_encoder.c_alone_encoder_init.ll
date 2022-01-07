; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_alone_encoder.c_alone_encoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_alone_encoder.c_alone_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i64, i64, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i8*, i32* }

@LZMA_MEM_ERROR = common dso_local global i32 0, align 4
@alone_encode = common dso_local global i32 0, align 4
@alone_encoder_end = common dso_local global i32 0, align 4
@LZMA_NEXT_CODER_INIT = common dso_local global i32 0, align 4
@SEQ_HEADER = common dso_local global i32 0, align 4
@LZMA_OPTIONS_ERROR = common dso_local global i32 0, align 4
@LZMA_DICT_SIZE_MIN = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@lzma_lzma_encoder_init = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i32*, %struct.TYPE_13__*)* @alone_encoder_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alone_encoder_init(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.TYPE_15__], align 16
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @lzma_next_coder_init(i32 (%struct.TYPE_14__*, i32*, %struct.TYPE_13__*)* @alone_encoder_init, %struct.TYPE_14__* %11, i32* %12)
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %8, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %18 = icmp eq %struct.TYPE_16__* %17, null
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.TYPE_16__* @lzma_alloc(i32 32, i32* %20)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %8, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %23 = icmp eq %struct.TYPE_16__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @LZMA_MEM_ERROR, align 4
  store i32 %25, i32* %4, align 4
  br label %117

26:                                               ; preds = %19
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %29, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  store i32* @alone_encode, i32** %31, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  store i32* @alone_encoder_end, i32** %33, align 8
  %34 = load i32, i32* @LZMA_NEXT_CODER_INIT, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %26, %3
  %38 = load i32, i32* @SEQ_HEADER, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @lzma_lzma_lclppb_encode(%struct.TYPE_13__* %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %50, i32* %4, align 4
  br label %117

51:                                               ; preds = %37
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LZMA_DICT_SIZE_MIN, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @LZMA_OPTIONS_ERROR, align 4
  store i32 %58, i32* %4, align 4
  br label %117

59:                                               ; preds = %51
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, 1
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 2
  %67 = load i32, i32* %9, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = ashr i32 %69, 3
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 4
  %75 = load i32, i32* %9, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 8
  %79 = load i32, i32* %9, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 16
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @UINT32_MAX, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %59
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %88, %59
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @unaligned_write32le(i64 %95, i32 %96)
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  %102 = add nsw i64 %101, 4
  %103 = call i32 @memset(i64 %102, i32 255, i32 8)
  %104 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %10, i64 0, i64 0
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %107 = bitcast %struct.TYPE_13__* %106 to i8*
  store i8* %107, i8** %105, align 16
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  store i32* @lzma_lzma_encoder_init, i32** %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i64 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 0
  store i8* null, i8** %110, align 16
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds [2 x %struct.TYPE_15__], [2 x %struct.TYPE_15__]* %10, i64 0, i64 0
  %116 = call i32 @lzma_next_filter_init(i32* %113, i32* %114, %struct.TYPE_15__* %115)
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %91, %57, %49, %24
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i32 @lzma_next_coder_init(i32 (%struct.TYPE_14__*, i32*, %struct.TYPE_13__*)*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_16__* @lzma_alloc(i32, i32*) #1

declare dso_local i64 @lzma_lzma_lclppb_encode(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @unaligned_write32le(i64, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @lzma_next_filter_init(i32*, i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
