; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_pruss.c_ti_pruss_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.ti_pruss_softc* }
%struct.ti_pruss_softc = type { i32, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*, i32*, i32*, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@PRUSS_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not enable PRUSS clock\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"TI PRUSS\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not allocate memory resource\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"PRUSS Host Interrupts\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"global_interrupt_enable\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLTYPE_U8 = common dso_local global i32 0, align 4
@ti_pruss_global_interrupt_enable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"CU\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Global interrupt enable\00", align 1
@ti_pruss_irq_spec = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"could not allocate interrupt resource\0A\00", align 1
@TI_PRUSS_IRQS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"PRUSS Interrupts\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@ti_pruss_channel_map = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Channel attached to this irq\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"event\00", align 1
@ti_pruss_event_map = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [27 x i8] c"Event attached to this irq\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@ti_pruss_interrupt_enable = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"Enable/Disable interrupt\00", align 1
@TI_PRUSS_HOST_IRQS = common dso_local global i32 0, align 4
@ti_pruss_irq_args = common dso_local global %struct.TYPE_12__* null, align 8
@INTR_MPSAFE = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@ti_pruss_intr = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [39 x i8] c"unable to setup the interrupt handler\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"TI PRUSS IRQ\00", align 1
@PRUSS_AM33XX_INTC = common dso_local global i32 0, align 4
@PRUSS_AM33XX_REV = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"AM33xx PRU-ICSS\0A\00", align 1
@ti_pruss_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [8 x i8] c"pruss%d\00", align 1
@PRUSS_INTC_SIPR0 = common dso_local global i32 0, align 4
@PRUSS_INTC_SIPR1 = common dso_local global i32 0, align 4
@PRUSS_INTC_SITR0 = common dso_local global i32 0, align 4
@PRUSS_INTC_SITR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_pruss_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pruss_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_pruss_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sysctl_ctx_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca %struct.sysctl_oid*, align 8
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* @PRUSS_CLK, align 4
  %13 = call i64 @ti_prcm_clk_enable(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %282

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.ti_pruss_softc* @device_get_softc(i32 %20)
  store %struct.ti_pruss_softc* %21, %struct.ti_pruss_softc** %4, align 8
  store i32 0, i32* %5, align 4
  %22 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %22, i32 0, i32 8
  %24 = load i32, i32* @MTX_DEF, align 4
  %25 = call i32 @mtx_init(i32* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SYS_RES_MEMORY, align 4
  %28 = load i32, i32* @RF_ACTIVE, align 4
  %29 = call i32* @bus_alloc_resource_any(i32 %26, i32 %27, i32* %5, i32 %28)
  %30 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %31 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %33 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %19
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_printf(i32 %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %282

40:                                               ; preds = %19
  %41 = load i32, i32* %3, align 4
  %42 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %41)
  store %struct.sysctl_ctx_list* %42, %struct.sysctl_ctx_list** %7, align 8
  %43 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %44 = icmp ne %struct.sysctl_ctx_list* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %2, align 4
  br label %282

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %48)
  store %struct.sysctl_oid* %49, %struct.sysctl_oid** %8, align 8
  %50 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %51 = icmp ne %struct.sysctl_oid* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %2, align 4
  br label %282

54:                                               ; preds = %47
  %55 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %58 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %59 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %58)
  %60 = load i32, i32* @OID_AUTO, align 4
  %61 = load i32, i32* @CTLFLAG_RD, align 4
  %62 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %57, i32 %59, i32 %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %61, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store %struct.sysctl_oid* %62, %struct.sysctl_oid** %9, align 8
  %63 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %64 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %65 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %64)
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLFLAG_RW, align 4
  %68 = load i32, i32* @CTLTYPE_U8, align 4
  %69 = or i32 %67, %68
  %70 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %71 = load i32, i32* @ti_pruss_global_interrupt_enable, align 4
  %72 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %63, i32 %65, i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %69, %struct.ti_pruss_softc* %70, i32 0, i32 %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %73 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @rman_get_bustag(i32* %75)
  %77 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %80 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @rman_get_bushandle(i32* %81)
  %83 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @ti_pruss_irq_spec, align 4
  %87 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %88 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @bus_alloc_resources(i32 %85, i32 %86, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %54
  %93 = load i32, i32* %3, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @ti_pruss_detach(i32 %95)
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %2, align 4
  br label %282

98:                                               ; preds = %54
  %99 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %100 = call i32 @ti_pruss_interrupts_clear(%struct.ti_pruss_softc* %99)
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %245, %98
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @TI_PRUSS_IRQS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %248

105:                                              ; preds = %101
  %106 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @snprintf(i8* %106, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  %109 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %110 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %111 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %110)
  %112 = load i32, i32* @OID_AUTO, align 4
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 0
  %114 = load i32, i32* @CTLFLAG_RD, align 4
  %115 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %109, i32 %111, i32 %112, i8* %113, i32 %114, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  store %struct.sysctl_oid* %115, %struct.sysctl_oid** %11, align 8
  %116 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %117 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %118 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %117)
  %119 = load i32, i32* @OID_AUTO, align 4
  %120 = load i32, i32* @CTLFLAG_RW, align 4
  %121 = load i32, i32* @CTLTYPE_STRING, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @ti_pruss_channel_map, align 4
  %126 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %116, i32 %118, i32 %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %122, %struct.ti_pruss_softc* %123, i32 %124, i32 %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %127 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %128 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %129 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %128)
  %130 = load i32, i32* @OID_AUTO, align 4
  %131 = load i32, i32* @CTLFLAG_RW, align 4
  %132 = load i32, i32* @CTLTYPE_STRING, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @ti_pruss_event_map, align 4
  %137 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %127, i32 %129, i32 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %133, %struct.ti_pruss_softc* %134, i32 %135, i32 %136, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  %138 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %7, align 8
  %139 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %140 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %139)
  %141 = load i32, i32* @OID_AUTO, align 4
  %142 = load i32, i32* @CTLFLAG_RW, align 4
  %143 = load i32, i32* @CTLTYPE_U8, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @ti_pruss_interrupt_enable, align 4
  %148 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %138, i32 %140, i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 %144, %struct.ti_pruss_softc* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0))
  %149 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %150 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32 -1, i32* %155, align 8
  %156 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %157 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %156, i32 0, i32 2
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  store i32 -1, i32* %162, align 4
  %163 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %164 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %163, i32 0, i32 2
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 4
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  store i64 0, i64* %171, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @TI_PRUSS_HOST_IRQS, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %244

175:                                              ; preds = %105
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ti_pruss_irq_args, align 8
  %178 = load i32, i32* %6, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  store i32 %176, i32* %181, align 8
  %182 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ti_pruss_irq_args, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  store %struct.ti_pruss_softc* %182, %struct.ti_pruss_softc** %187, align 8
  %188 = load i32, i32* %3, align 4
  %189 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %190 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @INTR_MPSAFE, align 4
  %197 = load i32, i32* @INTR_TYPE_MISC, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @ti_pruss_intr, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ti_pruss_irq_args, align 8
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i64 %202
  %204 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %205 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = call i64 @bus_setup_intr(i32 %188, i32 %195, i32 %198, i32* null, i32 %199, %struct.TYPE_12__* %203, i32* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %175
  %213 = load i32, i32* %3, align 4
  %214 = call i32 @device_printf(i32 %213, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0))
  %215 = load i32, i32* %3, align 4
  %216 = call i32 @ti_pruss_detach(i32 %215)
  %217 = load i32, i32* @ENXIO, align 4
  store i32 %217, i32* %2, align 4
  br label %282

218:                                              ; preds = %175
  %219 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %220 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %219, i32 0, i32 2
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load i32, i32* @MTX_DEF, align 4
  %227 = call i32 @mtx_init(i32* %225, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32* null, i32 %226)
  %228 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %229 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %228, i32 0, i32 2
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %237 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %236, i32 0, i32 2
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = call i32 @knlist_init_mtx(i32* %235, i32* %242)
  br label %244

244:                                              ; preds = %218, %105
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %6, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %6, align 4
  br label %101

248:                                              ; preds = %101
  %249 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %250 = load i32, i32* @PRUSS_AM33XX_INTC, align 4
  %251 = call i64 @ti_pruss_reg_read(%struct.ti_pruss_softc* %249, i32 %250)
  %252 = load i64, i64* @PRUSS_AM33XX_REV, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %248
  %255 = load i32, i32* %3, align 4
  %256 = call i32 @device_printf(i32 %255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %248
  %258 = load i32, i32* @UID_ROOT, align 4
  %259 = load i32, i32* @GID_WHEEL, align 4
  %260 = load i32, i32* %3, align 4
  %261 = call i32 @device_get_unit(i32 %260)
  %262 = call %struct.TYPE_13__* @make_dev(i32* @ti_pruss_cdevsw, i32 0, i32 %258, i32 %259, i32 384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0), i32 %261)
  %263 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %264 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %263, i32 0, i32 1
  store %struct.TYPE_13__* %262, %struct.TYPE_13__** %264, align 8
  %265 = load i32, i32* %3, align 4
  %266 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %267 = getelementptr inbounds %struct.ti_pruss_softc, %struct.ti_pruss_softc* %266, i32 0, i32 1
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 0
  store i32 %265, i32* %269, align 4
  %270 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %271 = load i32, i32* @PRUSS_INTC_SIPR0, align 4
  %272 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %270, i32 %271, i32 -1)
  %273 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %274 = load i32, i32* @PRUSS_INTC_SIPR1, align 4
  %275 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %273, i32 %274, i32 -1)
  %276 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %277 = load i32, i32* @PRUSS_INTC_SITR0, align 4
  %278 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %276, i32 %277, i32 0)
  %279 = load %struct.ti_pruss_softc*, %struct.ti_pruss_softc** %4, align 8
  %280 = load i32, i32* @PRUSS_INTC_SITR1, align 4
  %281 = call i32 @ti_pruss_reg_write(%struct.ti_pruss_softc* %279, i32 %280, i32 0)
  store i32 0, i32* %2, align 4
  br label %282

282:                                              ; preds = %257, %212, %92, %52, %45, %36, %15
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local i64 @ti_prcm_clk_enable(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.ti_pruss_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, %struct.ti_pruss_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @ti_pruss_detach(i32) #1

declare dso_local i32 @ti_pruss_interrupts_clear(%struct.ti_pruss_softc*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i64 @ti_pruss_reg_read(%struct.ti_pruss_softc*, i32) #1

declare dso_local %struct.TYPE_13__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @ti_pruss_reg_write(%struct.ti_pruss_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
