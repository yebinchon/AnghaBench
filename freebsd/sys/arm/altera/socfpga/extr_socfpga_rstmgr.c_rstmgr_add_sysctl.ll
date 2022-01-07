; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_rstmgr.c_rstmgr_add_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/altera/socfpga/extr_socfpga_rstmgr.c_rstmgr_add_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rstmgr_softc = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fpga2hps\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@RSTMGR_SYSCTL_FPGA2HPS = common dso_local global i32 0, align 4
@rstmgr_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Enable fpga2hps bridge\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"lwhps2fpga\00", align 1
@RSTMGR_SYSCTL_LWHPS2FPGA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"Enable lwhps2fpga bridge\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"hps2fpga\00", align 1
@RSTMGR_SYSCTL_HPS2FPGA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Enable hps2fpga bridge\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rstmgr_softc*)* @rstmgr_add_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rstmgr_add_sysctl(%struct.rstmgr_softc* %0) #0 {
  %2 = alloca %struct.rstmgr_softc*, align 8
  %3 = alloca %struct.sysctl_oid_list*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  store %struct.rstmgr_softc* %0, %struct.rstmgr_softc** %2, align 8
  %5 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %2, align 8
  %6 = getelementptr inbounds %struct.rstmgr_softc, %struct.rstmgr_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %7)
  store %struct.sysctl_ctx_list* %8, %struct.sysctl_ctx_list** %4, align 8
  %9 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rstmgr_softc, %struct.rstmgr_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %3, align 8
  %14 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %15 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLTYPE_UINT, align 4
  %18 = load i32, i32* @CTLFLAG_RW, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %2, align 8
  %21 = load i32, i32* @RSTMGR_SYSCTL_FPGA2HPS, align 4
  %22 = load i32, i32* @rstmgr_sysctl, align 4
  %23 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %14, %struct.sysctl_oid_list* %15, i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.rstmgr_softc* %20, i32 %21, i32 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %25 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLTYPE_UINT, align 4
  %28 = load i32, i32* @CTLFLAG_RW, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %2, align 8
  %31 = load i32, i32* @RSTMGR_SYSCTL_LWHPS2FPGA, align 4
  %32 = load i32, i32* @rstmgr_sysctl, align 4
  %33 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %24, %struct.sysctl_oid_list* %25, i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %29, %struct.rstmgr_softc* %30, i32 %31, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLTYPE_UINT, align 4
  %38 = load i32, i32* @CTLFLAG_RW, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.rstmgr_softc*, %struct.rstmgr_softc** %2, align 8
  %41 = load i32, i32* @RSTMGR_SYSCTL_HPS2FPGA, align 4
  %42 = load i32, i32* @rstmgr_sysctl, align 4
  %43 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %34, %struct.sysctl_oid_list* %35, i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %39, %struct.rstmgr_softc* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.rstmgr_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
