; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_host.c_omap_uhh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/usb/extr_omap_host.c_omap_uhh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_uhh_softc = type { i32, i32*, i32 }

@USBHSHOST_CLK = common dso_local global i32 0, align 4
@OMAP_USBHOST_UHH_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"UHH revision 0x%08x\0A\00", align 1
@OMAP_UHH_REV2 = common dso_local global i64 0, align 8
@USBP1_PHY_CLK = common dso_local global i32 0, align 4
@EXT_CLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to set clock source for port 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"failed to set clock USBP1_PHY_CLK source for port 0\0A\00", align 1
@USBP1_UTMI_CLK = common dso_local global i32 0, align 4
@USBP1_HSIC_CLK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"unknown port mode %d for port 0\0A\00", align 1
@USBP2_PHY_CLK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"failed to set clock USBP2_PHY_CLK source for port 1\0A\00", align 1
@USBP2_UTMI_CLK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"failed to set clock USBP2_UTMI_CLK source for port 1\0A\00", align 1
@USBP2_HSIC_CLK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [54 x i8] c"failed to set clock USBP2_HSIC_CLK source for port 1\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"unknown port mode %d for port 1\0A\00", align 1
@OMAP_USBHOST_UHH_SYSCONFIG = common dso_local global i32 0, align 4
@OMAP_UHH_REV1 = common dso_local global i64 0, align 8
@UHH_SYSCONFIG_SIDLEMODE_MASK = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_MIDLEMODE_MASK = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_ENAWAKEUP = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_AUTOIDLE = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_CLOCKACTIVITY = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_SIDLEMODE_SMARTIDLE = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_MIDLEMODE_SMARTSTANDBY = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_IDLEMODE_MASK = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_IDLEMODE_NOIDLE = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_STANDBYMODE_MASK = common dso_local global i32 0, align 4
@UHH_SYSCONFIG_STANDBYMODE_NOSTDBY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"OMAP_UHH_SYSCONFIG: 0x%08x\0A\00", align 1
@OMAP_USBHOST_UHH_HOSTCONFIG = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_ENA_INCR4 = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_ENA_INCR8 = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_ENA_INCR16 = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_ENA_INCR_ALIGN = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P1_CONNECT_STATUS = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P2_CONNECT_STATUS = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P3_CONNECT_STATUS = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P1_ULPI_BYPASS = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_APP_START_CLK = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P1_MODE_MASK = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P2_MODE_MASK = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P1_MODE_UTMI_PHY = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P1_MODE_HSIC = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P2_MODE_UTMI_PHY = common dso_local global i32 0, align 4
@UHH_HOSTCONFIG_P2_MODE_HSIC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [39 x i8] c"UHH setup done, uhh_hostconfig=0x%08x\0A\00", align 1
@OMAP_HS_USB_PORTS = common dso_local global i32 0, align 4
@OMAP_USBHOST_INSNREG04 = common dso_local global i32 0, align 4
@OMAP_USBHOST_INSNREG04_DISABLE_UNSUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_uhh_softc*)* @omap_uhh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_uhh_init(%struct.omap_uhh_softc* %0) #0 {
  %2 = alloca %struct.omap_uhh_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_uhh_softc* %0, %struct.omap_uhh_softc** %2, align 8
  %6 = load i32, i32* @USBHSHOST_CLK, align 4
  %7 = call i32 @ti_prcm_clk_enable(i32 %6)
  %8 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %9 = load i32, i32* @OMAP_USBHOST_UHH_REVISION, align 4
  %10 = call i8* @omap_uhh_read_4(%struct.omap_uhh_softc* %8, i32 %9)
  %11 = ptrtoint i8* %10 to i32
  %12 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %13 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %15 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %18 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %22 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @OMAP_UHH_REV2, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %142

27:                                               ; preds = %1
  %28 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %29 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %74 [
    i32 128, label %33
    i32 130, label %34
    i32 129, label %54
    i32 131, label %64
  ]

33:                                               ; preds = %27
  br label %84

34:                                               ; preds = %27
  %35 = load i32, i32* @USBP1_PHY_CLK, align 4
  %36 = load i32, i32* @EXT_CLK, align 4
  %37 = call i32 @ti_prcm_clk_set_source(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %41 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @USBP1_PHY_CLK, align 4
  %46 = call i32 @ti_prcm_clk_enable(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %50 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %44
  br label %84

54:                                               ; preds = %27
  %55 = load i32, i32* @USBP1_UTMI_CLK, align 4
  %56 = call i32 @ti_prcm_clk_enable(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %60 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %54
  br label %84

64:                                               ; preds = %27
  %65 = load i32, i32* @USBP1_HSIC_CLK, align 4
  %66 = call i32 @ti_prcm_clk_enable(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %70 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %64
  br label %84

74:                                               ; preds = %27
  %75 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %76 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %79 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %74, %73, %63, %53, %33
  %85 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %86 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %131 [
    i32 128, label %90
    i32 130, label %91
    i32 129, label %111
    i32 131, label %121
  ]

90:                                               ; preds = %84
  br label %141

91:                                               ; preds = %84
  %92 = load i32, i32* @USBP2_PHY_CLK, align 4
  %93 = load i32, i32* @EXT_CLK, align 4
  %94 = call i32 @ti_prcm_clk_set_source(i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %98 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %96, %91
  %102 = load i32, i32* @USBP2_PHY_CLK, align 4
  %103 = call i32 @ti_prcm_clk_enable(i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %107 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %110

110:                                              ; preds = %105, %101
  br label %141

111:                                              ; preds = %84
  %112 = load i32, i32* @USBP2_UTMI_CLK, align 4
  %113 = call i32 @ti_prcm_clk_enable(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %117 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @device_printf(i32 %118, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  br label %120

120:                                              ; preds = %115, %111
  br label %141

121:                                              ; preds = %84
  %122 = load i32, i32* @USBP2_HSIC_CLK, align 4
  %123 = call i32 @ti_prcm_clk_enable(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %127 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %128, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %121
  br label %141

131:                                              ; preds = %84
  %132 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %133 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %136 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %131, %130, %120, %110, %90
  br label %142

142:                                              ; preds = %141, %1
  %143 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %144 = load i32, i32* @OMAP_USBHOST_UHH_SYSCONFIG, align 4
  %145 = call i8* @omap_uhh_read_4(%struct.omap_uhh_softc* %143, i32 %144)
  %146 = ptrtoint i8* %145 to i32
  store i32 %146, i32* %4, align 4
  %147 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %148 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* @OMAP_UHH_REV1, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %142
  %154 = load i32, i32* @UHH_SYSCONFIG_SIDLEMODE_MASK, align 4
  %155 = load i32, i32* @UHH_SYSCONFIG_MIDLEMODE_MASK, align 4
  %156 = or i32 %154, %155
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %4, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %4, align 4
  %160 = load i32, i32* @UHH_SYSCONFIG_ENAWAKEUP, align 4
  %161 = load i32, i32* @UHH_SYSCONFIG_AUTOIDLE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @UHH_SYSCONFIG_CLOCKACTIVITY, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @UHH_SYSCONFIG_SIDLEMODE_SMARTIDLE, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @UHH_SYSCONFIG_MIDLEMODE_SMARTSTANDBY, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* %4, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %4, align 4
  br label %194

171:                                              ; preds = %142
  %172 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %173 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* @OMAP_UHH_REV2, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %171
  %179 = load i32, i32* @UHH_SYSCONFIG_IDLEMODE_MASK, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %4, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* @UHH_SYSCONFIG_IDLEMODE_NOIDLE, align 4
  %184 = load i32, i32* %4, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* @UHH_SYSCONFIG_STANDBYMODE_MASK, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %4, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %4, align 4
  %190 = load i32, i32* @UHH_SYSCONFIG_STANDBYMODE_NOSTDBY, align 4
  %191 = load i32, i32* %4, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %178, %171
  br label %194

194:                                              ; preds = %193, %153
  %195 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %196 = load i32, i32* @OMAP_USBHOST_UHH_SYSCONFIG, align 4
  %197 = load i32, i32* %4, align 4
  %198 = call i32 @omap_uhh_write_4(%struct.omap_uhh_softc* %195, i32 %196, i32 %197)
  %199 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %200 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %4, align 4
  %203 = call i32 (i32, i8*, ...) @device_printf(i32 %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %202)
  %204 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %205 = load i32, i32* @OMAP_USBHOST_UHH_HOSTCONFIG, align 4
  %206 = call i8* @omap_uhh_read_4(%struct.omap_uhh_softc* %204, i32 %205)
  %207 = ptrtoint i8* %206 to i32
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* @UHH_HOSTCONFIG_ENA_INCR4, align 4
  %209 = load i32, i32* @UHH_HOSTCONFIG_ENA_INCR8, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @UHH_HOSTCONFIG_ENA_INCR16, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* %4, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* @UHH_HOSTCONFIG_ENA_INCR_ALIGN, align 4
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %4, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %4, align 4
  %219 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %220 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = load i64, i64* @OMAP_UHH_REV1, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %292

225:                                              ; preds = %194
  %226 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %227 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %226, i32 0, i32 1
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 128
  br i1 %231, label %232, label %237

232:                                              ; preds = %225
  %233 = load i32, i32* @UHH_HOSTCONFIG_P1_CONNECT_STATUS, align 4
  %234 = xor i32 %233, -1
  %235 = load i32, i32* %4, align 4
  %236 = and i32 %235, %234
  store i32 %236, i32* %4, align 4
  br label %237

237:                                              ; preds = %232, %225
  %238 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %239 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 128
  br i1 %243, label %244, label %249

244:                                              ; preds = %237
  %245 = load i32, i32* @UHH_HOSTCONFIG_P2_CONNECT_STATUS, align 4
  %246 = xor i32 %245, -1
  %247 = load i32, i32* %4, align 4
  %248 = and i32 %247, %246
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %244, %237
  %250 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %251 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %250, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 2
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 128
  br i1 %255, label %256, label %261

256:                                              ; preds = %249
  %257 = load i32, i32* @UHH_HOSTCONFIG_P3_CONNECT_STATUS, align 4
  %258 = xor i32 %257, -1
  %259 = load i32, i32* %4, align 4
  %260 = and i32 %259, %258
  store i32 %260, i32* %4, align 4
  br label %261

261:                                              ; preds = %256, %249
  %262 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %263 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %262, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 130
  br i1 %267, label %282, label %268

268:                                              ; preds = %261
  %269 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %270 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 130
  br i1 %274, label %282, label %275

275:                                              ; preds = %268
  %276 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %277 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %276, i32 0, i32 1
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 130
  br i1 %281, label %282, label %287

282:                                              ; preds = %275, %268, %261
  %283 = load i32, i32* @UHH_HOSTCONFIG_P1_ULPI_BYPASS, align 4
  %284 = xor i32 %283, -1
  %285 = load i32, i32* %4, align 4
  %286 = and i32 %285, %284
  store i32 %286, i32* %4, align 4
  br label %291

287:                                              ; preds = %275
  %288 = load i32, i32* @UHH_HOSTCONFIG_P1_ULPI_BYPASS, align 4
  %289 = load i32, i32* %4, align 4
  %290 = or i32 %289, %288
  store i32 %290, i32* %4, align 4
  br label %291

291:                                              ; preds = %287, %282
  br label %358

292:                                              ; preds = %194
  %293 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %294 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = load i64, i64* @OMAP_UHH_REV2, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %357

299:                                              ; preds = %292
  %300 = load i32, i32* @UHH_HOSTCONFIG_APP_START_CLK, align 4
  %301 = load i32, i32* %4, align 4
  %302 = or i32 %301, %300
  store i32 %302, i32* %4, align 4
  %303 = load i32, i32* @UHH_HOSTCONFIG_P1_MODE_MASK, align 4
  %304 = xor i32 %303, -1
  %305 = load i32, i32* %4, align 4
  %306 = and i32 %305, %304
  store i32 %306, i32* %4, align 4
  %307 = load i32, i32* @UHH_HOSTCONFIG_P2_MODE_MASK, align 4
  %308 = xor i32 %307, -1
  %309 = load i32, i32* %4, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %4, align 4
  %311 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %312 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 129
  br i1 %316, label %317, label %321

317:                                              ; preds = %299
  %318 = load i32, i32* @UHH_HOSTCONFIG_P1_MODE_UTMI_PHY, align 4
  %319 = load i32, i32* %4, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %4, align 4
  br label %333

321:                                              ; preds = %299
  %322 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %323 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %322, i32 0, i32 1
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 131
  br i1 %327, label %328, label %332

328:                                              ; preds = %321
  %329 = load i32, i32* @UHH_HOSTCONFIG_P1_MODE_HSIC, align 4
  %330 = load i32, i32* %4, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %4, align 4
  br label %332

332:                                              ; preds = %328, %321
  br label %333

333:                                              ; preds = %332, %317
  %334 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %335 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp eq i32 %338, 129
  br i1 %339, label %340, label %344

340:                                              ; preds = %333
  %341 = load i32, i32* @UHH_HOSTCONFIG_P2_MODE_UTMI_PHY, align 4
  %342 = load i32, i32* %4, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %4, align 4
  br label %356

344:                                              ; preds = %333
  %345 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %346 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 1
  %349 = load i32, i32* %348, align 4
  %350 = icmp eq i32 %349, 131
  br i1 %350, label %351, label %355

351:                                              ; preds = %344
  %352 = load i32, i32* @UHH_HOSTCONFIG_P2_MODE_HSIC, align 4
  %353 = load i32, i32* %4, align 4
  %354 = or i32 %353, %352
  store i32 %354, i32* %4, align 4
  br label %355

355:                                              ; preds = %351, %344
  br label %356

356:                                              ; preds = %355, %340
  br label %357

357:                                              ; preds = %356, %292
  br label %358

358:                                              ; preds = %357, %291
  %359 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %360 = load i32, i32* @OMAP_USBHOST_UHH_HOSTCONFIG, align 4
  %361 = load i32, i32* %4, align 4
  %362 = call i32 @omap_uhh_write_4(%struct.omap_uhh_softc* %359, i32 %360, i32 %361)
  %363 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %364 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* %4, align 4
  %367 = call i32 (i32, i8*, ...) @device_printf(i32 %365, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %366)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %368

368:                                              ; preds = %387, %358
  %369 = load i32, i32* %5, align 4
  %370 = load i32, i32* @OMAP_HS_USB_PORTS, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %390

372:                                              ; preds = %368
  %373 = load %struct.omap_uhh_softc*, %struct.omap_uhh_softc** %2, align 8
  %374 = getelementptr inbounds %struct.omap_uhh_softc, %struct.omap_uhh_softc* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %5, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %379, 129
  br i1 %380, label %381, label %386

381:                                              ; preds = %372
  %382 = load i32, i32* %5, align 4
  %383 = shl i32 1, %382
  %384 = load i32, i32* %3, align 4
  %385 = or i32 %384, %383
  store i32 %385, i32* %3, align 4
  br label %386

386:                                              ; preds = %381, %372
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %5, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %5, align 4
  br label %368

390:                                              ; preds = %368
  %391 = load i32, i32* %3, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %390
  %394 = load i32, i32* %3, align 4
  %395 = call i32 @omap_tll_utmi_enable(i32 %394)
  br label %396

396:                                              ; preds = %393, %390
  ret i32 0
}

declare dso_local i32 @ti_prcm_clk_enable(i32) #1

declare dso_local i8* @omap_uhh_read_4(%struct.omap_uhh_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ti_prcm_clk_set_source(i32, i32) #1

declare dso_local i32 @omap_uhh_write_4(%struct.omap_uhh_softc*, i32, i32) #1

declare dso_local i32 @omap_tll_utmi_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
