; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_typec_phy.c_rk_typec_phy_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_typec_phy.c_rk_typec_phy_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.rk_typec_phy_softc = type { i32, i32, i32, i32, i32, i32 }

@RK3399_TYPEC_PHY_USB3 = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Could not enable clock %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PMA_CMN_CTRL1 = common dso_local global i32 0, align 4
@CMN_DIAG_HSCLK_SEL = common dso_local global i32 0, align 4
@CMN_DIAG_HSCLK_SEL_PLL_MASK = common dso_local global i32 0, align 4
@CMN_DIAG_HSCLK_SEL_PLL_CONFIG = common dso_local global i32 0, align 4
@CMN_PLL0_VCOCAL_INIT = common dso_local global i32 0, align 4
@CMN_PLL0_VCOCAL_ITER = common dso_local global i32 0, align 4
@CMN_PLL0_INTDIV = common dso_local global i32 0, align 4
@CMN_PLL0_FRACDIV = common dso_local global i32 0, align 4
@CMN_PLL0_HIGH_THR = common dso_local global i32 0, align 4
@CMN_PLL0_SS_CTRL1 = common dso_local global i32 0, align 4
@CMN_PLL0_SS_CTRL2 = common dso_local global i32 0, align 4
@CMN_PLL0_DSM_DIAG = common dso_local global i32 0, align 4
@CMN_DIAG_PLL0_OVRD = common dso_local global i32 0, align 4
@CMN_DIAG_PLL0_FBH_OVRD = common dso_local global i32 0, align 4
@CMN_DIAG_PLL0_FBL_OVRD = common dso_local global i32 0, align 4
@CMN_DIAG_PLL0_V2I_TUNE = common dso_local global i32 0, align 4
@CMN_DIAG_PLL0_CP_TUNE = common dso_local global i32 0, align 4
@CMN_DIAG_PLL0_LF_PROG = common dso_local global i32 0, align 4
@PMA_LANE_CFG = common dso_local global i32 0, align 4
@PIN_ASSIGN_D_F = common dso_local global i32 0, align 4
@DP_MODE_CTL = common dso_local global i32 0, align 4
@DP_MODE_ENTER_A2 = common dso_local global i32 0, align 4
@PMA_CMN_CTRL1_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Timeout waiting for PMA\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32)* @rk_typec_phy_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_typec_phy_enable(%struct.phynode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk_typec_phy_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.phynode*, %struct.phynode** %4, align 8
  %14 = call i32 @phynode_get_device(%struct.phynode* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.phynode*, %struct.phynode** %4, align 8
  %16 = call i64 @phynode_get_id(%struct.phynode* %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.rk_typec_phy_softc* @device_get_softc(i32 %17)
  store %struct.rk_typec_phy_softc* %18, %struct.rk_typec_phy_softc** %6, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* @RK3399_TYPEC_PHY_USB3, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ERANGE, align 4
  store i32 %23, i32* %3, align 4
  br label %235

24:                                               ; preds = %2
  %25 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %26 = call i32 @rk_typec_phy_set_usb2_only(%struct.rk_typec_phy_softc* %25, i32 0)
  %27 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %28 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_enable(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %36 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_get_name(i32 %37)
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %3, align 4
  br label %235

41:                                               ; preds = %24
  %42 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %43 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_enable(i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %51 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_get_name(i32 %52)
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %56 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable(i32 %57)
  %59 = load i32, i32* @ENXIO, align 4
  store i32 %59, i32* %3, align 4
  br label %235

60:                                               ; preds = %41
  %61 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %62 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @hwreset_deassert(i32 %63)
  %65 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %66 = load i32, i32* @PMA_CMN_CTRL1, align 4
  %67 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %65, i32 %66, i32 2096)
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %84, %60
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @XCVR_DIAG_LANE_FCM_EN_MGN(i32 %73)
  %75 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %72, i32 %74, i32 144)
  %76 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @TX_RCVDET_EN_TMR(i32 %77)
  %79 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %76, i32 %78, i32 2400)
  %80 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @TX_RCVDET_ST_TMR(i32 %81)
  %83 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %80, i32 %82, i32 48)
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %68

87:                                               ; preds = %68
  %88 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %89 = load i32, i32* @CMN_DIAG_HSCLK_SEL, align 4
  %90 = call i32 @RK_TYPEC_PHY_READ(%struct.rk_typec_phy_softc* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* @CMN_DIAG_HSCLK_SEL_PLL_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* @CMN_DIAG_HSCLK_SEL_PLL_CONFIG, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %9, align 4
  %98 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %99 = load i32, i32* @CMN_DIAG_HSCLK_SEL, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %103 = load i32, i32* @CMN_PLL0_VCOCAL_INIT, align 4
  %104 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %102, i32 %103, i32 240)
  %105 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %106 = load i32, i32* @CMN_PLL0_VCOCAL_ITER, align 4
  %107 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %105, i32 %106, i32 24)
  %108 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %109 = load i32, i32* @CMN_PLL0_INTDIV, align 4
  %110 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %108, i32 %109, i32 208)
  %111 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %112 = load i32, i32* @CMN_PLL0_FRACDIV, align 4
  %113 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %111, i32 %112, i32 19018)
  %114 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %115 = load i32, i32* @CMN_PLL0_HIGH_THR, align 4
  %116 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %114, i32 %115, i32 52)
  %117 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %118 = load i32, i32* @CMN_PLL0_SS_CTRL1, align 4
  %119 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %117, i32 %118, i32 494)
  %120 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %121 = load i32, i32* @CMN_PLL0_SS_CTRL2, align 4
  %122 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %120, i32 %121, i32 32515)
  %123 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %124 = load i32, i32* @CMN_PLL0_DSM_DIAG, align 4
  %125 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %123, i32 %124, i32 32)
  %126 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %127 = load i32, i32* @CMN_DIAG_PLL0_OVRD, align 4
  %128 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %126, i32 %127, i32 0)
  %129 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %130 = load i32, i32* @CMN_DIAG_PLL0_FBH_OVRD, align 4
  %131 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %129, i32 %130, i32 0)
  %132 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %133 = load i32, i32* @CMN_DIAG_PLL0_FBL_OVRD, align 4
  %134 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %132, i32 %133, i32 0)
  %135 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %136 = load i32, i32* @CMN_DIAG_PLL0_V2I_TUNE, align 4
  %137 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %135, i32 %136, i32 7)
  %138 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %139 = load i32, i32* @CMN_DIAG_PLL0_CP_TUNE, align 4
  %140 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %138, i32 %139, i32 69)
  %141 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %142 = load i32, i32* @CMN_DIAG_PLL0_LF_PROG, align 4
  %143 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %141, i32 %142, i32 8)
  %144 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %145 = call i32 @TX_PSC_A0(i32 0)
  %146 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %144, i32 %145, i32 30617)
  %147 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %148 = call i32 @TX_PSC_A1(i32 0)
  %149 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %147, i32 %148, i32 30616)
  %150 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %151 = call i32 @TX_PSC_A2(i32 0)
  %152 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %150, i32 %151, i32 20632)
  %153 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %154 = call i32 @TX_PSC_A3(i32 0)
  %155 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %153, i32 %154, i32 20632)
  %156 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %157 = call i32 @TX_TXCC_MGNFS_MULT_000(i32 0)
  %158 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %156, i32 %157, i32 0)
  %159 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %160 = call i32 @XCVR_DIAG_BIDI_CTRL(i32 0)
  %161 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %159, i32 %160, i32 191)
  %162 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %163 = call i32 @RX_PSC_A0(i32 1)
  %164 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %162, i32 %163, i32 42749)
  %165 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %166 = call i32 @RX_PSC_A1(i32 1)
  %167 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %165, i32 %166, i32 42749)
  %168 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %169 = call i32 @RX_PSC_A2(i32 1)
  %170 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %168, i32 %169, i32 42000)
  %171 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %172 = call i32 @RX_PSC_A3(i32 1)
  %173 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %171, i32 %172, i32 9232)
  %174 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %175 = call i32 @RX_PSC_CAL(i32 1)
  %176 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %174, i32 %175, i32 9215)
  %177 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %178 = call i32 @RX_SIGDET_HL_FILT_TMR(i32 1)
  %179 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %177, i32 %178, i32 19)
  %180 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %181 = call i32 @RX_REE_CTRL_DATA_MASK(i32 1)
  %182 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %180, i32 %181, i32 999)
  %183 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %184 = call i32 @RX_DIAG_SIGDET_TUNE(i32 1)
  %185 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %183, i32 %184, i32 4100)
  %186 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %187 = call i32 @RX_PSC_RDY(i32 1)
  %188 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %186, i32 %187, i32 8208)
  %189 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %190 = call i32 @XCVR_DIAG_BIDI_CTRL(i32 1)
  %191 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %189, i32 %190, i32 251)
  %192 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %193 = load i32, i32* @PMA_LANE_CFG, align 4
  %194 = load i32, i32* @PIN_ASSIGN_D_F, align 4
  %195 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %192, i32 %193, i32 %194)
  %196 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %197 = load i32, i32* @DP_MODE_CTL, align 4
  %198 = load i32, i32* @DP_MODE_ENTER_A2, align 4
  %199 = call i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc* %196, i32 %197, i32 %198)
  %200 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %201 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @hwreset_deassert(i32 %202)
  store i32 10000, i32* %11, align 4
  br label %204

204:                                              ; preds = %218, %87
  %205 = load i32, i32* %11, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %221

207:                                              ; preds = %204
  %208 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %209 = load i32, i32* @PMA_CMN_CTRL1, align 4
  %210 = call i32 @RK_TYPEC_PHY_READ(%struct.rk_typec_phy_softc* %208, i32 %209)
  store i32 %210, i32* %9, align 4
  %211 = load i32, i32* %9, align 4
  %212 = load i32, i32* @PMA_CMN_CTRL1_READY, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  br label %221

216:                                              ; preds = %207
  %217 = call i32 @DELAY(i32 10)
  br label %218

218:                                              ; preds = %216
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %219, -1
  store i32 %220, i32* %11, align 4
  br label %204

221:                                              ; preds = %215, %204
  %222 = load i32, i32* %11, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %221
  %225 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %226 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i32, i8*, ...) @device_printf(i32 %227, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %229 = load i32, i32* @ENXIO, align 4
  store i32 %229, i32* %3, align 4
  br label %235

230:                                              ; preds = %221
  %231 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %232 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @hwreset_deassert(i32 %233)
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %230, %224, %48, %33, %22
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.rk_typec_phy_softc* @device_get_softc(i32) #1

declare dso_local i32 @rk_typec_phy_set_usb2_only(%struct.rk_typec_phy_softc*, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @clk_get_name(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @RK_TYPEC_PHY_WRITE(%struct.rk_typec_phy_softc*, i32, i32) #1

declare dso_local i32 @XCVR_DIAG_LANE_FCM_EN_MGN(i32) #1

declare dso_local i32 @TX_RCVDET_EN_TMR(i32) #1

declare dso_local i32 @TX_RCVDET_ST_TMR(i32) #1

declare dso_local i32 @RK_TYPEC_PHY_READ(%struct.rk_typec_phy_softc*, i32) #1

declare dso_local i32 @TX_PSC_A0(i32) #1

declare dso_local i32 @TX_PSC_A1(i32) #1

declare dso_local i32 @TX_PSC_A2(i32) #1

declare dso_local i32 @TX_PSC_A3(i32) #1

declare dso_local i32 @TX_TXCC_MGNFS_MULT_000(i32) #1

declare dso_local i32 @XCVR_DIAG_BIDI_CTRL(i32) #1

declare dso_local i32 @RX_PSC_A0(i32) #1

declare dso_local i32 @RX_PSC_A1(i32) #1

declare dso_local i32 @RX_PSC_A2(i32) #1

declare dso_local i32 @RX_PSC_A3(i32) #1

declare dso_local i32 @RX_PSC_CAL(i32) #1

declare dso_local i32 @RX_SIGDET_HL_FILT_TMR(i32) #1

declare dso_local i32 @RX_REE_CTRL_DATA_MASK(i32) #1

declare dso_local i32 @RX_DIAG_SIGDET_TUNE(i32) #1

declare dso_local i32 @RX_PSC_RDY(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
