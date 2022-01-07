
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdmi_softc {int dev; } ;
struct drm_display_mode {int flags; } ;


 int ASY_CRCMODE_COMPLETE ;
 int ASY_HEAD_OPMODE_AWAKE ;
 int ASY_OWNER_HEAD0 ;
 int ASY_PROTOCOL_SINGLE_TMDS_A ;
 int DELAY (int) ;
 int DRM_MODE_FLAG_NHSYNC ;
 int DRM_MODE_FLAG_NVSYNC ;
 int ETIMEDOUT ;
 int HDMI_NV_PDISP_SOR_PLL0 ;
 int HDMI_NV_PDISP_SOR_PWR ;
 int HDMI_NV_PDISP_SOR_STATE0 ;
 int HDMI_NV_PDISP_SOR_STATE1 ;
 int HDMI_NV_PDISP_SOR_STATE2 ;
 int RD4 (struct hdmi_softc*,int ) ;
 int SOR_PLL0_PDBG ;
 int SOR_PLL0_PULLDOWN ;
 int SOR_PLL0_PWR ;
 int SOR_PLL0_VCOPD ;
 int SOR_PWR_SETTING_NEW ;
 int SOR_STATE0_UPDATE ;
 int SOR_STATE1_ASY_HEAD_OPMODE (int ) ;
 int SOR_STATE1_ASY_ORMODE_NORMAL ;
 int SOR_STATE1_ATTACHED ;
 int SOR_STATE2_ASY_CRCMODE (int ) ;
 int SOR_STATE2_ASY_HSYNCPOL_NEG ;
 int SOR_STATE2_ASY_OWNER (int ) ;
 int SOR_STATE2_ASY_PROTOCOL (int ) ;
 int SOR_STATE2_ASY_SUBOWNER (int ) ;
 int SOR_STATE2_ASY_VSYNCPOL_NEG ;
 int SUBOWNER_BOTH ;
 int WR4 (struct hdmi_softc*,int ,int) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
hdmi_sor_start(struct hdmi_softc *sc, struct drm_display_mode *mode)
{
 int i;
 uint32_t val;


 val = RD4(sc, HDMI_NV_PDISP_SOR_PLL0);
 val &= ~SOR_PLL0_PWR;
 val &= ~SOR_PLL0_VCOPD;
 val &= ~SOR_PLL0_PULLDOWN;
 WR4(sc, HDMI_NV_PDISP_SOR_PLL0, val);
 DELAY(10);

 val = RD4(sc, HDMI_NV_PDISP_SOR_PLL0);
 val &= ~SOR_PLL0_PDBG;
 WR4(sc, HDMI_NV_PDISP_SOR_PLL0, val);

 WR4(sc, HDMI_NV_PDISP_SOR_PWR, SOR_PWR_SETTING_NEW);
 WR4(sc, HDMI_NV_PDISP_SOR_PWR, 0);


 for (i = 1000; i > 0; i--) {
  val = RD4(sc, HDMI_NV_PDISP_SOR_PWR);
  if ((val & SOR_PWR_SETTING_NEW) == 0)
   break;
  DELAY(10);
 }
 if (i <= 0) {
  device_printf(sc->dev, "Timeouted while enabling SOR power.\n");
  return (ETIMEDOUT);
 }

 val = SOR_STATE2_ASY_OWNER(ASY_OWNER_HEAD0) |
     SOR_STATE2_ASY_SUBOWNER(SUBOWNER_BOTH) |
     SOR_STATE2_ASY_CRCMODE(ASY_CRCMODE_COMPLETE) |
     SOR_STATE2_ASY_PROTOCOL(ASY_PROTOCOL_SINGLE_TMDS_A);
 if (mode->flags & DRM_MODE_FLAG_NHSYNC)
  val |= SOR_STATE2_ASY_HSYNCPOL_NEG;
 if (mode->flags & DRM_MODE_FLAG_NVSYNC)
  val |= SOR_STATE2_ASY_VSYNCPOL_NEG;
 WR4(sc, HDMI_NV_PDISP_SOR_STATE2, val);

 WR4(sc, HDMI_NV_PDISP_SOR_STATE1, SOR_STATE1_ASY_ORMODE_NORMAL |
     SOR_STATE1_ASY_HEAD_OPMODE(ASY_HEAD_OPMODE_AWAKE));

 WR4(sc, HDMI_NV_PDISP_SOR_STATE0, 0);
 WR4(sc, HDMI_NV_PDISP_SOR_STATE0, SOR_STATE0_UPDATE);

 val = RD4(sc, HDMI_NV_PDISP_SOR_STATE1);
 val |= SOR_STATE1_ATTACHED;
 WR4(sc, HDMI_NV_PDISP_SOR_STATE1, val);

 WR4(sc, HDMI_NV_PDISP_SOR_STATE0, 0);

 return 0;
}
