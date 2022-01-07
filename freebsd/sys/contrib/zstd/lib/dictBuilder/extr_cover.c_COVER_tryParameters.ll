; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_cover.c_COVER_tryParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_cover.c_COVER_tryParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_15__, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i64, i32, i32, i32 }

@GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Failed to allocate dmer map: out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to allocate buffers: out of memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to select dictionary\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @COVER_tryParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @COVER_tryParameters(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %3, align 8
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %4, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = bitcast %struct.TYPE_15__* %5 to i8*
  %21 = bitcast %struct.TYPE_15__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 16, i1 false)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load i32, i32* @GENERIC, align 4
  %26 = call i64 @ERROR(i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %9, align 8
  %31 = load i32, i32* @GENERIC, align 4
  %32 = call i64 @ERROR(i32 %31)
  %33 = call i32 @COVER_dictSelectionError(i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 40
  %39 = trunc i64 %38 to i32
  %40 = call i64 @malloc(i32 %39)
  %41 = inttoptr i64 %40 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %41, %struct.TYPE_16__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %43, %45
  %47 = add nsw i64 %46, 1
  %48 = call i32 @COVER_map_init(i32* %8, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %1
  %51 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %110

52:                                               ; preds = %1
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %54 = icmp ne %struct.TYPE_16__* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %57 = icmp ne %struct.TYPE_16__* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55, %52
  %59 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %110

60:                                               ; preds = %55
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = mul i64 %68, 40
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memcpy(%struct.TYPE_16__* %61, i32 %64, i32 %70)
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @COVER_buildDictionary(%struct.TYPE_17__* %72, %struct.TYPE_16__* %73, i32* %8, %struct.TYPE_16__* %74, i64 %75, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %5)
  store i64 %76, i64* %12, align 8
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i64 %78
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %12, align 8
  %82 = sub i64 %80, %81
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @COVER_selectDict(%struct.TYPE_16__* %79, i64 %82, i32 %85, i32 %88, i32 %92, i64 %95, i32 %98, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8 %5, i32 %101, i64 %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @COVER_dictSelectionIsError(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %60
  %108 = call i32 @DISPLAYLEVEL(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %110

109:                                              ; preds = %60
  br label %110

110:                                              ; preds = %109, %107, %58, %50
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %112 = call i32 @free(%struct.TYPE_16__* %111)
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = bitcast %struct.TYPE_15__* %5 to { i64, i64 }*
  %118 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %117, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @COVER_best_finish(i32 %115, i64 %119, i64 %121, i32 %116)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = call i32 @free(%struct.TYPE_16__* %123)
  %125 = call i32 @COVER_map_destroy(i32* %8)
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @COVER_dictSelectionFree(i32 %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %129 = icmp ne %struct.TYPE_16__* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %110
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %132 = call i32 @free(%struct.TYPE_16__* %131)
  br label %133

133:                                              ; preds = %130, %110
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i64 @malloc(i32) #2

declare dso_local i32 @COVER_dictSelectionError(i64) #2

declare dso_local i32 @COVER_map_init(i32*, i64) #2

declare dso_local i32 @DISPLAYLEVEL(i32, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32, i32) #2

declare dso_local i64 @COVER_buildDictionary(%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, %struct.TYPE_16__*, i64, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8) #2

declare dso_local i32 @COVER_selectDict(%struct.TYPE_16__*, i64, i32, i32, i32, i64, i32, %struct.TYPE_15__* byval(%struct.TYPE_15__) align 8, i32, i64) #2

declare dso_local i64 @COVER_dictSelectionIsError(i32) #2

declare dso_local i32 @free(%struct.TYPE_16__*) #2

declare dso_local i32 @COVER_best_finish(i32, i64, i64, i32) #2

declare dso_local i32 @COVER_map_destroy(i32*) #2

declare dso_local i32 @COVER_dictSelectionFree(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
