; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_FmPcdManipBuildCapwapReassmScheme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_FmPcdManipBuildCapwapReassmScheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_29__ = type { i8*, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i8* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_28__* }

@E_OK = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Memory allocation failed for scheme\00", align 1
@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FmPcdManipBuildCapwapReassmScheme(%struct.TYPE_28__* %0, %struct.TYPE_28__* %1, %struct.TYPE_28__* %2, %struct.TYPE_28__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_28__* %2, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_28__* %3, %struct.TYPE_28__** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  store %struct.TYPE_28__* %14, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %13, align 8
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %16 = call i32 @ASSERT_COND(%struct.TYPE_28__* %15)
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %18 = call i32 @ASSERT_COND(%struct.TYPE_28__* %17)
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %20 = call i32 @ASSERT_COND(%struct.TYPE_28__* %19)
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @E_OK, align 4
  store i32 %28, i32* %6, align 4
  br label %74

29:                                               ; preds = %5
  %30 = call %struct.TYPE_29__* @XX_Malloc(i32 32)
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %13, align 8
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %32 = icmp ne %struct.TYPE_29__* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* @MAJOR, align 4
  %35 = load i32, i32* @E_NO_MEMORY, align 4
  %36 = call i32 @RETURN_ERROR(i32 %34, i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %39 = call i32 @memset(%struct.TYPE_29__* %38, i32 0, i32 32)
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  store %struct.TYPE_28__* %40, %struct.TYPE_28__** %43, align 8
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load i8*, i8** @TRUE, align 8
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @TRUE, align 8
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @setCapwapReassmSchemeParams(%struct.TYPE_28__* %59, %struct.TYPE_29__* %60, %struct.TYPE_28__* %61, i64 %62)
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %66 = call i64 @FM_PCD_KgSchemeSet(%struct.TYPE_28__* %64, %struct.TYPE_29__* %65)
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %72 = call i32 @XX_Free(%struct.TYPE_29__* %71)
  %73 = load i32, i32* @E_OK, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %37, %27
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @XX_Malloc(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @setCapwapReassmSchemeParams(%struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_28__*, i64) #1

declare dso_local i64 @FM_PCD_KgSchemeSet(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
