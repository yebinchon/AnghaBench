; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_AllocStatsObjs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_AllocStatsObjs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"FM MURAM\00", align 1
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Statistics object\00", align 1
@FM_PCD_CC_AD_ENTRY_SIZE = common dso_local global i32 0, align 4
@FM_PCD_CC_AD_TABLE_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"MURAM allocation for statistics ADs\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"MURAM allocation for statistics counters\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @AllocStatsObjs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AllocStatsObjs(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i8* @FmPcdGetMuramHandle(i32 %10)
  store i8* %11, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @MAJOR, align 4
  %16 = load i32, i32* @E_INVALID_HANDLE, align 4
  %17 = call i32 @RETURN_ERROR(i32 %15, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %1
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %100, %18
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 2
  %25 = icmp slt i64 %20, %24
  br i1 %25, label %26, label %103

26:                                               ; preds = %19
  %27 = call %struct.TYPE_8__* @XX_Malloc(i32 16)
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %3, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @FreeStatObjects(i32* %32, i8* %33)
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i32, i32* @E_NO_MEMORY, align 4
  %37 = call i32 @RETURN_ERROR(i32 %35, i32 %36, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %30, %26
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = call i32 @memset(%struct.TYPE_8__* %39, i32 0, i32 16)
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %43 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %44 = call i64 @FM_MURAM_AllocMem(i8* %41, i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %38
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @FreeStatObjects(i32* %50, i8* %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = call i32 @XX_Free(%struct.TYPE_8__* %53)
  %55 = load i32, i32* @MAJOR, align 4
  %56 = load i32, i32* @E_NO_MEMORY, align 4
  %57 = call i32 @RETURN_ERROR(i32 %55, i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %48, %38
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @FM_PCD_CC_AD_ENTRY_SIZE, align 4
  %61 = call i32 @MemSet8(i8* %59, i32 0, i32 %60)
  %62 = load i8*, i8** %4, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @FM_PCD_CC_AD_TABLE_ALIGN, align 4
  %67 = call i64 @FM_MURAM_AllocMem(i8* %62, i32 %65, i32 %66)
  %68 = inttoptr i64 %67 to i8*
  store i8* %68, i8** %6, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %58
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @FreeStatObjects(i32* %73, i8* %74)
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @FM_MURAM_FreeMem(i8* %76, i8* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = call i32 @XX_Free(%struct.TYPE_8__* %79)
  %81 = load i32, i32* @MAJOR, align 4
  %82 = load i32, i32* @E_NO_MEMORY, align 4
  %83 = call i32 @RETURN_ERROR(i32 %81, i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %84

84:                                               ; preds = %71, %58
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @MemSet8(i8* %85, i32 0, i32 %88)
  %90 = load i8*, i8** %5, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = call i32 @EnqueueStatsObj(i32* %97, %struct.TYPE_8__* %98)
  br label %100

100:                                              ; preds = %84
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %7, align 8
  br label %19

103:                                              ; preds = %19
  %104 = load i32, i32* @E_OK, align 4
  ret i32 %104
}

declare dso_local i8* @FmPcdGetMuramHandle(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local %struct.TYPE_8__* @XX_Malloc(i32) #1

declare dso_local i32 @FreeStatObjects(i32*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @FM_MURAM_AllocMem(i8*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_8__*) #1

declare dso_local i32 @MemSet8(i8*, i32, i32) #1

declare dso_local i32 @FM_MURAM_FreeMem(i8*, i8*) #1

declare dso_local i32 @EnqueueStatsObj(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
