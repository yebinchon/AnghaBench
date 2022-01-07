; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_spi_softc = type { i32, i32, i8*, i8*, i32, i32, i32, i32 }

@INVALID_CLK_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"failed to get clock based on hwmods property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Error: failed to activate source clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ti,spi-num-cs\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot allocate memory window\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"cannot allocate interrupt\0A\00", align 1
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ti_spi_intr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"cannot setup the interrupt handler\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ti_spi\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MCSPI_SYSCONFIG = common dso_local global i32 0, align 4
@MCSPI_SYSCONFIG_SOFTRESET = common dso_local global i32 0, align 4
@MCSPI_SYSSTATUS = common dso_local global i32 0, align 4
@MCSPI_SYSSTATUS_RESETDONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Error: Controller reset operation timed out\0A\00", align 1
@MCSPI_REVISION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [57 x i8] c"scheme: %#x func: %#x rtl: %d rev: %d.%d custom rev: %d\0A\00", align 1
@MCSPI_REVISION_SCHEME_SHIFT = common dso_local global i32 0, align 4
@MCSPI_REVISION_SCHEME_MSK = common dso_local global i32 0, align 4
@MCSPI_REVISION_FUNC_SHIFT = common dso_local global i32 0, align 4
@MCSPI_REVISION_FUNC_MSK = common dso_local global i32 0, align 4
@MCSPI_REVISION_RTL_SHIFT = common dso_local global i32 0, align 4
@MCSPI_REVISION_RTL_MSK = common dso_local global i32 0, align 4
@MCSPI_REVISION_MAJOR_SHIFT = common dso_local global i32 0, align 4
@MCSPI_REVISION_MAJOR_MSK = common dso_local global i32 0, align 4
@MCSPI_REVISION_MINOR_SHIFT = common dso_local global i32 0, align 4
@MCSPI_REVISION_MINOR_MSK = common dso_local global i32 0, align 4
@MCSPI_REVISION_CUSTOM_SHIFT = common dso_local global i32 0, align 4
@MCSPI_REVISION_CUSTOM_MSK = common dso_local global i32 0, align 4
@MCSPI_MODULCTRL = common dso_local global i32 0, align 4
@MCSPI_MODULCTRL_SINGLE = common dso_local global i32 0, align 4
@MCSPI_IRQENABLE = common dso_local global i32 0, align 4
@MCSPI_IRQSTATUS = common dso_local global i32 0, align 4
@MCSPI_CONF_DPE0 = common dso_local global i32 0, align 4
@MCSPI_CONF_EPOL = common dso_local global i32 0, align 4
@MCSPI_CONF_WL_SHIFT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"spibus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_spi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_spi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_spi_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ti_spi_softc* @device_get_softc(i32 %11)
  store %struct.ti_spi_softc* %12, %struct.ti_spi_softc** %9, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %15 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %14, i32 0, i32 7
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ti_hwmods_get_clock(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @INVALID_CLK_IDENT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %225

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ti_prcm_clk_enable(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %3, align 4
  %32 = call i32 (i32, i8*, ...) @device_printf(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %225

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @ofw_bus_get_node(i32 %35)
  %37 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %38 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %37, i32 0, i32 0
  %39 = call i64 @OF_getencprop(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %38, i32 4)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %43 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %42, i32 0, i32 0
  store i32 2, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %34
  store i32 0, i32* %7, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_MEMORY, align 4
  %47 = load i32, i32* @RF_ACTIVE, align 4
  %48 = call i8* @bus_alloc_resource_any(i32 %45, i32 %46, i32* %7, i32 %47)
  %49 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %50 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %52 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %2, align 4
  br label %225

59:                                               ; preds = %44
  %60 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %61 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @rman_get_bustag(i8* %62)
  %64 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %65 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %67 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %66, i32 0, i32 2
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @rman_get_bushandle(i8* %68)
  %70 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %71 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %7, align 4
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @SYS_RES_IRQ, align 4
  %74 = load i32, i32* @RF_ACTIVE, align 4
  %75 = call i8* @bus_alloc_resource_any(i32 %72, i32 %73, i32* %7, i32 %74)
  %76 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %77 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %79 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %59
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @SYS_RES_MEMORY, align 4
  %85 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %86 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %85, i32 0, i32 2
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @bus_release_resource(i32 %83, i32 %84, i32 0, i8* %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %225

92:                                               ; preds = %59
  %93 = load i32, i32* %3, align 4
  %94 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %95 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %94, i32 0, i32 3
  %96 = load i8*, i8** %95, align 8
  %97 = load i32, i32* @INTR_TYPE_MISC, align 4
  %98 = load i32, i32* @INTR_MPSAFE, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @ti_spi_intr, align 4
  %101 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %102 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %103 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %102, i32 0, i32 4
  %104 = call i64 @bus_setup_intr(i32 %93, i8* %96, i32 %99, i32* null, i32 %100, %struct.ti_spi_softc* %101, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %122

106:                                              ; preds = %92
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @SYS_RES_IRQ, align 4
  %109 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %110 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %109, i32 0, i32 3
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @bus_release_resource(i32 %107, i32 %108, i32 0, i8* %111)
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @SYS_RES_MEMORY, align 4
  %115 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %116 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @bus_release_resource(i32 %113, i32 %114, i32 0, i8* %117)
  %119 = load i32, i32* %3, align 4
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %2, align 4
  br label %225

122:                                              ; preds = %92
  %123 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %124 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %123, i32 0, i32 1
  %125 = load i32, i32* @MTX_DEF, align 4
  %126 = call i32 @mtx_init(i32* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32* null, i32 %125)
  %127 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %128 = load i32, i32* @MCSPI_SYSCONFIG, align 4
  %129 = load i32, i32* @MCSPI_SYSCONFIG_SOFTRESET, align 4
  %130 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %127, i32 %128, i32 %129)
  store i32 1000, i32* %8, align 4
  br label %131

131:                                              ; preds = %149, %122
  %132 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %133 = load i32, i32* @MCSPI_SYSSTATUS, align 4
  %134 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %132, i32 %133)
  %135 = load i32, i32* @MCSPI_SYSSTATUS_RESETDONE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  %138 = xor i1 %137, true
  br i1 %138, label %139, label %151

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %8, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %139
  %144 = load i32, i32* %3, align 4
  %145 = call i32 (i32, i8*, ...) @device_printf(i32 %144, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0))
  %146 = load i32, i32* %3, align 4
  %147 = call i32 @ti_spi_detach(i32 %146)
  %148 = load i32, i32* @ENXIO, align 4
  store i32 %148, i32* %2, align 4
  br label %225

149:                                              ; preds = %139
  %150 = call i32 @DELAY(i32 100)
  br label %131

151:                                              ; preds = %131
  %152 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %153 = load i32, i32* @MCSPI_REVISION, align 4
  %154 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %152, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %3, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* @MCSPI_REVISION_SCHEME_SHIFT, align 4
  %158 = ashr i32 %156, %157
  %159 = load i32, i32* @MCSPI_REVISION_SCHEME_MSK, align 4
  %160 = and i32 %158, %159
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @MCSPI_REVISION_FUNC_SHIFT, align 4
  %163 = ashr i32 %161, %162
  %164 = load i32, i32* @MCSPI_REVISION_FUNC_MSK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @MCSPI_REVISION_RTL_SHIFT, align 4
  %168 = ashr i32 %166, %167
  %169 = load i32, i32* @MCSPI_REVISION_RTL_MSK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @MCSPI_REVISION_MAJOR_SHIFT, align 4
  %173 = ashr i32 %171, %172
  %174 = load i32, i32* @MCSPI_REVISION_MAJOR_MSK, align 4
  %175 = and i32 %173, %174
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* @MCSPI_REVISION_MINOR_SHIFT, align 4
  %178 = ashr i32 %176, %177
  %179 = load i32, i32* @MCSPI_REVISION_MINOR_MSK, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @MCSPI_REVISION_CUSTOM_SHIFT, align 4
  %183 = ashr i32 %181, %182
  %184 = load i32, i32* @MCSPI_REVISION_CUSTOM_MSK, align 4
  %185 = and i32 %183, %184
  %186 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i32 %160, i32 %165, i32 %170, i32 %175, i32 %180, i32 %185)
  %187 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %188 = load i32, i32* @MCSPI_MODULCTRL, align 4
  %189 = load i32, i32* @MCSPI_MODULCTRL_SINGLE, align 4
  %190 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %187, i32 %188, i32 %189)
  %191 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %192 = load i32, i32* @MCSPI_IRQENABLE, align 4
  %193 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %191, i32 %192, i32 0)
  %194 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %195 = load i32, i32* @MCSPI_IRQSTATUS, align 4
  %196 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %194, i32 %195, i32 65535)
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %217, %151
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %200 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %220

203:                                              ; preds = %197
  %204 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @MCSPI_CONF_CH(i32 %205)
  %207 = load i32, i32* @MCSPI_CONF_DPE0, align 4
  %208 = load i32, i32* @MCSPI_CONF_EPOL, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @MCSPI_CONF_WL_SHIFT, align 4
  %211 = shl i32 7, %210
  %212 = or i32 %209, %211
  %213 = call i32 @TI_SPI_WRITE(%struct.ti_spi_softc* %204, i32 %206, i32 %212)
  %214 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %9, align 8
  %215 = load i32, i32* %6, align 4
  %216 = call i32 @ti_spi_set_clock(%struct.ti_spi_softc* %214, i32 %215, i32 500000)
  br label %217

217:                                              ; preds = %203
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %197

220:                                              ; preds = %197
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @device_add_child(i32 %221, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 -1)
  %223 = load i32, i32* %3, align 4
  %224 = call i32 @bus_generic_attach(i32 %223)
  store i32 %224, i32* %2, align 4
  br label %225

225:                                              ; preds = %220, %143, %106, %82, %55, %30, %21
  %226 = load i32, i32* %2, align 4
  ret i32 %226
}

declare dso_local %struct.ti_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @rman_get_bustag(i8*) #1

declare dso_local i32 @rman_get_bushandle(i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i8*) #1

declare dso_local i64 @bus_setup_intr(i32, i8*, i32, i32*, i32, %struct.ti_spi_softc*, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @TI_SPI_WRITE(%struct.ti_spi_softc*, i32, i32) #1

declare dso_local i32 @TI_SPI_READ(%struct.ti_spi_softc*, i32) #1

declare dso_local i32 @ti_spi_detach(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MCSPI_CONF_CH(i32) #1

declare dso_local i32 @ti_spi_set_clock(%struct.ti_spi_softc*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
