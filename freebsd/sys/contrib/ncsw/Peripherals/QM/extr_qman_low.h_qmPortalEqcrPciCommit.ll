; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalEqcrPciCommit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalEqcrPciCommit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i64, i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@EQCR_PI_CINH = common dso_local global i32 0, align 4
@e_QmPortalPCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*, i32)* @qmPortalEqcrPciCommit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmPortalEqcrPciCommit(%struct.qm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qm_eqcr*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_eqcr* %7, %struct.qm_eqcr** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.qm_eqcr*, %struct.qm_eqcr** %5, align 8
  %10 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %8, %11
  %13 = load %struct.qm_eqcr*, %struct.qm_eqcr** %5, align 8
  %14 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load %struct.qm_eqcr*, %struct.qm_eqcr** %5, align 8
  %18 = call i32 @EQCR_INC(%struct.qm_eqcr* %17)
  %19 = load %struct.qm_eqcr*, %struct.qm_eqcr** %5, align 8
  %20 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  %23 = load %struct.qm_eqcr*, %struct.qm_eqcr** %5, align 8
  %24 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = call i32 @dcbf_64(%struct.TYPE_3__* %25)
  %27 = call i32 (...) @mb()
  %28 = load i32, i32* @EQCR_PI_CINH, align 4
  %29 = load %struct.qm_eqcr*, %struct.qm_eqcr** %5, align 8
  %30 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = call i32 @EQCR_PTR2IDX(%struct.TYPE_3__* %31)
  %33 = call i32 @qm_out(i32 %28, i32 %32)
  ret void
}

declare dso_local i32 @EQCR_INC(%struct.qm_eqcr*) #1

declare dso_local i32 @dcbf_64(%struct.TYPE_3__*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @qm_out(i32, i32) #1

declare dso_local i32 @EQCR_PTR2IDX(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
