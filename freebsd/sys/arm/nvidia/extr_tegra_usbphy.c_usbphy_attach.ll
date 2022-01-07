; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usbphy_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_usbphy.c_usbphy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbphy_softc = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i8* }
%struct.phynode = type { i32 }
%struct.phynode_init_def = type { i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Cannot allocate memory resources\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot get 'usb' reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"utmi-pads\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Cannot get 'utmi-pads' reset\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Cannot get 'reg' clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pll_u\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Cannot get 'pll_u' clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot get 'utmi-pads' clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Cannot unreset 'usb' reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Cannot enable 'pllu' clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Cannot enable 'reg' clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"nvidia,has-utmi-pad-registers\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"dr_mode\00", align 1
@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@USB_DR_MODE_HOST = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"phy_type\00", align 1
@USB_IFC_TYPE_UTMI = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [22 x i8] c"Unsupported phy type\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"vbus-supply\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Cannot get \22vbus\22 regulator\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"Cannot enable  \22vbus\22 regulator\0A\00", align 1
@usbphy_phynode_class = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [19 x i8] c"Cannot create phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @usbphy_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbphy_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbphy_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.phynode*, align 8
  %9 = alloca %struct.phynode_init_def, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.usbphy_softc* @device_get_softc(i32 %10)
  store %struct.usbphy_softc* %11, %struct.usbphy_softc** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %14 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_MEMORY, align 4
  %17 = load i32, i32* @RF_ACTIVE, align 4
  %18 = load i32, i32* @RF_SHAREABLE, align 4
  %19 = or i32 %17, %18
  %20 = call i8* @bus_alloc_resource_any(i32 %15, i32 %16, i32* %5, i32 %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %23 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %22, i32 0, i32 10
  store i32* %21, i32** %23, align 8
  %24 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %25 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %24, i32 0, i32 10
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %263

32:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = load i32, i32* @RF_SHAREABLE, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @bus_alloc_resource_any(i32 %33, i32 %34, i32* %5, i32 %37)
  %39 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %40 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %39, i32 0, i32 11
  store i8* %38, i8** %40, align 8
  %41 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %42 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %41, i32 0, i32 10
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %32
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %2, align 4
  br label %263

49:                                               ; preds = %32
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ofw_bus_get_node(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %53 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %56 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %55, i32 0, i32 7
  %57 = call i32 @hwreset_get_by_ofw_name(i32 %54, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %2, align 4
  br label %263

64:                                               ; preds = %49
  %65 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %66 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %69 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %68, i32 0, i32 9
  %70 = call i32 @hwreset_get_by_ofw_name(i32 %67, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %76 = load i32, i32* @ENXIO, align 4
  store i32 %76, i32* %2, align 4
  br label %263

77:                                               ; preds = %64
  %78 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %79 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %82 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %81, i32 0, i32 5
  %83 = call i32 @clk_get_by_ofw_name(i32 %80, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %88 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %2, align 4
  br label %263

92:                                               ; preds = %77
  %93 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %94 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %97 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %96, i32 0, i32 6
  %98 = call i32 @clk_get_by_ofw_name(i32 %95, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %92
  %102 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %103 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @device_printf(i32 %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %106 = load i32, i32* @ENXIO, align 4
  store i32 %106, i32* %2, align 4
  br label %263

107:                                              ; preds = %92
  %108 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %109 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %112 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %111, i32 0, i32 8
  %113 = call i32 @clk_get_by_ofw_name(i32 %110, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %112)
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %118 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %2, align 4
  br label %263

122:                                              ; preds = %107
  %123 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %124 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @hwreset_deassert(i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %122
  %130 = load i32, i32* %3, align 4
  %131 = call i32 @device_printf(i32 %130, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %2, align 4
  br label %263

133:                                              ; preds = %122
  %134 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %135 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @clk_enable(i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %142 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %145 = load i32, i32* @ENXIO, align 4
  store i32 %145, i32* %2, align 4
  br label %263

146:                                              ; preds = %133
  %147 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %148 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @clk_enable(i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %155 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %158 = load i32, i32* @ENXIO, align 4
  store i32 %158, i32* %2, align 4
  br label %263

159:                                              ; preds = %146
  %160 = load i32, i32* %7, align 4
  %161 = call i64 @OF_hasprop(i32 %160, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %165 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %164, i32 0, i32 0
  store i32 1, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %159
  %167 = load i32, i32* %3, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i64 @usb_get_dr_mode(i32 %167, i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %170 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %171 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %170, i32 0, i32 1
  store i64 %169, i64* %171, align 8
  %172 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %173 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %166
  %178 = load i64, i64* @USB_DR_MODE_HOST, align 8
  %179 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %180 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %179, i32 0, i32 1
  store i64 %178, i64* %180, align 8
  br label %181

181:                                              ; preds = %177, %166
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i64 @usb_get_ifc_mode(i32 %182, i32 %183, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %185 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %186 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %185, i32 0, i32 2
  store i64 %184, i64* %186, align 8
  %187 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %188 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @USB_IFC_TYPE_UTMI, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %181
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @device_printf(i32 %193, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  %195 = load i32, i32* @ENXIO, align 4
  store i32 %195, i32* %2, align 4
  br label %263

196:                                              ; preds = %181
  %197 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %198 = load i32, i32* %7, align 4
  %199 = call i32 @usbphy_utmi_read_params(%struct.usbphy_softc* %197, i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %196
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %2, align 4
  br label %263

204:                                              ; preds = %196
  %205 = load i32, i32* %7, align 4
  %206 = call i64 @OF_hasprop(i32 %205, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %237

208:                                              ; preds = %204
  %209 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %210 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %213 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %212, i32 0, i32 4
  %214 = call i32 @regulator_get_by_ofw_property(i32 %211, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32* %213)
  store i32 %214, i32* %6, align 4
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %208
  %218 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %219 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @device_printf(i32 %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0))
  %222 = load i32, i32* @ENXIO, align 4
  store i32 %222, i32* %2, align 4
  br label %263

223:                                              ; preds = %208
  %224 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %225 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @regulator_enable(i32 %226)
  store i32 %227, i32* %6, align 4
  %228 = load i32, i32* %6, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %223
  %231 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %232 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @device_printf(i32 %233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %235 = load i32, i32* %6, align 4
  store i32 %235, i32* %2, align 4
  br label %263

236:                                              ; preds = %223
  br label %237

237:                                              ; preds = %236, %204
  %238 = call i32 @bzero(%struct.phynode_init_def* %9, i32 8)
  %239 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %9, i32 0, i32 0
  store i32 1, i32* %239, align 4
  %240 = load i32, i32* %7, align 4
  %241 = getelementptr inbounds %struct.phynode_init_def, %struct.phynode_init_def* %9, i32 0, i32 1
  store i32 %240, i32* %241, align 4
  %242 = load i32, i32* %3, align 4
  %243 = call %struct.phynode* @phynode_create(i32 %242, i32* @usbphy_phynode_class, %struct.phynode_init_def* %9)
  store %struct.phynode* %243, %struct.phynode** %8, align 8
  %244 = load %struct.phynode*, %struct.phynode** %8, align 8
  %245 = icmp eq %struct.phynode* %244, null
  br i1 %245, label %246, label %252

246:                                              ; preds = %237
  %247 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %248 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @device_printf(i32 %249, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %251 = load i32, i32* @ENXIO, align 4
  store i32 %251, i32* %2, align 4
  br label %263

252:                                              ; preds = %237
  %253 = load %struct.phynode*, %struct.phynode** %8, align 8
  %254 = call i32* @phynode_register(%struct.phynode* %253)
  %255 = icmp eq i32* %254, null
  br i1 %255, label %256, label %262

256:                                              ; preds = %252
  %257 = load %struct.usbphy_softc*, %struct.usbphy_softc** %4, align 8
  %258 = getelementptr inbounds %struct.usbphy_softc, %struct.usbphy_softc* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @device_printf(i32 %259, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %261 = load i32, i32* @ENXIO, align 4
  store i32 %261, i32* %2, align 4
  br label %263

262:                                              ; preds = %252
  store i32 0, i32* %2, align 4
  br label %263

263:                                              ; preds = %262, %256, %246, %230, %217, %202, %192, %153, %140, %129, %116, %101, %86, %73, %60, %45, %28
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.usbphy_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i64 @usb_get_dr_mode(i32, i32, i8*) #1

declare dso_local i64 @usb_get_ifc_mode(i32, i32, i8*) #1

declare dso_local i32 @usbphy_utmi_read_params(%struct.usbphy_softc*, i32) #1

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @bzero(%struct.phynode_init_def*, i32) #1

declare dso_local %struct.phynode* @phynode_create(i32, i32*, %struct.phynode_init_def*) #1

declare dso_local i32* @phynode_register(%struct.phynode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
