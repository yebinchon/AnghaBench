; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalDqrrPceUpdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalDqrrPceUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_dqrr }
%struct.qm_dqrr = type { i64, i32, i64 }

@DQRR_PI = common dso_local global i32 0, align 4
@QM_DQRR_SIZE = common dso_local global i32 0, align 4
@e_QmPortalPCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qm_portal*)* @qmPortalDqrrPceUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qmPortalDqrrPceUpdate(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_dqrr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %6 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_dqrr* %7, %struct.qm_dqrr** %3, align 8
  %8 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %9 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @DQRR_PI, align 4
  %12 = call i32 @qm_cl_in(i32 %11)
  %13 = load i32, i32* @QM_DQRR_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %18 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* @QM_DQRR_SIZE, align 4
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %22 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @cyc_diff(i32 %19, i64 %20, i64 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.qm_dqrr*, %struct.qm_dqrr** %3, align 8
  %27 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  %32 = load i64, i64* %4, align 8
  ret i64 %32
}

declare dso_local i32 @qm_cl_in(i32) #1

declare dso_local i64 @cyc_diff(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
