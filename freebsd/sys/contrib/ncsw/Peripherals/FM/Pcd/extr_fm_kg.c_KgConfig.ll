; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgConfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.fman_kg_regs*, i32* }
%struct.fman_kg_regs = type { i32* }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { i64, i32 }

@FM_PCD_KG_NUM_OF_SCHEMES = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"numOfSchemes should not exceed %d\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"FM Keygen allocation FAILED\00", align 1
@DEFAULT_fmPcdKgErrorExceptions = common dso_local global i32 0, align 4
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [85 x i8] c"numOfSchemes was defined 0 by user, re-defined by driver to FM_PCD_KG_NUM_OF_SCHEMES\00", align 1
@ILLEGAL_CLS_PLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @KgConfig(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = call i32 @UNUSED(%struct.TYPE_12__* %7)
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @FM_PCD_KG_NUM_OF_SCHEMES, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @MAJOR, align 4
  %16 = load i32, i32* @E_INVALID_VALUE, align 4
  %17 = load i64, i64* @FM_PCD_KG_NUM_OF_SCHEMES, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @REPORT_ERROR(i32 %15, i32 %16, i8* %18)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %86

20:                                               ; preds = %2
  %21 = call i64 @XX_Malloc(i32 32)
  %22 = inttoptr i64 %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %6, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @MAJOR, align 4
  %27 = load i32, i32* @E_NO_MEMORY, align 4
  %28 = call i32 @REPORT_ERROR(i32 %26, i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %86

29:                                               ; preds = %20
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = call i32 @memset(%struct.TYPE_10__* %30, i32 0, i32 32)
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @FmIsMaster(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @FmGetPcdKgBaseAddr(i32 %40)
  %42 = call i64 @UINT_TO_PTR(i32 %41)
  %43 = inttoptr i64 %42 to %struct.fman_kg_regs*
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  store %struct.fman_kg_regs* %43, %struct.fman_kg_regs** %45, align 8
  %46 = load i32, i32* @DEFAULT_fmPcdKgErrorExceptions, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load %struct.fman_kg_regs*, %struct.fman_kg_regs** %52, align 8
  %54 = getelementptr inbounds %struct.fman_kg_regs, %struct.fman_kg_regs* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  store i32* %56, i32** %58, align 8
  br label %59

59:                                               ; preds = %37, %29
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NCSW_MASTER_ID, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %59
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* @FM_PCD_KG_NUM_OF_SCHEMES, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @WARNING, align 4
  %80 = call i32 @DBG(i32 %79, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %75, %70, %59
  %82 = load i32, i32* @ILLEGAL_CLS_PLAN, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %3, align 8
  br label %86

86:                                               ; preds = %81, %25, %14
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %87
}

declare dso_local i32 @UNUSED(%struct.TYPE_12__*) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @FmIsMaster(i32) #1

declare dso_local i64 @UINT_TO_PTR(i32) #1

declare dso_local i32 @FmGetPcdKgBaseAddr(i32) #1

declare dso_local i32 @DBG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
