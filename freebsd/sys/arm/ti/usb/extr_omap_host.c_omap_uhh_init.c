
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct omap_uhh_softc {int uhh_rev; int* port_mode; int sc_dev; } ;






 int EXT_CLK ;
 int OMAP_HS_USB_PORTS ;
 scalar_t__ OMAP_UHH_REV1 ;
 scalar_t__ OMAP_UHH_REV2 ;
 int OMAP_USBHOST_INSNREG04 ;
 int OMAP_USBHOST_INSNREG04_DISABLE_UNSUSPEND ;
 int OMAP_USBHOST_UHH_HOSTCONFIG ;
 int OMAP_USBHOST_UHH_REVISION ;
 int OMAP_USBHOST_UHH_SYSCONFIG ;
 int UHH_HOSTCONFIG_APP_START_CLK ;
 int UHH_HOSTCONFIG_ENA_INCR16 ;
 int UHH_HOSTCONFIG_ENA_INCR4 ;
 int UHH_HOSTCONFIG_ENA_INCR8 ;
 int UHH_HOSTCONFIG_ENA_INCR_ALIGN ;
 int UHH_HOSTCONFIG_P1_CONNECT_STATUS ;
 int UHH_HOSTCONFIG_P1_MODE_HSIC ;
 int UHH_HOSTCONFIG_P1_MODE_MASK ;
 int UHH_HOSTCONFIG_P1_MODE_UTMI_PHY ;
 int UHH_HOSTCONFIG_P1_ULPI_BYPASS ;
 int UHH_HOSTCONFIG_P2_CONNECT_STATUS ;
 int UHH_HOSTCONFIG_P2_MODE_HSIC ;
 int UHH_HOSTCONFIG_P2_MODE_MASK ;
 int UHH_HOSTCONFIG_P2_MODE_UTMI_PHY ;
 int UHH_HOSTCONFIG_P3_CONNECT_STATUS ;
 int UHH_SYSCONFIG_AUTOIDLE ;
 int UHH_SYSCONFIG_CLOCKACTIVITY ;
 int UHH_SYSCONFIG_ENAWAKEUP ;
 int UHH_SYSCONFIG_IDLEMODE_MASK ;
 int UHH_SYSCONFIG_IDLEMODE_NOIDLE ;
 int UHH_SYSCONFIG_MIDLEMODE_MASK ;
 int UHH_SYSCONFIG_MIDLEMODE_SMARTSTANDBY ;
 int UHH_SYSCONFIG_SIDLEMODE_MASK ;
 int UHH_SYSCONFIG_SIDLEMODE_SMARTIDLE ;
 int UHH_SYSCONFIG_STANDBYMODE_MASK ;
 int UHH_SYSCONFIG_STANDBYMODE_NOSTDBY ;
 int USBHSHOST_CLK ;
 int USBP1_HSIC_CLK ;
 int USBP1_PHY_CLK ;
 int USBP1_UTMI_CLK ;
 int USBP2_HSIC_CLK ;
 int USBP2_PHY_CLK ;
 int USBP2_UTMI_CLK ;
 int device_printf (int ,char*,...) ;
 int omap_tll_utmi_enable (int) ;
 void* omap_uhh_read_4 (struct omap_uhh_softc*,int ) ;
 int omap_uhh_write_4 (struct omap_uhh_softc*,int ,int) ;
 int ti_prcm_clk_enable (int ) ;
 int ti_prcm_clk_set_source (int ,int ) ;

__attribute__((used)) static int
omap_uhh_init(struct omap_uhh_softc *isc)
{
 uint8_t tll_ch_mask;
 uint32_t reg;
 int i;


 ti_prcm_clk_enable(USBHSHOST_CLK);


 isc->uhh_rev = omap_uhh_read_4(isc, OMAP_USBHOST_UHH_REVISION);
 device_printf(isc->sc_dev, "UHH revision 0x%08x\n", isc->uhh_rev);

 if (isc->uhh_rev == OMAP_UHH_REV2) {





  switch(isc->port_mode[0]) {
  case 128:
   break;
  case 130:
   if (ti_prcm_clk_set_source(USBP1_PHY_CLK, EXT_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock source for port 0\n");
   if (ti_prcm_clk_enable(USBP1_PHY_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock USBP1_PHY_CLK source for port 0\n");
   break;
  case 129:
   if (ti_prcm_clk_enable(USBP1_UTMI_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock USBP1_PHY_CLK source for port 0\n");
   break;
  case 131:
   if (ti_prcm_clk_enable(USBP1_HSIC_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock USBP1_PHY_CLK source for port 0\n");
   break;
  default:
   device_printf(isc->sc_dev, "unknown port mode %d for port 0\n", isc->port_mode[0]);
  }
  switch(isc->port_mode[1]) {
  case 128:
   break;
  case 130:
   if (ti_prcm_clk_set_source(USBP2_PHY_CLK, EXT_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock source for port 0\n");
   if (ti_prcm_clk_enable(USBP2_PHY_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock USBP2_PHY_CLK source for port 1\n");
   break;
  case 129:
   if (ti_prcm_clk_enable(USBP2_UTMI_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock USBP2_UTMI_CLK source for port 1\n");
   break;
  case 131:
   if (ti_prcm_clk_enable(USBP2_HSIC_CLK))
    device_printf(isc->sc_dev,
        "failed to set clock USBP2_HSIC_CLK source for port 1\n");
   break;
  default:
   device_printf(isc->sc_dev, "unknown port mode %d for port 1\n", isc->port_mode[1]);
  }
 }


 reg = omap_uhh_read_4(isc, OMAP_USBHOST_UHH_SYSCONFIG);
 if (isc->uhh_rev == OMAP_UHH_REV1) {
  reg &= ~(UHH_SYSCONFIG_SIDLEMODE_MASK |
      UHH_SYSCONFIG_MIDLEMODE_MASK);
  reg |= (UHH_SYSCONFIG_ENAWAKEUP |
      UHH_SYSCONFIG_AUTOIDLE |
      UHH_SYSCONFIG_CLOCKACTIVITY |
      UHH_SYSCONFIG_SIDLEMODE_SMARTIDLE |
      UHH_SYSCONFIG_MIDLEMODE_SMARTSTANDBY);
 } else if (isc->uhh_rev == OMAP_UHH_REV2) {
  reg &= ~UHH_SYSCONFIG_IDLEMODE_MASK;
  reg |= UHH_SYSCONFIG_IDLEMODE_NOIDLE;
  reg &= ~UHH_SYSCONFIG_STANDBYMODE_MASK;
  reg |= UHH_SYSCONFIG_STANDBYMODE_NOSTDBY;
 }
 omap_uhh_write_4(isc, OMAP_USBHOST_UHH_SYSCONFIG, reg);
 device_printf(isc->sc_dev, "OMAP_UHH_SYSCONFIG: 0x%08x\n", reg);

 reg = omap_uhh_read_4(isc, OMAP_USBHOST_UHH_HOSTCONFIG);


 reg |= (UHH_HOSTCONFIG_ENA_INCR4 |
   UHH_HOSTCONFIG_ENA_INCR8 |
   UHH_HOSTCONFIG_ENA_INCR16);
 reg &= ~UHH_HOSTCONFIG_ENA_INCR_ALIGN;

 if (isc->uhh_rev == OMAP_UHH_REV1) {
  if (isc->port_mode[0] == 128)
   reg &= ~UHH_HOSTCONFIG_P1_CONNECT_STATUS;
  if (isc->port_mode[1] == 128)
   reg &= ~UHH_HOSTCONFIG_P2_CONNECT_STATUS;
  if (isc->port_mode[2] == 128)
   reg &= ~UHH_HOSTCONFIG_P3_CONNECT_STATUS;


  if ((isc->port_mode[0] == 130) ||
      (isc->port_mode[1] == 130) ||
      (isc->port_mode[2] == 130))
   reg &= ~UHH_HOSTCONFIG_P1_ULPI_BYPASS;
  else
   reg |= UHH_HOSTCONFIG_P1_ULPI_BYPASS;

 } else if (isc->uhh_rev == OMAP_UHH_REV2) {
  reg |= UHH_HOSTCONFIG_APP_START_CLK;


  reg &= ~UHH_HOSTCONFIG_P1_MODE_MASK;
  reg &= ~UHH_HOSTCONFIG_P2_MODE_MASK;

  if (isc->port_mode[0] == 129)
   reg |= UHH_HOSTCONFIG_P1_MODE_UTMI_PHY;
  else if (isc->port_mode[0] == 131)
   reg |= UHH_HOSTCONFIG_P1_MODE_HSIC;

  if (isc->port_mode[1] == 129)
   reg |= UHH_HOSTCONFIG_P2_MODE_UTMI_PHY;
  else if (isc->port_mode[1] == 131)
   reg |= UHH_HOSTCONFIG_P2_MODE_HSIC;
 }

 omap_uhh_write_4(isc, OMAP_USBHOST_UHH_HOSTCONFIG, reg);
 device_printf(isc->sc_dev, "UHH setup done, uhh_hostconfig=0x%08x\n", reg);
 tll_ch_mask = 0;
 for (i = 0; i < OMAP_HS_USB_PORTS; i++) {
  if (isc->port_mode[i] == 129)
   tll_ch_mask |= (1 << i);
 }
 if (tll_ch_mask)
  omap_tll_utmi_enable(tll_ch_mask);

 return(0);
}
