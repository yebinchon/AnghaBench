; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder.c_stream_encoder_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_stream_encoder.c_stream_encoder_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32 (i32, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }

@SEQ_BLOCK_INIT = common dso_local global i64 0, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@SEQ_BLOCK_ENCODE = common dso_local global i64 0, align 8
@LZMA_PROG_ERROR = common dso_local global i64 0, align 8
@LZMA_VLI_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)* @stream_encoder_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stream_encoder_update(i8* %0, i32* %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %10, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SEQ_BLOCK_INIT, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %26, align 8
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i64 @block_encoder_init(%struct.TYPE_14__* %27, i32* %28)
  store i64 %29, i64* %11, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @LZMA_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %5, align 8
  br label %98

41:                                               ; preds = %20
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  br label %67

44:                                               ; preds = %4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SEQ_BLOCK_ENCODE, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  %54 = load i32 (i32, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)*, i32 (i32, i32*, %struct.TYPE_15__*, %struct.TYPE_15__*)** %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %62 = call i32 %54(i32 %58, i32* %59, %struct.TYPE_15__* %60, %struct.TYPE_15__* %61)
  %63 = call i32 @return_if_error(i32 %62)
  br label %66

64:                                               ; preds = %44
  %65 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %65, i64* %5, align 8
  br label %98

66:                                               ; preds = %50
  br label %67

67:                                               ; preds = %66, %41
  store i64 0, i64* %12, align 8
  br label %68

68:                                               ; preds = %88, %67
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = load i64, i64* %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LZMA_VLI_UNKNOWN, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %68
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i32 @lzma_free(i32 %85, i32* %86)
  br label %88

88:                                               ; preds = %78
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %68

91:                                               ; preds = %68
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i64 @lzma_filters_copy(%struct.TYPE_15__* %92, %struct.TYPE_15__* %95, i32* %96)
  store i64 %97, i64* %5, align 8
  br label %98

98:                                               ; preds = %91, %64, %39
  %99 = load i64, i64* %5, align 8
  ret i64 %99
}

declare dso_local i64 @block_encoder_init(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_free(i32, i32*) #1

declare dso_local i64 @lzma_filters_copy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
