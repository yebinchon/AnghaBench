; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_versatile_clcdc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/versatile/extr_versatile_clcd.c_versatile_clcdc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_adapter_softc = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.versatile_clcdc_softc = type { i32, i32, i32, i32, i64, i32, i64, i32* }

@va_softc = common dso_local global %struct.video_adapter_softc zeroinitializer, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"could not allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SCM_CLCD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to read SCM register\0A\00", align 1
@SCM_CLCD_CLCDID_SHIFT = common dso_local global i32 0, align 4
@SCM_CLCD_CLCDID_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"QEMU VGA 640x480\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Unsupported: %d\0A\00", align 1
@SCM_CLCD_LCD_MODE_MASK = common dso_local global i32 0, align 4
@CLCD_MODE_RGB565 = common dso_local global i32 0, align 4
@SCM_CLCD_PWR3V5VSWITCH = common dso_local global i32 0, align 4
@SCM_CLCD_NLCDIOON = common dso_local global i32 0, align 4
@CLCDC_TIMING0 = common dso_local global i32 0, align 4
@CLCDC_TIMING1 = common dso_local global i32 0, align 4
@CLCDC_TIMING2 = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot allocate framebuffer\0A\00", align 1
@versatile_fb_dmamap_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"cannot load DMA map\0A\00", align 1
@CLCDC_UPBASE = common dso_local global i32 0, align 4
@SC_AUTODETECT_KBD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to attach syscons\0A\00", align 1
@CONTROL_VCOMP_BP = common dso_local global i32 0, align 4
@CONTROL_TFT = common dso_local global i32 0, align 4
@CONTROL_BGR = common dso_local global i32 0, align 4
@CONTROL_EN = common dso_local global i32 0, align 4
@CONTROL_BPP16 = common dso_local global i32 0, align 4
@CLCDC_CONTROL = common dso_local global i32 0, align 4
@CONTROL_PWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @versatile_clcdc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @versatile_clcdc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.versatile_clcdc_softc*, align 8
  %5 = alloca %struct.video_adapter_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.versatile_clcdc_softc* @device_get_softc(i32 %11)
  store %struct.versatile_clcdc_softc* %12, %struct.versatile_clcdc_softc** %4, align 8
  store %struct.video_adapter_softc* @va_softc, %struct.video_adapter_softc** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i32* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %7, i32 %15)
  %17 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %17, i32 0, i32 7
  store i32* %16, i32** %18, align 8
  %19 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %20 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %240

27:                                               ; preds = %1
  %28 = load i32, i32* @SCM_CLCD, align 4
  %29 = call i32 @versatile_scm_reg_read_4(i32 %28, i32* %8)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %212

35:                                               ; preds = %27
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @SCM_CLCD_CLCDID_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @SCM_CLCD_CLCDID_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %49 [
    i32 31, label %42
  ]

42:                                               ; preds = %35
  %43 = load i32, i32* %3, align 4
  %44 = call i32 (i32, i8*, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %46 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %45, i32 0, i32 0
  store i32 640, i32* %46, align 8
  %47 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %48 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %47, i32 0, i32 1
  store i32 480, i32* %48, align 4
  br label %53

49:                                               ; preds = %35
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  br label %212

53:                                               ; preds = %42
  %54 = load i32, i32* @SCM_CLCD_LCD_MODE_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @CLCD_MODE_RGB565, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* @CLCD_MODE_RGB565, align 4
  %62 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %63 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @SCM_CLCD, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @versatile_scm_reg_write_4(i32 %64, i32 %65)
  %67 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %68 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %71 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = mul nsw i32 %73, 2
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* @SCM_CLCD_PWR3V5VSWITCH, align 4
  %76 = load i32, i32* @SCM_CLCD_NLCDIOON, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* @SCM_CLCD, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @versatile_scm_reg_write_4(i32 %80, i32 %81)
  %83 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %84 = load i32, i32* @CLCDC_TIMING0, align 4
  %85 = call i32 @versatile_clcdc_write_4(%struct.versatile_clcdc_softc* %83, i32 %84, i32 1059012508)
  %86 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %87 = load i32, i32* @CLCDC_TIMING1, align 4
  %88 = call i32 @versatile_clcdc_write_4(%struct.versatile_clcdc_softc* %86, i32 %87, i32 151740895)
  %89 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %90 = load i32, i32* @CLCDC_TIMING2, align 4
  %91 = call i32 @versatile_clcdc_write_4(%struct.versatile_clcdc_softc* %89, i32 %90, i32 108992512)
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @bus_get_dma_tag(i32 %92)
  %94 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %95 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %99 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %98, i32 0, i32 4
  %100 = call i32 @bus_dma_tag_create(i32 %93, i32 4, i32 0, i32 %94, i32 %95, i32* null, i32* null, i32 %96, i32 1, i32 %97, i32 0, i32* null, i32* null, i64* %99)
  store i32 %100, i32* %6, align 4
  %101 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %102 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %105 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %104, i32 0, i32 6
  %106 = bitcast i64* %105 to i8**
  %107 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %108 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %107, i32 0, i32 5
  %109 = call i32 @bus_dmamem_alloc(i64 %103, i8** %106, i32 0, i32* %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %53
  %113 = load i32, i32* %3, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %212

115:                                              ; preds = %53
  %116 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %117 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %120 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %123 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @versatile_fb_dmamap_cb, align 4
  %127 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %128 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %127, i32 0, i32 3
  %129 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %130 = call i32 @bus_dmamap_load(i64 %118, i32 %121, i64 %124, i32 %125, i32 %126, i32* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %115
  %134 = load i32, i32* %3, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %212

136:                                              ; preds = %115
  %137 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %138 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @memset(i64 %139, i32 0, i32 %140)
  %142 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %143 = load i32, i32* @CLCDC_UPBASE, align 4
  %144 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %145 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @versatile_clcdc_write_4(%struct.versatile_clcdc_softc* %142, i32 %143, i32 %146)
  %148 = load i32, i32* %3, align 4
  %149 = call i32 @device_get_unit(i32 %148)
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @device_get_flags(i32 %150)
  %152 = load i32, i32* @SC_AUTODETECT_KBD, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @sc_attach_unit(i32 %149, i32 %153)
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %136
  %158 = load i32, i32* %3, align 4
  %159 = call i32 (i32, i8*, ...) @device_printf(i32 %158, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %212

160:                                              ; preds = %136
  %161 = load i32, i32* @CONTROL_VCOMP_BP, align 4
  %162 = load i32, i32* @CONTROL_TFT, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @CONTROL_BGR, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @CONTROL_EN, align 4
  %167 = or i32 %165, %166
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* @CONTROL_BPP16, align 4
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  %171 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %172 = load i32, i32* @CLCDC_CONTROL, align 4
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @versatile_clcdc_write_4(%struct.versatile_clcdc_softc* %171, i32 %172, i32 %173)
  %175 = call i32 @DELAY(i32 20)
  %176 = load i32, i32* @CONTROL_PWR, align 4
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %180 = load i32, i32* @CLCDC_CONTROL, align 4
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @versatile_clcdc_write_4(%struct.versatile_clcdc_softc* %179, i32 %180, i32 %181)
  %183 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %184 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %183, i32 0, i32 6
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %5, align 8
  %187 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %186, i32 0, i32 6
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %5, align 8
  %190 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %192 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %5, align 8
  %195 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %197 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %5, align 8
  %200 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %5, align 8
  %202 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %201, i32 0, i32 3
  store i32 16, i32* %202, align 4
  %203 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %204 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = mul nsw i32 %205, 2
  %207 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %5, align 8
  %208 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %207, i32 0, i32 4
  store i32 %206, i32* %208, align 8
  %209 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %5, align 8
  %210 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %209, i32 0, i32 5
  %211 = call i32 @versatilefb_update_margins(i32* %210)
  store i32 0, i32* %2, align 4
  br label %240

212:                                              ; preds = %157, %133, %112, %49, %32
  %213 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %214 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %213, i32 0, i32 6
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %212
  %218 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %219 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %222 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %221, i32 0, i32 6
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %225 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %224, i32 0, i32 5
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @bus_dmamem_free(i64 %220, i64 %223, i32 %226)
  br label %228

228:                                              ; preds = %217, %212
  %229 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %230 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %229, i32 0, i32 4
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %228
  %234 = load %struct.versatile_clcdc_softc*, %struct.versatile_clcdc_softc** %4, align 8
  %235 = getelementptr inbounds %struct.versatile_clcdc_softc, %struct.versatile_clcdc_softc* %234, i32 0, i32 4
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @bus_dma_tag_destroy(i64 %236)
  br label %238

238:                                              ; preds = %233, %228
  %239 = load i32, i32* %6, align 4
  store i32 %239, i32* %2, align 4
  br label %240

240:                                              ; preds = %238, %160, %23
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.versatile_clcdc_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @versatile_scm_reg_read_4(i32, i32*) #1

declare dso_local i32 @versatile_scm_reg_write_4(i32, i32) #1

declare dso_local i32 @versatile_clcdc_write_4(%struct.versatile_clcdc_softc*, i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i64*) #1

declare dso_local i32 @bus_get_dma_tag(i32) #1

declare dso_local i32 @bus_dmamem_alloc(i64, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i64, i32, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @sc_attach_unit(i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @versatilefb_update_margins(i32*) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
