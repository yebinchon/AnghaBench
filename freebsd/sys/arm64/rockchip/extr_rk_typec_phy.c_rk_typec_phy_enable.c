
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_typec_phy_softc {int rst_pipe; int dev; int rst_uphy; int rst_tcphy; int tcpdcore; int tcpdphy_ref; } ;
struct phynode {int dummy; } ;
typedef int device_t ;


 int CMN_DIAG_HSCLK_SEL ;
 int CMN_DIAG_HSCLK_SEL_PLL_CONFIG ;
 int CMN_DIAG_HSCLK_SEL_PLL_MASK ;
 int CMN_DIAG_PLL0_CP_TUNE ;
 int CMN_DIAG_PLL0_FBH_OVRD ;
 int CMN_DIAG_PLL0_FBL_OVRD ;
 int CMN_DIAG_PLL0_LF_PROG ;
 int CMN_DIAG_PLL0_OVRD ;
 int CMN_DIAG_PLL0_V2I_TUNE ;
 int CMN_PLL0_DSM_DIAG ;
 int CMN_PLL0_FRACDIV ;
 int CMN_PLL0_HIGH_THR ;
 int CMN_PLL0_INTDIV ;
 int CMN_PLL0_SS_CTRL1 ;
 int CMN_PLL0_SS_CTRL2 ;
 int CMN_PLL0_VCOCAL_INIT ;
 int CMN_PLL0_VCOCAL_ITER ;
 int DELAY (int) ;
 int DP_MODE_CTL ;
 int DP_MODE_ENTER_A2 ;
 int ENXIO ;
 int ERANGE ;
 int PIN_ASSIGN_D_F ;
 int PMA_CMN_CTRL1 ;
 int PMA_CMN_CTRL1_READY ;
 int PMA_LANE_CFG ;
 intptr_t RK3399_TYPEC_PHY_USB3 ;
 int RK_TYPEC_PHY_READ (struct rk_typec_phy_softc*,int ) ;
 int RK_TYPEC_PHY_WRITE (struct rk_typec_phy_softc*,int ,int) ;
 int RX_DIAG_SIGDET_TUNE (int) ;
 int RX_PSC_A0 (int) ;
 int RX_PSC_A1 (int) ;
 int RX_PSC_A2 (int) ;
 int RX_PSC_A3 (int) ;
 int RX_PSC_CAL (int) ;
 int RX_PSC_RDY (int) ;
 int RX_REE_CTRL_DATA_MASK (int) ;
 int RX_SIGDET_HL_FILT_TMR (int) ;
 int TX_PSC_A0 (int ) ;
 int TX_PSC_A1 (int ) ;
 int TX_PSC_A2 (int ) ;
 int TX_PSC_A3 (int ) ;
 int TX_RCVDET_EN_TMR (int) ;
 int TX_RCVDET_ST_TMR (int) ;
 int TX_TXCC_MGNFS_MULT_000 (int ) ;
 int XCVR_DIAG_BIDI_CTRL (int) ;
 int XCVR_DIAG_LANE_FCM_EN_MGN (int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_get_name (int ) ;
 struct rk_typec_phy_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int hwreset_deassert (int ) ;
 int phynode_get_device (struct phynode*) ;
 intptr_t phynode_get_id (struct phynode*) ;
 int rk_typec_phy_set_usb2_only (struct rk_typec_phy_softc*,int) ;

__attribute__((used)) static int
rk_typec_phy_enable(struct phynode *phynode, bool enable)
{
 struct rk_typec_phy_softc *sc;
 device_t dev;
 intptr_t phy;
 uint32_t reg;
 int err, retry;

 dev = phynode_get_device(phynode);
 phy = phynode_get_id(phynode);
 sc = device_get_softc(dev);

 if (phy != RK3399_TYPEC_PHY_USB3)
  return (ERANGE);

 rk_typec_phy_set_usb2_only(sc, 0);

 err = clk_enable(sc->tcpdcore);
 if (err != 0) {
  device_printf(dev, "Could not enable clock %s\n",
      clk_get_name(sc->tcpdcore));
  return (ENXIO);
 }
 err = clk_enable(sc->tcpdphy_ref);
 if (err != 0) {
  device_printf(dev, "Could not enable clock %s\n",
      clk_get_name(sc->tcpdphy_ref));
  clk_disable(sc->tcpdcore);
  return (ENXIO);
 }

 hwreset_deassert(sc->rst_tcphy);


 RK_TYPEC_PHY_WRITE(sc, PMA_CMN_CTRL1, 0x830);
 for (int i = 0; i < 4; i++) {
  RK_TYPEC_PHY_WRITE(sc, XCVR_DIAG_LANE_FCM_EN_MGN(i), 0x90);
  RK_TYPEC_PHY_WRITE(sc, TX_RCVDET_EN_TMR(i), 0x960);
  RK_TYPEC_PHY_WRITE(sc, TX_RCVDET_ST_TMR(i), 0x30);
 }
 reg = RK_TYPEC_PHY_READ(sc, CMN_DIAG_HSCLK_SEL);
 reg &= ~CMN_DIAG_HSCLK_SEL_PLL_MASK;
 reg |= CMN_DIAG_HSCLK_SEL_PLL_CONFIG;
 RK_TYPEC_PHY_WRITE(sc, CMN_DIAG_HSCLK_SEL, reg);


 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_VCOCAL_INIT, 0xf0);
 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_VCOCAL_ITER, 0x18);
 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_INTDIV, 0xd0);
 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_FRACDIV, 0x4a4a);
 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_HIGH_THR, 0x34);
 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_SS_CTRL1, 0x1ee);
 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_SS_CTRL2, 0x7f03);
 RK_TYPEC_PHY_WRITE(sc, CMN_PLL0_DSM_DIAG, 0x20);
 RK_TYPEC_PHY_WRITE(sc, CMN_DIAG_PLL0_OVRD, 0);
 RK_TYPEC_PHY_WRITE(sc, CMN_DIAG_PLL0_FBH_OVRD, 0);
 RK_TYPEC_PHY_WRITE(sc, CMN_DIAG_PLL0_FBL_OVRD, 0);
 RK_TYPEC_PHY_WRITE(sc, CMN_DIAG_PLL0_V2I_TUNE, 0x7);
 RK_TYPEC_PHY_WRITE(sc, CMN_DIAG_PLL0_CP_TUNE, 0x45);
 RK_TYPEC_PHY_WRITE(sc, CMN_DIAG_PLL0_LF_PROG, 0x8);


 RK_TYPEC_PHY_WRITE(sc, TX_PSC_A0(0), 0x7799);
 RK_TYPEC_PHY_WRITE(sc, TX_PSC_A1(0), 0x7798);
 RK_TYPEC_PHY_WRITE(sc, TX_PSC_A2(0), 0x5098);
 RK_TYPEC_PHY_WRITE(sc, TX_PSC_A3(0), 0x5098);
 RK_TYPEC_PHY_WRITE(sc, TX_TXCC_MGNFS_MULT_000(0), 0x0);
 RK_TYPEC_PHY_WRITE(sc, XCVR_DIAG_BIDI_CTRL(0), 0xbf);

 RK_TYPEC_PHY_WRITE(sc, RX_PSC_A0(1), 0xa6fd);
 RK_TYPEC_PHY_WRITE(sc, RX_PSC_A1(1), 0xa6fd);
 RK_TYPEC_PHY_WRITE(sc, RX_PSC_A2(1), 0xa410);
 RK_TYPEC_PHY_WRITE(sc, RX_PSC_A3(1), 0x2410);
 RK_TYPEC_PHY_WRITE(sc, RX_PSC_CAL(1), 0x23ff);
 RK_TYPEC_PHY_WRITE(sc, RX_SIGDET_HL_FILT_TMR(1), 0x13);
 RK_TYPEC_PHY_WRITE(sc, RX_REE_CTRL_DATA_MASK(1), 0x03e7);
 RK_TYPEC_PHY_WRITE(sc, RX_DIAG_SIGDET_TUNE(1), 0x1004);
 RK_TYPEC_PHY_WRITE(sc, RX_PSC_RDY(1), 0x2010);
 RK_TYPEC_PHY_WRITE(sc, XCVR_DIAG_BIDI_CTRL(1), 0xfb);

 RK_TYPEC_PHY_WRITE(sc, PMA_LANE_CFG, PIN_ASSIGN_D_F);

 RK_TYPEC_PHY_WRITE(sc, DP_MODE_CTL, DP_MODE_ENTER_A2);

 hwreset_deassert(sc->rst_uphy);

 for (retry = 10000; retry > 0; retry--) {
  reg = RK_TYPEC_PHY_READ(sc, PMA_CMN_CTRL1);
  if (reg & PMA_CMN_CTRL1_READY)
   break;
  DELAY(10);
 }
 if (retry == 0) {
  device_printf(sc->dev, "Timeout waiting for PMA\n");
  return (ENXIO);
 }

 hwreset_deassert(sc->rst_pipe);

 return (0);
}
