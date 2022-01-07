; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgSetClsPlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_kg.c_KgSetClsPlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.fman_kg_cp_regs }
%struct.fman_kg_cp_regs = type { i32* }

@CLS_PLAN_NUM_PER_GRP = common dso_local global i32 0, align 4
@FM_PCD_MAX_NUM_OF_CLS_PLANS = common dso_local global i64 0, align 8
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WriteKgarWait FAILED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @KgSetClsPlan(i64 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.fman_kg_cp_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %11 = load i64, i64* %3, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @FmIsMaster(i32 %15)
  %17 = call i32 @ASSERT_COND(i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.fman_kg_cp_regs* %23, %struct.fman_kg_cp_regs** %6, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = call i32 @KgHwLock(%struct.TYPE_11__* %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %102, %2
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = icmp slt i32 %32, %39
  br i1 %40, label %41, label %105

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @CLS_PLAN_NUM_PER_GRP, align 4
  %44 = sdiv i32 %42, %43
  %45 = call i32 @FmPcdKgBuildWriteClsPlanBlockActionReg(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %83, %41
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 8
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %86

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %53, %56
  %58 = load i64, i64* @FM_PCD_MAX_NUM_OF_CLS_PLANS, align 8
  %59 = sub nsw i64 %58, 1
  %60 = call i32 @IN_RANGE(i32 0, i32 %57, i64 %59)
  %61 = call i32 @ASSERT_COND(i32 %60)
  %62 = load %struct.fman_kg_cp_regs*, %struct.fman_kg_cp_regs** %6, align 8
  %63 = getelementptr inbounds %struct.fman_kg_cp_regs, %struct.fman_kg_cp_regs* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @CLS_PLAN_NUM_PER_GRP, align 4
  %67 = srem i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %73, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @WRITE_UINT32(i32 %70, i32 %81)
  br label %83

83:                                               ; preds = %52
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %47

86:                                               ; preds = %47
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i64 @WriteKgarWait(%struct.TYPE_10__* %87, i32 %88)
  %90 = load i64, i64* @E_OK, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i32, i32* @MAJOR, align 4
  %94 = load i32, i32* @E_INVALID_STATE, align 4
  %95 = call i32 @REPORT_ERROR(i32 %93, i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @KgHwUnlock(%struct.TYPE_11__* %98, i32 %99)
  br label %111

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 8
  store i32 %104, i32* %9, align 4
  br label %31

105:                                              ; preds = %31
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @KgHwUnlock(%struct.TYPE_11__* %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %92
  ret void
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @FmIsMaster(i32) #1

declare dso_local i32 @KgHwLock(%struct.TYPE_11__*) #1

declare dso_local i32 @FmPcdKgBuildWriteClsPlanBlockActionReg(i32) #1

declare dso_local i32 @IN_RANGE(i32, i32, i64) #1

declare dso_local i32 @WRITE_UINT32(i32, i32) #1

declare dso_local i64 @WriteKgarWait(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @KgHwUnlock(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
