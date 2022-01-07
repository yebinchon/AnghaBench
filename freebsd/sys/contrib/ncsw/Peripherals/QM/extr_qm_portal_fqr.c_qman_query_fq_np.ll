; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_query_fq_np.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_query_fq_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.qman_fq = type { i32 }
%struct.qm_mcr_queryfq_np = type { i32 }
%struct.qm_mc_command = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.qm_mc_result = type { i32, i64, %struct.qm_mcr_queryfq_np }

@QM_MCC_VERB_QUERYFQ_NP = common dso_local global i32 0, align 4
@QM_MCR_VERB_MASK = common dso_local global i32 0, align 4
@QM_MCR_VERB_QUERYFQ_NP = common dso_local global i32 0, align 4
@QM_MCR_RESULT_OK = common dso_local global i64 0, align 8
@MINOR = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"QUERYFQ_NP failed: %s\0A\00", align 1
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.qman_fq*, %struct.qm_mcr_queryfq_np*)* @qman_query_fq_np to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_query_fq_np(%struct.TYPE_7__* %0, %struct.qman_fq* %1, %struct.qm_mcr_queryfq_np* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %struct.qm_mcr_queryfq_np*, align 8
  %7 = alloca %struct.qm_mc_command*, align 8
  %8 = alloca %struct.qm_mc_result*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  store %struct.qm_mcr_queryfq_np* %2, %struct.qm_mcr_queryfq_np** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %11 = call i32 @NCSW_PLOCK(%struct.TYPE_7__* %10)
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qm_mc_command* @qm_mc_start(i32 %14)
  store %struct.qm_mc_command* %15, %struct.qm_mc_command** %7, align 8
  %16 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %17 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qm_mc_command*, %struct.qm_mc_command** %7, align 8
  %20 = getelementptr inbounds %struct.qm_mc_command, %struct.qm_mc_command* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @QM_MCC_VERB_QUERYFQ_NP, align 4
  %26 = call i32 @qm_mc_commit(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %34, %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.qm_mc_result* @qm_mc_result(i32 %30)
  store %struct.qm_mc_result* %31, %struct.qm_mc_result** %8, align 8
  %32 = icmp ne %struct.qm_mc_result* %31, null
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %27

35:                                               ; preds = %27
  %36 = load %struct.qm_mc_result*, %struct.qm_mc_result** %8, align 8
  %37 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @QM_MCR_VERB_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @QM_MCR_VERB_QUERYFQ_NP, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT_COND(i32 %43)
  %45 = load %struct.qm_mc_result*, %struct.qm_mc_result** %8, align 8
  %46 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %35
  %52 = load %struct.qm_mcr_queryfq_np*, %struct.qm_mcr_queryfq_np** %6, align 8
  %53 = load %struct.qm_mc_result*, %struct.qm_mc_result** %8, align 8
  %54 = getelementptr inbounds %struct.qm_mc_result, %struct.qm_mc_result* %53, i32 0, i32 2
  %55 = bitcast %struct.qm_mcr_queryfq_np* %52 to i8*
  %56 = bitcast %struct.qm_mcr_queryfq_np* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %55, i8* align 8 %56, i64 4, i1 false)
  br label %57

57:                                               ; preds = %51, %35
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %59 = call i32 @PUNLOCK(%struct.TYPE_7__* %58)
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* @QM_MCR_RESULT_OK, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load i32, i32* @MINOR, align 4
  %65 = load i32, i32* @E_INVALID_STATE, align 4
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @mcr_result_str(i64 %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @RETURN_ERROR(i32 %64, i32 %65, i8* %69)
  br label %71

71:                                               ; preds = %63, %57
  %72 = load i32, i32* @E_OK, align 4
  ret i32 %72
}

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_7__*) #1

declare dso_local %struct.qm_mc_command* @qm_mc_start(i32) #1

declare dso_local i32 @qm_mc_commit(i32, i32) #1

declare dso_local %struct.qm_mc_result* @qm_mc_result(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PUNLOCK(%struct.TYPE_7__*) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

declare dso_local i32 @mcr_result_str(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
