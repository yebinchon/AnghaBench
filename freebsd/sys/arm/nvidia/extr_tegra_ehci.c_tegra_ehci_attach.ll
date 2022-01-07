; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ehci.c_tegra_ehci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ehci.c_tegra_ehci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ehci_softc = type { i8*, i32, i32*, i32*, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32, i32, i8* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Cannot allocate IRQ resources\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Cannot get reset\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"nvidia,phy\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot get 'nvidia,phy' phy\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Cannot get clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Cannot enable clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Cannot get clock frequency\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Cannot clear reset: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Cannot enable phy: %d\0A\00", align 1
@ehci_get_port_speed_hostc = common dso_local global i32 0, align 4
@tegra_ehci_post_reset = common dso_local global i32 0, align 4
@EHCI_MAX_DEVICES = common dso_local global i32 0, align 4
@ehci_iterate_hw_softc = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"usb_bus_mem_alloc_all() failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TEGRA_EHCI_REG_OFF = common dso_local global i32 0, align 4
@TEGRA_EHCI_REG_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Could not create USB memory subregion\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ehci_interrupt = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [21 x i8] c"Could not setup IRQ\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"usbus\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Could not add USB device\0A\00", align 1
@USB_VENDOR_FREESCALE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"Nvidia\00", align 1
@EHCI_SCFLG_TT = common dso_local global i32 0, align 4
@EHCI_SCFLG_NORESTERM = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"USB init failed: %d\0A\00", align 1
@EHCI_SCFLG_DONEINIT = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [34 x i8] c"device_probe_and_attach() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tegra_ehci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_ehci_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tegra_ehci_softc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.tegra_ehci_softc* @device_get_softc(i8* %10)
  store %struct.tegra_ehci_softc* %11, %struct.tegra_ehci_softc** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %13, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @ofw_bus_get_node(i8* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %17, i32 0, i32 7
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %7, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @SYS_RES_MEMORY, align 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = load i32, i32* @RF_SHAREABLE, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @bus_alloc_resource_any(i8* %19, i32 %20, i32* %7, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %26, i32 0, i32 3
  store i32* %25, i32** %27, align 8
  %28 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %29 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 (i8*, i8*, ...) @device_printf(i8* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %6, align 4
  br label %278

36:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @SYS_RES_IRQ, align 4
  %39 = load i32, i32* @RF_ACTIVE, align 4
  %40 = call i8* @bus_alloc_resource_any(i8* %37, i32 %38, i32* %7, i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %36
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, i8*, ...) @device_printf(i8* %49, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %6, align 4
  br label %278

52:                                               ; preds = %36
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %54, i32 0, i32 5
  %56 = call i32 @hwreset_get_by_ofw_name(i8* %53, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 (i8*, i8*, ...) @device_printf(i8* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %6, align 4
  br label %278

63:                                               ; preds = %52
  %64 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %67, i32 0, i32 4
  %69 = call i32 @phy_get_by_ofw_property(i8* %66, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %74 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, i8*, ...) @device_printf(i8* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %6, align 4
  br label %278

78:                                               ; preds = %63
  %79 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %80 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %82, i32 0, i32 6
  %84 = call i32 @clk_get_by_ofw_index(i8* %81, i32 0, i32 0, i32* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i8*, i8** %3, align 8
  %89 = call i32 (i8*, i8*, ...) @device_printf(i8* %88, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %278

90:                                               ; preds = %78
  %91 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @clk_enable(i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i8*, i8** %3, align 8
  %99 = call i32 (i8*, i8*, ...) @device_printf(i8* %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %278

100:                                              ; preds = %90
  store i64 0, i64* %8, align 8
  %101 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %102 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @clk_get_freq(i32 %103, i64* %8)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 (i8*, i8*, ...) @device_printf(i8* %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %278

110:                                              ; preds = %100
  %111 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %112 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @hwreset_deassert(i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load i8*, i8** %3, align 8
  %119 = load i32, i32* %6, align 4
  %120 = call i32 (i8*, i8*, ...) @device_printf(i8* %118, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %6, align 4
  br label %278

122:                                              ; preds = %110
  %123 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %124 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @phy_enable(i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i8*, i8** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 (i8*, i8*, ...) @device_printf(i8* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %131)
  br label %278

133:                                              ; preds = %122
  %134 = load i32, i32* @ehci_get_port_speed_hostc, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 9
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @tegra_ehci_post_reset, align 4
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  %140 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %141 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @rman_get_bustag(i32* %142)
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 6
  store i32 %143, i32* %145, align 4
  %146 = load i8*, i8** %3, align 8
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  store i8* %146, i8** %149, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load i32, i32* @EHCI_MAX_DEVICES, align 4
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 2
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  store i32 32, i32* %162, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = load i8*, i8** %3, align 8
  %166 = call i32 @USB_GET_DMA_TAG(i8* %165)
  %167 = call i32 @usb_bus_mem_alloc_all(%struct.TYPE_7__* %164, i32 %166, i32* @ehci_iterate_hw_softc)
  store i32 %167, i32* %6, align 4
  %168 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %169 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %168, i32 0, i32 1
  store i32 1, i32* %169, align 8
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %133
  %173 = load i8*, i8** %3, align 8
  %174 = call i32 (i8*, i8*, ...) @device_printf(i8* %173, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %175 = load i32, i32* @ENOMEM, align 4
  store i32 %175, i32* %6, align 4
  br label %278

176:                                              ; preds = %133
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %181 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = call i32 @rman_get_bushandle(i32* %182)
  %184 = load i32, i32* @TEGRA_EHCI_REG_OFF, align 4
  %185 = load i32, i32* @TEGRA_EHCI_REG_SIZE, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 5
  %188 = call i32 @bus_space_subregion(i32 %179, i32 %183, i32 %184, i32 %185, i32* %187)
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %176
  %192 = load i8*, i8** %3, align 8
  %193 = call i32 (i8*, i8*, ...) @device_printf(i8* %192, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %194 = load i32, i32* @ENXIO, align 4
  store i32 %194, i32* %6, align 4
  br label %278

195:                                              ; preds = %176
  %196 = load i8*, i8** %3, align 8
  %197 = load %struct.tegra_ehci_softc*, %struct.tegra_ehci_softc** %4, align 8
  %198 = getelementptr inbounds %struct.tegra_ehci_softc, %struct.tegra_ehci_softc* %197, i32 0, i32 2
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* @INTR_TYPE_BIO, align 4
  %201 = load i32, i32* @INTR_MPSAFE, align 4
  %202 = or i32 %200, %201
  %203 = load i64, i64* @ehci_interrupt, align 8
  %204 = inttoptr i64 %203 to i32*
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 4
  %208 = call i32 @bus_setup_intr(i8* %196, i32* %199, i32 %202, i32* null, i32* %204, %struct.TYPE_6__* %205, i32* %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %195
  %212 = load i8*, i8** %3, align 8
  %213 = call i32 (i8*, i8*, ...) @device_printf(i8* %212, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  br label %278

214:                                              ; preds = %195
  %215 = load i8*, i8** %3, align 8
  %216 = call i32* @device_add_child(i8* %215, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 -1)
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  store i32* %216, i32** %219, align 8
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = icmp eq i32* %223, null
  br i1 %224, label %225, label %228

225:                                              ; preds = %214
  %226 = load i8*, i8** %3, align 8
  %227 = call i32 (i8*, i8*, ...) @device_printf(i8* %226, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  br label %278

228:                                              ; preds = %214
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = call i32 @device_set_ivars(i32* %232, %struct.TYPE_7__* %234)
  %236 = load i32, i32* @USB_VENDOR_FREESCALE, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 3
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @strlcpy(i32 %241, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 4)
  %243 = load i32, i32* @EHCI_SCFLG_TT, align 4
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load i32, i32* @EHCI_SCFLG_NORESTERM, align 4
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %254 = call i32 @ehci_init(%struct.TYPE_6__* %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %228
  %258 = load i8*, i8** %3, align 8
  %259 = load i32, i32* %6, align 4
  %260 = call i32 (i8*, i8*, ...) @device_printf(i8* %258, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %259)
  br label %278

261:                                              ; preds = %228
  %262 = load i32, i32* @EHCI_SCFLG_DONEINIT, align 4
  %263 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @device_probe_and_attach(i32* %270)
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %6, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %261
  %275 = load i8*, i8** %3, align 8
  %276 = call i32 (i8*, i8*, ...) @device_printf(i8* %275, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %278

277:                                              ; preds = %261
  store i32 0, i32* %2, align 4
  br label %282

278:                                              ; preds = %274, %257, %225, %211, %191, %172, %129, %117, %107, %97, %87, %72, %59, %48, %32
  %279 = load i8*, i8** %3, align 8
  %280 = call i32 @tegra_ehci_detach(i8* %279)
  %281 = load i32, i32* %6, align 4
  store i32 %281, i32* %2, align 4
  br label %282

282:                                              ; preds = %278, %277
  %283 = load i32, i32* %2, align 4
  ret i32 %283
}

declare dso_local %struct.tegra_ehci_softc* @device_get_softc(i8*) #1

declare dso_local i32 @ofw_bus_get_node(i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i8*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i8*, i8*, ...) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i8*, i32, i8*, i32*) #1

declare dso_local i32 @phy_get_by_ofw_property(i8*, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_index(i8*, i32, i32, i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @clk_get_freq(i32, i64*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @phy_enable(i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @usb_bus_mem_alloc_all(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @USB_GET_DMA_TAG(i8*) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_setup_intr(i8*, i32*, i32, i32*, i32*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32* @device_add_child(i8*, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ehci_init(%struct.TYPE_6__*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

declare dso_local i32 @tegra_ehci_detach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
