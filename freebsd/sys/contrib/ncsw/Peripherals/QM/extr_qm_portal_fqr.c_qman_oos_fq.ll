; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_oos_fq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_oos_fq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.qman_fq = type { i64, i32, i32 }
%struct.qm_mc_command = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qm_mc_result = type { i32, i64 }

@qman_fq_state_retired = common dso_local global i64 0, align 8
@QMAN_FQ_FLAG_NO_MODIFY = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_BLOCKOOS = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@QM_MCC_VERB_ALTER_OOS = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_VERB_ALTER_OOS = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ALTER_OOS failed: %s\0A\00", align 1
@qman_fq_state_oos = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.qman_fq*)* @qman_oos_fq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_oos_fq(%struct.TYPE_7__* %0, %struct.qman_fq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %struct.qm_mc_command*, align 8
  %7 = alloca %struct.qm_mc_result*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  %9 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %10 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @qman_fq_state_retired, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT_COND(i32 %14)
  %16 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %17 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @QMAN_FQ_FLAG_NO_MODIFY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @E_INVALID_VALUE, align 4
  %24 = call i32 @ERROR_CODE(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %110

25:                                               ; preds = %2
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = call i32 @NCSW_PLOCK(%struct.TYPE_7__* %26)
  %28 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %29 = call i32 @FQLOCK(%struct.qman_fq* %28)
  %30 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %31 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @QMAN_FQ_STATE_BLOCKOOS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %38 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @qman_fq_state_retired, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36, %25
  %43 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %44 = call i32 @FQUNLOCK(%struct.qman_fq* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = call i32 @PUNLOCK(%struct.TYPE_7__* %45)
  %47 = load i32, i32* @E_BUSY, align 4
  %48 = call i32 @ERROR_CODE(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %110

49:                                               ; preds = %36
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.qm_mc_command* @qm_mc_start(i32 %52)
  store %struct.qm_mc_command* %53, %struct.qm_mc_command** %6, align 8
  %54 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %55 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qm_mc_command*, %struct.qm_mc_command** %6, align 8
  %58 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @QM_MCC_VERB_ALTER_OOS, align 4
  %64 = call i32 @qm_mc_commit(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %72, %49
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.qm_mc_result* @qm_mc_result(i32 %68)
  store %struct.qm_mc_result* %69, %struct.qm_mc_result** %7, align 8
  %70 = icmp ne %struct.qm_mc_result* %69, null
  %71 = xor i1 %70, true
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %65

73:                                               ; preds = %65
  %74 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %75 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @QM_MCR_VERB_ALTER_OOS, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT_COND(i32 %81)
  %83 = load %struct.qm_mc_result*, %struct.qm_mc_result** %7, align 8
  %84 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %73
  %90 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %91 = call i32 @FQUNLOCK(%struct.qman_fq* %90)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %93 = call i32 @PUNLOCK(%struct.TYPE_7__* %92)
  %94 = load i32, i32* @MINOR, align 4
  %95 = load i32, i32* @E_INVALID_STATE, align 4
  %96 = load i64, i64* %8, align 8
  %97 = call i32 @mcr_result_str(i64 %96)
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @RETURN_ERROR(i32 %94, i32 %95, i8* %99)
  br label %101

101:                                              ; preds = %89, %73
  %102 = load i64, i64* @qman_fq_state_oos, align 8
  %103 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %104 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  %105 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %106 = call i32 @FQUNLOCK(%struct.qman_fq* %105)
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = call i32 @PUNLOCK(%struct.TYPE_7__* %107)
  %109 = load i32, i32* @E_OK, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %101, %42, %22
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @FQLOCK(%struct.qman_fq*) #1

declare dso_local i32 @FQUNLOCK(%struct.qman_fq*) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_7__*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i32 @qm_mc_commit(i32, i32) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @mcr_result_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
