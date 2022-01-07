; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_ib_hcrd_os_ob_reads_config_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_pcie.c_al_pcie_ib_hcrd_os_ob_reads_config_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_pcie_port = type { i32, i32 }
%struct.al_pcie_ib_hcrd_os_ob_reads_config = type { i32, i32, i32, i32 }

@AL_PCIE_REV_ID_3 = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_RC_OB_OS_READS_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_RC_NOF_CPL_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_RC_NOF_NP_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_RC_NOF_P_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_RC_OB_OS_READS_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_RC_NOF_CPL_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_RC_NOF_NP_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_RC_NOF_P_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_EP_OB_OS_READS_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_EP_NOF_CPL_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_EP_NOF_NP_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_3_EP_NOF_P_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_EP_OB_OS_READS_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_EP_NOF_CPL_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_EP_NOF_NP_HDR_DEFAULT = common dso_local global i32 0, align 4
@AL_PCIE_REV_1_2_EP_NOF_P_HDR_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [93 x i8] c"PCIe %d: outstanding outbound transactions could not be configured - unknown operating mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_pcie_port*)* @al_pcie_ib_hcrd_os_ob_reads_config_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_pcie_ib_hcrd_os_ob_reads_config_default(%struct.al_pcie_port* %0) #0 {
  %2 = alloca %struct.al_pcie_port*, align 8
  %3 = alloca %struct.al_pcie_ib_hcrd_os_ob_reads_config, align 4
  store %struct.al_pcie_port* %0, %struct.al_pcie_port** %2, align 8
  %4 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %5 = call i32 @al_pcie_operating_mode_get(%struct.al_pcie_port* %4)
  switch i32 %5, label %56 [
    i32 128, label %6
    i32 129, label %31
  ]

6:                                                ; preds = %1
  %7 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %8 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AL_PCIE_REV_ID_3, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load i32, i32* @AL_PCIE_REV_3_RC_OB_OS_READS_DEFAULT, align 4
  %14 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @AL_PCIE_REV_3_RC_NOF_CPL_HDR_DEFAULT, align 4
  %16 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @AL_PCIE_REV_3_RC_NOF_NP_HDR_DEFAULT, align 4
  %18 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @AL_PCIE_REV_3_RC_NOF_P_HDR_DEFAULT, align 4
  %20 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  br label %30

21:                                               ; preds = %6
  %22 = load i32, i32* @AL_PCIE_REV_1_2_RC_OB_OS_READS_DEFAULT, align 4
  %23 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 3
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @AL_PCIE_REV_1_2_RC_NOF_CPL_HDR_DEFAULT, align 4
  %25 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @AL_PCIE_REV_1_2_RC_NOF_NP_HDR_DEFAULT, align 4
  %27 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @AL_PCIE_REV_1_2_RC_NOF_P_HDR_DEFAULT, align 4
  %29 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %21, %12
  br label %62

31:                                               ; preds = %1
  %32 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %33 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AL_PCIE_REV_ID_3, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i32, i32* @AL_PCIE_REV_3_EP_OB_OS_READS_DEFAULT, align 4
  %39 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @AL_PCIE_REV_3_EP_NOF_CPL_HDR_DEFAULT, align 4
  %41 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @AL_PCIE_REV_3_EP_NOF_NP_HDR_DEFAULT, align 4
  %43 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @AL_PCIE_REV_3_EP_NOF_P_HDR_DEFAULT, align 4
  %45 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  br label %55

46:                                               ; preds = %31
  %47 = load i32, i32* @AL_PCIE_REV_1_2_EP_OB_OS_READS_DEFAULT, align 4
  %48 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @AL_PCIE_REV_1_2_EP_NOF_CPL_HDR_DEFAULT, align 4
  %50 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @AL_PCIE_REV_1_2_EP_NOF_NP_HDR_DEFAULT, align 4
  %52 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @AL_PCIE_REV_1_2_EP_NOF_P_HDR_DEFAULT, align 4
  %54 = getelementptr inbounds %struct.al_pcie_ib_hcrd_os_ob_reads_config, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %37
  br label %62

56:                                               ; preds = %1
  %57 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %58 = getelementptr inbounds %struct.al_pcie_port, %struct.al_pcie_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @al_err(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = call i32 @al_assert(i32 0)
  br label %62

62:                                               ; preds = %56, %55, %30
  %63 = load %struct.al_pcie_port*, %struct.al_pcie_port** %2, align 8
  %64 = call i32 @al_pcie_port_ib_hcrd_os_ob_reads_config(%struct.al_pcie_port* %63, %struct.al_pcie_ib_hcrd_os_ob_reads_config* %3)
  ret void
}

declare dso_local i32 @al_pcie_operating_mode_get(%struct.al_pcie_port*) #1

declare dso_local i32 @al_err(i8*, i32) #1

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_pcie_port_ib_hcrd_os_ob_reads_config(%struct.al_pcie_port*, %struct.al_pcie_ib_hcrd_os_ob_reads_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
