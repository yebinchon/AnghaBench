; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_enable_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_enable_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xhci_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Cannot reset 'xusb_host' reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot reset 'xusb_ss' reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Cannot enable 'avddio_pex' regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot enable 'dvddio_pex' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Cannot enable 'avdd_usb' regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Cannot enable 'avdd_pll_utmip-5v' regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Cannot enable 'avdd_pll_erefe' regulator\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"Cannot enable 'avdd_usb_ss_pll' regulator\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Cannot enable 'hvdd_usb_ss' regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Cannot enable 'hvdd_usb_ss_pll_e' regulator\0A\00", align 1
@TEGRA_POWERGATE_XUSBA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Cannot powerdown  'xusba' domain\0A\00", align 1
@TEGRA_POWERGATE_XUSBC = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"Cannot powerdown  'xusbc' domain\0A\00", align 1
@TEGRA_XHCI_SS_HIGH_SPEED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [33 x i8] c"Cannot enable 'xusb_gate' clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Cannot powerup 'xusbc' domain\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Cannot powerup 'xusba' domain\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"Cannot enable 'xusb_falcon_src' clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"Cannot enable 'xusb_fs_src' clock\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Cannot enable 'xusb_hs_src' clock\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Cannot enable USB2_0 phy\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Cannot enable USB2_1 phy\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Cannot enable USB2_2 phy\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Cannot enable USB3_0 phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xhci_softc*)* @enable_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_fdt_resources(%struct.tegra_xhci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_xhci_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_xhci_softc* %0, %struct.tegra_xhci_softc** %3, align 8
  %5 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %5, i32 0, i32 10
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @hwreset_assert(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %305

17:                                               ; preds = %1
  %18 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hwreset_assert(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %305

30:                                               ; preds = %17
  %31 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %31, i32 0, i32 20
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regulator_enable(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %305

43:                                               ; preds = %30
  %44 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %44, i32 0, i32 19
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regulator_enable(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %305

56:                                               ; preds = %43
  %57 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %57, i32 0, i32 18
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regulator_enable(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %305

69:                                               ; preds = %56
  %70 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %70, i32 0, i32 17
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @regulator_enable(i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %305

82:                                               ; preds = %69
  %83 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %84 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %83, i32 0, i32 16
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @regulator_enable(i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %91 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %305

95:                                               ; preds = %82
  %96 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %97 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %96, i32 0, i32 15
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @regulator_enable(i32 %98)
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %104 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %305

108:                                              ; preds = %95
  %109 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %109, i32 0, i32 14
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @regulator_enable(i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %108
  %116 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %117 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @device_printf(i32 %118, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %305

121:                                              ; preds = %108
  %122 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %123 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @regulator_enable(i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %130 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @device_printf(i32 %131, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %305

134:                                              ; preds = %121
  %135 = load i32, i32* @TEGRA_POWERGATE_XUSBA, align 4
  %136 = call i32 @tegra_powergate_power_off(i32 %135)
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %141 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @device_printf(i32 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %144 = load i32, i32* %4, align 4
  store i32 %144, i32* %2, align 4
  br label %305

145:                                              ; preds = %134
  %146 = load i32, i32* @TEGRA_POWERGATE_XUSBC, align 4
  %147 = call i32 @tegra_powergate_power_off(i32 %146)
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %152 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %155 = load i32, i32* %4, align 4
  store i32 %155, i32* %2, align 4
  br label %305

156:                                              ; preds = %145
  %157 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %158 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @TEGRA_XHCI_SS_HIGH_SPEED, align 4
  %161 = call i32 @clk_set_freq(i32 %159, i32 %160, i32 0)
  %162 = load i32, i32* %4, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %156
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %305

166:                                              ; preds = %156
  %167 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %168 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %167, i32 0, i32 12
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @clk_enable(i32 %169)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %175 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0))
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %2, align 4
  br label %305

179:                                              ; preds = %166
  %180 = load i32, i32* @TEGRA_POWERGATE_XUSBC, align 4
  %181 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %182 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %181, i32 0, i32 11
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %185 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %184, i32 0, i32 10
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @tegra_powergate_sequence_power_up(i32 %180, i32 %183, i32 %186)
  store i32 %187, i32* %4, align 4
  %188 = load i32, i32* %4, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %179
  %191 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %192 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @device_printf(i32 %193, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %305

196:                                              ; preds = %179
  %197 = load i32, i32* @TEGRA_POWERGATE_XUSBA, align 4
  %198 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %199 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %202 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %201, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @tegra_powergate_sequence_power_up(i32 %197, i32 %200, i32 %203)
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* %4, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %196
  %208 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %209 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @device_printf(i32 %210, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %305

213:                                              ; preds = %196
  %214 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %215 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @clk_enable(i32 %216)
  store i32 %217, i32* %4, align 4
  %218 = load i32, i32* %4, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %222 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @device_printf(i32 %223, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %225 = load i32, i32* %4, align 4
  store i32 %225, i32* %2, align 4
  br label %305

226:                                              ; preds = %213
  %227 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %228 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @clk_enable(i32 %229)
  store i32 %230, i32* %4, align 4
  %231 = load i32, i32* %4, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %226
  %234 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %235 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @device_printf(i32 %236, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.16, i64 0, i64 0))
  %238 = load i32, i32* %4, align 4
  store i32 %238, i32* %2, align 4
  br label %305

239:                                              ; preds = %226
  %240 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %241 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @clk_enable(i32 %242)
  store i32 %243, i32* %4, align 4
  %244 = load i32, i32* %4, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %239
  %247 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %248 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @device_printf(i32 %249, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0))
  %251 = load i32, i32* %4, align 4
  store i32 %251, i32* %2, align 4
  br label %305

252:                                              ; preds = %239
  %253 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %254 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @phy_enable(i32 %255)
  store i32 %256, i32* %4, align 4
  %257 = load i32, i32* %4, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %252
  %260 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %261 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @device_printf(i32 %262, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0))
  %264 = load i32, i32* %4, align 4
  store i32 %264, i32* %2, align 4
  br label %305

265:                                              ; preds = %252
  %266 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %267 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @phy_enable(i32 %268)
  store i32 %269, i32* %4, align 4
  %270 = load i32, i32* %4, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %265
  %273 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %274 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @device_printf(i32 %275, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  %277 = load i32, i32* %4, align 4
  store i32 %277, i32* %2, align 4
  br label %305

278:                                              ; preds = %265
  %279 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %280 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @phy_enable(i32 %281)
  store i32 %282, i32* %4, align 4
  %283 = load i32, i32* %4, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %278
  %286 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %287 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @device_printf(i32 %288, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0))
  %290 = load i32, i32* %4, align 4
  store i32 %290, i32* %2, align 4
  br label %305

291:                                              ; preds = %278
  %292 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %293 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @phy_enable(i32 %294)
  store i32 %295, i32* %4, align 4
  %296 = load i32, i32* %4, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %291
  %299 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %300 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @device_printf(i32 %301, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %303 = load i32, i32* %4, align 4
  store i32 %303, i32* %2, align 4
  br label %305

304:                                              ; preds = %291
  store i32 0, i32* %2, align 4
  br label %305

305:                                              ; preds = %304, %298, %285, %272, %259, %246, %233, %220, %207, %190, %173, %164, %150, %139, %128, %115, %102, %89, %76, %63, %50, %37, %24, %11
  %306 = load i32, i32* %2, align 4
  ret i32 %306
}

declare dso_local i32 @hwreset_assert(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @tegra_powergate_sequence_power_up(i32, i32, i32) #1

declare dso_local i32 @phy_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
