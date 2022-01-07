; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_axp81x.c_axp8xx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp8xx_regdef = type { i8*, i8*, i8*, i32 }
%struct.axp8xx_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.axp8xx_regdef*, %struct.axp8xx_reg_sc**, i32*, i32, i32 }
%struct.axp8xx_reg_sc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MTX_DEF = common dso_local global i32 0, align 4
@axp8xx_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@AXP_ICTYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"chip ID 0x%02x\0A\00", align 1
@axp8xx_common_regdefs = common dso_local global %struct.axp8xx_regdef* null, align 8
@compat_data = common dso_local global i32 0, align 4
@axp803_regdefs = common dso_local global %struct.axp8xx_regdef* null, align 8
@axp813_regdefs = common dso_local global %struct.axp8xx_regdef* null, align 8
@axp803_config = common dso_local global i32 0, align 4
@axp8xx_common_sensors = common dso_local global %struct.axp8xx_regdef* null, align 8
@M_AXP8XX_REG = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"cannot attach regulator %s\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@axp8xx_sysctl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"batchargecurrentstep\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@axp8xx_sysctl_chargecurrent = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [184 x i8] c"Battery Charging Current Step, 0: 200mA, 1: 400mA, 2: 600mA, 3: 800mA, 4: 1000mA, 5: 1200mA, 6: 1400mA, 7: 1600mA, 8: 1800mA, 9: 2000mA, 10: 2200mA, 11: 2400mA, 12: 2600mA, 13: 2800mA\00", align 1
@AXP_BAT_CAP_WARN = common dso_local global i32 0, align 4
@AXP_BAT_CAP_WARN_LV1 = common dso_local global i32 0, align 4
@AXP_BAP_CAP_WARN_LV1BASE = common dso_local global i64 0, align 8
@AXP_BAT_CAP_WARN_LV2 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Raw reg val: 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Warning threshold: 0x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Shutdown threshold: 0x%02x\0A\00", align 1
@AXP_IRQEN1 = common dso_local global i32 0, align 4
@AXP_IRQEN1_VBUS_LO = common dso_local global i32 0, align 4
@AXP_IRQEN1_VBUS_HI = common dso_local global i32 0, align 4
@AXP_IRQEN1_ACIN_LO = common dso_local global i32 0, align 4
@AXP_IRQEN1_ACIN_HI = common dso_local global i32 0, align 4
@AXP_IRQEN2 = common dso_local global i32 0, align 4
@AXP_IRQEN2_BATCHGD = common dso_local global i32 0, align 4
@AXP_IRQEN2_BATCHGC = common dso_local global i32 0, align 4
@AXP_IRQEN2_BAT_NO = common dso_local global i32 0, align 4
@AXP_IRQEN2_BAT_IN = common dso_local global i32 0, align 4
@AXP_IRQEN3 = common dso_local global i32 0, align 4
@AXP_IRQEN4 = common dso_local global i32 0, align 4
@AXP_IRQEN4_BATLVL_LO0 = common dso_local global i32 0, align 4
@AXP_IRQEN4_BATLVL_LO1 = common dso_local global i32 0, align 4
@AXP_IRQEN5 = common dso_local global i32 0, align 4
@AXP_IRQEN5_POKSIRQ = common dso_local global i32 0, align 4
@AXP_IRQEN5_POKLIRQ = common dso_local global i32 0, align 4
@AXP_IRQEN6 = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@axp8xx_intr = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot setup interrupt handler\0A\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@axp8xx_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @axp8xx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp8xx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.axp8xx_softc*, align 8
  %5 = alloca %struct.axp8xx_reg_sc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.axp8xx_regdef*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.axp8xx_softc* @device_get_softc(i32 %15)
  store %struct.axp8xx_softc* %16, %struct.axp8xx_softc** %4, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @iicbus_get_addr(i32 %17)
  %19 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %20 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %19, i32 0, i32 12
  store i32 %18, i32* %20, align 4
  %21 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %22 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %21, i32 0, i32 11
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @device_get_nameunit(i32 %23)
  %25 = load i32, i32* @MTX_DEF, align 4
  %26 = call i32 @mtx_init(i32* %22, i32 %24, i32* null, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @axp8xx_spec, align 4
  %29 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %30 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %29, i32 0, i32 7
  %31 = call i32 @bus_alloc_resources(i32 %27, i32 %28, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i32, i8*, ...) @device_printf(i32 %35, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %2, align 4
  br label %364

38:                                               ; preds = %1
  %39 = load i64, i64* @bootverbose, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @AXP_ICTYPE, align 4
  %44 = call i64 @axp8xx_read(i32 %42, i32 %43, i32* %6, i32 1)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %38
  %49 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp8xx_common_regdefs, align 8
  %50 = call i32 @nitems(%struct.axp8xx_regdef* %49)
  %51 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %52 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @compat_data, align 4
  %55 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %53, i32 %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %59 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %61 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %77 [
    i32 129, label %63
    i32 128, label %70
  ]

63:                                               ; preds = %48
  %64 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp803_regdefs, align 8
  %65 = call i32 @nitems(%struct.axp8xx_regdef* %64)
  %66 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %67 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %77

70:                                               ; preds = %48
  %71 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp813_regdefs, align 8
  %72 = call i32 @nitems(%struct.axp8xx_regdef* %71)
  %73 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %74 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %48, %70, %63
  %78 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %79 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %78, i32 0, i32 10
  store i32* @axp803_config, i32** %79, align 8
  %80 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp8xx_common_sensors, align 8
  %81 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %82 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %81, i32 0, i32 8
  store %struct.axp8xx_regdef* %80, %struct.axp8xx_regdef** %82, align 8
  %83 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp8xx_common_sensors, align 8
  %84 = call i32 @nitems(%struct.axp8xx_regdef* %83)
  %85 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %86 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %88 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = mul i64 8, %90
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* @M_AXP8XX_REG, align 4
  %94 = load i32, i32* @M_WAITOK, align 4
  %95 = load i32, i32* @M_ZERO, align 4
  %96 = or i32 %94, %95
  %97 = call %struct.axp8xx_reg_sc** @malloc(i32 %92, i32 %93, i32 %96)
  %98 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %99 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %98, i32 0, i32 9
  store %struct.axp8xx_reg_sc** %97, %struct.axp8xx_reg_sc*** %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = call i64 @ofw_bus_get_node(i32 %100)
  %102 = call i64 @ofw_bus_find_child(i64 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i64 %102, i64* %8, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %189

105:                                              ; preds = %77
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %185, %105
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %109 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %188

112:                                              ; preds = %106
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp8xx_common_regdefs, align 8
  %115 = call i32 @nitems(%struct.axp8xx_regdef* %114)
  %116 = icmp sle i32 %113, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp8xx_common_regdefs, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %118, i64 %120
  %122 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %12, align 8
  %124 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp8xx_common_regdefs, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %124, i64 %126
  store %struct.axp8xx_regdef* %127, %struct.axp8xx_regdef** %13, align 8
  br label %159

128:                                              ; preds = %112
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp8xx_common_regdefs, align 8
  %131 = call i32 @nitems(%struct.axp8xx_regdef* %130)
  %132 = sub nsw i32 %129, %131
  store i32 %132, i32* %14, align 4
  %133 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %134 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %158 [
    i32 129, label %136
    i32 128, label %147
  ]

136:                                              ; preds = %128
  %137 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp803_regdefs, align 8
  %138 = load i32, i32* %14, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %137, i64 %139
  %141 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  store i8* %142, i8** %12, align 8
  %143 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp803_regdefs, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %143, i64 %145
  store %struct.axp8xx_regdef* %146, %struct.axp8xx_regdef** %13, align 8
  br label %158

147:                                              ; preds = %128
  %148 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp813_regdefs, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %148, i64 %150
  %152 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  store i8* %153, i8** %12, align 8
  %154 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** @axp813_regdefs, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %154, i64 %156
  store %struct.axp8xx_regdef* %157, %struct.axp8xx_regdef** %13, align 8
  br label %158

158:                                              ; preds = %128, %147, %136
  br label %159

159:                                              ; preds = %158, %117
  %160 = load i64, i64* %8, align 8
  %161 = load i8*, i8** %12, align 8
  %162 = call i64 @ofw_bus_find_child(i64 %160, i8* %161)
  store i64 %162, i64* %9, align 8
  %163 = load i64, i64* %9, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  br label %185

166:                                              ; preds = %159
  %167 = load i32, i32* %3, align 4
  %168 = load i64, i64* %9, align 8
  %169 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %13, align 8
  %170 = call %struct.axp8xx_reg_sc* @axp8xx_reg_attach(i32 %167, i64 %168, %struct.axp8xx_regdef* %169)
  store %struct.axp8xx_reg_sc* %170, %struct.axp8xx_reg_sc** %5, align 8
  %171 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %5, align 8
  %172 = icmp eq %struct.axp8xx_reg_sc* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = load i32, i32* %3, align 4
  %175 = load i8*, i8** %12, align 8
  %176 = call i32 (i32, i8*, ...) @device_printf(i32 %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %175)
  br label %185

177:                                              ; preds = %166
  %178 = load %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %5, align 8
  %179 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %180 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %179, i32 0, i32 9
  %181 = load %struct.axp8xx_reg_sc**, %struct.axp8xx_reg_sc*** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.axp8xx_reg_sc*, %struct.axp8xx_reg_sc** %181, i64 %183
  store %struct.axp8xx_reg_sc* %178, %struct.axp8xx_reg_sc** %184, align 8
  br label %185

185:                                              ; preds = %177, %173, %165
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %106

188:                                              ; preds = %106
  br label %189

189:                                              ; preds = %188, %77
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %241, %189
  %191 = load i32, i32* %11, align 4
  %192 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %193 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %244

196:                                              ; preds = %190
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @device_get_sysctl_ctx(i32 %197)
  %199 = load i32, i32* %3, align 4
  %200 = call i32 @device_get_sysctl_tree(i32 %199)
  %201 = call i32 @SYSCTL_CHILDREN(i32 %200)
  %202 = load i32, i32* @OID_AUTO, align 4
  %203 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %204 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %203, i32 0, i32 8
  %205 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %205, i64 %207
  %209 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = load i32, i32* @CTLTYPE_INT, align 4
  %212 = load i32, i32* @CTLFLAG_RD, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* %3, align 4
  %215 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %216 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %215, i32 0, i32 8
  %217 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %217, i64 %219
  %221 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @axp8xx_sysctl, align 4
  %224 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %225 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %224, i32 0, i32 8
  %226 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %226, i64 %228
  %230 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %233 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %232, i32 0, i32 8
  %234 = load %struct.axp8xx_regdef*, %struct.axp8xx_regdef** %233, align 8
  %235 = load i32, i32* %11, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %234, i64 %236
  %238 = getelementptr inbounds %struct.axp8xx_regdef, %struct.axp8xx_regdef* %237, i32 0, i32 2
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @SYSCTL_ADD_PROC(i32 %198, i32 %201, i32 %202, i8* %210, i32 %213, i32 %214, i32 %222, i32 %223, i8* %231, i8* %239)
  br label %241

241:                                              ; preds = %196
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %190

244:                                              ; preds = %190
  %245 = load i32, i32* %3, align 4
  %246 = call i32 @device_get_sysctl_ctx(i32 %245)
  %247 = load i32, i32* %3, align 4
  %248 = call i32 @device_get_sysctl_tree(i32 %247)
  %249 = call i32 @SYSCTL_CHILDREN(i32 %248)
  %250 = load i32, i32* @OID_AUTO, align 4
  %251 = load i32, i32* @CTLTYPE_INT, align 4
  %252 = load i32, i32* @CTLFLAG_RW, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* %3, align 4
  %255 = load i32, i32* @axp8xx_sysctl_chargecurrent, align 4
  %256 = call i32 @SYSCTL_ADD_PROC(i32 %246, i32 %249, i32 %250, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %253, i32 %254, i32 0, i32 %255, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([184 x i8], [184 x i8]* @.str.6, i64 0, i64 0))
  %257 = load i32, i32* %3, align 4
  %258 = load i32, i32* @AXP_BAT_CAP_WARN, align 4
  %259 = call i64 @axp8xx_read(i32 %257, i32 %258, i32* %7, i32 1)
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %297

261:                                              ; preds = %244
  %262 = load i32, i32* %7, align 4
  %263 = load i32, i32* @AXP_BAT_CAP_WARN_LV1, align 4
  %264 = and i32 %262, %263
  %265 = ashr i32 %264, 4
  %266 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %267 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = load i64, i64* @AXP_BAP_CAP_WARN_LV1BASE, align 8
  %269 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %270 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = add nsw i64 %272, %268
  %274 = trunc i64 %273 to i32
  store i32 %274, i32* %270, align 4
  %275 = load i32, i32* %7, align 4
  %276 = load i32, i32* @AXP_BAT_CAP_WARN_LV2, align 4
  %277 = and i32 %275, %276
  %278 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %279 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %278, i32 0, i32 4
  store i32 %277, i32* %279, align 8
  %280 = load i64, i64* @bootverbose, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %296

282:                                              ; preds = %261
  %283 = load i32, i32* %3, align 4
  %284 = load i32, i32* %7, align 4
  %285 = call i32 (i32, i8*, ...) @device_printf(i32 %283, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %3, align 4
  %287 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %288 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i32, i8*, ...) @device_printf(i32 %286, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* %3, align 4
  %292 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %293 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = call i32 (i32, i8*, ...) @device_printf(i32 %291, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %282, %261
  br label %297

297:                                              ; preds = %296, %244
  %298 = load i32, i32* %3, align 4
  %299 = load i32, i32* @AXP_IRQEN1, align 4
  %300 = load i32, i32* @AXP_IRQEN1_VBUS_LO, align 4
  %301 = load i32, i32* @AXP_IRQEN1_VBUS_HI, align 4
  %302 = or i32 %300, %301
  %303 = load i32, i32* @AXP_IRQEN1_ACIN_LO, align 4
  %304 = or i32 %302, %303
  %305 = load i32, i32* @AXP_IRQEN1_ACIN_HI, align 4
  %306 = or i32 %304, %305
  %307 = call i32 @axp8xx_write(i32 %298, i32 %299, i32 %306)
  %308 = load i32, i32* %3, align 4
  %309 = load i32, i32* @AXP_IRQEN2, align 4
  %310 = load i32, i32* @AXP_IRQEN2_BATCHGD, align 4
  %311 = load i32, i32* @AXP_IRQEN2_BATCHGC, align 4
  %312 = or i32 %310, %311
  %313 = load i32, i32* @AXP_IRQEN2_BAT_NO, align 4
  %314 = or i32 %312, %313
  %315 = load i32, i32* @AXP_IRQEN2_BAT_IN, align 4
  %316 = or i32 %314, %315
  %317 = call i32 @axp8xx_write(i32 %308, i32 %309, i32 %316)
  %318 = load i32, i32* %3, align 4
  %319 = load i32, i32* @AXP_IRQEN3, align 4
  %320 = call i32 @axp8xx_write(i32 %318, i32 %319, i32 0)
  %321 = load i32, i32* %3, align 4
  %322 = load i32, i32* @AXP_IRQEN4, align 4
  %323 = load i32, i32* @AXP_IRQEN4_BATLVL_LO0, align 4
  %324 = load i32, i32* @AXP_IRQEN4_BATLVL_LO1, align 4
  %325 = or i32 %323, %324
  %326 = call i32 @axp8xx_write(i32 %321, i32 %322, i32 %325)
  %327 = load i32, i32* %3, align 4
  %328 = load i32, i32* @AXP_IRQEN5, align 4
  %329 = load i32, i32* @AXP_IRQEN5_POKSIRQ, align 4
  %330 = load i32, i32* @AXP_IRQEN5_POKLIRQ, align 4
  %331 = or i32 %329, %330
  %332 = call i32 @axp8xx_write(i32 %327, i32 %328, i32 %331)
  %333 = load i32, i32* %3, align 4
  %334 = load i32, i32* @AXP_IRQEN6, align 4
  %335 = call i32 @axp8xx_write(i32 %333, i32 %334, i32 0)
  %336 = load i32, i32* %3, align 4
  %337 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %338 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @INTR_TYPE_MISC, align 4
  %341 = load i32, i32* @INTR_MPSAFE, align 4
  %342 = or i32 %340, %341
  %343 = load i32, i32* @axp8xx_intr, align 4
  %344 = load i32, i32* %3, align 4
  %345 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %346 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %345, i32 0, i32 6
  %347 = call i32 @bus_setup_intr(i32 %336, i32 %339, i32 %342, i32* null, i32 %343, i32 %344, i32* %346)
  store i32 %347, i32* %10, align 4
  %348 = load i32, i32* %10, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %354

350:                                              ; preds = %297
  %351 = load i32, i32* %3, align 4
  %352 = call i32 (i32, i8*, ...) @device_printf(i32 %351, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %353 = load i32, i32* %10, align 4
  store i32 %353, i32* %2, align 4
  br label %364

354:                                              ; preds = %297
  %355 = load i32, i32* @shutdown_final, align 4
  %356 = load i32, i32* @axp8xx_shutdown, align 4
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %359 = call i32 @EVENTHANDLER_REGISTER(i32 %355, i32 %356, i32 %357, i32 %358)
  %360 = load i32, i32* %3, align 4
  %361 = call i32 @gpiobus_attach_bus(i32 %360)
  %362 = load %struct.axp8xx_softc*, %struct.axp8xx_softc** %4, align 8
  %363 = getelementptr inbounds %struct.axp8xx_softc, %struct.axp8xx_softc* %362, i32 0, i32 5
  store i32 %361, i32* %363, align 4
  store i32 0, i32* %2, align 4
  br label %364

364:                                              ; preds = %354, %350, %34
  %365 = load i32, i32* %2, align 4
  ret i32 %365
}

declare dso_local %struct.axp8xx_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicbus_get_addr(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @axp8xx_read(i32, i32, i32*, i32) #1

declare dso_local i32 @nitems(%struct.axp8xx_regdef*) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local %struct.axp8xx_reg_sc** @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_find_child(i64, i8*) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local %struct.axp8xx_reg_sc* @axp8xx_reg_attach(i32, i64, %struct.axp8xx_regdef*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @axp8xx_write(i32, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32, i32) #1

declare dso_local i32 @gpiobus_attach_bus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
