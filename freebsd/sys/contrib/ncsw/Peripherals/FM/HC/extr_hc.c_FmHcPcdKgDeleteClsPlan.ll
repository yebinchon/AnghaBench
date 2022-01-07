; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgDeleteClsPlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/HC/extr_hc.c_FmHcPcdKgDeleteClsPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Classification plan set\00", align 1
@FM_PCD_MAX_NUM_OF_CLS_PLANS = common dso_local global i64 0, align 8
@E_OK = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmHcPcdKgDeleteClsPlan(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  %9 = call i64 @XX_Malloc(i32 16)
  %10 = inttoptr i64 %9 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %6, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @MAJOR, align 4
  %15 = load i32, i32* @E_NO_MEMORY, align 4
  %16 = call i32 @RETURN_ERROR(i32 %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = call i32 @memset(%struct.TYPE_7__* %18, i32 0, i32 16)
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @FmPcdKgGetClsPlanGrpBase(i32 %22, i32 %23)
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @FmPcdKgGetClsPlanGrpSize(i32 %29, i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @FM_PCD_MAX_NUM_OF_CLS_PLANS, align 8
  %38 = icmp sle i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT_COND(i32 %39)
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = call i64 @FmHcPcdKgSetClsPlan(%struct.TYPE_8__* %41, %struct.TYPE_7__* %42)
  %44 = load i64, i64* @E_OK, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %17
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = call i32 @XX_Free(%struct.TYPE_7__* %47)
  %49 = load i32, i32* @MAJOR, align 4
  %50 = load i32, i32* @E_INVALID_STATE, align 4
  %51 = load i8*, i8** @NO_MSG, align 8
  %52 = call i32 @RETURN_ERROR(i32 %49, i32 %50, i8* %51)
  br label %53

53:                                               ; preds = %46, %17
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = call i32 @XX_Free(%struct.TYPE_7__* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @FmPcdKgDestroyClsPlanGrp(i32 %58, i32 %59)
  %61 = load i64, i64* @E_OK, align 8
  ret i64 %61
}

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @FmPcdKgGetClsPlanGrpBase(i32, i32) #1

declare dso_local i64 @FmPcdKgGetClsPlanGrpSize(i32, i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i64 @FmHcPcdKgSetClsPlan(%struct.TYPE_8__*, %struct.TYPE_7__*) #1

declare dso_local i32 @XX_Free(%struct.TYPE_7__*) #1

declare dso_local i32 @FmPcdKgDestroyClsPlanGrp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
