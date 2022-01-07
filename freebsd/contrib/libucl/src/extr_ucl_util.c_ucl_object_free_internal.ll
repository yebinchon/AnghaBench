; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_free_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_object_free_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32* }

@UCL_ARRAY = common dso_local global i64 0, align 8
@vec = common dso_local global %struct.TYPE_15__* null, align 8
@UCL_OBJECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, i32, i32 (%struct.TYPE_14__*)*)* @ucl_object_free_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucl_object_free_internal(%struct.TYPE_14__* %0, i32 %1, i32 (%struct.TYPE_14__*)* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.TYPE_14__*)*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 (%struct.TYPE_14__*)* %2, i32 (%struct.TYPE_14__*)** %6, align 8
  br label %10

10:                                               ; preds = %105, %3
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %13, label %106

13:                                               ; preds = %10
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UCL_ARRAY, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %13
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vec, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %22 = call i32 @UCL_ARRAY_GET(%struct.TYPE_15__* %20, %struct.TYPE_14__* %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vec, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %65

25:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %55, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vec, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vec, align 8
  %34 = load i32, i32* %9, align 4
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_14__* @kv_A(i32 %36, i32 %34)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %8, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %41, %struct.TYPE_14__** %7, align 8
  br label %42

42:                                               ; preds = %45, %40
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = icmp ne %struct.TYPE_14__* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %47, align 8
  store %struct.TYPE_14__* %48, %struct.TYPE_14__** %7, align 8
  %49 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %6, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %51 = call i32 %49(%struct.TYPE_14__* %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %8, align 8
  br label %42

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %32
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %26

58:                                               ; preds = %26
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vec, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kv_destroy(i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** @vec, align 8
  %64 = call i32 @UCL_FREE(i32 4, %struct.TYPE_15__* %63)
  br label %65

65:                                               ; preds = %58, %19
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  store i32* null, i32** %68, align 8
  br label %94

69:                                               ; preds = %13
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @UCL_OBJECT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %93

75:                                               ; preds = %69
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %75
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %6, align 8
  %87 = ptrtoint i32 (%struct.TYPE_14__*)* %86 to i32
  %88 = call i32 @ucl_hash_destroy(i32* %85, i32 %87)
  br label %89

89:                                               ; preds = %81, %75
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store i32* null, i32** %92, align 8
  br label %93

93:                                               ; preds = %89, %69
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %96, align 8
  store %struct.TYPE_14__* %97, %struct.TYPE_14__** %7, align 8
  %98 = load i32 (%struct.TYPE_14__*)*, i32 (%struct.TYPE_14__*)** %6, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = call i32 %98(%struct.TYPE_14__* %99)
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %101, %struct.TYPE_14__** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %94
  br label %106

105:                                              ; preds = %94
  br label %10

106:                                              ; preds = %104, %10
  ret void
}

declare dso_local i32 @UCL_ARRAY_GET(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @kv_A(i32, i32) #1

declare dso_local i32 @kv_destroy(i32) #1

declare dso_local i32 @UCL_FREE(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @ucl_hash_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
