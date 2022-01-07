; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_dqrr_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_dqrr_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_dqrr }
%struct.qm_dqrr = type { i64, i32 }

@WARNING = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Ignoring completed DQRR entries\00", align 1
@QM_BIND_DQRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*)* @qm_dqrr_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_dqrr_finish(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_dqrr*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %4 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %5 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %4, i32 0, i32 0
  store %struct.qm_dqrr* %5, %struct.qm_dqrr** %3, align 8
  %6 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %7 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %10 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @DQRR_PTR2IDX(i32 %11)
  %13 = icmp ne i64 %8, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load i32, i32* @WARNING, align 4
  %16 = load i32, i32* @E_INVALID_STATE, align 4
  %17 = call i32 @REPORT_ERROR(i32 %15, i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %20 = load i32, i32* @QM_BIND_DQRR, align 4
  %21 = call i32 @__qm_portal_unbind(%struct.qm_portal* %19, i32 %20)
  ret void
}

declare dso_local i64 @DQRR_PTR2IDX(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @__qm_portal_unbind(%struct.qm_portal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
