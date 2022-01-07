; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_buffer_encoder.c_block_encode_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_block_buffer_encoder.c_block_encode_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }

@LZMA_BUF_ERROR = common dso_local global i64 0, align 8
@LZMA_NEXT_CODER_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@LZMA_OK = common dso_local global i64 0, align 8
@LZMA_FINISH = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@LZMA_PROG_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i32*, i32*, i64, i32*, i64*, i64)* @block_encode_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @block_encode_normal(%struct.TYPE_10__* %0, i32* %1, i32* %2, i64 %3, i32* %4, i64* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.TYPE_9__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %21 = call i32 @lzma_block_header_size(%struct.TYPE_10__* %20)
  %22 = call i32 @return_if_error(i32 %21)
  %23 = load i64, i64* %15, align 8
  %24 = load i64*, i64** %14, align 8
  %25 = load i64, i64* %24, align 8
  %26 = sub i64 %23, %25
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ule i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i64, i64* @LZMA_BUF_ERROR, align 8
  store i64 %32, i64* %8, align 8
  br label %124

33:                                               ; preds = %7
  %34 = load i64*, i64** %14, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %16, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64*, i64** %14, align 8
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %40, %38
  store i64 %41, i64* %39, align 8
  %42 = load i64, i64* %15, align 8
  %43 = load i64*, i64** %14, align 8
  %44 = load i64, i64* %43, align 8
  %45 = sub i64 %42, %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load i64*, i64** %14, align 8
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %52, %55
  store i64 %56, i64* %15, align 8
  br label %57

57:                                               ; preds = %50, %33
  %58 = bitcast %struct.TYPE_9__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 bitcast (%struct.TYPE_9__* @LZMA_NEXT_CODER_INIT to i8*), i64 16, i1 false)
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @lzma_raw_encoder_init(%struct.TYPE_9__* %17, i32* %59, i32 %62)
  store i64 %63, i64* %18, align 8
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* @LZMA_OK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %57
  store i64 0, i64* %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %69 = load i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)*, i64 (i32, i32*, i32*, i64*, i64, i32*, i64*, i64, i32)** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i64*, i64** %14, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* @LZMA_FINISH, align 4
  %79 = call i64 %69(i32 %71, i32* %72, i32* %73, i64* %19, i64 %74, i32* %75, i64* %76, i64 %77, i32 %78)
  store i64 %79, i64* %18, align 8
  br label %80

80:                                               ; preds = %67, %57
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @lzma_next_end(%struct.TYPE_9__* %17, i32* %81)
  %83 = load i64, i64* %18, align 8
  %84 = load i64, i64* @LZMA_STREAM_END, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %80
  %87 = load i64*, i64** %14, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %89, %92
  %94 = sub i64 %88, %93
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = load i32*, i32** %13, align 8
  %99 = load i64, i64* %16, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = call i64 @lzma_block_header_encode(%struct.TYPE_10__* %97, i32* %100)
  store i64 %101, i64* %18, align 8
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* @LZMA_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %86
  %106 = load i64, i64* @LZMA_PROG_ERROR, align 8
  store i64 %106, i64* %18, align 8
  br label %107

107:                                              ; preds = %105, %86
  br label %115

108:                                              ; preds = %80
  %109 = load i64, i64* %18, align 8
  %110 = load i64, i64* @LZMA_OK, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* @LZMA_BUF_ERROR, align 8
  store i64 %113, i64* %18, align 8
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %107
  %116 = load i64, i64* %18, align 8
  %117 = load i64, i64* @LZMA_OK, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load i64, i64* %16, align 8
  %121 = load i64*, i64** %14, align 8
  store i64 %120, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i64, i64* %18, align 8
  store i64 %123, i64* %8, align 8
  br label %124

124:                                              ; preds = %122, %31
  %125 = load i64, i64* %8, align 8
  ret i64 %125
}

declare dso_local i32 @return_if_error(i32) #1

declare dso_local i32 @lzma_block_header_size(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @lzma_raw_encoder_init(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @lzma_next_end(%struct.TYPE_9__*, i32*) #1

declare dso_local i64 @lzma_block_header_encode(%struct.TYPE_10__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
