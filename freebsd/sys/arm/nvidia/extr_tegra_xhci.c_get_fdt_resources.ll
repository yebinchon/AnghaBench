; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_get_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_get_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xhci_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"avddio-pex-supply\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot get 'avddio-pex' regulator\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"dvddio-pex-supply\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cannot get 'dvddio-pex' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"avdd-usb-supply\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Cannot get 'avdd-usb' regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"avdd-pll-utmip-supply\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Cannot get 'avdd-pll-utmip' regulator\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"avdd-pll-erefe-supply\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Cannot get 'avdd-pll-erefe' regulator\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"avdd-usb-ss-pll-supply\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Cannot get 'avdd-usb-ss-pll' regulator\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"hvdd-usb-ss-supply\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Cannot get 'hvdd-usb-ss' regulator\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"hvdd-usb-ss-pll-e-supply\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Cannot get 'hvdd-usb-ss-pll-e' regulator\0A\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"xusb_host\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Cannot get 'xusb_host' reset\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"xusb_ss\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"Cannot get 'xusb_ss' reset\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"usb2-0\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Cannot get 'usb2-0' phy\0A\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"usb2-1\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Cannot get 'usb2-1' phy\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"usb2-2\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Cannot get 'usb2-2' phy\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"usb3-0\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Cannot get 'usb3-0' phy\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"Cannot get 'xusb_host' clock\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"xusb_falcon_src\00", align 1
@.str.30 = private unnamed_addr constant [36 x i8] c"Cannot get 'xusb_falcon_src' clock\0A\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Cannot get 'xusb_ss' clock\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"xusb_hs_src\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Cannot get 'xusb_hs_src' clock\0A\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"xusb_fs_src\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"Cannot get 'xusb_fs_src' clock\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"freebsd,clock-xusb-gate\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Cannot get 'xusb_gate' clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xhci_softc*, i32)* @get_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fdt_resources(%struct.tegra_xhci_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_xhci_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_xhci_softc* %0, %struct.tegra_xhci_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %10, i32 0, i32 20
  %12 = call i32 @regulator_get_by_ofw_property(i32 %9, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %307

21:                                               ; preds = %2
  %22 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %25, i32 0, i32 19
  %27 = call i32 @regulator_get_by_ofw_property(i32 %24, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %307

36:                                               ; preds = %21
  %37 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %40, i32 0, i32 18
  %42 = call i32 @regulator_get_by_ofw_property(i32 %39, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %3, align 4
  br label %307

51:                                               ; preds = %36
  %52 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %55, i32 0, i32 17
  %57 = call i32 @regulator_get_by_ofw_property(i32 %54, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %3, align 4
  br label %307

66:                                               ; preds = %51
  %67 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %71 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %70, i32 0, i32 16
  %72 = call i32 @regulator_get_by_ofw_property(i32 %69, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %3, align 4
  br label %307

81:                                               ; preds = %66
  %82 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %86 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %85, i32 0, i32 15
  %87 = call i32 @regulator_get_by_ofw_property(i32 %84, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %3, align 4
  br label %307

96:                                               ; preds = %81
  %97 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %100, i32 0, i32 14
  %102 = call i32 @regulator_get_by_ofw_property(i32 %99, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0))
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %3, align 4
  br label %307

111:                                              ; preds = %96
  %112 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %113 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %116 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %115, i32 0, i32 13
  %117 = call i32 @regulator_get_by_ofw_property(i32 %114, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %122 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @device_printf(i32 %123, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %125 = load i32, i32* @ENXIO, align 4
  store i32 %125, i32* %3, align 4
  br label %307

126:                                              ; preds = %111
  %127 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %128 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %131 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %130, i32 0, i32 12
  %132 = call i32 @hwreset_get_by_ofw_name(i32 %129, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %137 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %3, align 4
  br label %307

141:                                              ; preds = %126
  %142 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %143 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %146 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %145, i32 0, i32 11
  %147 = call i32 @hwreset_get_by_ofw_name(i32 %144, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %152 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %3, align 4
  br label %307

156:                                              ; preds = %141
  %157 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %158 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %161 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %160, i32 0, i32 10
  %162 = call i32 @phy_get_by_ofw_name(i32 %159, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %167 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @device_printf(i32 %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %170 = load i32, i32* @ENXIO, align 4
  store i32 %170, i32* %3, align 4
  br label %307

171:                                              ; preds = %156
  %172 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %173 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %176 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %175, i32 0, i32 9
  %177 = call i32 @phy_get_by_ofw_name(i32 %174, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i32* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %182 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0))
  %185 = load i32, i32* @ENXIO, align 4
  store i32 %185, i32* %3, align 4
  br label %307

186:                                              ; preds = %171
  %187 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %188 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %191 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %190, i32 0, i32 8
  %192 = call i32 @phy_get_by_ofw_name(i32 %189, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i32* %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %186
  %196 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %197 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @device_printf(i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0))
  %200 = load i32, i32* @ENXIO, align 4
  store i32 %200, i32* %3, align 4
  br label %307

201:                                              ; preds = %186
  %202 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %203 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %206 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %205, i32 0, i32 7
  %207 = call i32 @phy_get_by_ofw_name(i32 %204, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0), i32* %206)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %201
  %211 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %212 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @device_printf(i32 %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0))
  %215 = load i32, i32* @ENXIO, align 4
  store i32 %215, i32* %3, align 4
  br label %307

216:                                              ; preds = %201
  %217 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %218 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %221 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %220, i32 0, i32 6
  %222 = call i32 @clk_get_by_ofw_name(i32 %219, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32* %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %216
  %226 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %227 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @device_printf(i32 %228, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0))
  %230 = load i32, i32* @ENXIO, align 4
  store i32 %230, i32* %3, align 4
  br label %307

231:                                              ; preds = %216
  %232 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %233 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %236 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %235, i32 0, i32 5
  %237 = call i32 @clk_get_by_ofw_name(i32 %234, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32* %236)
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %231
  %241 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %242 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @device_printf(i32 %243, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.30, i64 0, i64 0))
  %245 = load i32, i32* @ENXIO, align 4
  store i32 %245, i32* %3, align 4
  br label %307

246:                                              ; preds = %231
  %247 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %248 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %251 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %250, i32 0, i32 4
  %252 = call i32 @clk_get_by_ofw_name(i32 %249, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32* %251)
  store i32 %252, i32* %6, align 4
  %253 = load i32, i32* %6, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %246
  %256 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %257 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @device_printf(i32 %258, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i64 0, i64 0))
  %260 = load i32, i32* @ENXIO, align 4
  store i32 %260, i32* %3, align 4
  br label %307

261:                                              ; preds = %246
  %262 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %263 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %266 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %265, i32 0, i32 3
  %267 = call i32 @clk_get_by_ofw_name(i32 %264, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32* %266)
  store i32 %267, i32* %6, align 4
  %268 = load i32, i32* %6, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %276

270:                                              ; preds = %261
  %271 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %272 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @device_printf(i32 %273, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0))
  %275 = load i32, i32* @ENXIO, align 4
  store i32 %275, i32* %3, align 4
  br label %307

276:                                              ; preds = %261
  %277 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %278 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %281 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %280, i32 0, i32 2
  %282 = call i32 @clk_get_by_ofw_name(i32 %279, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32* %281)
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* %6, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %276
  %286 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %287 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @device_printf(i32 %288, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0))
  %290 = load i32, i32* @ENXIO, align 4
  store i32 %290, i32* %3, align 4
  br label %307

291:                                              ; preds = %276
  %292 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %293 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %296 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %295, i32 0, i32 1
  %297 = call i32 @clk_get_by_ofw_index_prop(i32 %294, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32 0, i32* %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %291
  %301 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %4, align 8
  %302 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @device_printf(i32 %303, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.37, i64 0, i64 0))
  %305 = load i32, i32* @ENXIO, align 4
  store i32 %305, i32* %3, align 4
  br label %307

306:                                              ; preds = %291
  store i32 0, i32* %3, align 4
  br label %307

307:                                              ; preds = %306, %300, %285, %270, %255, %240, %225, %210, %195, %180, %165, %150, %135, %120, %105, %90, %75, %60, %45, %30, %15
  %308 = load i32, i32* %3, align 4
  ret i32 %308
}

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @phy_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_index_prop(i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
