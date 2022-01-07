; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableGetKeyCounter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableGetKeyCounter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@e_FM_PCD_CC_STATS_MODE_NONE = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Statistics were not enabled for this match table\00", align 1
@e_FM_PCD_CC_STATS_MODE_FRAME = common dso_local global i64 0, align 8
@e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"Frame count is not supported in the statistics mode of this match table\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"The provided keyIndex exceeds the number of keys in this match table\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Statistics were not enabled for this key\00", align 1
@FM_PCD_CC_STATS_COUNTER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FM_PCD_MatchTableGetKeyCounter(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = load i32, i32* @E_INVALID_HANDLE, align 4
  %14 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_7__* %12, i32 %13, i32 0)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @e_FM_PCD_CC_STATS_MODE_NONE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @MAJOR, align 4
  %22 = load i32, i32* @E_INVALID_STATE, align 4
  %23 = call i32 @REPORT_ERROR(i32 %21, i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

24:                                               ; preds = %2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e_FM_PCD_CC_STATS_MODE_FRAME, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @e_FM_PCD_CC_STATS_MODE_BYTE_AND_FRAME, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @MAJOR, align 4
  %38 = load i32, i32* @E_INVALID_STATE, align 4
  %39 = call i32 @REPORT_ERROR(i32 %37, i32 %38, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

40:                                               ; preds = %30, %24
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @XX_LockIntrSpinlock(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %40
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @XX_UnlockIntrSpinlock(i32 %53, i32 %54)
  %56 = load i32, i32* @MAJOR, align 4
  %57 = load i32, i32* @E_INVALID_STATE, align 4
  %58 = call i32 @REPORT_ERROR(i32 %56, i32 %57, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

59:                                               ; preds = %40
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i64, i64* %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = icmp ne %struct.TYPE_5__* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %59
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @XX_UnlockIntrSpinlock(i32 %71, i32 %72)
  %74 = load i32, i32* @MAJOR, align 4
  %75 = load i32, i32* @E_INVALID_STATE, align 4
  %76 = call i32 @REPORT_ERROR(i32 %74, i32 %75, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

77:                                               ; preds = %59
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %7, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @ASSERT_COND(i32* %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @FM_PCD_CC_STATS_COUNTER_SIZE, align 4
  %91 = call i64 @PTR_MOVE(i32* %89, i32 %90)
  %92 = inttoptr i64 %91 to i32*
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @GET_UINT32(i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @XX_UnlockIntrSpinlock(i32 %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %77, %68, %50, %36, %20
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i32 @ASSERT_COND(i32*) #1

declare dso_local i32 @GET_UINT32(i32) #1

declare dso_local i64 @PTR_MOVE(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
