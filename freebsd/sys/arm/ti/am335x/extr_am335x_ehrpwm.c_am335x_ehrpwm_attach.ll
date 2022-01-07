; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_ehrpwm.c_am335x_ehrpwm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_ehrpwm_softc = type { i32, i32, i32, i32*, i32, i32*, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate memory resources\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"clkdiv\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@am335x_ehrpwm_sysctl_clkdiv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"PWM clock prescaler\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"freq\00", align 1
@am335x_ehrpwm_sysctl_freq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"PWM frequency\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"period\00", align 1
@am335x_ehrpwm_sysctl_period = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"PWM period\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"dutyA\00", align 1
@am335x_ehrpwm_sysctl_duty = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [22 x i8] c"Channel A duty cycles\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"dutyB\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Channel B duty cycles\00", align 1
@EPWM_TBCTL = common dso_local global i32 0, align 4
@TBCTL_CLKDIV_MASK = common dso_local global i32 0, align 4
@TBCTL_HSPCLKDIV_MASK = common dso_local global i32 0, align 4
@DEFAULT_PWM_PERIOD = common dso_local global i32 0, align 4
@EPWM_TBPRD = common dso_local global i32 0, align 4
@EPWM_CMPA = common dso_local global i32 0, align 4
@EPWM_CMPB = common dso_local global i32 0, align 4
@EPWM_AQCTLA = common dso_local global i32 0, align 4
@AQCTL_ZRO_SET = common dso_local global i32 0, align 4
@AQCTL_CAU_CLEAR = common dso_local global i32 0, align 4
@EPWM_AQCTLB = common dso_local global i32 0, align 4
@AQCTL_CBU_CLEAR = common dso_local global i32 0, align 4
@TBCTL_CTRMODE_MASK = common dso_local global i32 0, align 4
@TBCTL_CTRMODE_UP = common dso_local global i32 0, align 4
@TBCTL_FREERUN = common dso_local global i32 0, align 4
@EPWM_TZCTL = common dso_local global i32 0, align 4
@EPWM_TZFLG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"pwmbus\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Cannot add child pwmbus\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @am335x_ehrpwm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_ehrpwm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.am335x_ehrpwm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.am335x_ehrpwm_softc* @device_get_softc(i32 %8)
  store %struct.am335x_ehrpwm_softc* %9, %struct.am335x_ehrpwm_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %12 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %11, i32 0, i32 11
  store i32 %10, i32* %12, align 8
  %13 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %14 = call i32 @PWM_LOCK_INIT(%struct.am335x_ehrpwm_softc* %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %18 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %17, i32 0, i32 4
  %19 = load i32, i32* @RF_ACTIVE, align 4
  %20 = call i32* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %18, i32 %19)
  %21 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %22 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %21, i32 0, i32 3
  store i32* %20, i32** %22, align 8
  %23 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %24 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %184

30:                                               ; preds = %1
  %31 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %32 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %33)
  store %struct.sysctl_ctx_list* %34, %struct.sysctl_ctx_list** %6, align 8
  %35 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %36 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %37)
  store %struct.sysctl_oid* %38, %struct.sysctl_oid** %7, align 8
  %39 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %40 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %41 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLTYPE_INT, align 4
  %44 = load i32, i32* @CTLFLAG_RW, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %47 = load i32, i32* @am335x_ehrpwm_sysctl_clkdiv, align 4
  %48 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %39, i32 %41, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %45, %struct.am335x_ehrpwm_softc* %46, i32 0, i32 %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %50 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %49, i32 0, i32 10
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %52 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %53 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %52)
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLTYPE_INT, align 4
  %56 = load i32, i32* @CTLFLAG_RW, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %59 = load i32, i32* @am335x_ehrpwm_sysctl_freq, align 4
  %60 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %51, i32 %53, i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %57, %struct.am335x_ehrpwm_softc* %58, i32 0, i32 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %62 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %61, i32 0, i32 9
  store i8* %60, i8** %62, align 8
  %63 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %64 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %65 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %64)
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLTYPE_INT, align 4
  %68 = load i32, i32* @CTLFLAG_RW, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %71 = load i32, i32* @am335x_ehrpwm_sysctl_period, align 4
  %72 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %63, i32 %65, i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %69, %struct.am335x_ehrpwm_softc* %70, i32 0, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %73 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %74 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %76 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %77 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %76)
  %78 = load i32, i32* @OID_AUTO, align 4
  %79 = load i32, i32* @CTLTYPE_INT, align 4
  %80 = load i32, i32* @CTLFLAG_RW, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %83 = load i32, i32* @am335x_ehrpwm_sysctl_duty, align 4
  %84 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %75, i32 %77, i32 %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %81, %struct.am335x_ehrpwm_softc* %82, i32 0, i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %85 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %86 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %88 = load %struct.sysctl_oid*, %struct.sysctl_oid** %7, align 8
  %89 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %88)
  %90 = load i32, i32* @OID_AUTO, align 4
  %91 = load i32, i32* @CTLTYPE_INT, align 4
  %92 = load i32, i32* @CTLFLAG_RW, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %95 = load i32, i32* @am335x_ehrpwm_sysctl_duty, align 4
  %96 = call i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %87, i32 %89, i32 %90, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i32 %93, %struct.am335x_ehrpwm_softc* %94, i32 0, i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %97 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %98 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %100 = load i32, i32* @EPWM_TBCTL, align 4
  %101 = call i32 @EPWM_READ2(%struct.am335x_ehrpwm_softc* %99, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* @TBCTL_CLKDIV_MASK, align 4
  %103 = load i32, i32* @TBCTL_HSPCLKDIV_MASK, align 4
  %104 = or i32 %102, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %5, align 4
  %108 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %109 = load i32, i32* @EPWM_TBCTL, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %108, i32 %109, i32 %110)
  %112 = load i32, i32* @DEFAULT_PWM_PERIOD, align 4
  %113 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %114 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %116 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %115, i32 0, i32 1
  store i32 0, i32* %116, align 4
  %117 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %118 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  %119 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %120 = call i32 @am335x_ehrpwm_freq(%struct.am335x_ehrpwm_softc* %119)
  %121 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %122 = load i32, i32* @EPWM_TBPRD, align 4
  %123 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %124 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %121, i32 %122, i32 %126)
  %128 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %129 = load i32, i32* @EPWM_CMPA, align 4
  %130 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %131 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %128, i32 %129, i32 %132)
  %134 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %135 = load i32, i32* @EPWM_CMPB, align 4
  %136 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %137 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %134, i32 %135, i32 %138)
  %140 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %141 = load i32, i32* @EPWM_AQCTLA, align 4
  %142 = load i32, i32* @AQCTL_ZRO_SET, align 4
  %143 = load i32, i32* @AQCTL_CAU_CLEAR, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %140, i32 %141, i32 %144)
  %146 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %147 = load i32, i32* @EPWM_AQCTLB, align 4
  %148 = load i32, i32* @AQCTL_ZRO_SET, align 4
  %149 = load i32, i32* @AQCTL_CBU_CLEAR, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %146, i32 %147, i32 %150)
  %152 = load i32, i32* @TBCTL_CTRMODE_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %5, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* @TBCTL_CTRMODE_UP, align 4
  %157 = load i32, i32* @TBCTL_FREERUN, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %5, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %5, align 4
  %161 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %162 = load i32, i32* @EPWM_TBCTL, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %161, i32 %162, i32 %163)
  %165 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %166 = load i32, i32* @EPWM_TZCTL, align 4
  %167 = call i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc* %165, i32 %166, i32 15)
  %168 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %169 = load i32, i32* @EPWM_TZFLG, align 4
  %170 = call i32 @EPWM_READ2(%struct.am335x_ehrpwm_softc* %168, i32 %169)
  store i32 %170, i32* %5, align 4
  %171 = load i32, i32* %3, align 4
  %172 = call i32* @device_add_child(i32 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 -1)
  %173 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %174 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %173, i32 0, i32 5
  store i32* %172, i32** %174, align 8
  %175 = icmp eq i32* %172, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %30
  %177 = load i32, i32* %3, align 4
  %178 = call i32 @device_printf(i32 %177, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %30
  %180 = load i32, i32* %3, align 4
  %181 = call i32 @bus_generic_probe(i32 %180)
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @bus_generic_attach(i32 %182)
  store i32 %183, i32* %2, align 4
  br label %203

184:                                              ; preds = %27
  %185 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %186 = call i32 @PWM_LOCK_DESTROY(%struct.am335x_ehrpwm_softc* %185)
  %187 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %188 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %187, i32 0, i32 3
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @SYS_RES_MEMORY, align 4
  %194 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %195 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.am335x_ehrpwm_softc*, %struct.am335x_ehrpwm_softc** %4, align 8
  %198 = getelementptr inbounds %struct.am335x_ehrpwm_softc, %struct.am335x_ehrpwm_softc* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @bus_release_resource(i32 %192, i32 %193, i32 %196, i32* %199)
  br label %201

201:                                              ; preds = %191, %184
  %202 = load i32, i32* @ENXIO, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %201, %179
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local %struct.am335x_ehrpwm_softc* @device_get_softc(i32) #1

declare dso_local i32 @PWM_LOCK_INIT(%struct.am335x_ehrpwm_softc*) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i8* @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.am335x_ehrpwm_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @EPWM_READ2(%struct.am335x_ehrpwm_softc*, i32) #1

declare dso_local i32 @EPWM_WRITE2(%struct.am335x_ehrpwm_softc*, i32, i32) #1

declare dso_local i32 @am335x_ehrpwm_freq(%struct.am335x_ehrpwm_softc*) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @PWM_LOCK_DESTROY(%struct.am335x_ehrpwm_softc*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
