; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_createsamplesource.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_..entropy.c_isc_entropy_createsamplesource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, %struct.TYPE_16__*, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@SOURCE_MAGIC = common dso_local global i32 0, align 4
@ENTROPY_SOURCETYPE_SAMPLE = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_entropy_createsamplesource(%struct.TYPE_16__* %0, %struct.TYPE_15__** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__**, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__** %1, %struct.TYPE_15__*** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = call i32 @VALID_ENTROPY(%struct.TYPE_16__* %9)
  %11 = call i32 @REQUIRE(i32 %10)
  %12 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %13 = icmp ne %struct.TYPE_15__** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %17 = icmp eq %struct.TYPE_15__* %16, null
  br label %18

18:                                               ; preds = %14, %2
  %19 = phi i1 [ false, %2 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = call i32 @LOCK(i32* %23)
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_15__* @isc_mem_get(i32 %27, i32 40)
  store %struct.TYPE_15__* %28, %struct.TYPE_15__** %7, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = icmp eq %struct.TYPE_15__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %32, i64* %6, align 8
  br label %80

33:                                               ; preds = %18
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @samplesource_allocate(%struct.TYPE_16__* %38, i32* %39)
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @ISC_R_SUCCESS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %80

45:                                               ; preds = %33
  %46 = load i32, i32* @SOURCE_MAGIC, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ENTROPY_SOURCETYPE_SAMPLE, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  store %struct.TYPE_16__* %52, %struct.TYPE_16__** %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %62 = load i32, i32* @link, align 4
  %63 = call i32 @ISC_LINK_INIT(%struct.TYPE_15__* %61, i32 %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = load i32, i32* @link, align 4
  %69 = call i32 @ISC_LIST_APPEND(i32 %66, %struct.TYPE_15__* %67, i32 %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %5, align 8
  store %struct.TYPE_15__* %74, %struct.TYPE_15__** %75, align 8
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = call i32 @UNLOCK(i32* %77)
  %79 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %79, i64* %3, align 8
  br label %94

80:                                               ; preds = %44, %31
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = icmp ne %struct.TYPE_15__* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = call i32 @isc_mem_put(i32 %86, %struct.TYPE_15__* %87, i32 40)
  br label %89

89:                                               ; preds = %83, %80
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 0
  %92 = call i32 @UNLOCK(i32* %91)
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %89, %45
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @VALID_ENTROPY(%struct.TYPE_16__*) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_15__* @isc_mem_get(i32, i32) #1

declare dso_local i64 @samplesource_allocate(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ISC_LINK_INIT(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @isc_mem_put(i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
