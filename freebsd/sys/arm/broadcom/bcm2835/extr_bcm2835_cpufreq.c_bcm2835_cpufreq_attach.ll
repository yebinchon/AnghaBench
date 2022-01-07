; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_cpufreq.c_bcm2835_cpufreq_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_cpufreq_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i64, i64, i32 }
%struct.TYPE_2__ = type { %struct.bcm2835_cpufreq_softc*, i32 }
%struct.sysctl_oid = type { i32 }

@bcm2835_sysctl_ctx = common dso_local global i32 0, align 4
@_hw = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cpufreq\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"arm_freq\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_bcm2835_cpufreq_arm_freq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ARM frequency (Hz)\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"core_freq\00", align 1
@sysctl_bcm2835_cpufreq_core_freq = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Core frequency (Hz)\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"sdram_freq\00", align 1
@sysctl_bcm2835_cpufreq_sdram_freq = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"SDRAM frequency (Hz)\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"turbo\00", align 1
@sysctl_bcm2835_cpufreq_turbo = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"Disables dynamic clocking\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"voltage_core\00", align 1
@sysctl_bcm2835_cpufreq_voltage_core = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"ARM/GPU core voltage(offset from 1.2V in units of 0.025V)\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"voltage_sdram\00", align 1
@CTLFLAG_WR = common dso_local global i32 0, align 4
@sysctl_bcm2835_cpufreq_voltage_sdram = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [52 x i8] c"SDRAM voltage (offset from 1.2V in units of 0.025V)\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"voltage_sdram_c\00", align 1
@sysctl_bcm2835_cpufreq_voltage_sdram_c = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [62 x i8] c"SDRAM controller voltage(offset from 1.2V in units of 0.025V)\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"voltage_sdram_i\00", align 1
@sysctl_bcm2835_cpufreq_voltage_sdram_i = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [56 x i8] c"SDRAM I/O voltage (offset from 1.2V in units of 0.025V)\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"voltage_sdram_p\00", align 1
@sysctl_bcm2835_cpufreq_voltage_sdram_p = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [56 x i8] c"SDRAM phy voltage (offset from 1.2V in units of 0.025V)\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@sysctl_bcm2835_cpufreq_temperature = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [44 x i8] c"SoC temperature (thousandths of a degree C)\00", align 1
@vc_sema = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"vcsema\00", align 1
@bcm2835_cpufreq_init = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [34 x i8] c"config_intrhook_establish failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bcm2835_cpufreq_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_cpufreq_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm2835_cpufreq_softc*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.bcm2835_cpufreq_softc* @device_get_softc(i32 %6)
  store %struct.bcm2835_cpufreq_softc* %7, %struct.bcm2835_cpufreq_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %10 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %9, i32 0, i32 9
  store i32 %8, i32* %10, align 8
  %11 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %12 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %14 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %13, i32 0, i32 1
  store i32 -1, i32* %14, align 4
  %15 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %16 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %15, i32 0, i32 2
  store i32 -1, i32* %16, align 8
  %17 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %18 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %17, i32 0, i32 3
  store i32 -1, i32* %18, align 4
  %19 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %20 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %19, i32 0, i32 4
  store i32 -1, i32* %20, align 8
  %21 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %22 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %21, i32 0, i32 5
  store i32 -1, i32* %22, align 4
  %23 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %24 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %23, i32 0, i32 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %26 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %25, i32 0, i32 7
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @device_get_unit(i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %127

30:                                               ; preds = %1
  %31 = call i32 @sysctl_ctx_init(i32* @bcm2835_sysctl_ctx)
  %32 = load i32, i32* @_hw, align 4
  %33 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %32)
  %34 = load i32, i32* @OID_AUTO, align 4
  %35 = load i32, i32* @CTLFLAG_RD, align 4
  %36 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* @bcm2835_sysctl_ctx, i32 %33, i32 %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store %struct.sysctl_oid* %36, %struct.sysctl_oid** %5, align 8
  %37 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %38 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %37)
  %39 = load i32, i32* @OID_AUTO, align 4
  %40 = load i32, i32* @CTLTYPE_INT, align 4
  %41 = load i32, i32* @CTLFLAG_RW, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %44 = load i32, i32* @sysctl_bcm2835_cpufreq_arm_freq, align 4
  %45 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %42, %struct.bcm2835_cpufreq_softc* %43, i32 0, i32 %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %46 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %47 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %46)
  %48 = load i32, i32* @OID_AUTO, align 4
  %49 = load i32, i32* @CTLTYPE_INT, align 4
  %50 = load i32, i32* @CTLFLAG_RW, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %53 = load i32, i32* @sysctl_bcm2835_cpufreq_core_freq, align 4
  %54 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %51, %struct.bcm2835_cpufreq_softc* %52, i32 0, i32 %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %55 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %56 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %55)
  %57 = load i32, i32* @OID_AUTO, align 4
  %58 = load i32, i32* @CTLTYPE_INT, align 4
  %59 = load i32, i32* @CTLFLAG_RW, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %62 = load i32, i32* @sysctl_bcm2835_cpufreq_sdram_freq, align 4
  %63 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %56, i32 %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %60, %struct.bcm2835_cpufreq_softc* %61, i32 0, i32 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %64 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %65 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %64)
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLTYPE_INT, align 4
  %68 = load i32, i32* @CTLFLAG_RW, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %71 = load i32, i32* @sysctl_bcm2835_cpufreq_turbo, align 4
  %72 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %65, i32 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %69, %struct.bcm2835_cpufreq_softc* %70, i32 0, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %73 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %74 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %73)
  %75 = load i32, i32* @OID_AUTO, align 4
  %76 = load i32, i32* @CTLTYPE_INT, align 4
  %77 = load i32, i32* @CTLFLAG_RW, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %80 = load i32, i32* @sysctl_bcm2835_cpufreq_voltage_core, align 4
  %81 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %74, i32 %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 %78, %struct.bcm2835_cpufreq_softc* %79, i32 0, i32 %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.13, i64 0, i64 0))
  %82 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %83 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %82)
  %84 = load i32, i32* @OID_AUTO, align 4
  %85 = load i32, i32* @CTLTYPE_INT, align 4
  %86 = load i32, i32* @CTLFLAG_WR, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %89 = load i32, i32* @sysctl_bcm2835_cpufreq_voltage_sdram, align 4
  %90 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %83, i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %87, %struct.bcm2835_cpufreq_softc* %88, i32 0, i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0))
  %91 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %92 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %91)
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLTYPE_INT, align 4
  %95 = load i32, i32* @CTLFLAG_RW, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %98 = load i32, i32* @sysctl_bcm2835_cpufreq_voltage_sdram_c, align 4
  %99 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %92, i32 %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %96, %struct.bcm2835_cpufreq_softc* %97, i32 0, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.17, i64 0, i64 0))
  %100 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %101 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %100)
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLTYPE_INT, align 4
  %104 = load i32, i32* @CTLFLAG_RW, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %107 = load i32, i32* @sysctl_bcm2835_cpufreq_voltage_sdram_i, align 4
  %108 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %101, i32 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %105, %struct.bcm2835_cpufreq_softc* %106, i32 0, i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.19, i64 0, i64 0))
  %109 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %110 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %109)
  %111 = load i32, i32* @OID_AUTO, align 4
  %112 = load i32, i32* @CTLTYPE_INT, align 4
  %113 = load i32, i32* @CTLFLAG_RW, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %116 = load i32, i32* @sysctl_bcm2835_cpufreq_voltage_sdram_p, align 4
  %117 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %110, i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %114, %struct.bcm2835_cpufreq_softc* %115, i32 0, i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0))
  %118 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %119 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %118)
  %120 = load i32, i32* @OID_AUTO, align 4
  %121 = load i32, i32* @CTLTYPE_INT, align 4
  %122 = load i32, i32* @CTLFLAG_RD, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %125 = load i32, i32* @sysctl_bcm2835_cpufreq_temperature, align 4
  %126 = call i32 @SYSCTL_ADD_PROC(i32* @bcm2835_sysctl_ctx, i32 %119, i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i32 %123, %struct.bcm2835_cpufreq_softc* %124, i32 0, i32 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i64 0, i64 0))
  br label %127

127:                                              ; preds = %30, %1
  %128 = call i32 @sema_init(i32* @vc_sema, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %129 = load i32, i32* @bcm2835_cpufreq_init, align 4
  %130 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %131 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  %133 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %134 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %135 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store %struct.bcm2835_cpufreq_softc* %133, %struct.bcm2835_cpufreq_softc** %136, align 8
  %137 = load %struct.bcm2835_cpufreq_softc*, %struct.bcm2835_cpufreq_softc** %4, align 8
  %138 = getelementptr inbounds %struct.bcm2835_cpufreq_softc, %struct.bcm2835_cpufreq_softc* %137, i32 0, i32 6
  %139 = call i64 @config_intrhook_establish(%struct.TYPE_2__* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %127
  %142 = load i32, i32* %3, align 4
  %143 = call i32 @device_printf(i32 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.25, i64 0, i64 0))
  %144 = load i32, i32* @ENOMEM, align 4
  store i32 %144, i32* %2, align 4
  br label %148

145:                                              ; preds = %127
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @cpufreq_register(i32 %146)
  store i32 0, i32* %2, align 4
  br label %148

148:                                              ; preds = %145, %141
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local %struct.bcm2835_cpufreq_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.bcm2835_cpufreq_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @sema_init(i32*, i32, i8*) #1

declare dso_local i64 @config_intrhook_establish(%struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cpufreq_register(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
