; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalMrPciUpdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalMrPciUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_mr }
%struct.qm_mr = type { i64, i32, i64 }

@MR_PI_CINH = common dso_local global i32 0, align 4
@QM_MR_SIZE = common dso_local global i32 0, align 4
@e_QmPortalPCI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qm_portal*)* @qmPortalMrPciUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qmPortalMrPciUpdate(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_mr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %6 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_mr* %7, %struct.qm_mr** %3, align 8
  %8 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %9 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @MR_PI_CINH, align 4
  %12 = call i64 @qm_in(i32 %11)
  %13 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %14 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %13, i32 0, i32 2
  store i64 %12, i64* %14, align 8
  %15 = load i32, i32* @QM_MR_SIZE, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %18 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @cyc_diff(i32 %15, i64 %16, i64 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %23 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  %28 = load i64, i64* %4, align 8
  ret i64 %28
}

declare dso_local i64 @qm_in(i32) #1

declare dso_local i64 @cyc_diff(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
