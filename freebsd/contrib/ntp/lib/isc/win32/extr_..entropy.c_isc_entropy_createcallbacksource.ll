; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_createcallbacksource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_createcallbacksource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_15__*, i32, i32, %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i8*, i32, i32*, i32, i8*, i32 }

@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@ISC_FALSE = common dso_local global i8* null, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@SOURCE_MAGIC = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_CALLBACK = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_entropy_createcallbacksource(%struct.TYPE_15__* %0, i32 %1, i32* %2, i32 %3, i8* %4, %struct.TYPE_14__** %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__**, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  %16 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store %struct.TYPE_14__** %5, %struct.TYPE_14__*** %13, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %18 = call i32 @VALID_ENTROPY(%struct.TYPE_15__* %17)
  %19 = call i32 @REQUIRE(i32 %18)
  %20 = load i32*, i32** %10, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @REQUIRE(i32 %22)
  %24 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %25 = icmp ne %struct.TYPE_14__** %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = icmp eq %struct.TYPE_14__* %28, null
  br label %30

30:                                               ; preds = %26, %6
  %31 = phi i1 [ false, %6 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @REQUIRE(i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = call i32 @LOCK(i32* %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_14__* @isc_mem_get(i32 %39, i32 88)
  store %struct.TYPE_14__* %40, %struct.TYPE_14__** %15, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %42 = icmp eq %struct.TYPE_14__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %44, i64* %14, align 8
  br label %110

45:                                               ; preds = %30
  %46 = load i8*, i8** @ISC_FALSE, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store %struct.TYPE_16__* %51, %struct.TYPE_16__** %16, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 5
  %55 = call i64 @samplesource_allocate(%struct.TYPE_15__* %52, i32* %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @ISC_R_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %110

60:                                               ; preds = %45
  %61 = load i8*, i8** @ISC_FALSE, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 2
  store i32* %67, i32** %69, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  store i8* %73, i8** %75, align 8
  %76 = load i32, i32* @SOURCE_MAGIC, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @ENTROPY_SOURCETYPE_CALLBACK, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 2
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %84, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memset(i32 %89, i32 0, i32 4)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %92 = load i32, i32* @link, align 4
  %93 = call i32 @ISC_LINK_INIT(%struct.TYPE_14__* %91, i32 %92)
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %98 = load i32, i32* @link, align 4
  %99 = call i32 @ISC_LIST_APPEND(i32 %96, %struct.TYPE_14__* %97, i32 %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %105 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %13, align 8
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %105, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = call i32 @UNLOCK(i32* %107)
  %109 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %109, i64* %7, align 8
  br label %124

110:                                              ; preds = %59, %43
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %112 = icmp ne %struct.TYPE_14__* %111, null
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %118 = call i32 @isc_mem_put(i32 %116, %struct.TYPE_14__* %117, i32 88)
  br label %119

119:                                              ; preds = %113, %110
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = call i32 @UNLOCK(i32* %121)
  %123 = load i64, i64* %14, align 8
  store i64 %123, i64* %7, align 8
  br label %124

124:                                              ; preds = %119, %60
  %125 = load i64, i64* %7, align 8
  ret i64 %125
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_15__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_14__* @isc_mem_get(i32, i32) #1

declare dso_local i64 @samplesource_allocate(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
