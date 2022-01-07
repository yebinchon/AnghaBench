; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_tryParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_fastcover.c_FASTCOVER_tryParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }

@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to select dictionary\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @FASTCOVER_tryParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FASTCOVER_tryParameters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %3, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %4, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @GENERIC, align 4
  %26 = call i64 @ERROR(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = call i64 @calloc(i32 %30, i32 24)
  %32 = inttoptr i64 %31 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %32, %struct.TYPE_15__** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @malloc(i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %36, %struct.TYPE_15__** %9, align 8
  %37 = load i32, i32* @GENERIC, align 4
  %38 = call i64 @ERROR(i32 %37)
  %39 = call i32 @COVER_dictSelectionError(i64 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 24
  %46 = trunc i64 %45 to i32
  %47 = call i64 @malloc(i32 %46)
  %48 = inttoptr i64 %47 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %11, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %50 = icmp ne %struct.TYPE_15__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %56 = icmp ne %struct.TYPE_15__* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %51, %1
  %58 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %119

59:                                               ; preds = %54
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 24
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memcpy(%struct.TYPE_15__* %60, i32 %63, i32 %70)
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %75 = load i64, i64* %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %78 = call i64 @FASTCOVER_buildDictionary(%struct.TYPE_16__* %72, %struct.TYPE_15__* %73, %struct.TYPE_15__* %74, i64 %75, i32 %76, %struct.TYPE_15__* %77)
  store i64 %78, i64* %12, align 8
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %81, %85
  %87 = sdiv i32 %86, 100
  store i32 %87, i32* %13, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %89 = load i64, i64* %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i64 %89
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* %12, align 8
  %93 = sub i64 %91, %92
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @COVER_selectDict(%struct.TYPE_15__* %90, i64 %93, i32 %96, i32 %99, i32 %100, i32 %103, i32 %106, i32 %107, i32 %110, i64 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i64 @COVER_dictSelectionIsError(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %59
  %117 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %119

118:                                              ; preds = %59
  br label %119

119:                                              ; preds = %118, %116, %57
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = call i32 @free(%struct.TYPE_15__* %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @COVER_best_finish(i32 %124, i32 %125, i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %129 = call i32 @free(%struct.TYPE_15__* %128)
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %131 = call i32 @free(%struct.TYPE_15__* %130)
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @COVER_dictSelectionFree(i32 %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %135 = call i32 @free(%struct.TYPE_15__* %134)
  ret void
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @COVER_dictSelectionError(i64) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i64 @FASTCOVER_buildDictionary(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_15__*, i64, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @COVER_selectDict(%struct.TYPE_15__*, i64, i32, i32, i32, i32, i32, i32, i32, i64) #1

declare dso_local i64 @COVER_dictSelectionIsError(i32) #1

declare dso_local i32 @free(%struct.TYPE_15__*) #1

declare dso_local i32 @COVER_best_finish(i32, i32, i32) #1

declare dso_local i32 @COVER_dictSelectionFree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
