; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalDqrrPvbPrefetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalDqrrPvbPrefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_dqrr }
%struct.qm_dqrr = type { i64, i32, i32, i32 }

@QM_DQRR_FLAG_RE = common dso_local global i32 0, align 4
@e_QmPortalPVB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*)* @qmPortalDqrrPvbPrefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmPortalDqrrPvbPrefetch(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_dqrr*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %4 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %5 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %4, i32 0, i32 0
  store %struct.qm_dqrr* %5, %struct.qm_dqrr** %3, align 8
  %6 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %7 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %10 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @qm_cl(i32 %11)
  %13 = call i32 @ptr_ADD(i32 %8, i32 %12)
  %14 = call i32 @dcbit_ro(i32 %13)
  ret void
}

declare dso_local i32 @dcbit_ro(i32) #1

declare dso_local i32 @ptr_ADD(i32, i32) #1

declare dso_local i32 @qm_cl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
