; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_taskpool.c_isc_taskpool_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_taskpool.c_isc_taskpool_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32**, i32, i32, i32 }

@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"taskpool\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_taskpool_expand(%struct.TYPE_6__** %0, i32 %1, %struct.TYPE_6__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  %12 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %13 = icmp ne %struct.TYPE_6__** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i1 [ false, %3 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @REQUIRE(i32 %20)
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %23 = icmp ne %struct.TYPE_6__** %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = icmp eq %struct.TYPE_6__* %26, null
  br label %28

28:                                               ; preds = %24, %18
  %29 = phi i1 [ false, %18 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @REQUIRE(i32 %30)
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %129

39:                                               ; preds = %28
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @alloc_pool(i32 %42, i32 %45, i32 %46, i32 %49, %struct.TYPE_6__** %10)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ISC_R_SUCCESS, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %134

56:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  store i32* %70, i32** %76, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i32**, i32*** %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %63
  %84 = load i32, i32* %11, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %57

86:                                               ; preds = %57
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %123, %86
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %126

94:                                               ; preds = %90
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = call i32 @isc_task_create(i32 %97, i32 %100, i32** %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @ISC_R_SUCCESS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %94
  %112 = call i32 @isc_taskpool_destroy(%struct.TYPE_6__** %10)
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %134

114:                                              ; preds = %94
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i32, i32* %11, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @isc_task_setname(i32* %121, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null)
  br label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %11, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %90

126:                                              ; preds = %90
  %127 = call i32 @isc_taskpool_destroy(%struct.TYPE_6__** %9)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %128, %struct.TYPE_6__** %9, align 8
  br label %129

129:                                              ; preds = %126, %28
  %130 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %130, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %132 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %132, align 8
  %133 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %129, %111, %54
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @alloc_pool(i32, i32, i32, i32, %struct.TYPE_6__**) #1

declare dso_local i32 @isc_task_create(i32, i32, i32**) #1

declare dso_local i32 @isc_taskpool_destroy(%struct.TYPE_6__**) #1

declare dso_local i32 @isc_task_setname(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
