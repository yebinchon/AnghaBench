; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_SetException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_CG_SetException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64 }
%struct.qm_mc_command = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qm_mc_result = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Either threshold or exception callback was not configured.\00", align 1
@QM_CGR_WE_CSCN_EN = common dso_local global i32 0, align 4
@e_QM_EX_CG_STATE_CHANGE = common dso_local global i64 0, align 8
@QM_CGR_EN = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Illegal exception\00", align 1
@QM_MCC_VERB_MODIFYCGR = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"INITCGR failed: %s\00", align 1
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QM_CG_SetException(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.qm_mc_command*, align 8
  %9 = alloca %struct.qm_mc_result*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %7, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %14 = load i32, i32* @E_INVALID_HANDLE, align 4
  %15 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__* %13, i32 %14)
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %10, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @MINOR, align 4
  %26 = load i32, i32* @E_INVALID_VALUE, align 4
  %27 = call i32 @RETURN_ERROR(i32 %25, i32 %26, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = call i32 @NCSW_PLOCK(%struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.qm_mc_command* @qm_mc_start(i32 %33)
  store %struct.qm_mc_command* %34, %struct.qm_mc_command** %8, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.qm_mc_command*, %struct.qm_mc_command** %8, align 8
  %39 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @QM_CGR_WE_CSCN_EN, align 4
  %42 = load %struct.qm_mc_command*, %struct.qm_mc_command** %8, align 8
  %43 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @e_QM_EX_CG_STATE_CHANGE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %28
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @QM_CGR_EN, align 4
  %53 = load %struct.qm_mc_command*, %struct.qm_mc_command** %8, align 8
  %54 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  br label %57

57:                                               ; preds = %51, %48
  br label %64

58:                                               ; preds = %28
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %60 = call i32 @PUNLOCK(%struct.TYPE_10__* %59)
  %61 = load i32, i32* @MAJOR, align 4
  %62 = load i32, i32* @E_INVALID_VALUE, align 4
  %63 = call i32 @RETURN_ERROR(i32 %61, i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %58, %57
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @QM_MCC_VERB_MODIFYCGR, align 4
  %69 = call i32 @qm_mc_commit(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %77, %64
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.qm_mc_result* @qm_mc_result(i32 %73)
  store %struct.qm_mc_result* %74, %struct.qm_mc_result** %9, align 8
  %75 = icmp ne %struct.qm_mc_result* %74, null
  %76 = xor i1 %75, true
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %70

78:                                               ; preds = %70
  %79 = load %struct.qm_mc_result*, %struct.qm_mc_result** %9, align 8
  %80 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @QM_MCC_VERB_MODIFYCGR, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ASSERT_COND(i32 %86)
  %88 = load %struct.qm_mc_result*, %struct.qm_mc_result** %9, align 8
  %89 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %78
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %95 = call i32 @PUNLOCK(%struct.TYPE_10__* %94)
  %96 = load i32, i32* @MINOR, align 4
  %97 = load i32, i32* @E_INVALID_STATE, align 4
  %98 = load %struct.qm_mc_result*, %struct.qm_mc_result** %9, align 8
  %99 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @mcr_result_str(i64 %100)
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = call i32 @RETURN_ERROR(i32 %96, i32 %97, i8* %103)
  br label %105

105:                                              ; preds = %93, %78
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %107 = call i32 @PUNLOCK(%struct.TYPE_10__* %106)
  %108 = load i32, i32* @E_OK, align 4
  ret i32 %108
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_10__*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @qm_mc_commit(i32, i32) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @mcr_result_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
