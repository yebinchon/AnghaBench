; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index.c_index_dup_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/common/extr_index.c_index_dup_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_17__, i32, i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__, i64 }
%struct.TYPE_16__ = type { i64, i64 }

@PREALLOC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*, i32*)* @index_dup_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @index_dup_stream(%struct.TYPE_14__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PREALLOC_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %150

16:                                               ; preds = %2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = call %struct.TYPE_14__* @index_stream_init(i32 %20, i32 %24, i32 %27, i32 %30, i32* %31)
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %6, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = icmp eq %struct.TYPE_14__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %150

36:                                               ; preds = %16
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %36
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %63, %struct.TYPE_14__** %3, align 8
  br label %150

64:                                               ; preds = %36
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = add i64 40, %69
  %71 = trunc i64 %70 to i32
  %72 = load i32*, i32** %5, align 8
  %73 = call %struct.TYPE_15__* @lzma_alloc(i32 %71, i32* %72)
  store %struct.TYPE_15__* %73, %struct.TYPE_15__** %7, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = icmp eq %struct.TYPE_15__* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @index_stream_end(%struct.TYPE_14__* %77, i32* %78)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %150

80:                                               ; preds = %64
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  store i64 0, i64* %83, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %96, 1
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = bitcast i32* %103 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %104, %struct.TYPE_15__** %8, align 8
  store i64 0, i64* %9, align 8
  br label %105

105:                                              ; preds = %132, %80
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %108, %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 4
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memcpy(i64 %110, i64 %113, i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %127, %126
  store i64 %128, i64* %9, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = call %struct.TYPE_15__* @index_tree_next(%struct.TYPE_16__* %130)
  store %struct.TYPE_15__* %131, %struct.TYPE_15__** %8, align 8
  br label %132

132:                                              ; preds = %105
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %134 = icmp ne %struct.TYPE_15__* %133, null
  br i1 %134, label %105, label %135

135:                                              ; preds = %132
  %136 = load i64, i64* %9, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp eq i64 %136, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @assert(i32 %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 3
  %148 = call i32 @index_tree_append(%struct.TYPE_17__* %145, %struct.TYPE_16__* %147)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* %149, %struct.TYPE_14__** %3, align 8
  br label %150

150:                                              ; preds = %135, %76, %62, %35, %15
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %151
}

declare dso_local %struct.TYPE_14__* @index_stream_init(i32, i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_15__* @lzma_alloc(i32, i32*) #1

declare dso_local i32 @index_stream_end(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local %struct.TYPE_15__* @index_tree_next(%struct.TYPE_16__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @index_tree_append(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
