; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetCongestionGroupPFCpriority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fm_ncsw.c_FmSetCongestionGroupPFCpriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64*, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FM_PORT_NUM_OF_CONGESTION_GRPS = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Congestion group ID bigger than %d\00", align 1
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@FM_MM_CGP = common dso_local global i64 0, align 8
@FM_SET_CONG_GRP_PFC_PRIO = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@E_INVALID_STATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"guest without IPC!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FmSetCongestionGroupPFCpriority(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__, align 4
  %11 = alloca %struct.TYPE_6__, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i64, i64* %4, align 8
  %13 = inttoptr i64 %12 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %7, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @ASSERT_COND(i64 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @FM_PORT_NUM_OF_CONGESTION_GRPS, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* @MAJOR, align 4
  %21 = load i64, i64* @E_INVALID_VALUE, align 8
  %22 = load i32, i32* @FM_PORT_NUM_OF_CONGESTION_GRPS, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @RETURN_ERROR(i32 %20, i64 %21, i8* %24)
  br label %26

26:                                               ; preds = %19, %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NCSW_MASTER_ID, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %26
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @ASSERT_COND(i64 %35)
  %37 = load i32, i32* @FM_PORT_NUM_OF_CONGESTION_GRPS, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %8, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @FM_MM_CGP, align 8
  %46 = add nsw i64 %44, %45
  %47 = inttoptr i64 %46 to i32*
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @fman_set_congestion_group_pfc_priority(i32* %47, i32 %48, i32 %49, i32 %50)
  br label %92

52:                                               ; preds = %26
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %52
  %60 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 16)
  %61 = call i32 @memset(%struct.TYPE_6__* %11, i32 0, i32 16)
  %62 = load i32, i32* %5, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %6, align 4
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @FM_SET_CONG_GRP_PFC_PRIO, align 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %69, %struct.TYPE_6__* %11, i32 16)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = bitcast %struct.TYPE_6__* %10 to i32*
  %77 = call i64 @XX_IpcSendMessage(i64 %75, i32* %76, i32 4, i32* null, i32* null, i32* null, i32* null)
  store i64 %77, i64* %9, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i64, i64* @E_OK, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %59
  %82 = load i32, i32* @MINOR, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i8*, i8** @NO_MSG, align 8
  %85 = call i32 @RETURN_ERROR(i32 %82, i64 %83, i8* %84)
  br label %86

86:                                               ; preds = %81, %59
  br label %91

87:                                               ; preds = %52
  %88 = load i32, i32* @MAJOR, align 4
  %89 = load i64, i64* @E_INVALID_STATE, align 8
  %90 = call i32 @RETURN_ERROR(i32 %88, i64 %89, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %86
  br label %92

92:                                               ; preds = %91, %32
  %93 = load i64, i64* @E_OK, align 8
  ret i64 %93
}

declare dso_local i32 @ASSERT_COND(i64) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @fman_set_congestion_group_pfc_priority(i32*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i64 @XX_IpcSendMessage(i64, i32*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
