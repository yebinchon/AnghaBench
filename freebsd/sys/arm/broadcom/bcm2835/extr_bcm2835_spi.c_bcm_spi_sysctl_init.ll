; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_spi.c_bcm_spi_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_spi_softc = type { i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@bcm_spi_clock_proc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"SPI BUS clock frequency\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cpol\00", align 1
@bcm_spi_cpol_proc = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"SPI BUS clock polarity\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"cpha\00", align 1
@bcm_spi_cpha_proc = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"SPI BUS clock phase\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cspol0\00", align 1
@bcm_spi_cspol0_proc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"SPI BUS chip select 0 polarity\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"cspol1\00", align 1
@bcm_spi_cspol1_proc = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"SPI BUS chip select 1 polarity\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cspol2\00", align 1
@bcm_spi_cspol2_proc = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"SPI BUS chip select 2 polarity\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_spi_softc*)* @bcm_spi_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_spi_sysctl_init(%struct.bcm_spi_softc* %0) #0 {
  %2 = alloca %struct.bcm_spi_softc*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.bcm_spi_softc* %0, %struct.bcm_spi_softc** %2, align 8
  %6 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bcm_spi_softc, %struct.bcm_spi_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %4, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  store %struct.sysctl_oid_list* %15, %struct.sysctl_oid_list** %5, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = load i32, i32* @CTLTYPE_UINT, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %23 = load i32, i32* @bcm_spi_clock_proc, align 4
  %24 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.bcm_spi_softc* %22, i32 4, i32 %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %26 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = load i32, i32* @CTLTYPE_UINT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %32 = load i32, i32* @bcm_spi_cpol_proc, align 4
  %33 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %25, %struct.sysctl_oid_list* %26, i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %30, %struct.bcm_spi_softc* %31, i32 4, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %34 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %35 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %36 = load i32, i32* @OID_AUTO, align 4
  %37 = load i32, i32* @CTLFLAG_RD, align 4
  %38 = load i32, i32* @CTLTYPE_UINT, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %41 = load i32, i32* @bcm_spi_cpha_proc, align 4
  %42 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %34, %struct.sysctl_oid_list* %35, i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %39, %struct.bcm_spi_softc* %40, i32 4, i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %44 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %45 = load i32, i32* @OID_AUTO, align 4
  %46 = load i32, i32* @CTLFLAG_RD, align 4
  %47 = load i32, i32* @CTLTYPE_UINT, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %50 = load i32, i32* @bcm_spi_cspol0_proc, align 4
  %51 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %43, %struct.sysctl_oid_list* %44, i32 %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %48, %struct.bcm_spi_softc* %49, i32 4, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load i32, i32* @CTLTYPE_UINT, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %59 = load i32, i32* @bcm_spi_cspol1_proc, align 4
  %60 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %52, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %57, %struct.bcm_spi_softc* %58, i32 4, i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %61 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %62 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLFLAG_RD, align 4
  %65 = load i32, i32* @CTLTYPE_UINT, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.bcm_spi_softc*, %struct.bcm_spi_softc** %2, align 8
  %68 = load i32, i32* @bcm_spi_cspol2_proc, align 4
  %69 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %61, %struct.sysctl_oid_list* %62, i32 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %66, %struct.bcm_spi_softc* %67, i32 4, i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.bcm_spi_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
