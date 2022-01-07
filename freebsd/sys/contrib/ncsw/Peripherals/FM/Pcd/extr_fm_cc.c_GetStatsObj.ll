; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_GetStatsObj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_GetStatsObj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64, i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }

@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"statistics object\00", align 1
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MURAM allocation for statistics ADs\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"MURAM allocation for statistics counters\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_15__*)* @GetStatsObj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @GetStatsObj(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = call i32 @ASSERT_COND(%struct.TYPE_15__* %6)
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  %15 = call %struct.TYPE_16__* @DequeueStatsObj(i32* %14)
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %4, align 8
  br label %88

16:                                               ; preds = %1
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_17__*
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %5, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = call i32 @ASSERT_COND(%struct.TYPE_15__* %23)
  %25 = call %struct.TYPE_16__* @XX_Malloc(i32 16)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %4, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @MAJOR, align 4
  %30 = load i32, i32* @E_NO_MEMORY, align 4
  %31 = call i32 @REPORT_ERROR(i32 %29, i32 %30, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %90

32:                                               ; preds = %16
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %34 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %35 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %36 = call i64 @FM_MURAM_AllocMem(%struct.TYPE_15__* %33, i32 %34, i32 %35)
  %37 = inttoptr i64 %36 to %struct.TYPE_15__*
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  store %struct.TYPE_15__* %37, %struct.TYPE_15__** %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %41, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %32
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = call i32 @XX_Free(%struct.TYPE_16__* %45)
  %47 = load i32, i32* @MAJOR, align 4
  %48 = load i32, i32* @E_NO_MEMORY, align 4
  %49 = call i32 @REPORT_ERROR(i32 %47, i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %90

50:                                               ; preds = %32
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %52, align 8
  %54 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %55 = call i32 @MemSet8(%struct.TYPE_15__* %53, i32 0, i32 %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %61 = call i64 @FM_MURAM_AllocMem(%struct.TYPE_15__* %56, i32 %59, i32 %60)
  %62 = inttoptr i64 %61 to %struct.TYPE_15__*
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = icmp ne %struct.TYPE_15__* %67, null
  br i1 %68, label %80, label %69

69:                                               ; preds = %50
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %72, align 8
  %74 = call i32 @FM_MURAM_FreeMem(%struct.TYPE_15__* %70, %struct.TYPE_15__* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %76 = call i32 @XX_Free(%struct.TYPE_16__* %75)
  %77 = load i32, i32* @MAJOR, align 4
  %78 = load i32, i32* @E_NO_MEMORY, align 4
  %79 = call i32 @REPORT_ERROR(i32 %77, i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %90

80:                                               ; preds = %50
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @MemSet8(%struct.TYPE_15__* %83, i32 0, i32 %86)
  br label %88

88:                                               ; preds = %80, %12
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %89, %struct.TYPE_16__** %2, align 8
  br label %90

90:                                               ; preds = %88, %69, %44, %28
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %91
}

declare dso_local i32 @ASSERT_COND(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @DequeueStatsObj(i32*) #1

declare dso_local %struct.TYPE_16__* @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i64 @FM_MURAM_AllocMem(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_16__*) #1

declare dso_local i32 @MemSet8(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @FM_MURAM_FreeMem(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
