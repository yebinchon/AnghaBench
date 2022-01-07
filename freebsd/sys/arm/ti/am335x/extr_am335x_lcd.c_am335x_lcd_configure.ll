; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_lcd_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_lcd_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_lcd_softc = type { i32, i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@LCDC_CLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"can't set source frequency\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"can't get reference frequency\0A\00", align 1
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_COHERENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"cannot allocate framebuffer\0A\00", align 1
@am335x_fb_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot load DMA map\0A\00", align 1
@CTRL_RASTER_MODE = common dso_local global i32 0, align 4
@CTRL_DIV_SHIFT = common dso_local global i32 0, align 4
@LCD_CTRL = common dso_local global i32 0, align 4
@RASTER_TIMING_0_HBP_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_2_HBPHI_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_0_HFP_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_2_HFPHI_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_0_HSW_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_2_HSWHI_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_1_VBP_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_1_VFP_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_1_VSW_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_0_PPLMSB_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_0_PPLLSB_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_1_LPP_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_2_LPP_B10_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_2_PHSVS = common dso_local global i32 0, align 4
@RASTER_TIMING_2_PHSVS_RISE = common dso_local global i32 0, align 4
@RASTER_TIMING_2_PHSVS_FALL = common dso_local global i32 0, align 4
@RASTER_TIMING_2_IHS = common dso_local global i32 0, align 4
@RASTER_TIMING_2_IVS = common dso_local global i32 0, align 4
@RASTER_TIMING_2_IPC = common dso_local global i32 0, align 4
@RASTER_TIMING_2_ACB_SHIFT = common dso_local global i32 0, align 4
@RASTER_TIMING_2_ACBI_SHIFT = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_0 = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_1 = common dso_local global i32 0, align 4
@LCD_RASTER_TIMING_2 = common dso_local global i32 0, align 4
@LCDDMA_CTRL_FB0_FB1 = common dso_local global i32 0, align 4
@LCDDMA_CTRL_BURST_SIZE_SHIFT = common dso_local global i32 0, align 4
@LCDDMA_CTRL_TH_FIFO_RDY_SHIFT = common dso_local global i32 0, align 4
@LCD_LCDDMA_CTRL = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB0_BASE = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB0_CEILING = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB1_BASE = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB1_CEILING = common dso_local global i32 0, align 4
@RASTER_CTRL_LCDTFT = common dso_local global i32 0, align 4
@RASTER_CTRL_REQDLY_SHIFT = common dso_local global i32 0, align 4
@PALETTE_DATA_ONLY = common dso_local global i32 0, align 4
@RASTER_CTRL_PALMODE_SHIFT = common dso_local global i32 0, align 4
@RASTER_CTRL_TFT24 = common dso_local global i32 0, align 4
@RASTER_CTRL_TFT24_UNPACKED = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL = common dso_local global i32 0, align 4
@LCD_CLKC_ENABLE = common dso_local global i32 0, align 4
@CLKC_ENABLE_DMA = common dso_local global i32 0, align 4
@CLKC_ENABLE_LDID = common dso_local global i32 0, align 4
@CLKC_ENABLE_CORE = common dso_local global i32 0, align 4
@LCD_CLKC_RESET = common dso_local global i32 0, align 4
@CLKC_RESET_MAIN = common dso_local global i32 0, align 4
@IRQ_EOF1 = common dso_local global i32 0, align 4
@IRQ_EOF0 = common dso_local global i32 0, align 4
@IRQ_FUF = common dso_local global i32 0, align 4
@IRQ_PL = common dso_local global i32 0, align 4
@IRQ_ACB = common dso_local global i32 0, align 4
@IRQ_SYNC_LOST = common dso_local global i32 0, align 4
@IRQ_RASTER_DONE = common dso_local global i32 0, align 4
@IRQ_FRAME_DONE = common dso_local global i32 0, align 4
@LCD_IRQENABLE_SET = common dso_local global i32 0, align 4
@RASTER_CTRL_LCDEN = common dso_local global i32 0, align 4
@LCD_SYSCONFIG = common dso_local global i32 0, align 4
@SYSCONFIG_STANDBY_SMART = common dso_local global i32 0, align 4
@SYSCONFIG_IDLE_SMART = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to attach fbd device\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to add fbd child\0A\00", align 1
@SC_AUTODETECT_KBD = common dso_local global i32 0, align 4
@panel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.am335x_lcd_softc*)* @am335x_lcd_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am335x_lcd_configure(%struct.am335x_lcd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.am335x_lcd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.am335x_lcd_softc* %0, %struct.am335x_lcd_softc** %3, align 8
  %22 = load i32, i32* @LCDC_CLK, align 4
  %23 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %24 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 2
  %28 = call i64 @ti_prcm_clk_set_source_freq(i32 %22, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %32 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %599

36:                                               ; preds = %1
  %37 = load i32, i32* @LCDC_CLK, align 4
  %38 = call i64 @ti_prcm_clk_get_source_freq(i32 %37, i32* %19)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %42 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %2, align 4
  br label %599

46:                                               ; preds = %36
  %47 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %48 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %52 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %50, %54
  %56 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %57 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %55, %59
  %61 = sdiv i32 %60, 8
  %62 = call i64 @round_page(i32 %61)
  store i64 %62, i64* %10, align 8
  %63 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %64 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bus_get_dma_tag(i32 %65)
  %67 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %68 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %72 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %71, i32 0, i32 7
  %73 = call i32 @bus_dma_tag_create(i32 %66, i32 4, i32 0, i32 %67, i32 %68, i32* null, i32* null, i64 %69, i32 1, i64 %70, i32 0, i32* null, i32* null, i32* %72)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %46
  br label %597

77:                                               ; preds = %46
  %78 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %79 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %82 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %81, i32 0, i32 3
  %83 = bitcast i64* %82 to i8**
  %84 = load i32, i32* @BUS_DMA_COHERENT, align 4
  %85 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %86 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %85, i32 0, i32 6
  %87 = call i32 @bus_dmamem_alloc(i32 %80, i8** %83, i32 %84, i32* %86)
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %92 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %597

95:                                               ; preds = %77
  %96 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %97 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %100 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %103 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i32, i32* @am335x_fb_dmamap_cb, align 4
  %107 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %108 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %107, i32 0, i32 0
  %109 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %110 = call i32 @bus_dmamap_load(i32 %98, i32 %101, i64 %104, i64 %105, i32 %106, i32* %108, i32 %109)
  store i32 %110, i32* %20, align 4
  %111 = load i32, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %95
  %114 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %115 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %597

118:                                              ; preds = %95
  %119 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %120 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %10, align 8
  %123 = call i32 @memset(i64 %121, i32 0, i64 %122)
  %124 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %125 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %124, i32 0, i32 4
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %129 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %127, %131
  %133 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %134 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %132, %136
  %138 = sdiv i32 %137, 8
  %139 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %140 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* @CTRL_RASTER_MODE, align 4
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %19, align 4
  %143 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %144 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @am335x_lcd_calc_divisor(i32 %142, i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @CTRL_DIV_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %154 = load i32, i32* @LCD_CTRL, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %153, i32 %154, i32 %155)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %157 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %158 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = sub nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  %162 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %163 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  %167 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %168 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %167, i32 0, i32 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %13, align 4
  %172 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %173 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %14, align 4
  %176 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %177 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %176, i32 0, i32 4
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %15, align 4
  %180 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %181 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 9
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  %185 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %186 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %185, i32 0, i32 4
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %18, align 4
  %190 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %191 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, 1
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %11, align 4
  %196 = and i32 %195, 255
  %197 = load i32, i32* @RASTER_TIMING_0_HBP_SHIFT, align 4
  %198 = shl i32 %196, %197
  %199 = load i32, i32* %6, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %11, align 4
  %202 = ashr i32 %201, 8
  %203 = and i32 %202, 3
  %204 = load i32, i32* @RASTER_TIMING_2_HBPHI_SHIFT, align 4
  %205 = shl i32 %203, %204
  %206 = load i32, i32* %8, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %12, align 4
  %209 = and i32 %208, 255
  %210 = load i32, i32* @RASTER_TIMING_0_HFP_SHIFT, align 4
  %211 = shl i32 %209, %210
  %212 = load i32, i32* %6, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %12, align 4
  %215 = ashr i32 %214, 8
  %216 = and i32 %215, 3
  %217 = load i32, i32* @RASTER_TIMING_2_HFPHI_SHIFT, align 4
  %218 = shl i32 %216, %217
  %219 = load i32, i32* %8, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %13, align 4
  %222 = and i32 %221, 63
  %223 = load i32, i32* @RASTER_TIMING_0_HSW_SHIFT, align 4
  %224 = shl i32 %222, %223
  %225 = load i32, i32* %6, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %13, align 4
  %228 = ashr i32 %227, 6
  %229 = and i32 %228, 15
  %230 = load i32, i32* @RASTER_TIMING_2_HSWHI_SHIFT, align 4
  %231 = shl i32 %229, %230
  %232 = load i32, i32* %8, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %8, align 4
  %234 = load i32, i32* %14, align 4
  %235 = and i32 %234, 255
  %236 = load i32, i32* @RASTER_TIMING_1_VBP_SHIFT, align 4
  %237 = shl i32 %235, %236
  %238 = load i32, i32* %7, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %15, align 4
  %241 = and i32 %240, 255
  %242 = load i32, i32* @RASTER_TIMING_1_VFP_SHIFT, align 4
  %243 = shl i32 %241, %242
  %244 = load i32, i32* %7, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %16, align 4
  %247 = and i32 %246, 63
  %248 = load i32, i32* @RASTER_TIMING_1_VSW_SHIFT, align 4
  %249 = shl i32 %247, %248
  %250 = load i32, i32* %7, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %17, align 4
  %253 = ashr i32 %252, 10
  %254 = and i32 %253, 1
  %255 = load i32, i32* @RASTER_TIMING_0_PPLMSB_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = load i32, i32* %6, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %17, align 4
  %260 = ashr i32 %259, 4
  %261 = and i32 %260, 63
  %262 = load i32, i32* @RASTER_TIMING_0_PPLLSB_SHIFT, align 4
  %263 = shl i32 %261, %262
  %264 = load i32, i32* %6, align 4
  %265 = or i32 %264, %263
  store i32 %265, i32* %6, align 4
  %266 = load i32, i32* %18, align 4
  %267 = and i32 %266, 1023
  %268 = load i32, i32* @RASTER_TIMING_1_LPP_SHIFT, align 4
  %269 = shl i32 %267, %268
  %270 = load i32, i32* %7, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %7, align 4
  %272 = load i32, i32* %18, align 4
  %273 = ashr i32 %272, 10
  %274 = and i32 %273, 1
  %275 = load i32, i32* @RASTER_TIMING_2_LPP_B10_SHIFT, align 4
  %276 = shl i32 %274, %275
  %277 = load i32, i32* %8, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %8, align 4
  %279 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %280 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 18
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %118
  %285 = load i32, i32* @RASTER_TIMING_2_PHSVS, align 4
  %286 = load i32, i32* %8, align 4
  %287 = or i32 %286, %285
  store i32 %287, i32* %8, align 4
  br label %288

288:                                              ; preds = %284, %118
  %289 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %290 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %289, i32 0, i32 4
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 17
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %288
  %295 = load i32, i32* @RASTER_TIMING_2_PHSVS_RISE, align 4
  %296 = load i32, i32* %8, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %8, align 4
  br label %302

298:                                              ; preds = %288
  %299 = load i32, i32* @RASTER_TIMING_2_PHSVS_FALL, align 4
  %300 = load i32, i32* %8, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %8, align 4
  br label %302

302:                                              ; preds = %298, %294
  %303 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %304 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 10
  %306 = load i64, i64* %305, align 8
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %302
  %309 = load i32, i32* @RASTER_TIMING_2_IHS, align 4
  %310 = load i32, i32* %8, align 4
  %311 = or i32 %310, %309
  store i32 %311, i32* %8, align 4
  br label %312

312:                                              ; preds = %308, %302
  %313 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %314 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %313, i32 0, i32 4
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 11
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %312
  %319 = load i32, i32* @RASTER_TIMING_2_IVS, align 4
  %320 = load i32, i32* %8, align 4
  %321 = or i32 %320, %319
  store i32 %321, i32* %8, align 4
  br label %322

322:                                              ; preds = %318, %312
  %323 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %324 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %323, i32 0, i32 4
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 12
  %326 = load i64, i64* %325, align 8
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %322
  %329 = load i32, i32* @RASTER_TIMING_2_IPC, align 4
  %330 = load i32, i32* %8, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %8, align 4
  br label %332

332:                                              ; preds = %328, %322
  %333 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %334 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %333, i32 0, i32 4
  %335 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %334, i32 0, i32 13
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* @RASTER_TIMING_2_ACB_SHIFT, align 4
  %338 = shl i32 %336, %337
  %339 = load i32, i32* %8, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %8, align 4
  %341 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %342 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %341, i32 0, i32 4
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 14
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @RASTER_TIMING_2_ACBI_SHIFT, align 4
  %346 = shl i32 %344, %345
  %347 = load i32, i32* %8, align 4
  %348 = or i32 %347, %346
  store i32 %348, i32* %8, align 4
  %349 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %350 = load i32, i32* @LCD_RASTER_TIMING_0, align 4
  %351 = load i32, i32* %6, align 4
  %352 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %349, i32 %350, i32 %351)
  %353 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %354 = load i32, i32* @LCD_RASTER_TIMING_1, align 4
  %355 = load i32, i32* %7, align 4
  %356 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %353, i32 %354, i32 %355)
  %357 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %358 = load i32, i32* @LCD_RASTER_TIMING_2, align 4
  %359 = load i32, i32* %8, align 4
  %360 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %357, i32 %358, i32 %359)
  %361 = load i32, i32* @LCDDMA_CTRL_FB0_FB1, align 4
  store i32 %361, i32* %5, align 4
  %362 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %363 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %362, i32 0, i32 4
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 15
  %365 = load i32, i32* %364, align 8
  switch i32 %365, label %371 [
    i32 1, label %366
    i32 2, label %367
    i32 4, label %368
    i32 8, label %369
    i32 16, label %370
  ]

366:                                              ; preds = %332
  store i32 0, i32* %9, align 4
  br label %372

367:                                              ; preds = %332
  store i32 1, i32* %9, align 4
  br label %372

368:                                              ; preds = %332
  store i32 2, i32* %9, align 4
  br label %372

369:                                              ; preds = %332
  store i32 3, i32* %9, align 4
  br label %372

370:                                              ; preds = %332
  br label %371

371:                                              ; preds = %332, %370
  store i32 4, i32* %9, align 4
  br label %372

372:                                              ; preds = %371, %369, %368, %367, %366
  %373 = load i32, i32* %9, align 4
  %374 = load i32, i32* @LCDDMA_CTRL_BURST_SIZE_SHIFT, align 4
  %375 = shl i32 %373, %374
  %376 = load i32, i32* %5, align 4
  %377 = or i32 %376, %375
  store i32 %377, i32* %5, align 4
  %378 = load i32, i32* @LCDDMA_CTRL_TH_FIFO_RDY_SHIFT, align 4
  %379 = shl i32 0, %378
  %380 = load i32, i32* %5, align 4
  %381 = or i32 %380, %379
  store i32 %381, i32* %5, align 4
  %382 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %383 = load i32, i32* @LCD_LCDDMA_CTRL, align 4
  %384 = load i32, i32* %5, align 4
  %385 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %382, i32 %383, i32 %384)
  %386 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %387 = load i32, i32* @LCD_LCDDMA_FB0_BASE, align 4
  %388 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %389 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %388, i32 0, i32 0
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %386, i32 %387, i32 %390)
  %392 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %393 = load i32, i32* @LCD_LCDDMA_FB0_CEILING, align 4
  %394 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %395 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %398 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %396, %399
  %401 = sub nsw i32 %400, 1
  %402 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %392, i32 %393, i32 %401)
  %403 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %404 = load i32, i32* @LCD_LCDDMA_FB1_BASE, align 4
  %405 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %406 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %403, i32 %404, i32 %407)
  %409 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %410 = load i32, i32* @LCD_LCDDMA_FB1_CEILING, align 4
  %411 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %412 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %415 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %414, i32 0, i32 1
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %413, %416
  %418 = sub nsw i32 %417, 1
  %419 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %409, i32 %410, i32 %418)
  %420 = load i32, i32* @RASTER_CTRL_LCDTFT, align 4
  store i32 %420, i32* %5, align 4
  %421 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %422 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %421, i32 0, i32 4
  %423 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %422, i32 0, i32 16
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* @RASTER_CTRL_REQDLY_SHIFT, align 4
  %426 = shl i32 %424, %425
  %427 = load i32, i32* %5, align 4
  %428 = or i32 %427, %426
  store i32 %428, i32* %5, align 4
  %429 = load i32, i32* @PALETTE_DATA_ONLY, align 4
  %430 = load i32, i32* @RASTER_CTRL_PALMODE_SHIFT, align 4
  %431 = shl i32 %429, %430
  %432 = load i32, i32* %5, align 4
  %433 = or i32 %432, %431
  store i32 %433, i32* %5, align 4
  %434 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %435 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %434, i32 0, i32 4
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 4
  %438 = icmp sge i32 %437, 24
  br i1 %438, label %439, label %443

439:                                              ; preds = %372
  %440 = load i32, i32* @RASTER_CTRL_TFT24, align 4
  %441 = load i32, i32* %5, align 4
  %442 = or i32 %441, %440
  store i32 %442, i32* %5, align 4
  br label %443

443:                                              ; preds = %439, %372
  %444 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %445 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %444, i32 0, i32 4
  %446 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %445, i32 0, i32 3
  %447 = load i32, i32* %446, align 4
  %448 = icmp eq i32 %447, 32
  br i1 %448, label %449, label %453

449:                                              ; preds = %443
  %450 = load i32, i32* @RASTER_CTRL_TFT24_UNPACKED, align 4
  %451 = load i32, i32* %5, align 4
  %452 = or i32 %451, %450
  store i32 %452, i32* %5, align 4
  br label %453

453:                                              ; preds = %449, %443
  %454 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %455 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %456 = load i32, i32* %5, align 4
  %457 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %454, i32 %455, i32 %456)
  %458 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %459 = load i32, i32* @LCD_CLKC_ENABLE, align 4
  %460 = load i32, i32* @CLKC_ENABLE_DMA, align 4
  %461 = load i32, i32* @CLKC_ENABLE_LDID, align 4
  %462 = or i32 %460, %461
  %463 = load i32, i32* @CLKC_ENABLE_CORE, align 4
  %464 = or i32 %462, %463
  %465 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %458, i32 %459, i32 %464)
  %466 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %467 = load i32, i32* @LCD_CLKC_RESET, align 4
  %468 = load i32, i32* @CLKC_RESET_MAIN, align 4
  %469 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %466, i32 %467, i32 %468)
  %470 = call i32 @DELAY(i32 100)
  %471 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %472 = load i32, i32* @LCD_CLKC_RESET, align 4
  %473 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %471, i32 %472, i32 0)
  %474 = load i32, i32* @IRQ_EOF1, align 4
  %475 = load i32, i32* @IRQ_EOF0, align 4
  %476 = or i32 %474, %475
  %477 = load i32, i32* @IRQ_FUF, align 4
  %478 = or i32 %476, %477
  %479 = load i32, i32* @IRQ_PL, align 4
  %480 = or i32 %478, %479
  %481 = load i32, i32* @IRQ_ACB, align 4
  %482 = or i32 %480, %481
  %483 = load i32, i32* @IRQ_SYNC_LOST, align 4
  %484 = or i32 %482, %483
  %485 = load i32, i32* @IRQ_RASTER_DONE, align 4
  %486 = or i32 %484, %485
  %487 = load i32, i32* @IRQ_FRAME_DONE, align 4
  %488 = or i32 %486, %487
  store i32 %488, i32* %5, align 4
  %489 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %490 = load i32, i32* @LCD_IRQENABLE_SET, align 4
  %491 = load i32, i32* %5, align 4
  %492 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %489, i32 %490, i32 %491)
  %493 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %494 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %495 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %493, i32 %494)
  store i32 %495, i32* %5, align 4
  %496 = load i32, i32* @RASTER_CTRL_LCDEN, align 4
  %497 = load i32, i32* %5, align 4
  %498 = or i32 %497, %496
  store i32 %498, i32* %5, align 4
  %499 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %500 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %501 = load i32, i32* %5, align 4
  %502 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %499, i32 %500, i32 %501)
  %503 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %504 = load i32, i32* @LCD_SYSCONFIG, align 4
  %505 = load i32, i32* @SYSCONFIG_STANDBY_SMART, align 4
  %506 = load i32, i32* @SYSCONFIG_IDLE_SMART, align 4
  %507 = or i32 %505, %506
  %508 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %503, i32 %504, i32 %507)
  %509 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %510 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %509, i32 0, i32 2
  %511 = load i32, i32* %510, align 8
  %512 = call i32 @device_get_nameunit(i32 %511)
  %513 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %514 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %513, i32 0, i32 5
  %515 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %514, i32 0, i32 8
  store i32 %512, i32* %515, align 4
  %516 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %517 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %516, i32 0, i32 3
  %518 = load i64, i64* %517, align 8
  %519 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %520 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %520, i32 0, i32 0
  store i64 %518, i64* %521, align 8
  %522 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %523 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %522, i32 0, i32 0
  %524 = load i32, i32* %523, align 8
  %525 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %526 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %525, i32 0, i32 5
  %527 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %526, i32 0, i32 1
  store i32 %524, i32* %527, align 8
  %528 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %529 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %532 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %531, i32 0, i32 5
  %533 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %532, i32 0, i32 2
  store i32 %530, i32* %533, align 4
  %534 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %535 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %534, i32 0, i32 4
  %536 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %535, i32 0, i32 3
  %537 = load i32, i32* %536, align 4
  %538 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %539 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %538, i32 0, i32 5
  %540 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %539, i32 0, i32 4
  store i32 %537, i32* %540, align 4
  %541 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %542 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %541, i32 0, i32 5
  %543 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %542, i32 0, i32 3
  store i32 %537, i32* %543, align 8
  %544 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %545 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %544, i32 0, i32 4
  %546 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %549 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %548, i32 0, i32 4
  %550 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 4
  %552 = mul nsw i32 %547, %551
  %553 = sdiv i32 %552, 8
  %554 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %555 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %554, i32 0, i32 5
  %556 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %555, i32 0, i32 5
  store i32 %553, i32* %556, align 8
  %557 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %558 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %557, i32 0, i32 4
  %559 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %562 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %561, i32 0, i32 5
  %563 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %562, i32 0, i32 6
  store i32 %560, i32* %563, align 4
  %564 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %565 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %564, i32 0, i32 4
  %566 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %569 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %568, i32 0, i32 5
  %570 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %569, i32 0, i32 7
  store i32 %567, i32* %570, align 8
  %571 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %572 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %575 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %574, i32 0, i32 2
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @device_get_unit(i32 %576)
  %578 = call i32* @device_add_child(i32 %573, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %577)
  store i32* %578, i32** %21, align 8
  %579 = load i32*, i32** %21, align 8
  %580 = icmp ne i32* %579, null
  br i1 %580, label %581, label %591

581:                                              ; preds = %453
  %582 = load i32*, i32** %21, align 8
  %583 = call i64 @device_probe_and_attach(i32* %582)
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %590

585:                                              ; preds = %581
  %586 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %587 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %586, i32 0, i32 2
  %588 = load i32, i32* %587, align 8
  %589 = call i32 @device_printf(i32 %588, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %590

590:                                              ; preds = %585, %581
  br label %596

591:                                              ; preds = %453
  %592 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %593 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %592, i32 0, i32 2
  %594 = load i32, i32* %593, align 8
  %595 = call i32 @device_printf(i32 %594, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %596

596:                                              ; preds = %591, %590
  br label %597

597:                                              ; preds = %596, %113, %90, %76
  %598 = load i32, i32* %20, align 4
  store i32 %598, i32* %2, align 4
  br label %599

599:                                              ; preds = %597, %40, %30
  %600 = load i32, i32* %2, align 4
  ret i32 %600
}

declare dso_local i64 @ti_prcm_clk_set_source_freq(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ti_prcm_clk_get_source_freq(i32, i32*) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i64, i32, i64, i32, i32*, i32*, i32*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i64, i32, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @am335x_lcd_calc_divisor(i32, i32) #1

declare dso_local i32 @LCD_WRITE4(%struct.am335x_lcd_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @LCD_READ4(%struct.am335x_lcd_softc*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
