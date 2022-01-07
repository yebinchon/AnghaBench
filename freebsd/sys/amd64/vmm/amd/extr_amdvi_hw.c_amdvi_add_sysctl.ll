; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_add_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_add_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, i32, i32, i32, i32, i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"event_intr_count\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Event interrupt count\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"command_count\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Command submitted count\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"pci_rid\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"IOMMU RID\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"start_dev_rid\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Start of device under this IOMMU\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"end_dev_rid\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"End of device under this IOMMU\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"command_head\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@amdvi_handle_sysctl = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"Command head\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"command_tail\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Command tail\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"event_head\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"event_tail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_softc*)* @amdvi_add_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_add_sysctl(%struct.amdvi_softc* %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca %struct.sysctl_oid_list*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %2, align 8
  %6 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %9)
  store %struct.sysctl_ctx_list* %10, %struct.sysctl_ctx_list** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @device_get_sysctl_tree(i32 %11)
  %13 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %12)
  store %struct.sysctl_oid_list* %13, %struct.sysctl_oid_list** %3, align 8
  %14 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %15 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %16 = load i32, i32* @OID_AUTO, align 4
  %17 = load i32, i32* @CTLFLAG_RD, align 4
  %18 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %19 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %18, i32 0, i32 4
  %20 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %14, %struct.sysctl_oid_list* %15, i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17, i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %22 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %23 = load i32, i32* @OID_AUTO, align 4
  %24 = load i32, i32* @CTLFLAG_RD, align 4
  %25 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %26 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %25, i32 0, i32 3
  %27 = call i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list* %21, %struct.sysctl_oid_list* %22, i32 %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %24, i32* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %29 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %30 = load i32, i32* @OID_AUTO, align 4
  %31 = load i32, i32* @CTLFLAG_RD, align 4
  %32 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %33 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %32, i32 0, i32 2
  %34 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %28, %struct.sysctl_oid_list* %29, i32 %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %31, i32* %33, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %35 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %36 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %37 = load i32, i32* @OID_AUTO, align 4
  %38 = load i32, i32* @CTLFLAG_RD, align 4
  %39 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %40 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %39, i32 0, i32 1
  %41 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %35, %struct.sysctl_oid_list* %36, i32 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %38, i32* %40, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %42 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %43 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLFLAG_RD, align 4
  %46 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %47 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %46, i32 0, i32 0
  %48 = call i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list* %42, %struct.sysctl_oid_list* %43, i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %45, i32* %47, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %49 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %50 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLTYPE_UINT, align 4
  %53 = load i32, i32* @CTLFLAG_RD, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %56 = load i32, i32* @amdvi_handle_sysctl, align 4
  %57 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %49, %struct.sysctl_oid_list* %50, i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %54, %struct.amdvi_softc* %55, i32 0, i32 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %58 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %59 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLTYPE_UINT, align 4
  %62 = load i32, i32* @CTLFLAG_RD, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %65 = load i32, i32* @amdvi_handle_sysctl, align 4
  %66 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %58, %struct.sysctl_oid_list* %59, i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %63, %struct.amdvi_softc* %64, i32 1, i32 %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %67 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %68 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %69 = load i32, i32* @OID_AUTO, align 4
  %70 = load i32, i32* @CTLTYPE_UINT, align 4
  %71 = load i32, i32* @CTLFLAG_RD, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %74 = load i32, i32* @amdvi_handle_sysctl, align 4
  %75 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %67, %struct.sysctl_oid_list* %68, i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0), i32 %72, %struct.amdvi_softc* %73, i32 2, i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %76 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %77 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %3, align 8
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLTYPE_UINT, align 4
  %80 = load i32, i32* @CTLFLAG_RD, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %83 = load i32, i32* @amdvi_handle_sysctl, align 4
  %84 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %76, %struct.sysctl_oid_list* %77, i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i32 %81, %struct.amdvi_softc* %82, i32 3, i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_ULONG(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U16(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.amdvi_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
