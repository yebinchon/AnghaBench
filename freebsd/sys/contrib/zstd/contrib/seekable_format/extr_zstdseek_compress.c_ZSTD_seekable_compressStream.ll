; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/seekable_format/extr_zstdseek_compress.c_ZSTD_seekable_compressStream.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/seekable_format/extr_zstdseek_compress.c_ZSTD_seekable_compressStream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i64, i32, i32*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_seekable_compressStream(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %17, i64 %21
  store i32* %22, i32** %8, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = sub i64 %25, %29
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = sub i64 %34, %37
  %39 = call i64 @MIN(i64 %31, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ugt i64 %40, 0
  br i1 %41, label %42, label %104

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %44 = load i32*, i32** %8, align 8
  %45 = ptrtoint i32* %44 to i32
  store i32 %45, i32* %43, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %47 = load i64, i64* %9, align 8
  store i64 %47, i64* %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 0, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32* null, i32** %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = call i64 @ZSTD_compressStream(i32 %57, %struct.TYPE_14__* %58, %struct.TYPE_15__* %10)
  store i64 %59, i64* %12, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %42
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = call i32 @XXH64_update(i32* %67, i32* %68, i64 %71)
  br label %73

73:                                               ; preds = %65, %42
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = sub i64 %76, %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i64 @ZSTD_isError(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %73
  %102 = load i64, i64* %12, align 8
  store i64 %102, i64* %4, align 8
  br label %133

103:                                              ; preds = %73
  br label %104

104:                                              ; preds = %103, %3
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = call i64 @ZSTD_seekable_endFrame(%struct.TYPE_13__* %113, %struct.TYPE_14__* %114)
  store i64 %115, i64* %13, align 8
  %116 = load i64, i64* %13, align 8
  %117 = call i64 @ZSTD_isError(i64 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %112
  %120 = load i64, i64* %13, align 8
  store i64 %120, i64* %4, align 8
  br label %133

121:                                              ; preds = %112
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %4, align 8
  br label %133

125:                                              ; preds = %104
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = sub i64 %128, %131
  store i64 %132, i64* %4, align 8
  br label %133

133:                                              ; preds = %125, %121, %119, %101
  %134 = load i64, i64* %4, align 8
  ret i64 %134
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @ZSTD_compressStream(i32, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @XXH64_update(i32*, i32*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_seekable_endFrame(%struct.TYPE_13__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
